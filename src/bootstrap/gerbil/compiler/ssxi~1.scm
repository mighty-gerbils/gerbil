(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx160655_)
      (let* ((_g160659160677_
              (lambda (_g160660160673_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160660160673_))))
             (_g160658160732_
              (lambda (_g160660160681_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160660160681_))
                    (let ((_e160665160684_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160660160681_))))
                      (let ((_hd160664160688_
                             (let ()
                               (declare (not safe))
                               (##car _e160665160684_)))
                            (_tl160663160691_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160665160684_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160663160691_))
                            (let ((_e160668160694_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160663160691_))))
                              (let ((_hd160667160698_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160668160694_)))
                                    (_tl160666160701_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160668160694_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160666160701_))
                                    (let ((_e160671160704_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160666160701_))))
                                      (let ((_hd160670160708_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160671160704_)))
                                            (_tl160669160711_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160671160704_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160669160711_))
                                            ((lambda (_L160714_ _L160716_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L160716_))
                                                   (let ((__tmp164214
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp164209
                                                          (let ((__tmp164211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp164213
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp164212
                                (let ()
                                  (declare (not safe))
                                  (cons _L160716_ '()))))
                           (declare (not safe))
                           (cons __tmp164213 __tmp164212)))
                        (__tmp164210
                         (let () (declare (not safe)) (cons _L160714_ '()))))
                    (declare (not safe))
                    (cons __tmp164211 __tmp164210))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp164214
                                                           __tmp164209))
                                                   (_g160659160677_
                                                    _g160660160681_)))
                                             _hd160670160708_
                                             _hd160667160698_)
                                            (_g160659160677_
                                             _g160660160681_))))
                                    (_g160659160677_ _g160660160681_))))
                            (_g160659160677_ _g160660160681_))))
                    (_g160659160677_ _g160660160681_)))))
        (_g160658160732_ _$stx160655_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx160736_)
      (let* ((_g160740160769_
              (lambda (_g160741160765_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160741160765_))))
             (_g160739160869_
              (lambda (_g160741160773_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160741160773_))
                    (let ((_e160746160776_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160741160773_))))
                      (let ((_hd160745160780_
                             (let ()
                               (declare (not safe))
                               (##car _e160746160776_)))
                            (_tl160744160783_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160746160776_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160744160783_))
                            (let ((_g164215_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160744160783_
                                      '0))))
                              (begin
                                (let ((_g164216_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164215_)
                                             (##vector-length _g164215_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164216_ 2)))
                                      (error "Context expects 2 values"
                                             _g164216_)))
                                (let ((_target160747160786_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164215_ 0)))
                                      (_tl160749160789_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164215_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160749160789_))
                                      (letrec ((_loop160750160792_
                                                (lambda (_hd160748160796_
                                                         _type160754160799_
                                                         _symbol160755160801_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160748160796_))
                                                      (let ((_e160751160804_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160748160796_))))
                (let ((_lp-hd160752160808_
                       (let () (declare (not safe)) (##car _e160751160804_)))
                      (_lp-tl160753160811_
                       (let () (declare (not safe)) (##cdr _e160751160804_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160752160808_))
                      (let ((_e160760160814_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160752160808_))))
                        (let ((_hd160759160818_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160760160814_)))
                              (_tl160758160821_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160760160814_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160758160821_))
                              (let ((_e160763160824_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160758160821_))))
                                (let ((_hd160762160828_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160763160824_)))
                                      (_tl160761160831_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160763160824_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160761160831_))
                                      (_loop160750160792_
                                       _lp-tl160753160811_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd160762160828_
                                               _type160754160799_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd160759160818_
                                               _symbol160755160801_)))
                                      (_g160740160769_ _g160741160773_))))
                              (_g160740160769_ _g160741160773_))))
                      (_g160740160769_ _g160741160773_))))
              (let ((_type160756160834_ (reverse _type160754160799_))
                    (_symbol160757160837_ (reverse _symbol160755160801_)))
                ((lambda (_L160840_ _L160842_)
                   (let ((__tmp164223
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164217
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160840_
                               _L160842_))
                            (let ((__tmp164218
                                   (lambda (_g160857160861_
                                            _g160858160864_
                                            _g160859160866_)
                                     (let ((__tmp164219
                                            (let ((__tmp164222
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp164220
                                                   (let ((__tmp164221
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g160857160861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160858160864_
                                                           __tmp164221))))
                                              (declare (not safe))
                                              (cons __tmp164222 __tmp164220))))
                                       (declare (not safe))
                                       (cons __tmp164219 _g160859160866_)))))
                              (declare (not safe))
                              (foldr2 __tmp164218 '() _L160840_ _L160842_)))))
                     (declare (not safe))
                     (cons __tmp164223 __tmp164217)))
                 _type160756160834_
                 _symbol160757160837_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160750160792_
                                         _target160747160786_
                                         '()
                                         '()))
                                      (_g160740160769_ _g160741160773_)))))
                            (_g160740160769_ _g160741160773_))))
                    (_g160740160769_ _g160741160773_)))))
        (_g160739160869_ _$stx160736_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx160874_)
      (let* ((___stx163774163775_ _$stx160874_)
             (_g160879160921_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163774163775_)))))
        (let ((___kont163777163778_
               (lambda (_L161049_ _L161051_ _L161052_ _L161053_)
                 (let ((__tmp164237
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp164224
                        (let ((__tmp164234
                               (let ((__tmp164236
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164235
                                      (let ()
                                        (declare (not safe))
                                        (cons _L161053_ '()))))
                                 (declare (not safe))
                                 (cons __tmp164236 __tmp164235)))
                              (__tmp164225
                               (let ((__tmp164231
                                      (let ((__tmp164233
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164232
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161052_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164233 __tmp164232)))
                                     (__tmp164226
                                      (let ((__tmp164228
                                             (let ((__tmp164230
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp164229
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161051_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164230 __tmp164229)))
                                            (__tmp164227
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161049_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164228 __tmp164227))))
                                 (declare (not safe))
                                 (cons __tmp164231 __tmp164226))))
                          (declare (not safe))
                          (cons __tmp164234 __tmp164225))))
                   (declare (not safe))
                   (cons __tmp164237 __tmp164224))))
              (___kont163779163780_
               (lambda (_L160968_ _L160970_ _L160971_ _L160972_)
                 (let ((__tmp164238
                        (let ((__tmp164239
                               (let ((__tmp164240
                                      (let ((__tmp164241
                                             (let ((__tmp164242
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp164242 '()))))
                                        (declare (not safe))
                                        (cons _L160968_ __tmp164241))))
                                 (declare (not safe))
                                 (cons _L160970_ __tmp164240))))
                          (declare (not safe))
                          (cons _L160971_ __tmp164239))))
                   (declare (not safe))
                   (cons _L160972_ __tmp164238)))))
          (let ((___match163813163814_
                 (lambda (_e160887160999_
                          _hd160886161003_
                          _tl160885161006_
                          _e160890161009_
                          _hd160889161013_
                          _tl160888161016_
                          _e160893161019_
                          _hd160892161023_
                          _tl160891161026_
                          _e160896161029_
                          _hd160895161033_
                          _tl160894161036_
                          _e160899161039_
                          _hd160898161043_
                          _tl160897161046_)
                   (let ((_L161049_ _hd160898161043_)
                         (_L161051_ _hd160895161033_)
                         (_L161052_ _hd160892161023_)
                         (_L161053_ _hd160889161013_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L161053_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L161052_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L161051_)))
                         (___kont163777163778_
                          _L161049_
                          _L161051_
                          _L161052_
                          _L161053_)
                         (let () (declare (not safe)) (_g160879160921_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163774163775_))
                (let ((_e160887160999_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163774163775_))))
                  (let ((_tl160885161006_
                         (let () (declare (not safe)) (##cdr _e160887160999_)))
                        (_hd160886161003_
                         (let ()
                           (declare (not safe))
                           (##car _e160887160999_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160885161006_))
                        (let ((_e160890161009_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160885161006_))))
                          (let ((_tl160888161016_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160890161009_)))
                                (_hd160889161013_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160890161009_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160888161016_))
                                (let ((_e160893161019_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160888161016_))))
                                  (let ((_tl160891161026_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160893161019_)))
                                        (_hd160892161023_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160893161019_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl160891161026_))
                                        (let ((_e160896161029_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl160891161026_))))
                                          (let ((_tl160894161036_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e160896161029_)))
                                                (_hd160895161033_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e160896161029_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl160894161036_))
                                                (let ((_e160899161039_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl160894161036_))))
                                                  (let ((_tl160897161046_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e160899161039_)))
                                                        (_hd160898161043_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e160899161039_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160897161046_))
                                                        (___match163813163814_
                                                         _e160887160999_
                                                         _hd160886161003_
                                                         _tl160885161006_
                                                         _e160890161009_
                                                         _hd160889161013_
                                                         _tl160888161016_
                                                         _e160893161019_
                                                         _hd160892161023_
                                                         _tl160891161026_
                                                         _e160896161029_
                                                         _hd160895161033_
                                                         _tl160894161036_
                                                         _e160899161039_
                                                         _hd160898161043_
                                                         _tl160897161046_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160879160921_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160894161036_))
                                                    (___kont163779163780_
                                                     _hd160895161033_
                                                     _hd160892161023_
                                                     _hd160889161013_
                                                     _hd160886161003_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160879160921_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g160879160921_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g160879160921_)))))
                        (let () (declare (not safe)) (_g160879160921_)))))
                (let () (declare (not safe)) (_g160879160921_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx161078_)
      (let* ((_g161082161117_
              (lambda (_g161083161113_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161083161113_))))
             (_g161081161236_
              (lambda (_g161083161121_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161083161121_))
                    (let ((_e161089161124_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161083161121_))))
                      (let ((_hd161088161128_
                             (let ()
                               (declare (not safe))
                               (##car _e161089161124_)))
                            (_tl161087161131_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161089161124_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161087161131_))
                            (let ((_g164243_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161087161131_
                                      '0))))
                              (begin
                                (let ((_g164244_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164243_)
                                             (##vector-length _g164243_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164244_ 2)))
                                      (error "Context expects 2 values"
                                             _g164244_)))
                                (let ((_target161090161134_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164243_ 0)))
                                      (_tl161092161137_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164243_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161092161137_))
                                      (letrec ((_loop161093161140_
                                                (lambda (_hd161091161144_
                                                         _symbol161097161147_
                                                         _method161098161149_
                                                         _type-t161099161151_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161091161144_))
                                                      (let ((_e161094161154_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161091161144_))))
                (let ((_lp-hd161095161158_
                       (let () (declare (not safe)) (##car _e161094161154_)))
                      (_lp-tl161096161161_
                       (let () (declare (not safe)) (##cdr _e161094161154_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161095161158_))
                      (let ((_e161105161164_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161095161158_))))
                        (let ((_hd161104161168_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161105161164_)))
                              (_tl161103161171_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161105161164_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl161103161171_))
                              (let ((_e161108161174_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl161103161171_))))
                                (let ((_hd161107161178_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e161108161174_)))
                                      (_tl161106161181_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e161108161174_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl161106161181_))
                                      (let ((_e161111161184_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl161106161181_))))
                                        (let ((_hd161110161188_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e161111161184_)))
                                              (_tl161109161191_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e161111161184_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161109161191_))
                                              (_loop161093161140_
                                               _lp-tl161096161161_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161110161188_
                                                       _symbol161097161147_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161107161178_
                                                       _method161098161149_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161104161168_
                                                       _type-t161099161151_)))
                                              (_g161082161117_
                                               _g161083161121_))))
                                      (_g161082161117_ _g161083161121_))))
                              (_g161082161117_ _g161083161121_))))
                      (_g161082161117_ _g161083161121_))))
              (let ((_symbol161100161194_ (reverse _symbol161097161147_))
                    (_method161101161197_ (reverse _method161098161149_))
                    (_type-t161102161199_ (reverse _type-t161099161151_)))
                ((lambda (_L161202_ _L161204_ _L161205_)
                   (let ((__tmp164252
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164245
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161202_
                               _L161204_
                               _L161205_))
                            (let ((__tmp164246
                                   (lambda (_g161221161226_
                                            _g161222161229_
                                            _g161223161231_
                                            _g161224161233_)
                                     (let ((__tmp164247
                                            (let ((__tmp164251
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp164248
                                                   (let ((__tmp164249
                                                          (let ((__tmp164250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g161221161226_ '()))))
                    (declare (not safe))
                    (cons _g161222161229_ __tmp164250))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161223161231_
                                                           __tmp164249))))
                                              (declare (not safe))
                                              (cons __tmp164251 __tmp164248))))
                                       (declare (not safe))
                                       (cons __tmp164247 _g161224161233_)))))
                              (declare (not safe))
                              (foldr* __tmp164246
                                      '()
                                      _L161202_
                                      _L161204_
                                      _L161205_)))))
                     (declare (not safe))
                     (cons __tmp164252 __tmp164245)))
                 _symbol161100161194_
                 _method161101161197_
                 _type-t161102161199_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161093161140_
                                         _target161090161134_
                                         '()
                                         '()
                                         '()))
                                      (_g161082161117_ _g161083161121_)))))
                            (_g161082161117_ _g161083161121_))))
                    (_g161082161117_ _g161083161121_)))))
        (_g161081161236_ _$stx161078_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx161241_)
      (let* ((_g161245161278_
              (lambda (_g161246161274_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161246161274_))))
             (_g161244161392_
              (lambda (_g161246161282_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161246161282_))
                    (let ((_e161252161285_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161246161282_))))
                      (let ((_hd161251161289_
                             (let ()
                               (declare (not safe))
                               (##car _e161252161285_)))
                            (_tl161250161292_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161252161285_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161250161292_))
                            (let ((_e161255161295_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161250161292_))))
                              (let ((_hd161254161299_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161255161295_)))
                                    (_tl161253161302_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161255161295_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161253161302_))
                                    (let ((_g164253_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161253161302_
                                              '0))))
                                      (begin
                                        (let ((_g164254_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g164253_)
                                                     (##vector-length
                                                      _g164253_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g164254_ 2)))
                                              (error "Context expects 2 values"
                                                     _g164254_)))
                                        (let ((_target161256161305_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g164253_ 0)))
                                              (_tl161258161308_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g164253_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161258161308_))
                                              (letrec ((_loop161259161311_
                                                        (lambda (_hd161257161315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol161263161318_
                         _method161264161320_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd161257161315_))
                      (let ((_e161260161323_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd161257161315_))))
                        (let ((_lp-hd161261161327_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161260161323_)))
                              (_lp-tl161262161330_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161260161323_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd161261161327_))
                              (let ((_e161269161333_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd161261161327_))))
                                (let ((_hd161268161337_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e161269161333_)))
                                      (_tl161267161340_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e161269161333_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl161267161340_))
                                      (let ((_e161272161343_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl161267161340_))))
                                        (let ((_hd161271161347_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e161272161343_)))
                                              (_tl161270161350_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e161272161343_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161270161350_))
                                              (_loop161259161311_
                                               _lp-tl161262161330_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161271161347_
                                                       _symbol161263161318_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161268161337_
                                                       _method161264161320_)))
                                              (_g161245161278_
                                               _g161246161282_))))
                                      (_g161245161278_ _g161246161282_))))
                              (_g161245161278_ _g161246161282_))))
                      (let ((_symbol161265161353_
                             (reverse _symbol161263161318_))
                            (_method161266161356_
                             (reverse _method161264161320_)))
                        ((lambda (_L161359_ _L161361_ _L161362_)
                           (let ((__tmp164262
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp164255
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L161359_
                                       _L161361_))
                                    (let ((__tmp164256
                                           (lambda (_g161380161384_
                                                    _g161381161387_
                                                    _g161382161389_)
                                             (let ((__tmp164257
                                                    (let ((__tmp164261
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp164258
                                                           (let ((__tmp164259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp164260
                                 (let ()
                                   (declare (not safe))
                                   (cons _g161380161384_ '()))))
                            (declare (not safe))
                            (cons _g161381161387_ __tmp164260))))
                     (declare (not safe))
                     (cons _L161362_ __tmp164259))))
              (declare (not safe))
              (cons __tmp164261 __tmp164258))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp164257
                                                     _g161382161389_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp164256
                                              '()
                                              _L161359_
                                              _L161361_)))))
                             (declare (not safe))
                             (cons __tmp164262 __tmp164255)))
                         _symbol161265161353_
                         _method161266161356_
                         _hd161254161299_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop161259161311_
                                                 _target161256161305_
                                                 '()
                                                 '()))
                                              (_g161245161278_
                                               _g161246161282_)))))
                                    (_g161245161278_ _g161246161282_))))
                            (_g161245161278_ _g161246161282_))))
                    (_g161245161278_ _g161246161282_)))))
        (_g161244161392_ _$stx161241_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx161397_)
      (let* ((_g161401161415_
              (lambda (_g161402161411_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161402161411_))))
             (_g161400161456_
              (lambda (_g161402161419_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161402161419_))
                    (let ((_e161406161422_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161402161419_))))
                      (let ((_hd161405161426_
                             (let ()
                               (declare (not safe))
                               (##car _e161406161422_)))
                            (_tl161404161429_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161406161422_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161404161429_))
                            (let ((_e161409161432_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161404161429_))))
                              (let ((_hd161408161436_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161409161432_)))
                                    (_tl161407161439_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161409161432_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161407161439_))
                                    ((lambda (_L161442_)
                                       (let ((__tmp164267
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp164263
                                              (let ((__tmp164264
                                                     (let ((__tmp164266
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164265
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164266 __tmp164265))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164264 '()))))
                                         (declare (not safe))
                                         (cons __tmp164267 __tmp164263)))
                                     _hd161408161436_)
                                    (_g161401161415_ _g161402161419_))))
                            (_g161401161415_ _g161402161419_))))
                    (_g161401161415_ _g161402161419_)))))
        (_g161400161456_ _$stx161397_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx161460_)
      (let* ((_g161464161518_
              (lambda (_g161465161514_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161465161514_))))
             (_g161463161699_
              (lambda (_g161465161522_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161465161522_))
                    (let ((_e161479161525_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161465161522_))))
                      (let ((_hd161478161529_
                             (let ()
                               (declare (not safe))
                               (##car _e161479161525_)))
                            (_tl161477161532_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161479161525_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161477161532_))
                            (let ((_e161482161535_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161477161532_))))
                              (let ((_hd161481161539_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161482161535_)))
                                    (_tl161480161542_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161482161535_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161480161542_))
                                    (let ((_e161485161545_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161480161542_))))
                                      (let ((_hd161484161549_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161485161545_)))
                                            (_tl161483161552_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161485161545_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161483161552_))
                                            (let ((_e161488161555_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161483161552_))))
                                              (let ((_hd161487161559_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161488161555_)))
                                                    (_tl161486161562_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161488161555_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161486161562_))
                                                    (let ((_e161491161565_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161486161562_))))
                                                      (let ((_hd161490161569_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e161491161565_)))
                    (_tl161489161572_
                     (let () (declare (not safe)) (##cdr _e161491161565_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl161489161572_))
                    (let ((_e161494161575_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl161489161572_))))
                      (let ((_hd161493161579_
                             (let ()
                               (declare (not safe))
                               (##car _e161494161575_)))
                            (_tl161492161582_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161494161575_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161492161582_))
                            (let ((_e161497161585_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161492161582_))))
                              (let ((_hd161496161589_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161497161585_)))
                                    (_tl161495161592_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161497161585_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161495161592_))
                                    (let ((_e161500161595_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161495161592_))))
                                      (let ((_hd161499161599_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161500161595_)))
                                            (_tl161498161602_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161500161595_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161498161602_))
                                            (let ((_e161503161605_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161498161602_))))
                                              (let ((_hd161502161609_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161503161605_)))
                                                    (_tl161501161612_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161503161605_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161501161612_))
                                                    (let ((_e161506161615_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161501161612_))))
                                                      (let ((_hd161505161619_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e161506161615_)))
                    (_tl161504161622_
                     (let () (declare (not safe)) (##cdr _e161506161615_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl161504161622_))
                    (let ((_e161509161625_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl161504161622_))))
                      (let ((_hd161508161629_
                             (let ()
                               (declare (not safe))
                               (##car _e161509161625_)))
                            (_tl161507161632_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161509161625_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161507161632_))
                            (let ((_e161512161635_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161507161632_))))
                              (let ((_hd161511161639_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161512161635_)))
                                    (_tl161510161642_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161512161635_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161510161642_))
                                    ((lambda (_L161645_
                                              _L161647_
                                              _L161648_
                                              _L161649_
                                              _L161650_
                                              _L161651_
                                              _L161652_
                                              _L161653_
                                              _L161654_
                                              _L161655_
                                              _L161656_)
                                       (let ((__tmp164303
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class)))
                                             (__tmp164268
                                              (let ((__tmp164300
                                                     (let ((__tmp164302
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164301
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164302 __tmp164301)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp164269
                                                     (let ((__tmp164297
                                                            (let ((__tmp164299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote)))
                          (__tmp164298
                           (let () (declare (not safe)) (cons _L161655_ '()))))
                      (declare (not safe))
                      (cons __tmp164299 __tmp164298)))
                   (__tmp164270
                    (let ((__tmp164294
                           (let ((__tmp164296
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote)))
                                 (__tmp164295
                                  (let ()
                                    (declare (not safe))
                                    (cons _L161654_ '()))))
                             (declare (not safe))
                             (cons __tmp164296 __tmp164295)))
                          (__tmp164271
                           (let ((__tmp164291
                                  (let ((__tmp164293
                                         (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote)))
                                        (__tmp164292
                                         (let ()
                                           (declare (not safe))
                                           (cons _L161653_ '()))))
                                    (declare (not safe))
                                    (cons __tmp164293 __tmp164292)))
                                 (__tmp164272
                                  (let ((__tmp164288
                                         (let ((__tmp164290
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote)))
                                               (__tmp164289
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L161652_ '()))))
                                           (declare (not safe))
                                           (cons __tmp164290 __tmp164289)))
                                        (__tmp164273
                                         (let ((__tmp164285
                                                (let ((__tmp164287
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'quote)))
                                                      (__tmp164286
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L161651_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp164287
                                                        __tmp164286)))
                                               (__tmp164274
                                                (let ((__tmp164275
                                                       (let ((__tmp164276
                                                              (let ((__tmp164277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp164282
                                    (let ((__tmp164284
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164283
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161647_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164284 __tmp164283)))
                                   (__tmp164278
                                    (let ((__tmp164279
                                           (let ((__tmp164281
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'quote)))
                                                 (__tmp164280
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L161645_ '()))))
                                             (declare (not safe))
                                             (cons __tmp164281 __tmp164280))))
                                      (declare (not safe))
                                      (cons __tmp164279 '()))))
                               (declare (not safe))
                               (cons __tmp164282 __tmp164278))))
                        (declare (not safe))
                        (cons _L161648_ __tmp164277))))
                 (declare (not safe))
                 (cons _L161649_ __tmp164276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L161650_
                                                        __tmp164275))))
                                           (declare (not safe))
                                           (cons __tmp164285 __tmp164274))))
                                    (declare (not safe))
                                    (cons __tmp164288 __tmp164273))))
                             (declare (not safe))
                             (cons __tmp164291 __tmp164272))))
                      (declare (not safe))
                      (cons __tmp164294 __tmp164271))))
               (declare (not safe))
               (cons __tmp164297 __tmp164270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164300
                                                      __tmp164269))))
                                         (declare (not safe))
                                         (cons __tmp164303 __tmp164268)))
                                     _hd161511161639_
                                     _hd161508161629_
                                     _hd161505161619_
                                     _hd161502161609_
                                     _hd161499161599_
                                     _hd161496161589_
                                     _hd161493161579_
                                     _hd161490161569_
                                     _hd161487161559_
                                     _hd161484161549_
                                     _hd161481161539_)
                                    (_g161464161518_ _g161465161522_))))
                            (_g161464161518_ _g161465161522_))))
                    (_g161464161518_ _g161465161522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g161464161518_
                                                     _g161465161522_))))
                                            (_g161464161518_
                                             _g161465161522_))))
                                    (_g161464161518_ _g161465161522_))))
                            (_g161464161518_ _g161465161522_))))
                    (_g161464161518_ _g161465161522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g161464161518_
                                                     _g161465161522_))))
                                            (_g161464161518_
                                             _g161465161522_))))
                                    (_g161464161518_ _g161465161522_))))
                            (_g161464161518_ _g161465161522_))))
                    (_g161464161518_ _g161465161522_)))))
        (_g161463161699_ _$stx161460_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx161703_)
      (let* ((_g161707161721_
              (lambda (_g161708161717_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161708161717_))))
             (_g161706161762_
              (lambda (_g161708161725_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161708161725_))
                    (let ((_e161712161728_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161708161725_))))
                      (let ((_hd161711161732_
                             (let ()
                               (declare (not safe))
                               (##car _e161712161728_)))
                            (_tl161710161735_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161712161728_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161710161735_))
                            (let ((_e161715161738_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161710161735_))))
                              (let ((_hd161714161742_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161715161738_)))
                                    (_tl161713161745_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161715161738_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161713161745_))
                                    ((lambda (_L161748_)
                                       (let ((__tmp164308
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp164304
                                              (let ((__tmp164305
                                                     (let ((__tmp164307
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164306
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164307 __tmp164306))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164305 '()))))
                                         (declare (not safe))
                                         (cons __tmp164308 __tmp164304)))
                                     _hd161714161742_)
                                    (_g161707161721_ _g161708161725_))))
                            (_g161707161721_ _g161708161725_))))
                    (_g161707161721_ _g161708161725_)))))
        (_g161706161762_ _$stx161703_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx161766_)
      (let* ((_g161770161784_
              (lambda (_g161771161780_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161771161780_))))
             (_g161769161825_
              (lambda (_g161771161788_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161771161788_))
                    (let ((_e161775161791_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161771161788_))))
                      (let ((_hd161774161795_
                             (let ()
                               (declare (not safe))
                               (##car _e161775161791_)))
                            (_tl161773161798_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161775161791_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161773161798_))
                            (let ((_e161778161801_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161773161798_))))
                              (let ((_hd161777161805_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161778161801_)))
                                    (_tl161776161808_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161778161801_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161776161808_))
                                    ((lambda (_L161811_)
                                       (let ((__tmp164313
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp164309
                                              (let ((__tmp164310
                                                     (let ((__tmp164312
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164311
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164312 __tmp164311))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164310 '()))))
                                         (declare (not safe))
                                         (cons __tmp164313 __tmp164309)))
                                     _hd161777161805_)
                                    (_g161770161784_ _g161771161788_))))
                            (_g161770161784_ _g161771161788_))))
                    (_g161770161784_ _g161771161788_)))))
        (_g161769161825_ _$stx161766_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx161829_)
      (let* ((_g161833161855_
              (lambda (_g161834161851_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161834161851_))))
             (_g161832161924_
              (lambda (_g161834161859_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161834161859_))
                    (let ((_e161840161862_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161834161859_))))
                      (let ((_hd161839161866_
                             (let ()
                               (declare (not safe))
                               (##car _e161840161862_)))
                            (_tl161838161869_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161840161862_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161838161869_))
                            (let ((_e161843161872_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161838161869_))))
                              (let ((_hd161842161876_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161843161872_)))
                                    (_tl161841161879_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161843161872_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161841161879_))
                                    (let ((_e161846161882_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161841161879_))))
                                      (let ((_hd161845161886_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161846161882_)))
                                            (_tl161844161889_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161846161882_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161844161889_))
                                            (let ((_e161849161892_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161844161889_))))
                                              (let ((_hd161848161896_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161849161892_)))
                                                    (_tl161847161899_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161849161892_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161847161899_))
                                                    ((lambda (_L161902_
                                                              _L161904_
                                                              _L161905_)
                                                       (let ((__tmp164323
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp164314
                      (let ((__tmp164320
                             (let ((__tmp164322
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp164321
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161905_ '()))))
                               (declare (not safe))
                               (cons __tmp164322 __tmp164321)))
                            (__tmp164315
                             (let ((__tmp164317
                                    (let ((__tmp164319
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164318
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161904_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164319 __tmp164318)))
                                   (__tmp164316
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161902_ '()))))
                               (declare (not safe))
                               (cons __tmp164317 __tmp164316))))
                        (declare (not safe))
                        (cons __tmp164320 __tmp164315))))
                 (declare (not safe))
                 (cons __tmp164323 __tmp164314)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd161848161896_
                                                     _hd161845161886_
                                                     _hd161842161876_)
                                                    (_g161833161855_
                                                     _g161834161859_))))
                                            (_g161833161855_
                                             _g161834161859_))))
                                    (_g161833161855_ _g161834161859_))))
                            (_g161833161855_ _g161834161859_))))
                    (_g161833161855_ _g161834161859_)))))
        (_g161832161924_ _$stx161829_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx161928_)
      (let* ((_g161932161954_
              (lambda (_g161933161950_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161933161950_))))
             (_g161931162023_
              (lambda (_g161933161958_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161933161958_))
                    (let ((_e161939161961_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161933161958_))))
                      (let ((_hd161938161965_
                             (let ()
                               (declare (not safe))
                               (##car _e161939161961_)))
                            (_tl161937161968_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161939161961_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161937161968_))
                            (let ((_e161942161971_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161937161968_))))
                              (let ((_hd161941161975_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161942161971_)))
                                    (_tl161940161978_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161942161971_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161940161978_))
                                    (let ((_e161945161981_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161940161978_))))
                                      (let ((_hd161944161985_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161945161981_)))
                                            (_tl161943161988_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161945161981_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161943161988_))
                                            (let ((_e161948161991_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161943161988_))))
                                              (let ((_hd161947161995_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161948161991_)))
                                                    (_tl161946161998_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161948161991_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161946161998_))
                                                    ((lambda (_L162001_
                                                              _L162003_
                                                              _L162004_)
                                                       (let ((__tmp164333
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp164324
                      (let ((__tmp164330
                             (let ((__tmp164332
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp164331
                                    (let ()
                                      (declare (not safe))
                                      (cons _L162004_ '()))))
                               (declare (not safe))
                               (cons __tmp164332 __tmp164331)))
                            (__tmp164325
                             (let ((__tmp164327
                                    (let ((__tmp164329
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164328
                                           (let ()
                                             (declare (not safe))
                                             (cons _L162003_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164329 __tmp164328)))
                                   (__tmp164326
                                    (let ()
                                      (declare (not safe))
                                      (cons _L162001_ '()))))
                               (declare (not safe))
                               (cons __tmp164327 __tmp164326))))
                        (declare (not safe))
                        (cons __tmp164330 __tmp164325))))
                 (declare (not safe))
                 (cons __tmp164333 __tmp164324)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd161947161995_
                                                     _hd161944161985_
                                                     _hd161941161975_)
                                                    (_g161932161954_
                                                     _g161933161958_))))
                                            (_g161932161954_
                                             _g161933161958_))))
                                    (_g161932161954_ _g161933161958_))))
                            (_g161932161954_ _g161933161958_))))
                    (_g161932161954_ _g161933161958_)))))
        (_g161931162023_ _$stx161928_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx162027_)
      (let* ((___stx163842163843_ _$stx162027_)
             (_g162035162103_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163842163843_)))))
        (let ((___kont163845163846_
               (lambda (_L162381_ _L162383_)
                 (let ((__tmp164354
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp164334
                        (let ((__tmp164350
                               (let ((__tmp164353
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164351
                                      (let ((__tmp164352
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164352 '()))))
                                 (declare (not safe))
                                 (cons __tmp164353 __tmp164351)))
                              (__tmp164335
                               (let ((__tmp164347
                                      (let ((__tmp164349
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164348
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162383_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164349 __tmp164348)))
                                     (__tmp164336
                                      (let ((__tmp164337
                                             (let ((__tmp164338
                                                    (let ((__tmp164339
                                                           (let ((__tmp164346
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp164340
                          (let ((__tmp164341
                                 (let ((__tmp164345
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp164342
                                        (let ((__tmp164343
                                               (let ((__tmp164344
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L162381_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp164344))))
                                          (declare (not safe))
                                          (cons _L162383_ __tmp164343))))
                                   (declare (not safe))
                                   (cons __tmp164345 __tmp164342))))
                            (declare (not safe))
                            (cons __tmp164341 '()))))
                     (declare (not safe))
                     (cons __tmp164346 __tmp164340))))
              (declare (not safe))
              (cons __tmp164339 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L162381_ __tmp164338))))
                                        (declare (not safe))
                                        (cons '#f __tmp164337))))
                                 (declare (not safe))
                                 (cons __tmp164347 __tmp164336))))
                          (declare (not safe))
                          (cons __tmp164350 __tmp164335))))
                   (declare (not safe))
                   (cons __tmp164354 __tmp164334))))
              (___kont163847163848_
               (lambda (_L162312_ _L162314_)
                 (let ((__tmp164355
                        (let ((__tmp164356
                               (let ((__tmp164357
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L162312_ __tmp164357))))
                          (declare (not safe))
                          (cons 'primitive: __tmp164356))))
                   (declare (not safe))
                   (cons _L162314_ __tmp164355))))
              (___kont163849163850_
               (lambda (_L162251_ _L162253_)
                 (let ((__tmp164371
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp164358
                        (let ((__tmp164367
                               (let ((__tmp164370
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164368
                                      (let ((__tmp164369
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164369 '()))))
                                 (declare (not safe))
                                 (cons __tmp164370 __tmp164368)))
                              (__tmp164359
                               (let ((__tmp164364
                                      (let ((__tmp164366
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164365
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162253_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164366 __tmp164365)))
                                     (__tmp164360
                                      (let ((__tmp164361
                                             (let ((__tmp164363
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp164362
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L162251_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164363
                                                     __tmp164362))))
                                        (declare (not safe))
                                        (cons __tmp164361 '()))))
                                 (declare (not safe))
                                 (cons __tmp164364 __tmp164360))))
                          (declare (not safe))
                          (cons __tmp164367 __tmp164359))))
                   (declare (not safe))
                   (cons __tmp164371 __tmp164358))))
              (___kont163851163852_
               (lambda (_L162183_ _L162185_)
                 (let ((__tmp164385
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp164372
                        (let ((__tmp164381
                               (let ((__tmp164384
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164382
                                      (let ((__tmp164383
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164383 '()))))
                                 (declare (not safe))
                                 (cons __tmp164384 __tmp164382)))
                              (__tmp164373
                               (let ((__tmp164378
                                      (let ((__tmp164380
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164379
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162185_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164380 __tmp164379)))
                                     (__tmp164374
                                      (let ((__tmp164375
                                             (let ((__tmp164377
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp164376
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L162183_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164377
                                                     __tmp164376))))
                                        (declare (not safe))
                                        (cons __tmp164375 '()))))
                                 (declare (not safe))
                                 (cons __tmp164378 __tmp164374))))
                          (declare (not safe))
                          (cons __tmp164381 __tmp164373))))
                   (declare (not safe))
                   (cons __tmp164385 __tmp164372))))
              (___kont163853163854_
               (lambda (_L162130_ _L162132_)
                 (let ((__tmp164386
                        (let ((__tmp164387
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L162130_ __tmp164387))))
                   (declare (not safe))
                   (cons _L162132_ __tmp164386)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx163842163843_))
              (let ((_e162041162337_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx163842163843_))))
                (let ((_tl162039162344_
                       (let () (declare (not safe)) (##cdr _e162041162337_)))
                      (_hd162040162341_
                       (let () (declare (not safe)) (##car _e162041162337_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl162039162344_))
                      (let ((_e162044162347_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl162039162344_))))
                        (let ((_tl162042162354_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162044162347_)))
                              (_hd162043162351_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162044162347_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl162042162354_))
                              (let ((_e162047162357_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl162042162354_))))
                                (let ((_tl162045162364_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e162047162357_)))
                                      (_hd162046162361_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e162047162357_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd162046162361_))
                                      (let ((_e162048162367_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd162046162361_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e162048162367_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl162045162364_))
                                                (let ((_e162051162371_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl162045162364_))))
                                                  (let ((_tl162049162378_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e162051162371_)))
                                                        (_hd162050162375_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e162051162371_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl162049162378_))
                                                        (___kont163845163846_
                                                         _hd162050162375_
                                                         _hd162043162351_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd162043162351_))
                                                            (let ((_e162060162298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd162043162351_))))
                      (declare (not safe))
                      (_g162035162103_))
                    (let () (declare (not safe)) (_g162035162103_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd162043162351_))
                                                    (let ((_e162060162298_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd162043162351_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e162060162298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162045162364_))
                      (___kont163847163848_ _hd162046162361_ _hd162040162341_)
                      (let () (declare (not safe)) (_g162035162103_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162045162364_))
                      (___kont163851163852_ _hd162046162361_ _hd162043162351_)
                      (let () (declare (not safe)) (_g162035162103_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl162045162364_))
                                                        (___kont163851163852_
                                                         _hd162046162361_
                                                         _hd162043162351_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g162035162103_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd162043162351_))
                                                (let ((_e162060162298_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd162043162351_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e162060162298_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl162045162364_))
                                                          (___kont163847163848_
                                                           _hd162046162361_
                                                           _hd162040162341_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl162045162364_))
                      (let ((_e162078162241_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl162045162364_))))
                        (let ((_tl162076162248_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162078162241_)))
                              (_hd162077162245_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162078162241_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162076162248_))
                              (___kont163849163850_
                               _hd162077162245_
                               _hd162046162361_)
                              (let ()
                                (declare (not safe))
                                (_g162035162103_)))))
                      (let () (declare (not safe)) (_g162035162103_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl162045162364_))
                  (___kont163851163852_ _hd162046162361_ _hd162043162351_)
                  (let () (declare (not safe)) (_g162035162103_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162045162364_))
                                                    (___kont163851163852_
                                                     _hd162046162361_
                                                     _hd162043162351_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162035162103_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd162043162351_))
                                          (let ((_e162060162298_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd162043162351_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e162060162298_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162045162364_))
                                                    (___kont163847163848_
                                                     _hd162046162361_
                                                     _hd162040162341_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl162045162364_))
                                                        (let ((_e162078162241_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl162045162364_))))
                  (let ((_tl162076162248_
                         (let () (declare (not safe)) (##cdr _e162078162241_)))
                        (_hd162077162245_
                         (let ()
                           (declare (not safe))
                           (##car _e162078162241_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl162076162248_))
                        (___kont163849163850_
                         _hd162077162245_
                         _hd162046162361_)
                        (let () (declare (not safe)) (_g162035162103_)))))
                (let () (declare (not safe)) (_g162035162103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162045162364_))
                                                    (___kont163851163852_
                                                     _hd162046162361_
                                                     _hd162043162351_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162035162103_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl162045162364_))
                                              (___kont163851163852_
                                               _hd162046162361_
                                               _hd162043162351_)
                                              (let ()
                                                (declare (not safe))
                                                (_g162035162103_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd162043162351_))
                                  (let ((_e162060162298_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd162043162351_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162042162354_))
                                        (___kont163853163854_
                                         _hd162043162351_
                                         _hd162040162341_)
                                        (let ()
                                          (declare (not safe))
                                          (_g162035162103_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162042162354_))
                                      (___kont163853163854_
                                       _hd162043162351_
                                       _hd162040162341_)
                                      (let ()
                                        (declare (not safe))
                                        (_g162035162103_)))))))
                      (let () (declare (not safe)) (_g162035162103_)))))
              (let () (declare (not safe)) (_g162035162103_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx162405_)
      (let* ((___stx163982163983_ _$stx162405_)
             (_g162410162465_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163982163983_)))))
        (let ((___kont163985163986_
               (lambda (_L162650_ _L162652_)
                 (let ((__tmp164403
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp164388
                        (let ((__tmp164399
                               (let ((__tmp164402
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164400
                                      (let ((__tmp164401
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp164401 '()))))
                                 (declare (not safe))
                                 (cons __tmp164402 __tmp164400)))
                              (__tmp164389
                               (let ((__tmp164390
                                      (let ((__tmp164398
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp164391
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L162650_
                                                  _L162652_))
                                               (let ((__tmp164392
                                                      (lambda (_g162669162673_
                                                               _g162670162676_
                                                               _g162671162678_)
                                                        (let ((__tmp164393
                                                               (let ((__tmp164397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp164394
                              (let ((__tmp164395
                                     (let ((__tmp164396
                                            (let ()
                                              (declare (not safe))
                                              (cons _g162669162673_ '()))))
                                       (declare (not safe))
                                       (cons _g162670162676_ __tmp164396))))
                                (declare (not safe))
                                (cons 'primitive: __tmp164395))))
                         (declare (not safe))
                         (cons __tmp164397 __tmp164394))))
                  (declare (not safe))
                  (cons __tmp164393 _g162671162678_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp164392
                                                         '()
                                                         _L162650_
                                                         _L162652_)))))
                                        (declare (not safe))
                                        (cons __tmp164398 __tmp164391))))
                                 (declare (not safe))
                                 (cons __tmp164390 '()))))
                          (declare (not safe))
                          (cons __tmp164399 __tmp164389))))
                   (declare (not safe))
                   (cons __tmp164403 __tmp164388))))
              (___kont163989163990_
               (lambda (_L162536_ _L162538_)
                 (let ((__tmp164418
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp164404
                        (let ((__tmp164414
                               (let ((__tmp164417
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164415
                                      (let ((__tmp164416
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp164416 '()))))
                                 (declare (not safe))
                                 (cons __tmp164417 __tmp164415)))
                              (__tmp164405
                               (let ((__tmp164406
                                      (let ((__tmp164413
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp164407
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L162536_
                                                  _L162538_))
                                               (let ((__tmp164408
                                                      (lambda (_g162553162557_
                                                               _g162554162560_
                                                               _g162555162562_)
                                                        (let ((__tmp164409
                                                               (let ((__tmp164412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp164410
                              (let ((__tmp164411
                                     (let ()
                                       (declare (not safe))
                                       (cons _g162553162557_ '()))))
                                (declare (not safe))
                                (cons _g162554162560_ __tmp164411))))
                         (declare (not safe))
                         (cons __tmp164412 __tmp164410))))
                  (declare (not safe))
                  (cons __tmp164409 _g162555162562_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp164408
                                                         '()
                                                         _L162536_
                                                         _L162538_)))))
                                        (declare (not safe))
                                        (cons __tmp164413 __tmp164407))))
                                 (declare (not safe))
                                 (cons __tmp164406 '()))))
                          (declare (not safe))
                          (cons __tmp164414 __tmp164405))))
                   (declare (not safe))
                   (cons __tmp164418 __tmp164404)))))
          (let* ((___match164033164034_
                  (lambda (_e162442162472_
                           _hd162441162476_
                           _tl162440162479_
                           ___splice163991163992_
                           _target162443162482_
                           _tl162445162485_)
                    (letrec ((_loop162446162488_
                              (lambda (_hd162444162492_
                                       _dispatch162450162495_
                                       _arity162451162497_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162444162492_))
                                    (let ((_e162447162500_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162444162492_))))
                                      (let ((_lp-tl162449162507_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162447162500_)))
                                            (_lp-hd162448162504_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162447162500_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd162448162504_))
                                            (let ((_e162456162510_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd162448162504_))))
                                              (let ((_tl162454162517_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e162456162510_)))
                                                    (_hd162455162514_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e162456162510_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl162454162517_))
                                                    (let ((_e162459162520_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl162454162517_))))
                                                      (let ((_tl162457162527_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e162459162520_)))
                    (_hd162458162524_
                     (let () (declare (not safe)) (##car _e162459162520_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl162457162527_))
                    (_loop162446162488_
                     _lp-tl162449162507_
                     (let ()
                       (declare (not safe))
                       (cons _hd162458162524_ _dispatch162450162495_))
                     (let ()
                       (declare (not safe))
                       (cons _hd162455162514_ _arity162451162497_)))
                    (let () (declare (not safe)) (_g162410162465_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162410162465_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g162410162465_)))))
                                    (let ((_arity162453162533_
                                           (reverse _arity162451162497_))
                                          (_dispatch162452162530_
                                           (reverse _dispatch162450162495_)))
                                      (___kont163989163990_
                                       _dispatch162452162530_
                                       _arity162453162533_))))))
                      (_loop162446162488_ _target162443162482_ '() '()))))
                 (___match164025164026_
                  (lambda (_e162442162472_ _hd162441162476_ _tl162440162479_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl162440162479_))
                        (let ((___splice163991163992_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl162440162479_
                                  '0))))
                          (let ((_tl162445162485_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice163991163992_ '1)))
                                (_target162443162482_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice163991163992_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl162445162485_))
                                (___match164033164034_
                                 _e162442162472_
                                 _hd162441162476_
                                 _tl162440162479_
                                 ___splice163991163992_
                                 _target162443162482_
                                 _tl162445162485_)
                                (let ()
                                  (declare (not safe))
                                  (_g162410162465_)))))
                        (let () (declare (not safe)) (_g162410162465_)))))
                 (___match164019164020_
                  (lambda (_e162416162572_
                           _hd162415162576_
                           _tl162414162579_
                           _e162419162582_
                           _hd162418162586_
                           _tl162417162589_
                           _e162420162592_
                           ___splice163987163988_
                           _target162421162596_
                           _tl162423162599_)
                    (letrec ((_loop162424162602_
                              (lambda (_hd162422162606_
                                       _dispatch162428162609_
                                       _arity162429162611_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162422162606_))
                                    (let ((_e162425162614_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162422162606_))))
                                      (let ((_lp-tl162427162621_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162425162614_)))
                                            (_lp-hd162426162618_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162425162614_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd162426162618_))
                                            (let ((_e162434162624_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd162426162618_))))
                                              (let ((_tl162432162631_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e162434162624_)))
                                                    (_hd162433162628_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e162434162624_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl162432162631_))
                                                    (let ((_e162437162634_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl162432162631_))))
                                                      (let ((_tl162435162641_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e162437162634_)))
                    (_hd162436162638_
                     (let () (declare (not safe)) (##car _e162437162634_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl162435162641_))
                    (_loop162424162602_
                     _lp-tl162427162621_
                     (let ()
                       (declare (not safe))
                       (cons _hd162436162638_ _dispatch162428162609_))
                     (let ()
                       (declare (not safe))
                       (cons _hd162433162628_ _arity162429162611_)))
                    (___match164025164026_
                     _e162416162572_
                     _hd162415162576_
                     _tl162414162579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match164025164026_
                                                     _e162416162572_
                                                     _hd162415162576_
                                                     _tl162414162579_))))
                                            (___match164025164026_
                                             _e162416162572_
                                             _hd162415162576_
                                             _tl162414162579_))))
                                    (let ((_arity162431162647_
                                           (reverse _arity162429162611_))
                                          (_dispatch162430162644_
                                           (reverse _dispatch162428162609_)))
                                      (___kont163985163986_
                                       _dispatch162430162644_
                                       _arity162431162647_))))))
                      (_loop162424162602_ _target162421162596_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163982163983_))
                (let ((_e162416162572_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163982163983_))))
                  (let ((_tl162414162579_
                         (let () (declare (not safe)) (##cdr _e162416162572_)))
                        (_hd162415162576_
                         (let ()
                           (declare (not safe))
                           (##car _e162416162572_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162414162579_))
                        (let ((_e162419162582_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162414162579_))))
                          (let ((_tl162417162589_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162419162582_)))
                                (_hd162418162586_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162419162582_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd162418162586_))
                                (let ((_e162420162592_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd162418162586_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e162420162592_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl162417162589_))
                                          (let ((___splice163987163988_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl162417162589_
                                                    '0))))
                                            (let ((_tl162423162599_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163987163988_
                                                      '1)))
                                                  (_target162421162596_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163987163988_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162423162599_))
                                                  (___match164019164020_
                                                   _e162416162572_
                                                   _hd162415162576_
                                                   _tl162414162579_
                                                   _e162419162582_
                                                   _hd162418162586_
                                                   _tl162417162589_
                                                   _e162420162592_
                                                   ___splice163987163988_
                                                   _target162421162596_
                                                   _tl162423162599_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162414162579_))
                                                      (let ((___splice163991163992_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162414162579_ '0))))
                (let ((_tl162445162485_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163991163992_ '1)))
                      (_target162443162482_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163991163992_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162445162485_))
                      (___match164033164034_
                       _e162416162572_
                       _hd162415162576_
                       _tl162414162579_
                       ___splice163991163992_
                       _target162443162482_
                       _tl162445162485_)
                      (let () (declare (not safe)) (_g162410162465_)))))
              (let () (declare (not safe)) (_g162410162465_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl162414162579_))
                                              (let ((___splice163991163992_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl162414162579_
                                                        '0))))
                                                (let ((_tl162445162485_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice163991163992_
                                                          '1)))
                                                      (_target162443162482_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice163991163992_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl162445162485_))
                                                      (___match164033164034_
                                                       _e162416162572_
                                                       _hd162415162576_
                                                       _tl162414162579_
                                                       ___splice163991163992_
                                                       _target162443162482_
                                                       _tl162445162485_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g162410162465_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g162410162465_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl162414162579_))
                                          (let ((___splice163991163992_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl162414162579_
                                                    '0))))
                                            (let ((_tl162445162485_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163991163992_
                                                      '1)))
                                                  (_target162443162482_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163991163992_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162445162485_))
                                                  (___match164033164034_
                                                   _e162416162572_
                                                   _hd162415162576_
                                                   _tl162414162579_
                                                   ___splice163991163992_
                                                   _target162443162482_
                                                   _tl162445162485_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g162410162465_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g162410162465_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162414162579_))
                                    (let ((___splice163991163992_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162414162579_
                                              '0))))
                                      (let ((_tl162445162485_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163991163992_
                                                '1)))
                                            (_target162443162482_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163991163992_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162445162485_))
                                            (___match164033164034_
                                             _e162416162572_
                                             _hd162415162576_
                                             _tl162414162579_
                                             ___splice163991163992_
                                             _target162443162482_
                                             _tl162445162485_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162410162465_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162410162465_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl162414162579_))
                            (let ((___splice163991163992_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl162414162579_
                                      '0))))
                              (let ((_tl162445162485_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice163991163992_
                                        '1)))
                                    (_target162443162482_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice163991163992_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl162445162485_))
                                    (___match164033164034_
                                     _e162416162572_
                                     _hd162415162576_
                                     _tl162414162579_
                                     ___splice163991163992_
                                     _target162443162482_
                                     _tl162445162485_)
                                    (let ()
                                      (declare (not safe))
                                      (_g162410162465_)))))
                            (let () (declare (not safe)) (_g162410162465_))))))
                (let () (declare (not safe)) (_g162410162465_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx162687_)
      (let* ((_g162691162709_
              (lambda (_g162692162705_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162692162705_))))
             (_g162690162764_
              (lambda (_g162692162713_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162692162713_))
                    (let ((_e162697162716_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162692162713_))))
                      (let ((_hd162696162720_
                             (let ()
                               (declare (not safe))
                               (##car _e162697162716_)))
                            (_tl162695162723_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162697162716_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl162695162723_))
                            (let ((_e162700162726_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl162695162723_))))
                              (let ((_hd162699162730_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e162700162726_)))
                                    (_tl162698162733_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e162700162726_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl162698162733_))
                                    (let ((_e162703162736_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl162698162733_))))
                                      (let ((_hd162702162740_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162703162736_)))
                                            (_tl162701162743_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162703162736_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162701162743_))
                                            ((lambda (_L162746_ _L162748_)
                                               (let ((__tmp164432
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp164419
                                                      (let ((__tmp164428
                                                             (let ((__tmp164431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp164429
                            (let ((__tmp164430
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp164430 '()))))
                       (declare (not safe))
                       (cons __tmp164431 __tmp164429)))
                    (__tmp164420
                     (let ((__tmp164425
                            (let ((__tmp164427
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp164426
                                   (let ()
                                     (declare (not safe))
                                     (cons _L162748_ '()))))
                              (declare (not safe))
                              (cons __tmp164427 __tmp164426)))
                           (__tmp164421
                            (let ((__tmp164422
                                   (let ((__tmp164424
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp164423
                                          (let ()
                                            (declare (not safe))
                                            (cons _L162746_ '()))))
                                     (declare (not safe))
                                     (cons __tmp164424 __tmp164423))))
                              (declare (not safe))
                              (cons __tmp164422 '()))))
                       (declare (not safe))
                       (cons __tmp164425 __tmp164421))))
                (declare (not safe))
                (cons __tmp164428 __tmp164420))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp164432
                                                       __tmp164419)))
                                             _hd162702162740_
                                             _hd162699162730_)
                                            (_g162691162709_
                                             _g162692162713_))))
                                    (_g162691162709_ _g162692162713_))))
                            (_g162691162709_ _g162692162713_))))
                    (_g162691162709_ _g162692162713_)))))
        (_g162690162764_ _$stx162687_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx162768_)
      (let* ((_g162772162790_
              (lambda (_g162773162786_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162773162786_))))
             (_g162771162845_
              (lambda (_g162773162794_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162773162794_))
                    (let ((_e162778162797_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162773162794_))))
                      (let ((_hd162777162801_
                             (let ()
                               (declare (not safe))
                               (##car _e162778162797_)))
                            (_tl162776162804_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162778162797_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl162776162804_))
                            (let ((_e162781162807_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl162776162804_))))
                              (let ((_hd162780162811_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e162781162807_)))
                                    (_tl162779162814_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e162781162807_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl162779162814_))
                                    (let ((_e162784162817_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl162779162814_))))
                                      (let ((_hd162783162821_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162784162817_)))
                                            (_tl162782162824_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162784162817_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162782162824_))
                                            ((lambda (_L162827_ _L162829_)
                                               (let ((__tmp164446
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp164433
                                                      (let ((__tmp164442
                                                             (let ((__tmp164445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp164443
                            (let ((__tmp164444
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp164444 '()))))
                       (declare (not safe))
                       (cons __tmp164445 __tmp164443)))
                    (__tmp164434
                     (let ((__tmp164439
                            (let ((__tmp164441
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp164440
                                   (let ()
                                     (declare (not safe))
                                     (cons _L162829_ '()))))
                              (declare (not safe))
                              (cons __tmp164441 __tmp164440)))
                           (__tmp164435
                            (let ((__tmp164436
                                   (let ((__tmp164438
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp164437
                                          (let ()
                                            (declare (not safe))
                                            (cons _L162827_ '()))))
                                     (declare (not safe))
                                     (cons __tmp164438 __tmp164437))))
                              (declare (not safe))
                              (cons __tmp164436 '()))))
                       (declare (not safe))
                       (cons __tmp164439 __tmp164435))))
                (declare (not safe))
                (cons __tmp164442 __tmp164434))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp164446
                                                       __tmp164433)))
                                             _hd162783162821_
                                             _hd162780162811_)
                                            (_g162772162790_
                                             _g162773162794_))))
                                    (_g162772162790_ _g162773162794_))))
                            (_g162772162790_ _g162773162794_))))
                    (_g162772162790_ _g162773162794_)))))
        (_g162771162845_ _$stx162768_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx162849_)
      (let* ((___stx164036164037_ _$stx162849_)
             (_g162856162927_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx164036164037_)))))
        (let ((___kont164039164040_
               (lambda (_L163218_ _L163220_)
                 (let ((__tmp164452
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164447
                        (let ((__tmp164448
                               (let ((__tmp164449
                                      (let ((__tmp164451
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164450
                                             (let ()
                                               (declare (not safe))
                                               (cons _L163218_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164451 __tmp164450))))
                                 (declare (not safe))
                                 (cons __tmp164449 '()))))
                          (declare (not safe))
                          (cons _L163220_ __tmp164448))))
                   (declare (not safe))
                   (cons __tmp164452 __tmp164447))))
              (___kont164041164042_
               (lambda (_L163137_ _L163139_)
                 (let ((__tmp164461
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164453
                        (let ((__tmp164454
                               (let ((__tmp164455
                                      (let ((__tmp164460
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164456
                                             (let ((__tmp164457
                                                    (lambda (_g163158163161_
                                                             _g163159163164_)
                                                      (let ((__tmp164458
                                                             (let ((__tmp164459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g163158163161_ __tmp164459))))
                (declare (not safe))
                (cons __tmp164458 _g163159163164_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp164457
                                                       '()
                                                       _L163137_))))
                                        (declare (not safe))
                                        (cons __tmp164460 __tmp164456))))
                                 (declare (not safe))
                                 (cons __tmp164455 '()))))
                          (declare (not safe))
                          (cons _L163139_ __tmp164454))))
                   (declare (not safe))
                   (cons __tmp164461 __tmp164453))))
              (___kont164045164046_
               (lambda (_L163049_ _L163051_)
                 (let ((__tmp164468
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164462
                        (let ((__tmp164463
                               (let ((__tmp164464
                                      (let ((__tmp164467
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164465
                                             (let ((__tmp164466
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L163049_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp164466))))
                                        (declare (not safe))
                                        (cons __tmp164467 __tmp164465))))
                                 (declare (not safe))
                                 (cons __tmp164464 '()))))
                          (declare (not safe))
                          (cons _L163051_ __tmp164463))))
                   (declare (not safe))
                   (cons __tmp164468 __tmp164462))))
              (___kont164047164048_
               (lambda (_L162984_ _L162986_)
                 (let ((__tmp164478
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164469
                        (let ((__tmp164470
                               (let ((__tmp164471
                                      (let ((__tmp164477
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164472
                                             (let ((__tmp164473
                                                    (let ((__tmp164474
                                                           (lambda (_g163003163006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g163004163009_)
                     (let ((__tmp164475
                            (let ((__tmp164476
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g163003163006_ __tmp164476))))
                       (declare (not safe))
                       (cons __tmp164475 _g163004163009_)))))
              (declare (not safe))
              (foldr1 __tmp164474 '() _L162984_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp164473))))
                                        (declare (not safe))
                                        (cons __tmp164477 __tmp164472))))
                                 (declare (not safe))
                                 (cons __tmp164471 '()))))
                          (declare (not safe))
                          (cons _L162986_ __tmp164470))))
                   (declare (not safe))
                   (cons __tmp164478 __tmp164469)))))
          (let* ((___match164155164156_
                  (lambda (_e162909162934_
                           _hd162908162938_
                           _tl162907162941_
                           _e162912162944_
                           _hd162911162948_
                           _tl162910162951_
                           ___splice164049164050_
                           _target162913162954_
                           _tl162915162957_)
                    (letrec ((_loop162916162960_
                              (lambda (_hd162914162964_ _arity162920162967_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162914162964_))
                                    (let ((_e162917162970_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162914162964_))))
                                      (let ((_lp-tl162919162977_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162917162970_)))
                                            (_lp-hd162918162974_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162917162970_))))
                                        (_loop162916162960_
                                         _lp-tl162919162977_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd162918162974_
                                                 _arity162920162967_)))))
                                    (let ((_arity162921162980_
                                           (reverse _arity162920162967_)))
                                      (___kont164047164048_
                                       _arity162921162980_
                                       _hd162911162948_))))))
                      (_loop162916162960_ _target162913162954_ '()))))
                 (___match164115164116_
                  (lambda (_e162877163073_
                           _hd162876163077_
                           _tl162875163080_
                           _e162880163083_
                           _hd162879163087_
                           _tl162878163090_
                           _e162883163093_
                           _hd162882163097_
                           _tl162881163100_
                           _e162884163103_
                           ___splice164043164044_
                           _target162885163107_
                           _tl162887163110_)
                    (letrec ((_loop162888163113_
                              (lambda (_hd162886163117_ _arity162892163120_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162886163117_))
                                    (let ((_e162889163123_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162886163117_))))
                                      (let ((_lp-tl162891163130_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162889163123_)))
                                            (_lp-hd162890163127_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162889163123_))))
                                        (_loop162888163113_
                                         _lp-tl162891163130_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd162890163127_
                                                 _arity162892163120_)))))
                                    (let ((_arity162893163133_
                                           (reverse _arity162892163120_)))
                                      (___kont164041164042_
                                       _arity162893163133_
                                       _hd162879163087_))))))
                      (_loop162888163113_ _target162885163107_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx164036164037_))
                (let ((_e162862163174_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx164036164037_))))
                  (let ((_tl162860163181_
                         (let () (declare (not safe)) (##cdr _e162862163174_)))
                        (_hd162861163178_
                         (let ()
                           (declare (not safe))
                           (##car _e162862163174_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162860163181_))
                        (let ((_e162865163184_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162860163181_))))
                          (let ((_tl162863163191_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162865163184_)))
                                (_hd162864163188_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162865163184_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl162863163191_))
                                (let ((_e162868163194_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl162863163191_))))
                                  (let ((_tl162866163201_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e162868163194_)))
                                        (_hd162867163198_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e162868163194_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd162867163198_))
                                        (let ((_e162869163204_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd162867163198_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e162869163204_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl162866163201_))
                                                  (let ((_e162872163208_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl162866163201_))))
                                                    (let ((_tl162870163215_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e162872163208_)))
                                                          (_hd162871163212_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e162872163208_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl162870163215_))
                                                          (___kont164039164040_
                                                           _hd162871163212_
                                                           _hd162864163188_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl162866163201_))
                      (let ((___splice164043164044_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl162866163201_ '0))))
                        (let ((_tl162887163110_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164043164044_ '1)))
                              (_target162885163107_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164043164044_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162887163110_))
                              (___match164115164116_
                               _e162862163174_
                               _hd162861163178_
                               _tl162860163181_
                               _e162865163184_
                               _hd162864163188_
                               _tl162863163191_
                               _e162868163194_
                               _hd162867163198_
                               _tl162866163201_
                               _e162869163204_
                               ___splice164043164044_
                               _target162885163107_
                               _tl162887163110_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl162863163191_))
                                  (let ((___splice164049164050_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl162863163191_
                                            '0))))
                                    (let ((_tl162915162957_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice164049164050_
                                              '1)))
                                          (_target162913162954_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice164049164050_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl162915162957_))
                                          (___match164155164156_
                                           _e162862163174_
                                           _hd162861163178_
                                           _tl162860163181_
                                           _e162865163184_
                                           _hd162864163188_
                                           _tl162863163191_
                                           ___splice164049164050_
                                           _target162913162954_
                                           _tl162915162957_)
                                          (let ()
                                            (declare (not safe))
                                            (_g162856162927_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g162856162927_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl162863163191_))
                          (let ((___splice164049164050_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl162863163191_
                                    '0))))
                            (let ((_tl162915162957_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice164049164050_ '1)))
                                  (_target162913162954_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice164049164050_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl162915162957_))
                                  (___match164155164156_
                                   _e162862163174_
                                   _hd162861163178_
                                   _tl162860163181_
                                   _e162865163184_
                                   _hd162864163188_
                                   _tl162863163191_
                                   ___splice164049164050_
                                   _target162913162954_
                                   _tl162915162957_)
                                  (let ()
                                    (declare (not safe))
                                    (_g162856162927_)))))
                          (let () (declare (not safe)) (_g162856162927_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162866163201_))
                                                      (let ((___splice164043164044_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162866163201_ '0))))
                (let ((_tl162887163110_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164043164044_ '1)))
                      (_target162885163107_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164043164044_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162887163110_))
                      (___match164115164116_
                       _e162862163174_
                       _hd162861163178_
                       _tl162860163181_
                       _e162865163184_
                       _hd162864163188_
                       _tl162863163191_
                       _e162868163194_
                       _hd162867163198_
                       _tl162866163201_
                       _e162869163204_
                       ___splice164043164044_
                       _target162885163107_
                       _tl162887163110_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl162866163201_))
                          (___kont164045164046_
                           _hd162867163198_
                           _hd162864163188_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl162863163191_))
                              (let ((___splice164049164050_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl162863163191_
                                        '0))))
                                (let ((_tl162915162957_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice164049164050_
                                          '1)))
                                      (_target162913162954_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice164049164050_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162915162957_))
                                      (___match164155164156_
                                       _e162862163174_
                                       _hd162861163178_
                                       _tl162860163181_
                                       _e162865163184_
                                       _hd162864163188_
                                       _tl162863163191_
                                       ___splice164049164050_
                                       _target162913162954_
                                       _tl162915162957_)
                                      (let ()
                                        (declare (not safe))
                                        (_g162856162927_)))))
                              (let ()
                                (declare (not safe))
                                (_g162856162927_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl162866163201_))
                  (___kont164045164046_ _hd162867163198_ _hd162864163188_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl162863163191_))
                      (let ((___splice164049164050_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl162863163191_ '0))))
                        (let ((_tl162915162957_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164049164050_ '1)))
                              (_target162913162954_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164049164050_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162915162957_))
                              (___match164155164156_
                               _e162862163174_
                               _hd162861163178_
                               _tl162860163181_
                               _e162865163184_
                               _hd162864163188_
                               _tl162863163191_
                               ___splice164049164050_
                               _target162913162954_
                               _tl162915162957_)
                              (let ()
                                (declare (not safe))
                                (_g162856162927_)))))
                      (let () (declare (not safe)) (_g162856162927_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162866163201_))
                                                  (___kont164045164046_
                                                   _hd162867163198_
                                                   _hd162864163188_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162863163191_))
                                                      (let ((___splice164049164050_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162863163191_ '0))))
                (let ((_tl162915162957_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164049164050_ '1)))
                      (_target162913162954_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164049164050_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162915162957_))
                      (___match164155164156_
                       _e162862163174_
                       _hd162861163178_
                       _tl162860163181_
                       _e162865163184_
                       _hd162864163188_
                       _tl162863163191_
                       ___splice164049164050_
                       _target162913162954_
                       _tl162915162957_)
                      (let () (declare (not safe)) (_g162856162927_)))))
              (let () (declare (not safe)) (_g162856162927_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162866163201_))
                                            (___kont164045164046_
                                             _hd162867163198_
                                             _hd162864163188_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl162863163191_))
                                                (let ((___splice164049164050_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl162863163191_
                                                          '0))))
                                                  (let ((_tl162915162957_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice164049164050_
                                                            '1)))
                                                        (_target162913162954_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice164049164050_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl162915162957_))
                                                        (___match164155164156_
                                                         _e162862163174_
                                                         _hd162861163178_
                                                         _tl162860163181_
                                                         _e162865163184_
                                                         _hd162864163188_
                                                         _tl162863163191_
                                                         ___splice164049164050_
                                                         _target162913162954_
                                                         _tl162915162957_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g162856162927_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g162856162927_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162863163191_))
                                    (let ((___splice164049164050_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162863163191_
                                              '0))))
                                      (let ((_tl162915162957_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164049164050_
                                                '1)))
                                            (_target162913162954_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164049164050_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162915162957_))
                                            (___match164155164156_
                                             _e162862163174_
                                             _hd162861163178_
                                             _tl162860163181_
                                             _e162865163184_
                                             _hd162864163188_
                                             _tl162863163191_
                                             ___splice164049164050_
                                             _target162913162954_
                                             _tl162915162957_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162856162927_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162856162927_))))))
                        (let () (declare (not safe)) (_g162856162927_)))))
                (let () (declare (not safe)) (_g162856162927_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx163244_)
      (let* ((___stx164158164159_ _$stx163244_)
             (_g163249163284_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx164158164159_)))))
        (let ((___kont164161164162_
               (lambda (_L163406_ _L163408_)
                 (let ((__tmp164484
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164479
                        (let ((__tmp164480
                               (let ((__tmp164481
                                      (let ((__tmp164483
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164482
                                             (let ()
                                               (declare (not safe))
                                               (cons _L163406_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164483 __tmp164482))))
                                 (declare (not safe))
                                 (cons __tmp164481 '()))))
                          (declare (not safe))
                          (cons _L163408_ __tmp164480))))
                   (declare (not safe))
                   (cons __tmp164484 __tmp164479))))
              (___kont164163164164_
               (lambda (_L163341_ _L163343_)
                 (let ((__tmp164493
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164485
                        (let ((__tmp164486
                               (let ((__tmp164487
                                      (let ((__tmp164492
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164488
                                             (let ((__tmp164489
                                                    (lambda (_g163360163363_
                                                             _g163361163366_)
                                                      (let ((__tmp164490
                                                             (let ((__tmp164491
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g163360163363_ __tmp164491))))
                (declare (not safe))
                (cons __tmp164490 _g163361163366_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp164489
                                                       '()
                                                       _L163341_))))
                                        (declare (not safe))
                                        (cons __tmp164492 __tmp164488))))
                                 (declare (not safe))
                                 (cons __tmp164487 '()))))
                          (declare (not safe))
                          (cons _L163343_ __tmp164486))))
                   (declare (not safe))
                   (cons __tmp164493 __tmp164485)))))
          (let ((___match164207164208_
                 (lambda (_e163266163291_
                          _hd163265163295_
                          _tl163264163298_
                          _e163269163301_
                          _hd163268163305_
                          _tl163267163308_
                          ___splice164165164166_
                          _target163270163311_
                          _tl163272163314_)
                   (letrec ((_loop163273163317_
                             (lambda (_hd163271163321_ _arity163277163324_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd163271163321_))
                                   (let ((_e163274163327_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd163271163321_))))
                                     (let ((_lp-tl163276163334_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e163274163327_)))
                                           (_lp-hd163275163331_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e163274163327_))))
                                       (_loop163273163317_
                                        _lp-tl163276163334_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd163275163331_
                                                _arity163277163324_)))))
                                   (let ((_arity163278163337_
                                          (reverse _arity163277163324_)))
                                     (___kont164163164164_
                                      _arity163278163337_
                                      _hd163268163305_))))))
                     (_loop163273163317_ _target163270163311_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx164158164159_))
                (let ((_e163255163376_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx164158164159_))))
                  (let ((_tl163253163383_
                         (let () (declare (not safe)) (##cdr _e163255163376_)))
                        (_hd163254163380_
                         (let ()
                           (declare (not safe))
                           (##car _e163255163376_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl163253163383_))
                        (let ((_e163258163386_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl163253163383_))))
                          (let ((_tl163256163393_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e163258163386_)))
                                (_hd163257163390_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e163258163386_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl163256163393_))
                                (let ((_e163261163396_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl163256163393_))))
                                  (let ((_tl163259163403_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e163261163396_)))
                                        (_hd163260163400_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e163261163396_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163259163403_))
                                        (___kont164161164162_
                                         _hd163260163400_
                                         _hd163257163390_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl163256163393_))
                                            (let ((___splice164165164166_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl163256163393_
                                                      '0))))
                                              (let ((_tl163272163314_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice164165164166_
                                                        '1)))
                                                    (_target163270163311_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice164165164166_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl163272163314_))
                                                    (___match164207164208_
                                                     _e163255163376_
                                                     _hd163254163380_
                                                     _tl163253163383_
                                                     _e163258163386_
                                                     _hd163257163390_
                                                     _tl163256163393_
                                                     ___splice164165164166_
                                                     _target163270163311_
                                                     _tl163272163314_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g163249163284_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g163249163284_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl163256163393_))
                                    (let ((___splice164165164166_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl163256163393_
                                              '0))))
                                      (let ((_tl163272163314_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164165164166_
                                                '1)))
                                            (_target163270163311_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164165164166_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl163272163314_))
                                            (___match164207164208_
                                             _e163255163376_
                                             _hd163254163380_
                                             _tl163253163383_
                                             _e163258163386_
                                             _hd163257163390_
                                             _tl163256163393_
                                             ___splice164165164166_
                                             _target163270163311_
                                             _tl163272163314_)
                                            (let ()
                                              (declare (not safe))
                                              (_g163249163284_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g163249163284_))))))
                        (let () (declare (not safe)) (_g163249163284_)))))
                (let () (declare (not safe)) (_g163249163284_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx163428_)
      (let* ((_g163432163467_
              (lambda (_g163433163463_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g163433163463_))))
             (_g163431163595_
              (lambda (_g163433163471_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g163433163471_))
                    (let ((_e163438163474_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g163433163471_))))
                      (let ((_hd163437163478_
                             (let ()
                               (declare (not safe))
                               (##car _e163438163474_)))
                            (_tl163436163481_
                             (let ()
                               (declare (not safe))
                               (##cdr _e163438163474_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl163436163481_))
                            (let ((_g164494_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl163436163481_
                                      '0))))
                              (begin
                                (let ((_g164495_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164494_)
                                             (##vector-length _g164494_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164495_ 2)))
                                      (error "Context expects 2 values"
                                             _g164495_)))
                                (let ((_target163439163484_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164494_ 0)))
                                      (_tl163441163487_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164494_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl163441163487_))
                                      (letrec ((_loop163442163490_
                                                (lambda (_hd163440163494_
                                                         _arity163446163497_
                                                         _prim163447163499_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd163440163494_))
                                                      (let ((_e163443163502_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd163440163494_))))
                (let ((_lp-hd163444163506_
                       (let () (declare (not safe)) (##car _e163443163502_)))
                      (_lp-tl163445163509_
                       (let () (declare (not safe)) (##cdr _e163443163502_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd163444163506_))
                      (let ((_e163452163512_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd163444163506_))))
                        (let ((_hd163451163516_
                               (let ()
                                 (declare (not safe))
                                 (##car _e163452163512_)))
                              (_tl163450163519_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e163452163512_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl163450163519_))
                              (let ((_g164504_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl163450163519_
                                        '0))))
                                (begin
                                  (let ((_g164505_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g164504_)
                                               (##vector-length _g164504_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g164505_ 2)))
                                        (error "Context expects 2 values"
                                               _g164505_)))
                                  (let ((_target163453163522_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164504_ 0)))
                                        (_tl163455163525_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164504_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163455163525_))
                                        (letrec ((_loop163456163528_
                                                  (lambda (_hd163454163532_
                                                           _arity163460163535_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd163454163532_))
                                                        (let ((_e163457163538_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd163454163532_))))
                  (let ((_lp-hd163458163542_
                         (let () (declare (not safe)) (##car _e163457163538_)))
                        (_lp-tl163459163545_
                         (let ()
                           (declare (not safe))
                           (##cdr _e163457163538_))))
                    (_loop163456163528_
                     _lp-tl163459163545_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd163458163542_ _arity163460163535_)))))
                (let ((_arity163461163548_ (reverse _arity163460163535_)))
                  (_loop163442163490_
                   _lp-tl163445163509_
                   (let ()
                     (declare (not safe))
                     (cons _arity163461163548_ _arity163446163497_))
                   (let ()
                     (declare (not safe))
                     (cons _hd163451163516_ _prim163447163499_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop163456163528_
                                           _target163453163522_
                                           '()))
                                        (_g163432163467_ _g163433163471_)))))
                              (_g163432163467_ _g163433163471_))))
                      (_g163432163467_ _g163433163471_))))
              (let ((_arity163448163552_ (reverse _arity163446163497_))
                    (_prim163449163555_ (reverse _prim163447163499_)))
                ((lambda (_L163558_ _L163560_)
                   (let ((__tmp164503
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164496
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L163558_
                               _L163560_))
                            (let ((__tmp164497
                                   (lambda (_g163575163581_
                                            _g163576163584_
                                            _g163577163586_)
                                     (let ((__tmp164498
                                            (let ((__tmp164502
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp164499
                                                   (let ((__tmp164500
                                                          (let ((__tmp164501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g163578163589_ _g163579163592_)
                           (let ()
                             (declare (not safe))
                             (cons _g163578163589_ _g163579163592_)))))
                    (declare (not safe))
                    (foldr1 __tmp164501 '() _g163575163581_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g163576163584_
                                                           __tmp164500))))
                                              (declare (not safe))
                                              (cons __tmp164502 __tmp164499))))
                                       (declare (not safe))
                                       (cons __tmp164498 _g163577163586_)))))
                              (declare (not safe))
                              (foldr2 __tmp164497 '() _L163558_ _L163560_)))))
                     (declare (not safe))
                     (cons __tmp164503 __tmp164496)))
                 _arity163448163552_
                 _prim163449163555_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop163442163490_
                                         _target163439163484_
                                         '()
                                         '()))
                                      (_g163432163467_ _g163433163471_)))))
                            (_g163432163467_ _g163433163471_))))
                    (_g163432163467_ _g163433163471_)))))
        (_g163431163595_ _$stx163428_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx163601_)
      (let* ((_g163605163640_
              (lambda (_g163606163636_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g163606163636_))))
             (_g163604163768_
              (lambda (_g163606163644_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g163606163644_))
                    (let ((_e163611163647_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g163606163644_))))
                      (let ((_hd163610163651_
                             (let ()
                               (declare (not safe))
                               (##car _e163611163647_)))
                            (_tl163609163654_
                             (let ()
                               (declare (not safe))
                               (##cdr _e163611163647_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl163609163654_))
                            (let ((_g164506_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl163609163654_
                                      '0))))
                              (begin
                                (let ((_g164507_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164506_)
                                             (##vector-length _g164506_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164507_ 2)))
                                      (error "Context expects 2 values"
                                             _g164507_)))
                                (let ((_target163612163657_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164506_ 0)))
                                      (_tl163614163660_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164506_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl163614163660_))
                                      (letrec ((_loop163615163663_
                                                (lambda (_hd163613163667_
                                                         _arity163619163670_
                                                         _prim163620163672_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd163613163667_))
                                                      (let ((_e163616163675_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd163613163667_))))
                (let ((_lp-hd163617163679_
                       (let () (declare (not safe)) (##car _e163616163675_)))
                      (_lp-tl163618163682_
                       (let () (declare (not safe)) (##cdr _e163616163675_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd163617163679_))
                      (let ((_e163625163685_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd163617163679_))))
                        (let ((_hd163624163689_
                               (let ()
                                 (declare (not safe))
                                 (##car _e163625163685_)))
                              (_tl163623163692_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e163625163685_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl163623163692_))
                              (let ((_g164516_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl163623163692_
                                        '0))))
                                (begin
                                  (let ((_g164517_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g164516_)
                                               (##vector-length _g164516_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g164517_ 2)))
                                        (error "Context expects 2 values"
                                               _g164517_)))
                                  (let ((_target163626163695_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164516_ 0)))
                                        (_tl163628163698_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164516_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163628163698_))
                                        (letrec ((_loop163629163701_
                                                  (lambda (_hd163627163705_
                                                           _arity163633163708_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd163627163705_))
                                                        (let ((_e163630163711_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd163627163705_))))
                  (let ((_lp-hd163631163715_
                         (let () (declare (not safe)) (##car _e163630163711_)))
                        (_lp-tl163632163718_
                         (let ()
                           (declare (not safe))
                           (##cdr _e163630163711_))))
                    (_loop163629163701_
                     _lp-tl163632163718_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd163631163715_ _arity163633163708_)))))
                (let ((_arity163634163721_ (reverse _arity163633163708_)))
                  (_loop163615163663_
                   _lp-tl163618163682_
                   (let ()
                     (declare (not safe))
                     (cons _arity163634163721_ _arity163619163670_))
                   (let ()
                     (declare (not safe))
                     (cons _hd163624163689_ _prim163620163672_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop163629163701_
                                           _target163626163695_
                                           '()))
                                        (_g163605163640_ _g163606163644_)))))
                              (_g163605163640_ _g163606163644_))))
                      (_g163605163640_ _g163606163644_))))
              (let ((_arity163621163725_ (reverse _arity163619163670_))
                    (_prim163622163728_ (reverse _prim163620163672_)))
                ((lambda (_L163731_ _L163733_)
                   (let ((__tmp164515
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164508
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L163731_
                               _L163733_))
                            (let ((__tmp164509
                                   (lambda (_g163748163754_
                                            _g163749163757_
                                            _g163750163759_)
                                     (let ((__tmp164510
                                            (let ((__tmp164514
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp164511
                                                   (let ((__tmp164512
                                                          (let ((__tmp164513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g163751163762_ _g163752163765_)
                           (let ()
                             (declare (not safe))
                             (cons _g163751163762_ _g163752163765_)))))
                    (declare (not safe))
                    (foldr1 __tmp164513 '() _g163748163754_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g163749163757_
                                                           __tmp164512))))
                                              (declare (not safe))
                                              (cons __tmp164514 __tmp164511))))
                                       (declare (not safe))
                                       (cons __tmp164510 _g163750163759_)))))
                              (declare (not safe))
                              (foldr2 __tmp164509 '() _L163731_ _L163733_)))))
                     (declare (not safe))
                     (cons __tmp164515 __tmp164508)))
                 _arity163621163725_
                 _prim163622163728_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop163615163663_
                                         _target163612163657_
                                         '()
                                         '()))
                                      (_g163605163640_ _g163606163644_)))))
                            (_g163605163640_ _g163606163644_))))
                    (_g163605163640_ _g163606163644_)))))
        (_g163604163768_ _$stx163601_)))))
