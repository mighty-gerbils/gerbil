(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx160658_)
      (let* ((_g160662160680_
              (lambda (_g160663160676_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160663160676_))))
             (_g160661160735_
              (lambda (_g160663160684_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160663160684_))
                    (let ((_e160668160687_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160663160684_))))
                      (let ((_hd160667160691_
                             (let ()
                               (declare (not safe))
                               (##car _e160668160687_)))
                            (_tl160666160694_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160668160687_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160666160694_))
                            (let ((_e160671160697_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160666160694_))))
                              (let ((_hd160670160701_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160671160697_)))
                                    (_tl160669160704_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160671160697_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160669160704_))
                                    (let ((_e160674160707_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160669160704_))))
                                      (let ((_hd160673160711_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160674160707_)))
                                            (_tl160672160714_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160674160707_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160672160714_))
                                            ((lambda (_L160717_ _L160719_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L160719_))
                                                   (let ((__tmp164217
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp164212
                                                          (let ((__tmp164214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp164216
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp164215
                                (let ()
                                  (declare (not safe))
                                  (cons _L160719_ '()))))
                           (declare (not safe))
                           (cons __tmp164216 __tmp164215)))
                        (__tmp164213
                         (let () (declare (not safe)) (cons _L160717_ '()))))
                    (declare (not safe))
                    (cons __tmp164214 __tmp164213))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp164217
                                                           __tmp164212))
                                                   (_g160662160680_
                                                    _g160663160684_)))
                                             _hd160673160711_
                                             _hd160670160701_)
                                            (_g160662160680_
                                             _g160663160684_))))
                                    (_g160662160680_ _g160663160684_))))
                            (_g160662160680_ _g160663160684_))))
                    (_g160662160680_ _g160663160684_)))))
        (_g160661160735_ _$stx160658_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx160739_)
      (let* ((_g160743160772_
              (lambda (_g160744160768_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160744160768_))))
             (_g160742160872_
              (lambda (_g160744160776_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160744160776_))
                    (let ((_e160749160779_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160744160776_))))
                      (let ((_hd160748160783_
                             (let ()
                               (declare (not safe))
                               (##car _e160749160779_)))
                            (_tl160747160786_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160749160779_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160747160786_))
                            (let ((_g164218_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160747160786_
                                      '0))))
                              (begin
                                (let ((_g164219_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164218_)
                                             (##vector-length _g164218_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164219_ 2)))
                                      (error "Context expects 2 values"
                                             _g164219_)))
                                (let ((_target160750160789_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164218_ 0)))
                                      (_tl160752160792_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164218_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160752160792_))
                                      (letrec ((_loop160753160795_
                                                (lambda (_hd160751160799_
                                                         _type160757160802_
                                                         _symbol160758160804_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160751160799_))
                                                      (let ((_e160754160807_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160751160799_))))
                (let ((_lp-hd160755160811_
                       (let () (declare (not safe)) (##car _e160754160807_)))
                      (_lp-tl160756160814_
                       (let () (declare (not safe)) (##cdr _e160754160807_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160755160811_))
                      (let ((_e160763160817_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160755160811_))))
                        (let ((_hd160762160821_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160763160817_)))
                              (_tl160761160824_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160763160817_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160761160824_))
                              (let ((_e160766160827_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160761160824_))))
                                (let ((_hd160765160831_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160766160827_)))
                                      (_tl160764160834_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160766160827_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160764160834_))
                                      (_loop160753160795_
                                       _lp-tl160756160814_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd160765160831_
                                               _type160757160802_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd160762160821_
                                               _symbol160758160804_)))
                                      (_g160743160772_ _g160744160776_))))
                              (_g160743160772_ _g160744160776_))))
                      (_g160743160772_ _g160744160776_))))
              (let ((_type160759160837_ (reverse _type160757160802_))
                    (_symbol160760160840_ (reverse _symbol160758160804_)))
                ((lambda (_L160843_ _L160845_)
                   (let ((__tmp164226
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164220
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160843_
                               _L160845_))
                            (let ((__tmp164221
                                   (lambda (_g160860160864_
                                            _g160861160867_
                                            _g160862160869_)
                                     (let ((__tmp164222
                                            (let ((__tmp164225
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp164223
                                                   (let ((__tmp164224
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g160860160864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160861160867_
                                                           __tmp164224))))
                                              (declare (not safe))
                                              (cons __tmp164225 __tmp164223))))
                                       (declare (not safe))
                                       (cons __tmp164222 _g160862160869_)))))
                              (declare (not safe))
                              (foldr2 __tmp164221 '() _L160843_ _L160845_)))))
                     (declare (not safe))
                     (cons __tmp164226 __tmp164220)))
                 _type160759160837_
                 _symbol160760160840_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160753160795_
                                         _target160750160789_
                                         '()
                                         '()))
                                      (_g160743160772_ _g160744160776_)))))
                            (_g160743160772_ _g160744160776_))))
                    (_g160743160772_ _g160744160776_)))))
        (_g160742160872_ _$stx160739_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx160877_)
      (let* ((___stx163777163778_ _$stx160877_)
             (_g160882160924_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163777163778_)))))
        (let ((___kont163780163781_
               (lambda (_L161052_ _L161054_ _L161055_ _L161056_)
                 (let ((__tmp164240
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp164227
                        (let ((__tmp164237
                               (let ((__tmp164239
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164238
                                      (let ()
                                        (declare (not safe))
                                        (cons _L161056_ '()))))
                                 (declare (not safe))
                                 (cons __tmp164239 __tmp164238)))
                              (__tmp164228
                               (let ((__tmp164234
                                      (let ((__tmp164236
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164235
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161055_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164236 __tmp164235)))
                                     (__tmp164229
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
                                                      (cons _L161054_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164233 __tmp164232)))
                                            (__tmp164230
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161052_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164231 __tmp164230))))
                                 (declare (not safe))
                                 (cons __tmp164234 __tmp164229))))
                          (declare (not safe))
                          (cons __tmp164237 __tmp164228))))
                   (declare (not safe))
                   (cons __tmp164240 __tmp164227))))
              (___kont163782163783_
               (lambda (_L160971_ _L160973_ _L160974_ _L160975_)
                 (let ((__tmp164241
                        (let ((__tmp164242
                               (let ((__tmp164243
                                      (let ((__tmp164244
                                             (let ((__tmp164245
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp164245 '()))))
                                        (declare (not safe))
                                        (cons _L160971_ __tmp164244))))
                                 (declare (not safe))
                                 (cons _L160973_ __tmp164243))))
                          (declare (not safe))
                          (cons _L160974_ __tmp164242))))
                   (declare (not safe))
                   (cons _L160975_ __tmp164241)))))
          (let ((___match163816163817_
                 (lambda (_e160890161002_
                          _hd160889161006_
                          _tl160888161009_
                          _e160893161012_
                          _hd160892161016_
                          _tl160891161019_
                          _e160896161022_
                          _hd160895161026_
                          _tl160894161029_
                          _e160899161032_
                          _hd160898161036_
                          _tl160897161039_
                          _e160902161042_
                          _hd160901161046_
                          _tl160900161049_)
                   (let ((_L161052_ _hd160901161046_)
                         (_L161054_ _hd160898161036_)
                         (_L161055_ _hd160895161026_)
                         (_L161056_ _hd160892161016_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L161056_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L161055_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L161054_)))
                         (___kont163780163781_
                          _L161052_
                          _L161054_
                          _L161055_
                          _L161056_)
                         (let () (declare (not safe)) (_g160882160924_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163777163778_))
                (let ((_e160890161002_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163777163778_))))
                  (let ((_tl160888161009_
                         (let () (declare (not safe)) (##cdr _e160890161002_)))
                        (_hd160889161006_
                         (let ()
                           (declare (not safe))
                           (##car _e160890161002_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160888161009_))
                        (let ((_e160893161012_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160888161009_))))
                          (let ((_tl160891161019_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160893161012_)))
                                (_hd160892161016_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160893161012_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160891161019_))
                                (let ((_e160896161022_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160891161019_))))
                                  (let ((_tl160894161029_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160896161022_)))
                                        (_hd160895161026_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160896161022_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl160894161029_))
                                        (let ((_e160899161032_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl160894161029_))))
                                          (let ((_tl160897161039_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e160899161032_)))
                                                (_hd160898161036_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e160899161032_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl160897161039_))
                                                (let ((_e160902161042_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl160897161039_))))
                                                  (let ((_tl160900161049_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e160902161042_)))
                                                        (_hd160901161046_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e160902161042_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160900161049_))
                                                        (___match163816163817_
                                                         _e160890161002_
                                                         _hd160889161006_
                                                         _tl160888161009_
                                                         _e160893161012_
                                                         _hd160892161016_
                                                         _tl160891161019_
                                                         _e160896161022_
                                                         _hd160895161026_
                                                         _tl160894161029_
                                                         _e160899161032_
                                                         _hd160898161036_
                                                         _tl160897161039_
                                                         _e160902161042_
                                                         _hd160901161046_
                                                         _tl160900161049_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160882160924_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160897161039_))
                                                    (___kont163782163783_
                                                     _hd160898161036_
                                                     _hd160895161026_
                                                     _hd160892161016_
                                                     _hd160889161006_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160882160924_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g160882160924_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g160882160924_)))))
                        (let () (declare (not safe)) (_g160882160924_)))))
                (let () (declare (not safe)) (_g160882160924_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx161081_)
      (let* ((_g161085161120_
              (lambda (_g161086161116_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161086161116_))))
             (_g161084161239_
              (lambda (_g161086161124_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161086161124_))
                    (let ((_e161092161127_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161086161124_))))
                      (let ((_hd161091161131_
                             (let ()
                               (declare (not safe))
                               (##car _e161092161127_)))
                            (_tl161090161134_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161092161127_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161090161134_))
                            (let ((_g164246_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161090161134_
                                      '0))))
                              (begin
                                (let ((_g164247_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164246_)
                                             (##vector-length _g164246_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164247_ 2)))
                                      (error "Context expects 2 values"
                                             _g164247_)))
                                (let ((_target161093161137_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164246_ 0)))
                                      (_tl161095161140_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164246_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161095161140_))
                                      (letrec ((_loop161096161143_
                                                (lambda (_hd161094161147_
                                                         _symbol161100161150_
                                                         _method161101161152_
                                                         _type-t161102161154_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161094161147_))
                                                      (let ((_e161097161157_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161094161147_))))
                (let ((_lp-hd161098161161_
                       (let () (declare (not safe)) (##car _e161097161157_)))
                      (_lp-tl161099161164_
                       (let () (declare (not safe)) (##cdr _e161097161157_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161098161161_))
                      (let ((_e161108161167_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161098161161_))))
                        (let ((_hd161107161171_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161108161167_)))
                              (_tl161106161174_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161108161167_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl161106161174_))
                              (let ((_e161111161177_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl161106161174_))))
                                (let ((_hd161110161181_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e161111161177_)))
                                      (_tl161109161184_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e161111161177_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl161109161184_))
                                      (let ((_e161114161187_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl161109161184_))))
                                        (let ((_hd161113161191_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e161114161187_)))
                                              (_tl161112161194_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e161114161187_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161112161194_))
                                              (_loop161096161143_
                                               _lp-tl161099161164_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161113161191_
                                                       _symbol161100161150_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161110161181_
                                                       _method161101161152_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161107161171_
                                                       _type-t161102161154_)))
                                              (_g161085161120_
                                               _g161086161124_))))
                                      (_g161085161120_ _g161086161124_))))
                              (_g161085161120_ _g161086161124_))))
                      (_g161085161120_ _g161086161124_))))
              (let ((_symbol161103161197_ (reverse _symbol161100161150_))
                    (_method161104161200_ (reverse _method161101161152_))
                    (_type-t161105161202_ (reverse _type-t161102161154_)))
                ((lambda (_L161205_ _L161207_ _L161208_)
                   (let ((__tmp164255
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164248
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161205_
                               _L161207_
                               _L161208_))
                            (let ((__tmp164249
                                   (lambda (_g161224161229_
                                            _g161225161232_
                                            _g161226161234_
                                            _g161227161236_)
                                     (let ((__tmp164250
                                            (let ((__tmp164254
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp164251
                                                   (let ((__tmp164252
                                                          (let ((__tmp164253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g161224161229_ '()))))
                    (declare (not safe))
                    (cons _g161225161232_ __tmp164253))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161226161234_
                                                           __tmp164252))))
                                              (declare (not safe))
                                              (cons __tmp164254 __tmp164251))))
                                       (declare (not safe))
                                       (cons __tmp164250 _g161227161236_)))))
                              (declare (not safe))
                              (foldr* __tmp164249
                                      '()
                                      _L161205_
                                      _L161207_
                                      _L161208_)))))
                     (declare (not safe))
                     (cons __tmp164255 __tmp164248)))
                 _symbol161103161197_
                 _method161104161200_
                 _type-t161105161202_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161096161143_
                                         _target161093161137_
                                         '()
                                         '()
                                         '()))
                                      (_g161085161120_ _g161086161124_)))))
                            (_g161085161120_ _g161086161124_))))
                    (_g161085161120_ _g161086161124_)))))
        (_g161084161239_ _$stx161081_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx161244_)
      (let* ((_g161248161281_
              (lambda (_g161249161277_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161249161277_))))
             (_g161247161395_
              (lambda (_g161249161285_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161249161285_))
                    (let ((_e161255161288_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161249161285_))))
                      (let ((_hd161254161292_
                             (let ()
                               (declare (not safe))
                               (##car _e161255161288_)))
                            (_tl161253161295_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161255161288_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161253161295_))
                            (let ((_e161258161298_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161253161295_))))
                              (let ((_hd161257161302_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161258161298_)))
                                    (_tl161256161305_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161258161298_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161256161305_))
                                    (let ((_g164256_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161256161305_
                                              '0))))
                                      (begin
                                        (let ((_g164257_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g164256_)
                                                     (##vector-length
                                                      _g164256_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g164257_ 2)))
                                              (error "Context expects 2 values"
                                                     _g164257_)))
                                        (let ((_target161259161308_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g164256_ 0)))
                                              (_tl161261161311_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g164256_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161261161311_))
                                              (letrec ((_loop161262161314_
                                                        (lambda (_hd161260161318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol161266161321_
                         _method161267161323_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd161260161318_))
                      (let ((_e161263161326_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd161260161318_))))
                        (let ((_lp-hd161264161330_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161263161326_)))
                              (_lp-tl161265161333_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161263161326_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd161264161330_))
                              (let ((_e161272161336_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd161264161330_))))
                                (let ((_hd161271161340_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e161272161336_)))
                                      (_tl161270161343_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e161272161336_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl161270161343_))
                                      (let ((_e161275161346_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl161270161343_))))
                                        (let ((_hd161274161350_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e161275161346_)))
                                              (_tl161273161353_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e161275161346_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161273161353_))
                                              (_loop161262161314_
                                               _lp-tl161265161333_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161274161350_
                                                       _symbol161266161321_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161271161340_
                                                       _method161267161323_)))
                                              (_g161248161281_
                                               _g161249161285_))))
                                      (_g161248161281_ _g161249161285_))))
                              (_g161248161281_ _g161249161285_))))
                      (let ((_symbol161268161356_
                             (reverse _symbol161266161321_))
                            (_method161269161359_
                             (reverse _method161267161323_)))
                        ((lambda (_L161362_ _L161364_ _L161365_)
                           (let ((__tmp164265
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp164258
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L161362_
                                       _L161364_))
                                    (let ((__tmp164259
                                           (lambda (_g161383161387_
                                                    _g161384161390_
                                                    _g161385161392_)
                                             (let ((__tmp164260
                                                    (let ((__tmp164264
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp164261
                                                           (let ((__tmp164262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp164263
                                 (let ()
                                   (declare (not safe))
                                   (cons _g161383161387_ '()))))
                            (declare (not safe))
                            (cons _g161384161390_ __tmp164263))))
                     (declare (not safe))
                     (cons _L161365_ __tmp164262))))
              (declare (not safe))
              (cons __tmp164264 __tmp164261))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp164260
                                                     _g161385161392_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp164259
                                              '()
                                              _L161362_
                                              _L161364_)))))
                             (declare (not safe))
                             (cons __tmp164265 __tmp164258)))
                         _symbol161268161356_
                         _method161269161359_
                         _hd161257161302_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop161262161314_
                                                 _target161259161308_
                                                 '()
                                                 '()))
                                              (_g161248161281_
                                               _g161249161285_)))))
                                    (_g161248161281_ _g161249161285_))))
                            (_g161248161281_ _g161249161285_))))
                    (_g161248161281_ _g161249161285_)))))
        (_g161247161395_ _$stx161244_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx161400_)
      (let* ((_g161404161418_
              (lambda (_g161405161414_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161405161414_))))
             (_g161403161459_
              (lambda (_g161405161422_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161405161422_))
                    (let ((_e161409161425_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161405161422_))))
                      (let ((_hd161408161429_
                             (let ()
                               (declare (not safe))
                               (##car _e161409161425_)))
                            (_tl161407161432_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161409161425_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161407161432_))
                            (let ((_e161412161435_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161407161432_))))
                              (let ((_hd161411161439_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161412161435_)))
                                    (_tl161410161442_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161412161435_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161410161442_))
                                    ((lambda (_L161445_)
                                       (let ((__tmp164270
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp164266
                                              (let ((__tmp164267
                                                     (let ((__tmp164269
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164268
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164269 __tmp164268))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164267 '()))))
                                         (declare (not safe))
                                         (cons __tmp164270 __tmp164266)))
                                     _hd161411161439_)
                                    (_g161404161418_ _g161405161422_))))
                            (_g161404161418_ _g161405161422_))))
                    (_g161404161418_ _g161405161422_)))))
        (_g161403161459_ _$stx161400_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx161463_)
      (let* ((_g161467161521_
              (lambda (_g161468161517_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161468161517_))))
             (_g161466161702_
              (lambda (_g161468161525_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161468161525_))
                    (let ((_e161482161528_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161468161525_))))
                      (let ((_hd161481161532_
                             (let ()
                               (declare (not safe))
                               (##car _e161482161528_)))
                            (_tl161480161535_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161482161528_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161480161535_))
                            (let ((_e161485161538_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161480161535_))))
                              (let ((_hd161484161542_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161485161538_)))
                                    (_tl161483161545_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161485161538_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161483161545_))
                                    (let ((_e161488161548_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161483161545_))))
                                      (let ((_hd161487161552_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161488161548_)))
                                            (_tl161486161555_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161488161548_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161486161555_))
                                            (let ((_e161491161558_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161486161555_))))
                                              (let ((_hd161490161562_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161491161558_)))
                                                    (_tl161489161565_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161491161558_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161489161565_))
                                                    (let ((_e161494161568_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161489161565_))))
                                                      (let ((_hd161493161572_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e161494161568_)))
                    (_tl161492161575_
                     (let () (declare (not safe)) (##cdr _e161494161568_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl161492161575_))
                    (let ((_e161497161578_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl161492161575_))))
                      (let ((_hd161496161582_
                             (let ()
                               (declare (not safe))
                               (##car _e161497161578_)))
                            (_tl161495161585_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161497161578_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161495161585_))
                            (let ((_e161500161588_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161495161585_))))
                              (let ((_hd161499161592_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161500161588_)))
                                    (_tl161498161595_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161500161588_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161498161595_))
                                    (let ((_e161503161598_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161498161595_))))
                                      (let ((_hd161502161602_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161503161598_)))
                                            (_tl161501161605_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161503161598_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161501161605_))
                                            (let ((_e161506161608_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161501161605_))))
                                              (let ((_hd161505161612_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161506161608_)))
                                                    (_tl161504161615_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161506161608_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161504161615_))
                                                    (let ((_e161509161618_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161504161615_))))
                                                      (let ((_hd161508161622_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e161509161618_)))
                    (_tl161507161625_
                     (let () (declare (not safe)) (##cdr _e161509161618_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl161507161625_))
                    (let ((_e161512161628_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl161507161625_))))
                      (let ((_hd161511161632_
                             (let ()
                               (declare (not safe))
                               (##car _e161512161628_)))
                            (_tl161510161635_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161512161628_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161510161635_))
                            (let ((_e161515161638_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161510161635_))))
                              (let ((_hd161514161642_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161515161638_)))
                                    (_tl161513161645_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161515161638_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161513161645_))
                                    ((lambda (_L161648_
                                              _L161650_
                                              _L161651_
                                              _L161652_
                                              _L161653_
                                              _L161654_
                                              _L161655_
                                              _L161656_
                                              _L161657_
                                              _L161658_
                                              _L161659_)
                                       (let ((__tmp164306
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class)))
                                             (__tmp164271
                                              (let ((__tmp164303
                                                     (let ((__tmp164305
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164304
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164305 __tmp164304)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp164272
                                                     (let ((__tmp164300
                                                            (let ((__tmp164302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote)))
                          (__tmp164301
                           (let () (declare (not safe)) (cons _L161658_ '()))))
                      (declare (not safe))
                      (cons __tmp164302 __tmp164301)))
                   (__tmp164273
                    (let ((__tmp164297
                           (let ((__tmp164299
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote)))
                                 (__tmp164298
                                  (let ()
                                    (declare (not safe))
                                    (cons _L161657_ '()))))
                             (declare (not safe))
                             (cons __tmp164299 __tmp164298)))
                          (__tmp164274
                           (let ((__tmp164294
                                  (let ((__tmp164296
                                         (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote)))
                                        (__tmp164295
                                         (let ()
                                           (declare (not safe))
                                           (cons _L161656_ '()))))
                                    (declare (not safe))
                                    (cons __tmp164296 __tmp164295)))
                                 (__tmp164275
                                  (let ((__tmp164291
                                         (let ((__tmp164293
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote)))
                                               (__tmp164292
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L161655_ '()))))
                                           (declare (not safe))
                                           (cons __tmp164293 __tmp164292)))
                                        (__tmp164276
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
                                                         (cons _L161654_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp164290
                                                        __tmp164289)))
                                               (__tmp164277
                                                (let ((__tmp164278
                                                       (let ((__tmp164279
                                                              (let ((__tmp164280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp164285
                                    (let ((__tmp164287
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164286
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161650_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164287 __tmp164286)))
                                   (__tmp164281
                                    (let ((__tmp164282
                                           (let ((__tmp164284
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'quote)))
                                                 (__tmp164283
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L161648_ '()))))
                                             (declare (not safe))
                                             (cons __tmp164284 __tmp164283))))
                                      (declare (not safe))
                                      (cons __tmp164282 '()))))
                               (declare (not safe))
                               (cons __tmp164285 __tmp164281))))
                        (declare (not safe))
                        (cons _L161651_ __tmp164280))))
                 (declare (not safe))
                 (cons _L161652_ __tmp164279))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L161653_
                                                        __tmp164278))))
                                           (declare (not safe))
                                           (cons __tmp164288 __tmp164277))))
                                    (declare (not safe))
                                    (cons __tmp164291 __tmp164276))))
                             (declare (not safe))
                             (cons __tmp164294 __tmp164275))))
                      (declare (not safe))
                      (cons __tmp164297 __tmp164274))))
               (declare (not safe))
               (cons __tmp164300 __tmp164273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164303
                                                      __tmp164272))))
                                         (declare (not safe))
                                         (cons __tmp164306 __tmp164271)))
                                     _hd161514161642_
                                     _hd161511161632_
                                     _hd161508161622_
                                     _hd161505161612_
                                     _hd161502161602_
                                     _hd161499161592_
                                     _hd161496161582_
                                     _hd161493161572_
                                     _hd161490161562_
                                     _hd161487161552_
                                     _hd161484161542_)
                                    (_g161467161521_ _g161468161525_))))
                            (_g161467161521_ _g161468161525_))))
                    (_g161467161521_ _g161468161525_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g161467161521_
                                                     _g161468161525_))))
                                            (_g161467161521_
                                             _g161468161525_))))
                                    (_g161467161521_ _g161468161525_))))
                            (_g161467161521_ _g161468161525_))))
                    (_g161467161521_ _g161468161525_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g161467161521_
                                                     _g161468161525_))))
                                            (_g161467161521_
                                             _g161468161525_))))
                                    (_g161467161521_ _g161468161525_))))
                            (_g161467161521_ _g161468161525_))))
                    (_g161467161521_ _g161468161525_)))))
        (_g161466161702_ _$stx161463_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx161706_)
      (let* ((_g161710161724_
              (lambda (_g161711161720_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161711161720_))))
             (_g161709161765_
              (lambda (_g161711161728_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161711161728_))
                    (let ((_e161715161731_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161711161728_))))
                      (let ((_hd161714161735_
                             (let ()
                               (declare (not safe))
                               (##car _e161715161731_)))
                            (_tl161713161738_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161715161731_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161713161738_))
                            (let ((_e161718161741_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161713161738_))))
                              (let ((_hd161717161745_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161718161741_)))
                                    (_tl161716161748_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161718161741_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161716161748_))
                                    ((lambda (_L161751_)
                                       (let ((__tmp164311
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp164307
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
                                                              (cons _L161751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164310 __tmp164309))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164308 '()))))
                                         (declare (not safe))
                                         (cons __tmp164311 __tmp164307)))
                                     _hd161717161745_)
                                    (_g161710161724_ _g161711161728_))))
                            (_g161710161724_ _g161711161728_))))
                    (_g161710161724_ _g161711161728_)))))
        (_g161709161765_ _$stx161706_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx161769_)
      (let* ((_g161773161787_
              (lambda (_g161774161783_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161774161783_))))
             (_g161772161828_
              (lambda (_g161774161791_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161774161791_))
                    (let ((_e161778161794_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161774161791_))))
                      (let ((_hd161777161798_
                             (let ()
                               (declare (not safe))
                               (##car _e161778161794_)))
                            (_tl161776161801_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161778161794_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161776161801_))
                            (let ((_e161781161804_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161776161801_))))
                              (let ((_hd161780161808_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161781161804_)))
                                    (_tl161779161811_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161781161804_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161779161811_))
                                    ((lambda (_L161814_)
                                       (let ((__tmp164316
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
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
                                                              (cons _L161814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164315 __tmp164314))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164313 '()))))
                                         (declare (not safe))
                                         (cons __tmp164316 __tmp164312)))
                                     _hd161780161808_)
                                    (_g161773161787_ _g161774161791_))))
                            (_g161773161787_ _g161774161791_))))
                    (_g161773161787_ _g161774161791_)))))
        (_g161772161828_ _$stx161769_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx161832_)
      (let* ((_g161836161858_
              (lambda (_g161837161854_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161837161854_))))
             (_g161835161927_
              (lambda (_g161837161862_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161837161862_))
                    (let ((_e161843161865_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161837161862_))))
                      (let ((_hd161842161869_
                             (let ()
                               (declare (not safe))
                               (##car _e161843161865_)))
                            (_tl161841161872_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161843161865_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161841161872_))
                            (let ((_e161846161875_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161841161872_))))
                              (let ((_hd161845161879_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161846161875_)))
                                    (_tl161844161882_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161846161875_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161844161882_))
                                    (let ((_e161849161885_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161844161882_))))
                                      (let ((_hd161848161889_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161849161885_)))
                                            (_tl161847161892_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161849161885_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161847161892_))
                                            (let ((_e161852161895_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161847161892_))))
                                              (let ((_hd161851161899_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161852161895_)))
                                                    (_tl161850161902_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161852161895_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161850161902_))
                                                    ((lambda (_L161905_
                                                              _L161907_
                                                              _L161908_)
                                                       (let ((__tmp164326
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp164317
                      (let ((__tmp164323
                             (let ((__tmp164325
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp164324
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161908_ '()))))
                               (declare (not safe))
                               (cons __tmp164325 __tmp164324)))
                            (__tmp164318
                             (let ((__tmp164320
                                    (let ((__tmp164322
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164321
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161907_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164322 __tmp164321)))
                                   (__tmp164319
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161905_ '()))))
                               (declare (not safe))
                               (cons __tmp164320 __tmp164319))))
                        (declare (not safe))
                        (cons __tmp164323 __tmp164318))))
                 (declare (not safe))
                 (cons __tmp164326 __tmp164317)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd161851161899_
                                                     _hd161848161889_
                                                     _hd161845161879_)
                                                    (_g161836161858_
                                                     _g161837161862_))))
                                            (_g161836161858_
                                             _g161837161862_))))
                                    (_g161836161858_ _g161837161862_))))
                            (_g161836161858_ _g161837161862_))))
                    (_g161836161858_ _g161837161862_)))))
        (_g161835161927_ _$stx161832_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx161931_)
      (let* ((_g161935161957_
              (lambda (_g161936161953_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161936161953_))))
             (_g161934162026_
              (lambda (_g161936161961_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161936161961_))
                    (let ((_e161942161964_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161936161961_))))
                      (let ((_hd161941161968_
                             (let ()
                               (declare (not safe))
                               (##car _e161942161964_)))
                            (_tl161940161971_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161942161964_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161940161971_))
                            (let ((_e161945161974_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161940161971_))))
                              (let ((_hd161944161978_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161945161974_)))
                                    (_tl161943161981_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161945161974_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161943161981_))
                                    (let ((_e161948161984_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161943161981_))))
                                      (let ((_hd161947161988_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161948161984_)))
                                            (_tl161946161991_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161948161984_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161946161991_))
                                            (let ((_e161951161994_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161946161991_))))
                                              (let ((_hd161950161998_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161951161994_)))
                                                    (_tl161949162001_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161951161994_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161949162001_))
                                                    ((lambda (_L162004_
                                                              _L162006_
                                                              _L162007_)
                                                       (let ((__tmp164336
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp164327
                      (let ((__tmp164333
                             (let ((__tmp164335
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp164334
                                    (let ()
                                      (declare (not safe))
                                      (cons _L162007_ '()))))
                               (declare (not safe))
                               (cons __tmp164335 __tmp164334)))
                            (__tmp164328
                             (let ((__tmp164330
                                    (let ((__tmp164332
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164331
                                           (let ()
                                             (declare (not safe))
                                             (cons _L162006_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164332 __tmp164331)))
                                   (__tmp164329
                                    (let ()
                                      (declare (not safe))
                                      (cons _L162004_ '()))))
                               (declare (not safe))
                               (cons __tmp164330 __tmp164329))))
                        (declare (not safe))
                        (cons __tmp164333 __tmp164328))))
                 (declare (not safe))
                 (cons __tmp164336 __tmp164327)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd161950161998_
                                                     _hd161947161988_
                                                     _hd161944161978_)
                                                    (_g161935161957_
                                                     _g161936161961_))))
                                            (_g161935161957_
                                             _g161936161961_))))
                                    (_g161935161957_ _g161936161961_))))
                            (_g161935161957_ _g161936161961_))))
                    (_g161935161957_ _g161936161961_)))))
        (_g161934162026_ _$stx161931_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx162030_)
      (let* ((___stx163845163846_ _$stx162030_)
             (_g162038162106_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163845163846_)))))
        (let ((___kont163848163849_
               (lambda (_L162384_ _L162386_)
                 (let ((__tmp164357
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp164337
                        (let ((__tmp164353
                               (let ((__tmp164356
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164354
                                      (let ((__tmp164355
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164355 '()))))
                                 (declare (not safe))
                                 (cons __tmp164356 __tmp164354)))
                              (__tmp164338
                               (let ((__tmp164350
                                      (let ((__tmp164352
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164351
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162386_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164352 __tmp164351)))
                                     (__tmp164339
                                      (let ((__tmp164340
                                             (let ((__tmp164341
                                                    (let ((__tmp164342
                                                           (let ((__tmp164349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp164343
                          (let ((__tmp164344
                                 (let ((__tmp164348
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp164345
                                        (let ((__tmp164346
                                               (let ((__tmp164347
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L162384_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp164347))))
                                          (declare (not safe))
                                          (cons _L162386_ __tmp164346))))
                                   (declare (not safe))
                                   (cons __tmp164348 __tmp164345))))
                            (declare (not safe))
                            (cons __tmp164344 '()))))
                     (declare (not safe))
                     (cons __tmp164349 __tmp164343))))
              (declare (not safe))
              (cons __tmp164342 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L162384_ __tmp164341))))
                                        (declare (not safe))
                                        (cons '#f __tmp164340))))
                                 (declare (not safe))
                                 (cons __tmp164350 __tmp164339))))
                          (declare (not safe))
                          (cons __tmp164353 __tmp164338))))
                   (declare (not safe))
                   (cons __tmp164357 __tmp164337))))
              (___kont163850163851_
               (lambda (_L162315_ _L162317_)
                 (let ((__tmp164358
                        (let ((__tmp164359
                               (let ((__tmp164360
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L162315_ __tmp164360))))
                          (declare (not safe))
                          (cons 'primitive: __tmp164359))))
                   (declare (not safe))
                   (cons _L162317_ __tmp164358))))
              (___kont163852163853_
               (lambda (_L162254_ _L162256_)
                 (let ((__tmp164374
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp164361
                        (let ((__tmp164370
                               (let ((__tmp164373
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164371
                                      (let ((__tmp164372
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164372 '()))))
                                 (declare (not safe))
                                 (cons __tmp164373 __tmp164371)))
                              (__tmp164362
                               (let ((__tmp164367
                                      (let ((__tmp164369
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164368
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162256_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164369 __tmp164368)))
                                     (__tmp164363
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
                                                      (cons _L162254_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164366
                                                     __tmp164365))))
                                        (declare (not safe))
                                        (cons __tmp164364 '()))))
                                 (declare (not safe))
                                 (cons __tmp164367 __tmp164363))))
                          (declare (not safe))
                          (cons __tmp164370 __tmp164362))))
                   (declare (not safe))
                   (cons __tmp164374 __tmp164361))))
              (___kont163854163855_
               (lambda (_L162186_ _L162188_)
                 (let ((__tmp164388
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp164375
                        (let ((__tmp164384
                               (let ((__tmp164387
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164385
                                      (let ((__tmp164386
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164386 '()))))
                                 (declare (not safe))
                                 (cons __tmp164387 __tmp164385)))
                              (__tmp164376
                               (let ((__tmp164381
                                      (let ((__tmp164383
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164382
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162188_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164383 __tmp164382)))
                                     (__tmp164377
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
                                                      (cons _L162186_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164380
                                                     __tmp164379))))
                                        (declare (not safe))
                                        (cons __tmp164378 '()))))
                                 (declare (not safe))
                                 (cons __tmp164381 __tmp164377))))
                          (declare (not safe))
                          (cons __tmp164384 __tmp164376))))
                   (declare (not safe))
                   (cons __tmp164388 __tmp164375))))
              (___kont163856163857_
               (lambda (_L162133_ _L162135_)
                 (let ((__tmp164389
                        (let ((__tmp164390
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L162133_ __tmp164390))))
                   (declare (not safe))
                   (cons _L162135_ __tmp164389)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx163845163846_))
              (let ((_e162044162340_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx163845163846_))))
                (let ((_tl162042162347_
                       (let () (declare (not safe)) (##cdr _e162044162340_)))
                      (_hd162043162344_
                       (let () (declare (not safe)) (##car _e162044162340_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl162042162347_))
                      (let ((_e162047162350_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl162042162347_))))
                        (let ((_tl162045162357_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162047162350_)))
                              (_hd162046162354_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162047162350_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl162045162357_))
                              (let ((_e162050162360_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl162045162357_))))
                                (let ((_tl162048162367_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e162050162360_)))
                                      (_hd162049162364_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e162050162360_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd162049162364_))
                                      (let ((_e162051162370_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd162049162364_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e162051162370_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl162048162367_))
                                                (let ((_e162054162374_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl162048162367_))))
                                                  (let ((_tl162052162381_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e162054162374_)))
                                                        (_hd162053162378_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e162054162374_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl162052162381_))
                                                        (___kont163848163849_
                                                         _hd162053162378_
                                                         _hd162046162354_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd162046162354_))
                                                            (let ((_e162063162301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd162046162354_))))
                      (declare (not safe))
                      (_g162038162106_))
                    (let () (declare (not safe)) (_g162038162106_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd162046162354_))
                                                    (let ((_e162063162301_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd162046162354_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e162063162301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162048162367_))
                      (___kont163850163851_ _hd162049162364_ _hd162043162344_)
                      (let () (declare (not safe)) (_g162038162106_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162048162367_))
                      (___kont163854163855_ _hd162049162364_ _hd162046162354_)
                      (let () (declare (not safe)) (_g162038162106_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl162048162367_))
                                                        (___kont163854163855_
                                                         _hd162049162364_
                                                         _hd162046162354_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g162038162106_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd162046162354_))
                                                (let ((_e162063162301_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd162046162354_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e162063162301_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl162048162367_))
                                                          (___kont163850163851_
                                                           _hd162049162364_
                                                           _hd162043162344_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl162048162367_))
                      (let ((_e162081162244_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl162048162367_))))
                        (let ((_tl162079162251_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162081162244_)))
                              (_hd162080162248_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162081162244_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162079162251_))
                              (___kont163852163853_
                               _hd162080162248_
                               _hd162049162364_)
                              (let ()
                                (declare (not safe))
                                (_g162038162106_)))))
                      (let () (declare (not safe)) (_g162038162106_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl162048162367_))
                  (___kont163854163855_ _hd162049162364_ _hd162046162354_)
                  (let () (declare (not safe)) (_g162038162106_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162048162367_))
                                                    (___kont163854163855_
                                                     _hd162049162364_
                                                     _hd162046162354_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162038162106_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd162046162354_))
                                          (let ((_e162063162301_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd162046162354_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e162063162301_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162048162367_))
                                                    (___kont163850163851_
                                                     _hd162049162364_
                                                     _hd162043162344_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl162048162367_))
                                                        (let ((_e162081162244_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl162048162367_))))
                  (let ((_tl162079162251_
                         (let () (declare (not safe)) (##cdr _e162081162244_)))
                        (_hd162080162248_
                         (let ()
                           (declare (not safe))
                           (##car _e162081162244_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl162079162251_))
                        (___kont163852163853_
                         _hd162080162248_
                         _hd162049162364_)
                        (let () (declare (not safe)) (_g162038162106_)))))
                (let () (declare (not safe)) (_g162038162106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162048162367_))
                                                    (___kont163854163855_
                                                     _hd162049162364_
                                                     _hd162046162354_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162038162106_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl162048162367_))
                                              (___kont163854163855_
                                               _hd162049162364_
                                               _hd162046162354_)
                                              (let ()
                                                (declare (not safe))
                                                (_g162038162106_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd162046162354_))
                                  (let ((_e162063162301_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd162046162354_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162045162357_))
                                        (___kont163856163857_
                                         _hd162046162354_
                                         _hd162043162344_)
                                        (let ()
                                          (declare (not safe))
                                          (_g162038162106_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162045162357_))
                                      (___kont163856163857_
                                       _hd162046162354_
                                       _hd162043162344_)
                                      (let ()
                                        (declare (not safe))
                                        (_g162038162106_)))))))
                      (let () (declare (not safe)) (_g162038162106_)))))
              (let () (declare (not safe)) (_g162038162106_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx162408_)
      (let* ((___stx163985163986_ _$stx162408_)
             (_g162413162468_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163985163986_)))))
        (let ((___kont163988163989_
               (lambda (_L162653_ _L162655_)
                 (let ((__tmp164406
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp164391
                        (let ((__tmp164402
                               (let ((__tmp164405
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164403
                                      (let ((__tmp164404
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp164404 '()))))
                                 (declare (not safe))
                                 (cons __tmp164405 __tmp164403)))
                              (__tmp164392
                               (let ((__tmp164393
                                      (let ((__tmp164401
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp164394
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L162653_
                                                  _L162655_))
                                               (let ((__tmp164395
                                                      (lambda (_g162672162676_
                                                               _g162673162679_
                                                               _g162674162681_)
                                                        (let ((__tmp164396
                                                               (let ((__tmp164400
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp164397
                              (let ((__tmp164398
                                     (let ((__tmp164399
                                            (let ()
                                              (declare (not safe))
                                              (cons _g162672162676_ '()))))
                                       (declare (not safe))
                                       (cons _g162673162679_ __tmp164399))))
                                (declare (not safe))
                                (cons 'primitive: __tmp164398))))
                         (declare (not safe))
                         (cons __tmp164400 __tmp164397))))
                  (declare (not safe))
                  (cons __tmp164396 _g162674162681_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp164395
                                                         '()
                                                         _L162653_
                                                         _L162655_)))))
                                        (declare (not safe))
                                        (cons __tmp164401 __tmp164394))))
                                 (declare (not safe))
                                 (cons __tmp164393 '()))))
                          (declare (not safe))
                          (cons __tmp164402 __tmp164392))))
                   (declare (not safe))
                   (cons __tmp164406 __tmp164391))))
              (___kont163992163993_
               (lambda (_L162539_ _L162541_)
                 (let ((__tmp164421
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp164407
                        (let ((__tmp164417
                               (let ((__tmp164420
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164418
                                      (let ((__tmp164419
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp164419 '()))))
                                 (declare (not safe))
                                 (cons __tmp164420 __tmp164418)))
                              (__tmp164408
                               (let ((__tmp164409
                                      (let ((__tmp164416
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp164410
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L162539_
                                                  _L162541_))
                                               (let ((__tmp164411
                                                      (lambda (_g162556162560_
                                                               _g162557162563_
                                                               _g162558162565_)
                                                        (let ((__tmp164412
                                                               (let ((__tmp164415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp164413
                              (let ((__tmp164414
                                     (let ()
                                       (declare (not safe))
                                       (cons _g162556162560_ '()))))
                                (declare (not safe))
                                (cons _g162557162563_ __tmp164414))))
                         (declare (not safe))
                         (cons __tmp164415 __tmp164413))))
                  (declare (not safe))
                  (cons __tmp164412 _g162558162565_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp164411
                                                         '()
                                                         _L162539_
                                                         _L162541_)))))
                                        (declare (not safe))
                                        (cons __tmp164416 __tmp164410))))
                                 (declare (not safe))
                                 (cons __tmp164409 '()))))
                          (declare (not safe))
                          (cons __tmp164417 __tmp164408))))
                   (declare (not safe))
                   (cons __tmp164421 __tmp164407)))))
          (let* ((___match164036164037_
                  (lambda (_e162445162475_
                           _hd162444162479_
                           _tl162443162482_
                           ___splice163994163995_
                           _target162446162485_
                           _tl162448162488_)
                    (letrec ((_loop162449162491_
                              (lambda (_hd162447162495_
                                       _dispatch162453162498_
                                       _arity162454162500_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162447162495_))
                                    (let ((_e162450162503_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162447162495_))))
                                      (let ((_lp-tl162452162510_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162450162503_)))
                                            (_lp-hd162451162507_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162450162503_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd162451162507_))
                                            (let ((_e162459162513_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd162451162507_))))
                                              (let ((_tl162457162520_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e162459162513_)))
                                                    (_hd162458162517_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e162459162513_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl162457162520_))
                                                    (let ((_e162462162523_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl162457162520_))))
                                                      (let ((_tl162460162530_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e162462162523_)))
                    (_hd162461162527_
                     (let () (declare (not safe)) (##car _e162462162523_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl162460162530_))
                    (_loop162449162491_
                     _lp-tl162452162510_
                     (let ()
                       (declare (not safe))
                       (cons _hd162461162527_ _dispatch162453162498_))
                     (let ()
                       (declare (not safe))
                       (cons _hd162458162517_ _arity162454162500_)))
                    (let () (declare (not safe)) (_g162413162468_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162413162468_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g162413162468_)))))
                                    (let ((_arity162456162536_
                                           (reverse _arity162454162500_))
                                          (_dispatch162455162533_
                                           (reverse _dispatch162453162498_)))
                                      (___kont163992163993_
                                       _dispatch162455162533_
                                       _arity162456162536_))))))
                      (_loop162449162491_ _target162446162485_ '() '()))))
                 (___match164028164029_
                  (lambda (_e162445162475_ _hd162444162479_ _tl162443162482_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl162443162482_))
                        (let ((___splice163994163995_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl162443162482_
                                  '0))))
                          (let ((_tl162448162488_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice163994163995_ '1)))
                                (_target162446162485_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice163994163995_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl162448162488_))
                                (___match164036164037_
                                 _e162445162475_
                                 _hd162444162479_
                                 _tl162443162482_
                                 ___splice163994163995_
                                 _target162446162485_
                                 _tl162448162488_)
                                (let ()
                                  (declare (not safe))
                                  (_g162413162468_)))))
                        (let () (declare (not safe)) (_g162413162468_)))))
                 (___match164022164023_
                  (lambda (_e162419162575_
                           _hd162418162579_
                           _tl162417162582_
                           _e162422162585_
                           _hd162421162589_
                           _tl162420162592_
                           _e162423162595_
                           ___splice163990163991_
                           _target162424162599_
                           _tl162426162602_)
                    (letrec ((_loop162427162605_
                              (lambda (_hd162425162609_
                                       _dispatch162431162612_
                                       _arity162432162614_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162425162609_))
                                    (let ((_e162428162617_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162425162609_))))
                                      (let ((_lp-tl162430162624_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162428162617_)))
                                            (_lp-hd162429162621_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162428162617_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd162429162621_))
                                            (let ((_e162437162627_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd162429162621_))))
                                              (let ((_tl162435162634_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e162437162627_)))
                                                    (_hd162436162631_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e162437162627_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl162435162634_))
                                                    (let ((_e162440162637_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl162435162634_))))
                                                      (let ((_tl162438162644_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e162440162637_)))
                    (_hd162439162641_
                     (let () (declare (not safe)) (##car _e162440162637_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl162438162644_))
                    (_loop162427162605_
                     _lp-tl162430162624_
                     (let ()
                       (declare (not safe))
                       (cons _hd162439162641_ _dispatch162431162612_))
                     (let ()
                       (declare (not safe))
                       (cons _hd162436162631_ _arity162432162614_)))
                    (___match164028164029_
                     _e162419162575_
                     _hd162418162579_
                     _tl162417162582_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match164028164029_
                                                     _e162419162575_
                                                     _hd162418162579_
                                                     _tl162417162582_))))
                                            (___match164028164029_
                                             _e162419162575_
                                             _hd162418162579_
                                             _tl162417162582_))))
                                    (let ((_arity162434162650_
                                           (reverse _arity162432162614_))
                                          (_dispatch162433162647_
                                           (reverse _dispatch162431162612_)))
                                      (___kont163988163989_
                                       _dispatch162433162647_
                                       _arity162434162650_))))))
                      (_loop162427162605_ _target162424162599_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163985163986_))
                (let ((_e162419162575_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163985163986_))))
                  (let ((_tl162417162582_
                         (let () (declare (not safe)) (##cdr _e162419162575_)))
                        (_hd162418162579_
                         (let ()
                           (declare (not safe))
                           (##car _e162419162575_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162417162582_))
                        (let ((_e162422162585_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162417162582_))))
                          (let ((_tl162420162592_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162422162585_)))
                                (_hd162421162589_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162422162585_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd162421162589_))
                                (let ((_e162423162595_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd162421162589_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e162423162595_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl162420162592_))
                                          (let ((___splice163990163991_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl162420162592_
                                                    '0))))
                                            (let ((_tl162426162602_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163990163991_
                                                      '1)))
                                                  (_target162424162599_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163990163991_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162426162602_))
                                                  (___match164022164023_
                                                   _e162419162575_
                                                   _hd162418162579_
                                                   _tl162417162582_
                                                   _e162422162585_
                                                   _hd162421162589_
                                                   _tl162420162592_
                                                   _e162423162595_
                                                   ___splice163990163991_
                                                   _target162424162599_
                                                   _tl162426162602_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162417162582_))
                                                      (let ((___splice163994163995_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162417162582_ '0))))
                (let ((_tl162448162488_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163994163995_ '1)))
                      (_target162446162485_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163994163995_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162448162488_))
                      (___match164036164037_
                       _e162419162575_
                       _hd162418162579_
                       _tl162417162582_
                       ___splice163994163995_
                       _target162446162485_
                       _tl162448162488_)
                      (let () (declare (not safe)) (_g162413162468_)))))
              (let () (declare (not safe)) (_g162413162468_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl162417162582_))
                                              (let ((___splice163994163995_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl162417162582_
                                                        '0))))
                                                (let ((_tl162448162488_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice163994163995_
                                                          '1)))
                                                      (_target162446162485_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice163994163995_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl162448162488_))
                                                      (___match164036164037_
                                                       _e162419162575_
                                                       _hd162418162579_
                                                       _tl162417162582_
                                                       ___splice163994163995_
                                                       _target162446162485_
                                                       _tl162448162488_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g162413162468_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g162413162468_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl162417162582_))
                                          (let ((___splice163994163995_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl162417162582_
                                                    '0))))
                                            (let ((_tl162448162488_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163994163995_
                                                      '1)))
                                                  (_target162446162485_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163994163995_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162448162488_))
                                                  (___match164036164037_
                                                   _e162419162575_
                                                   _hd162418162579_
                                                   _tl162417162582_
                                                   ___splice163994163995_
                                                   _target162446162485_
                                                   _tl162448162488_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g162413162468_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g162413162468_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162417162582_))
                                    (let ((___splice163994163995_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162417162582_
                                              '0))))
                                      (let ((_tl162448162488_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163994163995_
                                                '1)))
                                            (_target162446162485_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163994163995_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162448162488_))
                                            (___match164036164037_
                                             _e162419162575_
                                             _hd162418162579_
                                             _tl162417162582_
                                             ___splice163994163995_
                                             _target162446162485_
                                             _tl162448162488_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162413162468_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162413162468_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl162417162582_))
                            (let ((___splice163994163995_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl162417162582_
                                      '0))))
                              (let ((_tl162448162488_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice163994163995_
                                        '1)))
                                    (_target162446162485_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice163994163995_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl162448162488_))
                                    (___match164036164037_
                                     _e162419162575_
                                     _hd162418162579_
                                     _tl162417162582_
                                     ___splice163994163995_
                                     _target162446162485_
                                     _tl162448162488_)
                                    (let ()
                                      (declare (not safe))
                                      (_g162413162468_)))))
                            (let () (declare (not safe)) (_g162413162468_))))))
                (let () (declare (not safe)) (_g162413162468_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx162690_)
      (let* ((_g162694162712_
              (lambda (_g162695162708_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162695162708_))))
             (_g162693162767_
              (lambda (_g162695162716_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162695162716_))
                    (let ((_e162700162719_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162695162716_))))
                      (let ((_hd162699162723_
                             (let ()
                               (declare (not safe))
                               (##car _e162700162719_)))
                            (_tl162698162726_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162700162719_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl162698162726_))
                            (let ((_e162703162729_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl162698162726_))))
                              (let ((_hd162702162733_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e162703162729_)))
                                    (_tl162701162736_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e162703162729_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl162701162736_))
                                    (let ((_e162706162739_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl162701162736_))))
                                      (let ((_hd162705162743_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162706162739_)))
                                            (_tl162704162746_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162706162739_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162704162746_))
                                            ((lambda (_L162749_ _L162751_)
                                               (let ((__tmp164435
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp164422
                                                      (let ((__tmp164431
                                                             (let ((__tmp164434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp164432
                            (let ((__tmp164433
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp164433 '()))))
                       (declare (not safe))
                       (cons __tmp164434 __tmp164432)))
                    (__tmp164423
                     (let ((__tmp164428
                            (let ((__tmp164430
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp164429
                                   (let ()
                                     (declare (not safe))
                                     (cons _L162751_ '()))))
                              (declare (not safe))
                              (cons __tmp164430 __tmp164429)))
                           (__tmp164424
                            (let ((__tmp164425
                                   (let ((__tmp164427
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp164426
                                          (let ()
                                            (declare (not safe))
                                            (cons _L162749_ '()))))
                                     (declare (not safe))
                                     (cons __tmp164427 __tmp164426))))
                              (declare (not safe))
                              (cons __tmp164425 '()))))
                       (declare (not safe))
                       (cons __tmp164428 __tmp164424))))
                (declare (not safe))
                (cons __tmp164431 __tmp164423))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp164435
                                                       __tmp164422)))
                                             _hd162705162743_
                                             _hd162702162733_)
                                            (_g162694162712_
                                             _g162695162716_))))
                                    (_g162694162712_ _g162695162716_))))
                            (_g162694162712_ _g162695162716_))))
                    (_g162694162712_ _g162695162716_)))))
        (_g162693162767_ _$stx162690_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx162771_)
      (let* ((_g162775162793_
              (lambda (_g162776162789_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162776162789_))))
             (_g162774162848_
              (lambda (_g162776162797_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162776162797_))
                    (let ((_e162781162800_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162776162797_))))
                      (let ((_hd162780162804_
                             (let ()
                               (declare (not safe))
                               (##car _e162781162800_)))
                            (_tl162779162807_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162781162800_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl162779162807_))
                            (let ((_e162784162810_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl162779162807_))))
                              (let ((_hd162783162814_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e162784162810_)))
                                    (_tl162782162817_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e162784162810_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl162782162817_))
                                    (let ((_e162787162820_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl162782162817_))))
                                      (let ((_hd162786162824_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162787162820_)))
                                            (_tl162785162827_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162787162820_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162785162827_))
                                            ((lambda (_L162830_ _L162832_)
                                               (let ((__tmp164449
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp164436
                                                      (let ((__tmp164445
                                                             (let ((__tmp164448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp164446
                            (let ((__tmp164447
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp164447 '()))))
                       (declare (not safe))
                       (cons __tmp164448 __tmp164446)))
                    (__tmp164437
                     (let ((__tmp164442
                            (let ((__tmp164444
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp164443
                                   (let ()
                                     (declare (not safe))
                                     (cons _L162832_ '()))))
                              (declare (not safe))
                              (cons __tmp164444 __tmp164443)))
                           (__tmp164438
                            (let ((__tmp164439
                                   (let ((__tmp164441
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp164440
                                          (let ()
                                            (declare (not safe))
                                            (cons _L162830_ '()))))
                                     (declare (not safe))
                                     (cons __tmp164441 __tmp164440))))
                              (declare (not safe))
                              (cons __tmp164439 '()))))
                       (declare (not safe))
                       (cons __tmp164442 __tmp164438))))
                (declare (not safe))
                (cons __tmp164445 __tmp164437))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp164449
                                                       __tmp164436)))
                                             _hd162786162824_
                                             _hd162783162814_)
                                            (_g162775162793_
                                             _g162776162797_))))
                                    (_g162775162793_ _g162776162797_))))
                            (_g162775162793_ _g162776162797_))))
                    (_g162775162793_ _g162776162797_)))))
        (_g162774162848_ _$stx162771_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx162852_)
      (let* ((___stx164039164040_ _$stx162852_)
             (_g162859162930_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx164039164040_)))))
        (let ((___kont164042164043_
               (lambda (_L163221_ _L163223_)
                 (let ((__tmp164455
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164450
                        (let ((__tmp164451
                               (let ((__tmp164452
                                      (let ((__tmp164454
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164453
                                             (let ()
                                               (declare (not safe))
                                               (cons _L163221_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164454 __tmp164453))))
                                 (declare (not safe))
                                 (cons __tmp164452 '()))))
                          (declare (not safe))
                          (cons _L163223_ __tmp164451))))
                   (declare (not safe))
                   (cons __tmp164455 __tmp164450))))
              (___kont164044164045_
               (lambda (_L163140_ _L163142_)
                 (let ((__tmp164464
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164456
                        (let ((__tmp164457
                               (let ((__tmp164458
                                      (let ((__tmp164463
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164459
                                             (let ((__tmp164460
                                                    (lambda (_g163161163164_
                                                             _g163162163167_)
                                                      (let ((__tmp164461
                                                             (let ((__tmp164462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g163161163164_ __tmp164462))))
                (declare (not safe))
                (cons __tmp164461 _g163162163167_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp164460
                                                       '()
                                                       _L163140_))))
                                        (declare (not safe))
                                        (cons __tmp164463 __tmp164459))))
                                 (declare (not safe))
                                 (cons __tmp164458 '()))))
                          (declare (not safe))
                          (cons _L163142_ __tmp164457))))
                   (declare (not safe))
                   (cons __tmp164464 __tmp164456))))
              (___kont164048164049_
               (lambda (_L163052_ _L163054_)
                 (let ((__tmp164471
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164465
                        (let ((__tmp164466
                               (let ((__tmp164467
                                      (let ((__tmp164470
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164468
                                             (let ((__tmp164469
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L163052_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp164469))))
                                        (declare (not safe))
                                        (cons __tmp164470 __tmp164468))))
                                 (declare (not safe))
                                 (cons __tmp164467 '()))))
                          (declare (not safe))
                          (cons _L163054_ __tmp164466))))
                   (declare (not safe))
                   (cons __tmp164471 __tmp164465))))
              (___kont164050164051_
               (lambda (_L162987_ _L162989_)
                 (let ((__tmp164481
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164472
                        (let ((__tmp164473
                               (let ((__tmp164474
                                      (let ((__tmp164480
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164475
                                             (let ((__tmp164476
                                                    (let ((__tmp164477
                                                           (lambda (_g163006163009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g163007163012_)
                     (let ((__tmp164478
                            (let ((__tmp164479
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g163006163009_ __tmp164479))))
                       (declare (not safe))
                       (cons __tmp164478 _g163007163012_)))))
              (declare (not safe))
              (foldr1 __tmp164477 '() _L162987_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp164476))))
                                        (declare (not safe))
                                        (cons __tmp164480 __tmp164475))))
                                 (declare (not safe))
                                 (cons __tmp164474 '()))))
                          (declare (not safe))
                          (cons _L162989_ __tmp164473))))
                   (declare (not safe))
                   (cons __tmp164481 __tmp164472)))))
          (let* ((___match164158164159_
                  (lambda (_e162912162937_
                           _hd162911162941_
                           _tl162910162944_
                           _e162915162947_
                           _hd162914162951_
                           _tl162913162954_
                           ___splice164052164053_
                           _target162916162957_
                           _tl162918162960_)
                    (letrec ((_loop162919162963_
                              (lambda (_hd162917162967_ _arity162923162970_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162917162967_))
                                    (let ((_e162920162973_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162917162967_))))
                                      (let ((_lp-tl162922162980_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162920162973_)))
                                            (_lp-hd162921162977_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162920162973_))))
                                        (_loop162919162963_
                                         _lp-tl162922162980_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd162921162977_
                                                 _arity162923162970_)))))
                                    (let ((_arity162924162983_
                                           (reverse _arity162923162970_)))
                                      (___kont164050164051_
                                       _arity162924162983_
                                       _hd162914162951_))))))
                      (_loop162919162963_ _target162916162957_ '()))))
                 (___match164118164119_
                  (lambda (_e162880163076_
                           _hd162879163080_
                           _tl162878163083_
                           _e162883163086_
                           _hd162882163090_
                           _tl162881163093_
                           _e162886163096_
                           _hd162885163100_
                           _tl162884163103_
                           _e162887163106_
                           ___splice164046164047_
                           _target162888163110_
                           _tl162890163113_)
                    (letrec ((_loop162891163116_
                              (lambda (_hd162889163120_ _arity162895163123_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162889163120_))
                                    (let ((_e162892163126_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162889163120_))))
                                      (let ((_lp-tl162894163133_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162892163126_)))
                                            (_lp-hd162893163130_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162892163126_))))
                                        (_loop162891163116_
                                         _lp-tl162894163133_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd162893163130_
                                                 _arity162895163123_)))))
                                    (let ((_arity162896163136_
                                           (reverse _arity162895163123_)))
                                      (___kont164044164045_
                                       _arity162896163136_
                                       _hd162882163090_))))))
                      (_loop162891163116_ _target162888163110_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx164039164040_))
                (let ((_e162865163177_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx164039164040_))))
                  (let ((_tl162863163184_
                         (let () (declare (not safe)) (##cdr _e162865163177_)))
                        (_hd162864163181_
                         (let ()
                           (declare (not safe))
                           (##car _e162865163177_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162863163184_))
                        (let ((_e162868163187_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162863163184_))))
                          (let ((_tl162866163194_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162868163187_)))
                                (_hd162867163191_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162868163187_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl162866163194_))
                                (let ((_e162871163197_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl162866163194_))))
                                  (let ((_tl162869163204_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e162871163197_)))
                                        (_hd162870163201_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e162871163197_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd162870163201_))
                                        (let ((_e162872163207_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd162870163201_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e162872163207_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl162869163204_))
                                                  (let ((_e162875163211_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl162869163204_))))
                                                    (let ((_tl162873163218_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e162875163211_)))
                                                          (_hd162874163215_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e162875163211_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl162873163218_))
                                                          (___kont164042164043_
                                                           _hd162874163215_
                                                           _hd162867163191_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl162869163204_))
                      (let ((___splice164046164047_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl162869163204_ '0))))
                        (let ((_tl162890163113_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164046164047_ '1)))
                              (_target162888163110_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164046164047_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162890163113_))
                              (___match164118164119_
                               _e162865163177_
                               _hd162864163181_
                               _tl162863163184_
                               _e162868163187_
                               _hd162867163191_
                               _tl162866163194_
                               _e162871163197_
                               _hd162870163201_
                               _tl162869163204_
                               _e162872163207_
                               ___splice164046164047_
                               _target162888163110_
                               _tl162890163113_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl162866163194_))
                                  (let ((___splice164052164053_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl162866163194_
                                            '0))))
                                    (let ((_tl162918162960_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice164052164053_
                                              '1)))
                                          (_target162916162957_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice164052164053_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl162918162960_))
                                          (___match164158164159_
                                           _e162865163177_
                                           _hd162864163181_
                                           _tl162863163184_
                                           _e162868163187_
                                           _hd162867163191_
                                           _tl162866163194_
                                           ___splice164052164053_
                                           _target162916162957_
                                           _tl162918162960_)
                                          (let ()
                                            (declare (not safe))
                                            (_g162859162930_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g162859162930_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl162866163194_))
                          (let ((___splice164052164053_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl162866163194_
                                    '0))))
                            (let ((_tl162918162960_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice164052164053_ '1)))
                                  (_target162916162957_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice164052164053_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl162918162960_))
                                  (___match164158164159_
                                   _e162865163177_
                                   _hd162864163181_
                                   _tl162863163184_
                                   _e162868163187_
                                   _hd162867163191_
                                   _tl162866163194_
                                   ___splice164052164053_
                                   _target162916162957_
                                   _tl162918162960_)
                                  (let ()
                                    (declare (not safe))
                                    (_g162859162930_)))))
                          (let () (declare (not safe)) (_g162859162930_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162869163204_))
                                                      (let ((___splice164046164047_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162869163204_ '0))))
                (let ((_tl162890163113_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164046164047_ '1)))
                      (_target162888163110_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164046164047_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162890163113_))
                      (___match164118164119_
                       _e162865163177_
                       _hd162864163181_
                       _tl162863163184_
                       _e162868163187_
                       _hd162867163191_
                       _tl162866163194_
                       _e162871163197_
                       _hd162870163201_
                       _tl162869163204_
                       _e162872163207_
                       ___splice164046164047_
                       _target162888163110_
                       _tl162890163113_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl162869163204_))
                          (___kont164048164049_
                           _hd162870163201_
                           _hd162867163191_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl162866163194_))
                              (let ((___splice164052164053_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl162866163194_
                                        '0))))
                                (let ((_tl162918162960_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice164052164053_
                                          '1)))
                                      (_target162916162957_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice164052164053_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162918162960_))
                                      (___match164158164159_
                                       _e162865163177_
                                       _hd162864163181_
                                       _tl162863163184_
                                       _e162868163187_
                                       _hd162867163191_
                                       _tl162866163194_
                                       ___splice164052164053_
                                       _target162916162957_
                                       _tl162918162960_)
                                      (let ()
                                        (declare (not safe))
                                        (_g162859162930_)))))
                              (let ()
                                (declare (not safe))
                                (_g162859162930_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl162869163204_))
                  (___kont164048164049_ _hd162870163201_ _hd162867163191_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl162866163194_))
                      (let ((___splice164052164053_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl162866163194_ '0))))
                        (let ((_tl162918162960_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164052164053_ '1)))
                              (_target162916162957_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164052164053_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162918162960_))
                              (___match164158164159_
                               _e162865163177_
                               _hd162864163181_
                               _tl162863163184_
                               _e162868163187_
                               _hd162867163191_
                               _tl162866163194_
                               ___splice164052164053_
                               _target162916162957_
                               _tl162918162960_)
                              (let ()
                                (declare (not safe))
                                (_g162859162930_)))))
                      (let () (declare (not safe)) (_g162859162930_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162869163204_))
                                                  (___kont164048164049_
                                                   _hd162870163201_
                                                   _hd162867163191_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162866163194_))
                                                      (let ((___splice164052164053_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162866163194_ '0))))
                (let ((_tl162918162960_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164052164053_ '1)))
                      (_target162916162957_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164052164053_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162918162960_))
                      (___match164158164159_
                       _e162865163177_
                       _hd162864163181_
                       _tl162863163184_
                       _e162868163187_
                       _hd162867163191_
                       _tl162866163194_
                       ___splice164052164053_
                       _target162916162957_
                       _tl162918162960_)
                      (let () (declare (not safe)) (_g162859162930_)))))
              (let () (declare (not safe)) (_g162859162930_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162869163204_))
                                            (___kont164048164049_
                                             _hd162870163201_
                                             _hd162867163191_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl162866163194_))
                                                (let ((___splice164052164053_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl162866163194_
                                                          '0))))
                                                  (let ((_tl162918162960_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice164052164053_
                                                            '1)))
                                                        (_target162916162957_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice164052164053_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl162918162960_))
                                                        (___match164158164159_
                                                         _e162865163177_
                                                         _hd162864163181_
                                                         _tl162863163184_
                                                         _e162868163187_
                                                         _hd162867163191_
                                                         _tl162866163194_
                                                         ___splice164052164053_
                                                         _target162916162957_
                                                         _tl162918162960_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g162859162930_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g162859162930_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162866163194_))
                                    (let ((___splice164052164053_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162866163194_
                                              '0))))
                                      (let ((_tl162918162960_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164052164053_
                                                '1)))
                                            (_target162916162957_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164052164053_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162918162960_))
                                            (___match164158164159_
                                             _e162865163177_
                                             _hd162864163181_
                                             _tl162863163184_
                                             _e162868163187_
                                             _hd162867163191_
                                             _tl162866163194_
                                             ___splice164052164053_
                                             _target162916162957_
                                             _tl162918162960_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162859162930_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162859162930_))))))
                        (let () (declare (not safe)) (_g162859162930_)))))
                (let () (declare (not safe)) (_g162859162930_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx163247_)
      (let* ((___stx164161164162_ _$stx163247_)
             (_g163252163287_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx164161164162_)))))
        (let ((___kont164164164165_
               (lambda (_L163409_ _L163411_)
                 (let ((__tmp164487
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164482
                        (let ((__tmp164483
                               (let ((__tmp164484
                                      (let ((__tmp164486
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164485
                                             (let ()
                                               (declare (not safe))
                                               (cons _L163409_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164486 __tmp164485))))
                                 (declare (not safe))
                                 (cons __tmp164484 '()))))
                          (declare (not safe))
                          (cons _L163411_ __tmp164483))))
                   (declare (not safe))
                   (cons __tmp164487 __tmp164482))))
              (___kont164166164167_
               (lambda (_L163344_ _L163346_)
                 (let ((__tmp164496
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164488
                        (let ((__tmp164489
                               (let ((__tmp164490
                                      (let ((__tmp164495
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164491
                                             (let ((__tmp164492
                                                    (lambda (_g163363163366_
                                                             _g163364163369_)
                                                      (let ((__tmp164493
                                                             (let ((__tmp164494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g163363163366_ __tmp164494))))
                (declare (not safe))
                (cons __tmp164493 _g163364163369_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp164492
                                                       '()
                                                       _L163344_))))
                                        (declare (not safe))
                                        (cons __tmp164495 __tmp164491))))
                                 (declare (not safe))
                                 (cons __tmp164490 '()))))
                          (declare (not safe))
                          (cons _L163346_ __tmp164489))))
                   (declare (not safe))
                   (cons __tmp164496 __tmp164488)))))
          (let ((___match164210164211_
                 (lambda (_e163269163294_
                          _hd163268163298_
                          _tl163267163301_
                          _e163272163304_
                          _hd163271163308_
                          _tl163270163311_
                          ___splice164168164169_
                          _target163273163314_
                          _tl163275163317_)
                   (letrec ((_loop163276163320_
                             (lambda (_hd163274163324_ _arity163280163327_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd163274163324_))
                                   (let ((_e163277163330_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd163274163324_))))
                                     (let ((_lp-tl163279163337_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e163277163330_)))
                                           (_lp-hd163278163334_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e163277163330_))))
                                       (_loop163276163320_
                                        _lp-tl163279163337_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd163278163334_
                                                _arity163280163327_)))))
                                   (let ((_arity163281163340_
                                          (reverse _arity163280163327_)))
                                     (___kont164166164167_
                                      _arity163281163340_
                                      _hd163271163308_))))))
                     (_loop163276163320_ _target163273163314_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx164161164162_))
                (let ((_e163258163379_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx164161164162_))))
                  (let ((_tl163256163386_
                         (let () (declare (not safe)) (##cdr _e163258163379_)))
                        (_hd163257163383_
                         (let ()
                           (declare (not safe))
                           (##car _e163258163379_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl163256163386_))
                        (let ((_e163261163389_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl163256163386_))))
                          (let ((_tl163259163396_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e163261163389_)))
                                (_hd163260163393_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e163261163389_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl163259163396_))
                                (let ((_e163264163399_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl163259163396_))))
                                  (let ((_tl163262163406_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e163264163399_)))
                                        (_hd163263163403_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e163264163399_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163262163406_))
                                        (___kont164164164165_
                                         _hd163263163403_
                                         _hd163260163393_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl163259163396_))
                                            (let ((___splice164168164169_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl163259163396_
                                                      '0))))
                                              (let ((_tl163275163317_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice164168164169_
                                                        '1)))
                                                    (_target163273163314_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice164168164169_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl163275163317_))
                                                    (___match164210164211_
                                                     _e163258163379_
                                                     _hd163257163383_
                                                     _tl163256163386_
                                                     _e163261163389_
                                                     _hd163260163393_
                                                     _tl163259163396_
                                                     ___splice164168164169_
                                                     _target163273163314_
                                                     _tl163275163317_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g163252163287_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g163252163287_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl163259163396_))
                                    (let ((___splice164168164169_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl163259163396_
                                              '0))))
                                      (let ((_tl163275163317_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164168164169_
                                                '1)))
                                            (_target163273163314_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164168164169_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl163275163317_))
                                            (___match164210164211_
                                             _e163258163379_
                                             _hd163257163383_
                                             _tl163256163386_
                                             _e163261163389_
                                             _hd163260163393_
                                             _tl163259163396_
                                             ___splice164168164169_
                                             _target163273163314_
                                             _tl163275163317_)
                                            (let ()
                                              (declare (not safe))
                                              (_g163252163287_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g163252163287_))))))
                        (let () (declare (not safe)) (_g163252163287_)))))
                (let () (declare (not safe)) (_g163252163287_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx163431_)
      (let* ((_g163435163470_
              (lambda (_g163436163466_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g163436163466_))))
             (_g163434163598_
              (lambda (_g163436163474_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g163436163474_))
                    (let ((_e163441163477_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g163436163474_))))
                      (let ((_hd163440163481_
                             (let ()
                               (declare (not safe))
                               (##car _e163441163477_)))
                            (_tl163439163484_
                             (let ()
                               (declare (not safe))
                               (##cdr _e163441163477_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl163439163484_))
                            (let ((_g164497_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl163439163484_
                                      '0))))
                              (begin
                                (let ((_g164498_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164497_)
                                             (##vector-length _g164497_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164498_ 2)))
                                      (error "Context expects 2 values"
                                             _g164498_)))
                                (let ((_target163442163487_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164497_ 0)))
                                      (_tl163444163490_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164497_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl163444163490_))
                                      (letrec ((_loop163445163493_
                                                (lambda (_hd163443163497_
                                                         _arity163449163500_
                                                         _prim163450163502_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd163443163497_))
                                                      (let ((_e163446163505_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd163443163497_))))
                (let ((_lp-hd163447163509_
                       (let () (declare (not safe)) (##car _e163446163505_)))
                      (_lp-tl163448163512_
                       (let () (declare (not safe)) (##cdr _e163446163505_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd163447163509_))
                      (let ((_e163455163515_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd163447163509_))))
                        (let ((_hd163454163519_
                               (let ()
                                 (declare (not safe))
                                 (##car _e163455163515_)))
                              (_tl163453163522_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e163455163515_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl163453163522_))
                              (let ((_g164507_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl163453163522_
                                        '0))))
                                (begin
                                  (let ((_g164508_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g164507_)
                                               (##vector-length _g164507_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g164508_ 2)))
                                        (error "Context expects 2 values"
                                               _g164508_)))
                                  (let ((_target163456163525_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164507_ 0)))
                                        (_tl163458163528_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164507_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163458163528_))
                                        (letrec ((_loop163459163531_
                                                  (lambda (_hd163457163535_
                                                           _arity163463163538_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd163457163535_))
                                                        (let ((_e163460163541_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd163457163535_))))
                  (let ((_lp-hd163461163545_
                         (let () (declare (not safe)) (##car _e163460163541_)))
                        (_lp-tl163462163548_
                         (let ()
                           (declare (not safe))
                           (##cdr _e163460163541_))))
                    (_loop163459163531_
                     _lp-tl163462163548_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd163461163545_ _arity163463163538_)))))
                (let ((_arity163464163551_ (reverse _arity163463163538_)))
                  (_loop163445163493_
                   _lp-tl163448163512_
                   (let ()
                     (declare (not safe))
                     (cons _arity163464163551_ _arity163449163500_))
                   (let ()
                     (declare (not safe))
                     (cons _hd163454163519_ _prim163450163502_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop163459163531_
                                           _target163456163525_
                                           '()))
                                        (_g163435163470_ _g163436163474_)))))
                              (_g163435163470_ _g163436163474_))))
                      (_g163435163470_ _g163436163474_))))
              (let ((_arity163451163555_ (reverse _arity163449163500_))
                    (_prim163452163558_ (reverse _prim163450163502_)))
                ((lambda (_L163561_ _L163563_)
                   (let ((__tmp164506
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164499
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L163561_
                               _L163563_))
                            (let ((__tmp164500
                                   (lambda (_g163578163584_
                                            _g163579163587_
                                            _g163580163589_)
                                     (let ((__tmp164501
                                            (let ((__tmp164505
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp164502
                                                   (let ((__tmp164503
                                                          (let ((__tmp164504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g163581163592_ _g163582163595_)
                           (let ()
                             (declare (not safe))
                             (cons _g163581163592_ _g163582163595_)))))
                    (declare (not safe))
                    (foldr1 __tmp164504 '() _g163578163584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g163579163587_
                                                           __tmp164503))))
                                              (declare (not safe))
                                              (cons __tmp164505 __tmp164502))))
                                       (declare (not safe))
                                       (cons __tmp164501 _g163580163589_)))))
                              (declare (not safe))
                              (foldr2 __tmp164500 '() _L163561_ _L163563_)))))
                     (declare (not safe))
                     (cons __tmp164506 __tmp164499)))
                 _arity163451163555_
                 _prim163452163558_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop163445163493_
                                         _target163442163487_
                                         '()
                                         '()))
                                      (_g163435163470_ _g163436163474_)))))
                            (_g163435163470_ _g163436163474_))))
                    (_g163435163470_ _g163436163474_)))))
        (_g163434163598_ _$stx163431_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx163604_)
      (let* ((_g163608163643_
              (lambda (_g163609163639_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g163609163639_))))
             (_g163607163771_
              (lambda (_g163609163647_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g163609163647_))
                    (let ((_e163614163650_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g163609163647_))))
                      (let ((_hd163613163654_
                             (let ()
                               (declare (not safe))
                               (##car _e163614163650_)))
                            (_tl163612163657_
                             (let ()
                               (declare (not safe))
                               (##cdr _e163614163650_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl163612163657_))
                            (let ((_g164509_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl163612163657_
                                      '0))))
                              (begin
                                (let ((_g164510_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164509_)
                                             (##vector-length _g164509_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164510_ 2)))
                                      (error "Context expects 2 values"
                                             _g164510_)))
                                (let ((_target163615163660_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164509_ 0)))
                                      (_tl163617163663_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164509_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl163617163663_))
                                      (letrec ((_loop163618163666_
                                                (lambda (_hd163616163670_
                                                         _arity163622163673_
                                                         _prim163623163675_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd163616163670_))
                                                      (let ((_e163619163678_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd163616163670_))))
                (let ((_lp-hd163620163682_
                       (let () (declare (not safe)) (##car _e163619163678_)))
                      (_lp-tl163621163685_
                       (let () (declare (not safe)) (##cdr _e163619163678_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd163620163682_))
                      (let ((_e163628163688_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd163620163682_))))
                        (let ((_hd163627163692_
                               (let ()
                                 (declare (not safe))
                                 (##car _e163628163688_)))
                              (_tl163626163695_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e163628163688_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl163626163695_))
                              (let ((_g164519_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl163626163695_
                                        '0))))
                                (begin
                                  (let ((_g164520_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g164519_)
                                               (##vector-length _g164519_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g164520_ 2)))
                                        (error "Context expects 2 values"
                                               _g164520_)))
                                  (let ((_target163629163698_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164519_ 0)))
                                        (_tl163631163701_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164519_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163631163701_))
                                        (letrec ((_loop163632163704_
                                                  (lambda (_hd163630163708_
                                                           _arity163636163711_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd163630163708_))
                                                        (let ((_e163633163714_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd163630163708_))))
                  (let ((_lp-hd163634163718_
                         (let () (declare (not safe)) (##car _e163633163714_)))
                        (_lp-tl163635163721_
                         (let ()
                           (declare (not safe))
                           (##cdr _e163633163714_))))
                    (_loop163632163704_
                     _lp-tl163635163721_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd163634163718_ _arity163636163711_)))))
                (let ((_arity163637163724_ (reverse _arity163636163711_)))
                  (_loop163618163666_
                   _lp-tl163621163685_
                   (let ()
                     (declare (not safe))
                     (cons _arity163637163724_ _arity163622163673_))
                   (let ()
                     (declare (not safe))
                     (cons _hd163627163692_ _prim163623163675_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop163632163704_
                                           _target163629163698_
                                           '()))
                                        (_g163608163643_ _g163609163647_)))))
                              (_g163608163643_ _g163609163647_))))
                      (_g163608163643_ _g163609163647_))))
              (let ((_arity163624163728_ (reverse _arity163622163673_))
                    (_prim163625163731_ (reverse _prim163623163675_)))
                ((lambda (_L163734_ _L163736_)
                   (let ((__tmp164518
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164511
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L163734_
                               _L163736_))
                            (let ((__tmp164512
                                   (lambda (_g163751163757_
                                            _g163752163760_
                                            _g163753163762_)
                                     (let ((__tmp164513
                                            (let ((__tmp164517
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp164514
                                                   (let ((__tmp164515
                                                          (let ((__tmp164516
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g163754163765_ _g163755163768_)
                           (let ()
                             (declare (not safe))
                             (cons _g163754163765_ _g163755163768_)))))
                    (declare (not safe))
                    (foldr1 __tmp164516 '() _g163751163757_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g163752163760_
                                                           __tmp164515))))
                                              (declare (not safe))
                                              (cons __tmp164517 __tmp164514))))
                                       (declare (not safe))
                                       (cons __tmp164513 _g163753163762_)))))
                              (declare (not safe))
                              (foldr2 __tmp164512 '() _L163734_ _L163736_)))))
                     (declare (not safe))
                     (cons __tmp164518 __tmp164511)))
                 _arity163624163728_
                 _prim163625163731_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop163618163666_
                                         _target163615163660_
                                         '()
                                         '()))
                                      (_g163608163643_ _g163609163647_)))))
                            (_g163608163643_ _g163609163647_))))
                    (_g163608163643_ _g163609163647_)))))
        (_g163607163771_ _$stx163604_)))))
