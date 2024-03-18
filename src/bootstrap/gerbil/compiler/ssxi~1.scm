(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx160611_)
      (let* ((_g160615160633_
              (lambda (_g160616160629_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160616160629_))))
             (_g160614160688_
              (lambda (_g160616160637_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160616160637_))
                    (let ((_e160621160640_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160616160637_))))
                      (let ((_hd160620160644_
                             (let ()
                               (declare (not safe))
                               (##car _e160621160640_)))
                            (_tl160619160647_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160621160640_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160619160647_))
                            (let ((_e160624160650_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160619160647_))))
                              (let ((_hd160623160654_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160624160650_)))
                                    (_tl160622160657_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160624160650_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160622160657_))
                                    (let ((_e160627160660_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160622160657_))))
                                      (let ((_hd160626160664_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160627160660_)))
                                            (_tl160625160667_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160627160660_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160625160667_))
                                            ((lambda (_L160670_ _L160672_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L160672_))
                                                   (let ((__tmp164170
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp164165
                                                          (let ((__tmp164167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp164169
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp164168
                                (let ()
                                  (declare (not safe))
                                  (cons _L160672_ '()))))
                           (declare (not safe))
                           (cons __tmp164169 __tmp164168)))
                        (__tmp164166
                         (let () (declare (not safe)) (cons _L160670_ '()))))
                    (declare (not safe))
                    (cons __tmp164167 __tmp164166))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp164170
                                                           __tmp164165))
                                                   (_g160615160633_
                                                    _g160616160637_)))
                                             _hd160626160664_
                                             _hd160623160654_)
                                            (_g160615160633_
                                             _g160616160637_))))
                                    (_g160615160633_ _g160616160637_))))
                            (_g160615160633_ _g160616160637_))))
                    (_g160615160633_ _g160616160637_)))))
        (_g160614160688_ _$stx160611_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx160692_)
      (let* ((_g160696160725_
              (lambda (_g160697160721_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160697160721_))))
             (_g160695160825_
              (lambda (_g160697160729_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160697160729_))
                    (let ((_e160702160732_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160697160729_))))
                      (let ((_hd160701160736_
                             (let ()
                               (declare (not safe))
                               (##car _e160702160732_)))
                            (_tl160700160739_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160702160732_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160700160739_))
                            (let ((_g164171_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160700160739_
                                      '0))))
                              (begin
                                (let ((_g164172_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164171_)
                                             (##vector-length _g164171_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164172_ 2)))
                                      (error "Context expects 2 values"
                                             _g164172_)))
                                (let ((_target160703160742_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164171_ 0)))
                                      (_tl160705160745_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164171_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160705160745_))
                                      (letrec ((_loop160706160748_
                                                (lambda (_hd160704160752_
                                                         _type160710160755_
                                                         _symbol160711160757_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160704160752_))
                                                      (let ((_e160707160760_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160704160752_))))
                (let ((_lp-hd160708160764_
                       (let () (declare (not safe)) (##car _e160707160760_)))
                      (_lp-tl160709160767_
                       (let () (declare (not safe)) (##cdr _e160707160760_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160708160764_))
                      (let ((_e160716160770_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160708160764_))))
                        (let ((_hd160715160774_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160716160770_)))
                              (_tl160714160777_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160716160770_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160714160777_))
                              (let ((_e160719160780_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160714160777_))))
                                (let ((_hd160718160784_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160719160780_)))
                                      (_tl160717160787_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160719160780_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160717160787_))
                                      (_loop160706160748_
                                       _lp-tl160709160767_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd160718160784_
                                               _type160710160755_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd160715160774_
                                               _symbol160711160757_)))
                                      (_g160696160725_ _g160697160729_))))
                              (_g160696160725_ _g160697160729_))))
                      (_g160696160725_ _g160697160729_))))
              (let ((_type160712160790_ (reverse _type160710160755_))
                    (_symbol160713160793_ (reverse _symbol160711160757_)))
                ((lambda (_L160796_ _L160798_)
                   (let ((__tmp164179
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164173
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160796_
                               _L160798_))
                            (let ((__tmp164174
                                   (lambda (_g160813160817_
                                            _g160814160820_
                                            _g160815160822_)
                                     (let ((__tmp164175
                                            (let ((__tmp164178
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp164176
                                                   (let ((__tmp164177
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g160813160817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160814160820_
                                                           __tmp164177))))
                                              (declare (not safe))
                                              (cons __tmp164178 __tmp164176))))
                                       (declare (not safe))
                                       (cons __tmp164175 _g160815160822_)))))
                              (declare (not safe))
                              (foldr2 __tmp164174 '() _L160796_ _L160798_)))))
                     (declare (not safe))
                     (cons __tmp164179 __tmp164173)))
                 _type160712160790_
                 _symbol160713160793_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160706160748_
                                         _target160703160742_
                                         '()
                                         '()))
                                      (_g160696160725_ _g160697160729_)))))
                            (_g160696160725_ _g160697160729_))))
                    (_g160696160725_ _g160697160729_)))))
        (_g160695160825_ _$stx160692_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx160830_)
      (let* ((___stx163730163731_ _$stx160830_)
             (_g160835160877_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163730163731_)))))
        (let ((___kont163733163734_
               (lambda (_L161005_ _L161007_ _L161008_ _L161009_)
                 (let ((__tmp164193
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp164180
                        (let ((__tmp164190
                               (let ((__tmp164192
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164191
                                      (let ()
                                        (declare (not safe))
                                        (cons _L161009_ '()))))
                                 (declare (not safe))
                                 (cons __tmp164192 __tmp164191)))
                              (__tmp164181
                               (let ((__tmp164187
                                      (let ((__tmp164189
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164188
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161008_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164189 __tmp164188)))
                                     (__tmp164182
                                      (let ((__tmp164184
                                             (let ((__tmp164186
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp164185
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161007_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164186 __tmp164185)))
                                            (__tmp164183
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161005_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164184 __tmp164183))))
                                 (declare (not safe))
                                 (cons __tmp164187 __tmp164182))))
                          (declare (not safe))
                          (cons __tmp164190 __tmp164181))))
                   (declare (not safe))
                   (cons __tmp164193 __tmp164180))))
              (___kont163735163736_
               (lambda (_L160924_ _L160926_ _L160927_ _L160928_)
                 (let ((__tmp164194
                        (let ((__tmp164195
                               (let ((__tmp164196
                                      (let ((__tmp164197
                                             (let ((__tmp164198
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp164198 '()))))
                                        (declare (not safe))
                                        (cons _L160924_ __tmp164197))))
                                 (declare (not safe))
                                 (cons _L160926_ __tmp164196))))
                          (declare (not safe))
                          (cons _L160927_ __tmp164195))))
                   (declare (not safe))
                   (cons _L160928_ __tmp164194)))))
          (let ((___match163769163770_
                 (lambda (_e160843160955_
                          _hd160842160959_
                          _tl160841160962_
                          _e160846160965_
                          _hd160845160969_
                          _tl160844160972_
                          _e160849160975_
                          _hd160848160979_
                          _tl160847160982_
                          _e160852160985_
                          _hd160851160989_
                          _tl160850160992_
                          _e160855160995_
                          _hd160854160999_
                          _tl160853161002_)
                   (let ((_L161005_ _hd160854160999_)
                         (_L161007_ _hd160851160989_)
                         (_L161008_ _hd160848160979_)
                         (_L161009_ _hd160845160969_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L161009_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L161008_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L161007_)))
                         (___kont163733163734_
                          _L161005_
                          _L161007_
                          _L161008_
                          _L161009_)
                         (let () (declare (not safe)) (_g160835160877_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163730163731_))
                (let ((_e160843160955_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163730163731_))))
                  (let ((_tl160841160962_
                         (let () (declare (not safe)) (##cdr _e160843160955_)))
                        (_hd160842160959_
                         (let ()
                           (declare (not safe))
                           (##car _e160843160955_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160841160962_))
                        (let ((_e160846160965_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160841160962_))))
                          (let ((_tl160844160972_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160846160965_)))
                                (_hd160845160969_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160846160965_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160844160972_))
                                (let ((_e160849160975_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160844160972_))))
                                  (let ((_tl160847160982_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160849160975_)))
                                        (_hd160848160979_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160849160975_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl160847160982_))
                                        (let ((_e160852160985_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl160847160982_))))
                                          (let ((_tl160850160992_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e160852160985_)))
                                                (_hd160851160989_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e160852160985_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl160850160992_))
                                                (let ((_e160855160995_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl160850160992_))))
                                                  (let ((_tl160853161002_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e160855160995_)))
                                                        (_hd160854160999_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e160855160995_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160853161002_))
                                                        (___match163769163770_
                                                         _e160843160955_
                                                         _hd160842160959_
                                                         _tl160841160962_
                                                         _e160846160965_
                                                         _hd160845160969_
                                                         _tl160844160972_
                                                         _e160849160975_
                                                         _hd160848160979_
                                                         _tl160847160982_
                                                         _e160852160985_
                                                         _hd160851160989_
                                                         _tl160850160992_
                                                         _e160855160995_
                                                         _hd160854160999_
                                                         _tl160853161002_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160835160877_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160850160992_))
                                                    (___kont163735163736_
                                                     _hd160851160989_
                                                     _hd160848160979_
                                                     _hd160845160969_
                                                     _hd160842160959_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160835160877_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g160835160877_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g160835160877_)))))
                        (let () (declare (not safe)) (_g160835160877_)))))
                (let () (declare (not safe)) (_g160835160877_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx161034_)
      (let* ((_g161038161073_
              (lambda (_g161039161069_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161039161069_))))
             (_g161037161192_
              (lambda (_g161039161077_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161039161077_))
                    (let ((_e161045161080_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161039161077_))))
                      (let ((_hd161044161084_
                             (let ()
                               (declare (not safe))
                               (##car _e161045161080_)))
                            (_tl161043161087_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161045161080_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161043161087_))
                            (let ((_g164199_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161043161087_
                                      '0))))
                              (begin
                                (let ((_g164200_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164199_)
                                             (##vector-length _g164199_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164200_ 2)))
                                      (error "Context expects 2 values"
                                             _g164200_)))
                                (let ((_target161046161090_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164199_ 0)))
                                      (_tl161048161093_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164199_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161048161093_))
                                      (letrec ((_loop161049161096_
                                                (lambda (_hd161047161100_
                                                         _symbol161053161103_
                                                         _method161054161105_
                                                         _type-t161055161107_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161047161100_))
                                                      (let ((_e161050161110_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161047161100_))))
                (let ((_lp-hd161051161114_
                       (let () (declare (not safe)) (##car _e161050161110_)))
                      (_lp-tl161052161117_
                       (let () (declare (not safe)) (##cdr _e161050161110_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161051161114_))
                      (let ((_e161061161120_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161051161114_))))
                        (let ((_hd161060161124_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161061161120_)))
                              (_tl161059161127_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161061161120_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl161059161127_))
                              (let ((_e161064161130_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl161059161127_))))
                                (let ((_hd161063161134_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e161064161130_)))
                                      (_tl161062161137_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e161064161130_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl161062161137_))
                                      (let ((_e161067161140_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl161062161137_))))
                                        (let ((_hd161066161144_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e161067161140_)))
                                              (_tl161065161147_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e161067161140_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161065161147_))
                                              (_loop161049161096_
                                               _lp-tl161052161117_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161066161144_
                                                       _symbol161053161103_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161063161134_
                                                       _method161054161105_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161060161124_
                                                       _type-t161055161107_)))
                                              (_g161038161073_
                                               _g161039161077_))))
                                      (_g161038161073_ _g161039161077_))))
                              (_g161038161073_ _g161039161077_))))
                      (_g161038161073_ _g161039161077_))))
              (let ((_symbol161056161150_ (reverse _symbol161053161103_))
                    (_method161057161153_ (reverse _method161054161105_))
                    (_type-t161058161155_ (reverse _type-t161055161107_)))
                ((lambda (_L161158_ _L161160_ _L161161_)
                   (let ((__tmp164208
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164201
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161158_
                               _L161160_
                               _L161161_))
                            (let ((__tmp164202
                                   (lambda (_g161177161182_
                                            _g161178161185_
                                            _g161179161187_
                                            _g161180161189_)
                                     (let ((__tmp164203
                                            (let ((__tmp164207
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp164204
                                                   (let ((__tmp164205
                                                          (let ((__tmp164206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g161177161182_ '()))))
                    (declare (not safe))
                    (cons _g161178161185_ __tmp164206))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161179161187_
                                                           __tmp164205))))
                                              (declare (not safe))
                                              (cons __tmp164207 __tmp164204))))
                                       (declare (not safe))
                                       (cons __tmp164203 _g161180161189_)))))
                              (declare (not safe))
                              (foldr* __tmp164202
                                      '()
                                      _L161158_
                                      _L161160_
                                      _L161161_)))))
                     (declare (not safe))
                     (cons __tmp164208 __tmp164201)))
                 _symbol161056161150_
                 _method161057161153_
                 _type-t161058161155_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161049161096_
                                         _target161046161090_
                                         '()
                                         '()
                                         '()))
                                      (_g161038161073_ _g161039161077_)))))
                            (_g161038161073_ _g161039161077_))))
                    (_g161038161073_ _g161039161077_)))))
        (_g161037161192_ _$stx161034_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx161197_)
      (let* ((_g161201161234_
              (lambda (_g161202161230_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161202161230_))))
             (_g161200161348_
              (lambda (_g161202161238_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161202161238_))
                    (let ((_e161208161241_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161202161238_))))
                      (let ((_hd161207161245_
                             (let ()
                               (declare (not safe))
                               (##car _e161208161241_)))
                            (_tl161206161248_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161208161241_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161206161248_))
                            (let ((_e161211161251_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161206161248_))))
                              (let ((_hd161210161255_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161211161251_)))
                                    (_tl161209161258_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161211161251_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161209161258_))
                                    (let ((_g164209_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161209161258_
                                              '0))))
                                      (begin
                                        (let ((_g164210_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g164209_)
                                                     (##vector-length
                                                      _g164209_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g164210_ 2)))
                                              (error "Context expects 2 values"
                                                     _g164210_)))
                                        (let ((_target161212161261_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g164209_ 0)))
                                              (_tl161214161264_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g164209_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161214161264_))
                                              (letrec ((_loop161215161267_
                                                        (lambda (_hd161213161271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol161219161274_
                         _method161220161276_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd161213161271_))
                      (let ((_e161216161279_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd161213161271_))))
                        (let ((_lp-hd161217161283_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161216161279_)))
                              (_lp-tl161218161286_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161216161279_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd161217161283_))
                              (let ((_e161225161289_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd161217161283_))))
                                (let ((_hd161224161293_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e161225161289_)))
                                      (_tl161223161296_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e161225161289_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl161223161296_))
                                      (let ((_e161228161299_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl161223161296_))))
                                        (let ((_hd161227161303_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e161228161299_)))
                                              (_tl161226161306_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e161228161299_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161226161306_))
                                              (_loop161215161267_
                                               _lp-tl161218161286_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161227161303_
                                                       _symbol161219161274_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161224161293_
                                                       _method161220161276_)))
                                              (_g161201161234_
                                               _g161202161238_))))
                                      (_g161201161234_ _g161202161238_))))
                              (_g161201161234_ _g161202161238_))))
                      (let ((_symbol161221161309_
                             (reverse _symbol161219161274_))
                            (_method161222161312_
                             (reverse _method161220161276_)))
                        ((lambda (_L161315_ _L161317_ _L161318_)
                           (let ((__tmp164218
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp164211
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L161315_
                                       _L161317_))
                                    (let ((__tmp164212
                                           (lambda (_g161336161340_
                                                    _g161337161343_
                                                    _g161338161345_)
                                             (let ((__tmp164213
                                                    (let ((__tmp164217
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp164214
                                                           (let ((__tmp164215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp164216
                                 (let ()
                                   (declare (not safe))
                                   (cons _g161336161340_ '()))))
                            (declare (not safe))
                            (cons _g161337161343_ __tmp164216))))
                     (declare (not safe))
                     (cons _L161318_ __tmp164215))))
              (declare (not safe))
              (cons __tmp164217 __tmp164214))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp164213
                                                     _g161338161345_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp164212
                                              '()
                                              _L161315_
                                              _L161317_)))))
                             (declare (not safe))
                             (cons __tmp164218 __tmp164211)))
                         _symbol161221161309_
                         _method161222161312_
                         _hd161210161255_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop161215161267_
                                                 _target161212161261_
                                                 '()
                                                 '()))
                                              (_g161201161234_
                                               _g161202161238_)))))
                                    (_g161201161234_ _g161202161238_))))
                            (_g161201161234_ _g161202161238_))))
                    (_g161201161234_ _g161202161238_)))))
        (_g161200161348_ _$stx161197_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx161353_)
      (let* ((_g161357161371_
              (lambda (_g161358161367_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161358161367_))))
             (_g161356161412_
              (lambda (_g161358161375_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161358161375_))
                    (let ((_e161362161378_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161358161375_))))
                      (let ((_hd161361161382_
                             (let ()
                               (declare (not safe))
                               (##car _e161362161378_)))
                            (_tl161360161385_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161362161378_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161360161385_))
                            (let ((_e161365161388_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161360161385_))))
                              (let ((_hd161364161392_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161365161388_)))
                                    (_tl161363161395_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161365161388_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161363161395_))
                                    ((lambda (_L161398_)
                                       (let ((__tmp164223
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp164219
                                              (let ((__tmp164220
                                                     (let ((__tmp164222
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164221
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164222 __tmp164221))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164220 '()))))
                                         (declare (not safe))
                                         (cons __tmp164223 __tmp164219)))
                                     _hd161364161392_)
                                    (_g161357161371_ _g161358161375_))))
                            (_g161357161371_ _g161358161375_))))
                    (_g161357161371_ _g161358161375_)))))
        (_g161356161412_ _$stx161353_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx161416_)
      (let* ((_g161420161474_
              (lambda (_g161421161470_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161421161470_))))
             (_g161419161655_
              (lambda (_g161421161478_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161421161478_))
                    (let ((_e161435161481_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161421161478_))))
                      (let ((_hd161434161485_
                             (let ()
                               (declare (not safe))
                               (##car _e161435161481_)))
                            (_tl161433161488_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161435161481_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161433161488_))
                            (let ((_e161438161491_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161433161488_))))
                              (let ((_hd161437161495_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161438161491_)))
                                    (_tl161436161498_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161438161491_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161436161498_))
                                    (let ((_e161441161501_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161436161498_))))
                                      (let ((_hd161440161505_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161441161501_)))
                                            (_tl161439161508_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161441161501_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161439161508_))
                                            (let ((_e161444161511_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161439161508_))))
                                              (let ((_hd161443161515_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161444161511_)))
                                                    (_tl161442161518_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161444161511_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161442161518_))
                                                    (let ((_e161447161521_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161442161518_))))
                                                      (let ((_hd161446161525_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e161447161521_)))
                    (_tl161445161528_
                     (let () (declare (not safe)) (##cdr _e161447161521_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl161445161528_))
                    (let ((_e161450161531_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl161445161528_))))
                      (let ((_hd161449161535_
                             (let ()
                               (declare (not safe))
                               (##car _e161450161531_)))
                            (_tl161448161538_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161450161531_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161448161538_))
                            (let ((_e161453161541_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161448161538_))))
                              (let ((_hd161452161545_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161453161541_)))
                                    (_tl161451161548_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161453161541_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161451161548_))
                                    (let ((_e161456161551_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161451161548_))))
                                      (let ((_hd161455161555_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161456161551_)))
                                            (_tl161454161558_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161456161551_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161454161558_))
                                            (let ((_e161459161561_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161454161558_))))
                                              (let ((_hd161458161565_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161459161561_)))
                                                    (_tl161457161568_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161459161561_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161457161568_))
                                                    (let ((_e161462161571_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161457161568_))))
                                                      (let ((_hd161461161575_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e161462161571_)))
                    (_tl161460161578_
                     (let () (declare (not safe)) (##cdr _e161462161571_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl161460161578_))
                    (let ((_e161465161581_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl161460161578_))))
                      (let ((_hd161464161585_
                             (let ()
                               (declare (not safe))
                               (##car _e161465161581_)))
                            (_tl161463161588_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161465161581_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161463161588_))
                            (let ((_e161468161591_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161463161588_))))
                              (let ((_hd161467161595_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161468161591_)))
                                    (_tl161466161598_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161468161591_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161466161598_))
                                    ((lambda (_L161601_
                                              _L161603_
                                              _L161604_
                                              _L161605_
                                              _L161606_
                                              _L161607_
                                              _L161608_
                                              _L161609_
                                              _L161610_
                                              _L161611_
                                              _L161612_)
                                       (let ((__tmp164259
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class)))
                                             (__tmp164224
                                              (let ((__tmp164256
                                                     (let ((__tmp164258
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164257
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164258 __tmp164257)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp164225
                                                     (let ((__tmp164253
                                                            (let ((__tmp164255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote)))
                          (__tmp164254
                           (let () (declare (not safe)) (cons _L161611_ '()))))
                      (declare (not safe))
                      (cons __tmp164255 __tmp164254)))
                   (__tmp164226
                    (let ((__tmp164250
                           (let ((__tmp164252
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote)))
                                 (__tmp164251
                                  (let ()
                                    (declare (not safe))
                                    (cons _L161610_ '()))))
                             (declare (not safe))
                             (cons __tmp164252 __tmp164251)))
                          (__tmp164227
                           (let ((__tmp164247
                                  (let ((__tmp164249
                                         (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote)))
                                        (__tmp164248
                                         (let ()
                                           (declare (not safe))
                                           (cons _L161609_ '()))))
                                    (declare (not safe))
                                    (cons __tmp164249 __tmp164248)))
                                 (__tmp164228
                                  (let ((__tmp164244
                                         (let ((__tmp164246
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote)))
                                               (__tmp164245
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L161608_ '()))))
                                           (declare (not safe))
                                           (cons __tmp164246 __tmp164245)))
                                        (__tmp164229
                                         (let ((__tmp164241
                                                (let ((__tmp164243
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'quote)))
                                                      (__tmp164242
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L161607_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp164243
                                                        __tmp164242)))
                                               (__tmp164230
                                                (let ((__tmp164231
                                                       (let ((__tmp164232
                                                              (let ((__tmp164233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp164238
                                    (let ((__tmp164240
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164239
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161603_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164240 __tmp164239)))
                                   (__tmp164234
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
                                                    (cons _L161601_ '()))))
                                             (declare (not safe))
                                             (cons __tmp164237 __tmp164236))))
                                      (declare (not safe))
                                      (cons __tmp164235 '()))))
                               (declare (not safe))
                               (cons __tmp164238 __tmp164234))))
                        (declare (not safe))
                        (cons _L161604_ __tmp164233))))
                 (declare (not safe))
                 (cons _L161605_ __tmp164232))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L161606_
                                                        __tmp164231))))
                                           (declare (not safe))
                                           (cons __tmp164241 __tmp164230))))
                                    (declare (not safe))
                                    (cons __tmp164244 __tmp164229))))
                             (declare (not safe))
                             (cons __tmp164247 __tmp164228))))
                      (declare (not safe))
                      (cons __tmp164250 __tmp164227))))
               (declare (not safe))
               (cons __tmp164253 __tmp164226))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164256
                                                      __tmp164225))))
                                         (declare (not safe))
                                         (cons __tmp164259 __tmp164224)))
                                     _hd161467161595_
                                     _hd161464161585_
                                     _hd161461161575_
                                     _hd161458161565_
                                     _hd161455161555_
                                     _hd161452161545_
                                     _hd161449161535_
                                     _hd161446161525_
                                     _hd161443161515_
                                     _hd161440161505_
                                     _hd161437161495_)
                                    (_g161420161474_ _g161421161478_))))
                            (_g161420161474_ _g161421161478_))))
                    (_g161420161474_ _g161421161478_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g161420161474_
                                                     _g161421161478_))))
                                            (_g161420161474_
                                             _g161421161478_))))
                                    (_g161420161474_ _g161421161478_))))
                            (_g161420161474_ _g161421161478_))))
                    (_g161420161474_ _g161421161478_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g161420161474_
                                                     _g161421161478_))))
                                            (_g161420161474_
                                             _g161421161478_))))
                                    (_g161420161474_ _g161421161478_))))
                            (_g161420161474_ _g161421161478_))))
                    (_g161420161474_ _g161421161478_)))))
        (_g161419161655_ _$stx161416_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx161659_)
      (let* ((_g161663161677_
              (lambda (_g161664161673_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161664161673_))))
             (_g161662161718_
              (lambda (_g161664161681_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161664161681_))
                    (let ((_e161668161684_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161664161681_))))
                      (let ((_hd161667161688_
                             (let ()
                               (declare (not safe))
                               (##car _e161668161684_)))
                            (_tl161666161691_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161668161684_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161666161691_))
                            (let ((_e161671161694_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161666161691_))))
                              (let ((_hd161670161698_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161671161694_)))
                                    (_tl161669161701_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161671161694_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161669161701_))
                                    ((lambda (_L161704_)
                                       (let ((__tmp164264
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp164260
                                              (let ((__tmp164261
                                                     (let ((__tmp164263
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164262
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164263 __tmp164262))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164261 '()))))
                                         (declare (not safe))
                                         (cons __tmp164264 __tmp164260)))
                                     _hd161670161698_)
                                    (_g161663161677_ _g161664161681_))))
                            (_g161663161677_ _g161664161681_))))
                    (_g161663161677_ _g161664161681_)))))
        (_g161662161718_ _$stx161659_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx161722_)
      (let* ((_g161726161740_
              (lambda (_g161727161736_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161727161736_))))
             (_g161725161781_
              (lambda (_g161727161744_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161727161744_))
                    (let ((_e161731161747_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161727161744_))))
                      (let ((_hd161730161751_
                             (let ()
                               (declare (not safe))
                               (##car _e161731161747_)))
                            (_tl161729161754_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161731161747_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161729161754_))
                            (let ((_e161734161757_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161729161754_))))
                              (let ((_hd161733161761_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161734161757_)))
                                    (_tl161732161764_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161734161757_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161732161764_))
                                    ((lambda (_L161767_)
                                       (let ((__tmp164269
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp164265
                                              (let ((__tmp164266
                                                     (let ((__tmp164268
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164267
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164268 __tmp164267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164266 '()))))
                                         (declare (not safe))
                                         (cons __tmp164269 __tmp164265)))
                                     _hd161733161761_)
                                    (_g161726161740_ _g161727161744_))))
                            (_g161726161740_ _g161727161744_))))
                    (_g161726161740_ _g161727161744_)))))
        (_g161725161781_ _$stx161722_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx161785_)
      (let* ((_g161789161811_
              (lambda (_g161790161807_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161790161807_))))
             (_g161788161880_
              (lambda (_g161790161815_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161790161815_))
                    (let ((_e161796161818_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161790161815_))))
                      (let ((_hd161795161822_
                             (let ()
                               (declare (not safe))
                               (##car _e161796161818_)))
                            (_tl161794161825_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161796161818_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161794161825_))
                            (let ((_e161799161828_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161794161825_))))
                              (let ((_hd161798161832_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161799161828_)))
                                    (_tl161797161835_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161799161828_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161797161835_))
                                    (let ((_e161802161838_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161797161835_))))
                                      (let ((_hd161801161842_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161802161838_)))
                                            (_tl161800161845_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161802161838_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161800161845_))
                                            (let ((_e161805161848_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161800161845_))))
                                              (let ((_hd161804161852_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161805161848_)))
                                                    (_tl161803161855_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161805161848_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161803161855_))
                                                    ((lambda (_L161858_
                                                              _L161860_
                                                              _L161861_)
                                                       (let ((__tmp164279
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp164270
                      (let ((__tmp164276
                             (let ((__tmp164278
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp164277
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161861_ '()))))
                               (declare (not safe))
                               (cons __tmp164278 __tmp164277)))
                            (__tmp164271
                             (let ((__tmp164273
                                    (let ((__tmp164275
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164274
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161860_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164275 __tmp164274)))
                                   (__tmp164272
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161858_ '()))))
                               (declare (not safe))
                               (cons __tmp164273 __tmp164272))))
                        (declare (not safe))
                        (cons __tmp164276 __tmp164271))))
                 (declare (not safe))
                 (cons __tmp164279 __tmp164270)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd161804161852_
                                                     _hd161801161842_
                                                     _hd161798161832_)
                                                    (_g161789161811_
                                                     _g161790161815_))))
                                            (_g161789161811_
                                             _g161790161815_))))
                                    (_g161789161811_ _g161790161815_))))
                            (_g161789161811_ _g161790161815_))))
                    (_g161789161811_ _g161790161815_)))))
        (_g161788161880_ _$stx161785_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx161884_)
      (let* ((_g161888161910_
              (lambda (_g161889161906_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161889161906_))))
             (_g161887161979_
              (lambda (_g161889161914_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161889161914_))
                    (let ((_e161895161917_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161889161914_))))
                      (let ((_hd161894161921_
                             (let ()
                               (declare (not safe))
                               (##car _e161895161917_)))
                            (_tl161893161924_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161895161917_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161893161924_))
                            (let ((_e161898161927_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161893161924_))))
                              (let ((_hd161897161931_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161898161927_)))
                                    (_tl161896161934_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161898161927_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161896161934_))
                                    (let ((_e161901161937_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161896161934_))))
                                      (let ((_hd161900161941_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161901161937_)))
                                            (_tl161899161944_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161901161937_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161899161944_))
                                            (let ((_e161904161947_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161899161944_))))
                                              (let ((_hd161903161951_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161904161947_)))
                                                    (_tl161902161954_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161904161947_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161902161954_))
                                                    ((lambda (_L161957_
                                                              _L161959_
                                                              _L161960_)
                                                       (let ((__tmp164289
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp164280
                      (let ((__tmp164286
                             (let ((__tmp164288
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp164287
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161960_ '()))))
                               (declare (not safe))
                               (cons __tmp164288 __tmp164287)))
                            (__tmp164281
                             (let ((__tmp164283
                                    (let ((__tmp164285
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164284
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161959_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164285 __tmp164284)))
                                   (__tmp164282
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161957_ '()))))
                               (declare (not safe))
                               (cons __tmp164283 __tmp164282))))
                        (declare (not safe))
                        (cons __tmp164286 __tmp164281))))
                 (declare (not safe))
                 (cons __tmp164289 __tmp164280)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd161903161951_
                                                     _hd161900161941_
                                                     _hd161897161931_)
                                                    (_g161888161910_
                                                     _g161889161914_))))
                                            (_g161888161910_
                                             _g161889161914_))))
                                    (_g161888161910_ _g161889161914_))))
                            (_g161888161910_ _g161889161914_))))
                    (_g161888161910_ _g161889161914_)))))
        (_g161887161979_ _$stx161884_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx161983_)
      (let* ((___stx163798163799_ _$stx161983_)
             (_g161991162059_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163798163799_)))))
        (let ((___kont163801163802_
               (lambda (_L162337_ _L162339_)
                 (let ((__tmp164310
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp164290
                        (let ((__tmp164306
                               (let ((__tmp164309
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164307
                                      (let ((__tmp164308
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164308 '()))))
                                 (declare (not safe))
                                 (cons __tmp164309 __tmp164307)))
                              (__tmp164291
                               (let ((__tmp164303
                                      (let ((__tmp164305
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164304
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162339_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164305 __tmp164304)))
                                     (__tmp164292
                                      (let ((__tmp164293
                                             (let ((__tmp164294
                                                    (let ((__tmp164295
                                                           (let ((__tmp164302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp164296
                          (let ((__tmp164297
                                 (let ((__tmp164301
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp164298
                                        (let ((__tmp164299
                                               (let ((__tmp164300
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L162337_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp164300))))
                                          (declare (not safe))
                                          (cons _L162339_ __tmp164299))))
                                   (declare (not safe))
                                   (cons __tmp164301 __tmp164298))))
                            (declare (not safe))
                            (cons __tmp164297 '()))))
                     (declare (not safe))
                     (cons __tmp164302 __tmp164296))))
              (declare (not safe))
              (cons __tmp164295 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L162337_ __tmp164294))))
                                        (declare (not safe))
                                        (cons '#f __tmp164293))))
                                 (declare (not safe))
                                 (cons __tmp164303 __tmp164292))))
                          (declare (not safe))
                          (cons __tmp164306 __tmp164291))))
                   (declare (not safe))
                   (cons __tmp164310 __tmp164290))))
              (___kont163803163804_
               (lambda (_L162268_ _L162270_)
                 (let ((__tmp164311
                        (let ((__tmp164312
                               (let ((__tmp164313
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L162268_ __tmp164313))))
                          (declare (not safe))
                          (cons 'primitive: __tmp164312))))
                   (declare (not safe))
                   (cons _L162270_ __tmp164311))))
              (___kont163805163806_
               (lambda (_L162207_ _L162209_)
                 (let ((__tmp164327
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp164314
                        (let ((__tmp164323
                               (let ((__tmp164326
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164324
                                      (let ((__tmp164325
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164325 '()))))
                                 (declare (not safe))
                                 (cons __tmp164326 __tmp164324)))
                              (__tmp164315
                               (let ((__tmp164320
                                      (let ((__tmp164322
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164321
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162209_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164322 __tmp164321)))
                                     (__tmp164316
                                      (let ((__tmp164317
                                             (let ((__tmp164319
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp164318
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L162207_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164319
                                                     __tmp164318))))
                                        (declare (not safe))
                                        (cons __tmp164317 '()))))
                                 (declare (not safe))
                                 (cons __tmp164320 __tmp164316))))
                          (declare (not safe))
                          (cons __tmp164323 __tmp164315))))
                   (declare (not safe))
                   (cons __tmp164327 __tmp164314))))
              (___kont163807163808_
               (lambda (_L162139_ _L162141_)
                 (let ((__tmp164341
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp164328
                        (let ((__tmp164337
                               (let ((__tmp164340
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164338
                                      (let ((__tmp164339
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164339 '()))))
                                 (declare (not safe))
                                 (cons __tmp164340 __tmp164338)))
                              (__tmp164329
                               (let ((__tmp164334
                                      (let ((__tmp164336
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164335
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162141_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164336 __tmp164335)))
                                     (__tmp164330
                                      (let ((__tmp164331
                                             (let ((__tmp164333
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp164332
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L162139_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164333
                                                     __tmp164332))))
                                        (declare (not safe))
                                        (cons __tmp164331 '()))))
                                 (declare (not safe))
                                 (cons __tmp164334 __tmp164330))))
                          (declare (not safe))
                          (cons __tmp164337 __tmp164329))))
                   (declare (not safe))
                   (cons __tmp164341 __tmp164328))))
              (___kont163809163810_
               (lambda (_L162086_ _L162088_)
                 (let ((__tmp164342
                        (let ((__tmp164343
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L162086_ __tmp164343))))
                   (declare (not safe))
                   (cons _L162088_ __tmp164342)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx163798163799_))
              (let ((_e161997162293_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx163798163799_))))
                (let ((_tl161995162300_
                       (let () (declare (not safe)) (##cdr _e161997162293_)))
                      (_hd161996162297_
                       (let () (declare (not safe)) (##car _e161997162293_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl161995162300_))
                      (let ((_e162000162303_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl161995162300_))))
                        (let ((_tl161998162310_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162000162303_)))
                              (_hd161999162307_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162000162303_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl161998162310_))
                              (let ((_e162003162313_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl161998162310_))))
                                (let ((_tl162001162320_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e162003162313_)))
                                      (_hd162002162317_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e162003162313_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd162002162317_))
                                      (let ((_e162004162323_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd162002162317_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e162004162323_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl162001162320_))
                                                (let ((_e162007162327_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl162001162320_))))
                                                  (let ((_tl162005162334_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e162007162327_)))
                                                        (_hd162006162331_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e162007162327_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl162005162334_))
                                                        (___kont163801163802_
                                                         _hd162006162331_
                                                         _hd161999162307_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd161999162307_))
                                                            (let ((_e162016162254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd161999162307_))))
                      (declare (not safe))
                      (_g161991162059_))
                    (let () (declare (not safe)) (_g161991162059_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd161999162307_))
                                                    (let ((_e162016162254_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd161999162307_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e162016162254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162001162320_))
                      (___kont163803163804_ _hd162002162317_ _hd161996162297_)
                      (let () (declare (not safe)) (_g161991162059_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162001162320_))
                      (___kont163807163808_ _hd162002162317_ _hd161999162307_)
                      (let () (declare (not safe)) (_g161991162059_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl162001162320_))
                                                        (___kont163807163808_
                                                         _hd162002162317_
                                                         _hd161999162307_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g161991162059_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd161999162307_))
                                                (let ((_e162016162254_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd161999162307_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e162016162254_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl162001162320_))
                                                          (___kont163803163804_
                                                           _hd162002162317_
                                                           _hd161996162297_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl162001162320_))
                      (let ((_e162034162197_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl162001162320_))))
                        (let ((_tl162032162204_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162034162197_)))
                              (_hd162033162201_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162034162197_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162032162204_))
                              (___kont163805163806_
                               _hd162033162201_
                               _hd162002162317_)
                              (let ()
                                (declare (not safe))
                                (_g161991162059_)))))
                      (let () (declare (not safe)) (_g161991162059_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl162001162320_))
                  (___kont163807163808_ _hd162002162317_ _hd161999162307_)
                  (let () (declare (not safe)) (_g161991162059_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162001162320_))
                                                    (___kont163807163808_
                                                     _hd162002162317_
                                                     _hd161999162307_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161991162059_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd161999162307_))
                                          (let ((_e162016162254_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd161999162307_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e162016162254_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162001162320_))
                                                    (___kont163803163804_
                                                     _hd162002162317_
                                                     _hd161996162297_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl162001162320_))
                                                        (let ((_e162034162197_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl162001162320_))))
                  (let ((_tl162032162204_
                         (let () (declare (not safe)) (##cdr _e162034162197_)))
                        (_hd162033162201_
                         (let ()
                           (declare (not safe))
                           (##car _e162034162197_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl162032162204_))
                        (___kont163805163806_
                         _hd162033162201_
                         _hd162002162317_)
                        (let () (declare (not safe)) (_g161991162059_)))))
                (let () (declare (not safe)) (_g161991162059_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162001162320_))
                                                    (___kont163807163808_
                                                     _hd162002162317_
                                                     _hd161999162307_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161991162059_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl162001162320_))
                                              (___kont163807163808_
                                               _hd162002162317_
                                               _hd161999162307_)
                                              (let ()
                                                (declare (not safe))
                                                (_g161991162059_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd161999162307_))
                                  (let ((_e162016162254_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd161999162307_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161998162310_))
                                        (___kont163809163810_
                                         _hd161999162307_
                                         _hd161996162297_)
                                        (let ()
                                          (declare (not safe))
                                          (_g161991162059_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161998162310_))
                                      (___kont163809163810_
                                       _hd161999162307_
                                       _hd161996162297_)
                                      (let ()
                                        (declare (not safe))
                                        (_g161991162059_)))))))
                      (let () (declare (not safe)) (_g161991162059_)))))
              (let () (declare (not safe)) (_g161991162059_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx162361_)
      (let* ((___stx163938163939_ _$stx162361_)
             (_g162366162421_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163938163939_)))))
        (let ((___kont163941163942_
               (lambda (_L162606_ _L162608_)
                 (let ((__tmp164359
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp164344
                        (let ((__tmp164355
                               (let ((__tmp164358
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164356
                                      (let ((__tmp164357
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp164357 '()))))
                                 (declare (not safe))
                                 (cons __tmp164358 __tmp164356)))
                              (__tmp164345
                               (let ((__tmp164346
                                      (let ((__tmp164354
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp164347
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L162606_
                                                  _L162608_))
                                               (let ((__tmp164348
                                                      (lambda (_g162625162629_
                                                               _g162626162632_
                                                               _g162627162634_)
                                                        (let ((__tmp164349
                                                               (let ((__tmp164353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp164350
                              (let ((__tmp164351
                                     (let ((__tmp164352
                                            (let ()
                                              (declare (not safe))
                                              (cons _g162625162629_ '()))))
                                       (declare (not safe))
                                       (cons _g162626162632_ __tmp164352))))
                                (declare (not safe))
                                (cons 'primitive: __tmp164351))))
                         (declare (not safe))
                         (cons __tmp164353 __tmp164350))))
                  (declare (not safe))
                  (cons __tmp164349 _g162627162634_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp164348
                                                         '()
                                                         _L162606_
                                                         _L162608_)))))
                                        (declare (not safe))
                                        (cons __tmp164354 __tmp164347))))
                                 (declare (not safe))
                                 (cons __tmp164346 '()))))
                          (declare (not safe))
                          (cons __tmp164355 __tmp164345))))
                   (declare (not safe))
                   (cons __tmp164359 __tmp164344))))
              (___kont163945163946_
               (lambda (_L162492_ _L162494_)
                 (let ((__tmp164374
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp164360
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
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp164372 '()))))
                                 (declare (not safe))
                                 (cons __tmp164373 __tmp164371)))
                              (__tmp164361
                               (let ((__tmp164362
                                      (let ((__tmp164369
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp164363
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L162492_
                                                  _L162494_))
                                               (let ((__tmp164364
                                                      (lambda (_g162509162513_
                                                               _g162510162516_
                                                               _g162511162518_)
                                                        (let ((__tmp164365
                                                               (let ((__tmp164368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp164366
                              (let ((__tmp164367
                                     (let ()
                                       (declare (not safe))
                                       (cons _g162509162513_ '()))))
                                (declare (not safe))
                                (cons _g162510162516_ __tmp164367))))
                         (declare (not safe))
                         (cons __tmp164368 __tmp164366))))
                  (declare (not safe))
                  (cons __tmp164365 _g162511162518_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp164364
                                                         '()
                                                         _L162492_
                                                         _L162494_)))))
                                        (declare (not safe))
                                        (cons __tmp164369 __tmp164363))))
                                 (declare (not safe))
                                 (cons __tmp164362 '()))))
                          (declare (not safe))
                          (cons __tmp164370 __tmp164361))))
                   (declare (not safe))
                   (cons __tmp164374 __tmp164360)))))
          (let* ((___match163989163990_
                  (lambda (_e162398162428_
                           _hd162397162432_
                           _tl162396162435_
                           ___splice163947163948_
                           _target162399162438_
                           _tl162401162441_)
                    (letrec ((_loop162402162444_
                              (lambda (_hd162400162448_
                                       _dispatch162406162451_
                                       _arity162407162453_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162400162448_))
                                    (let ((_e162403162456_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162400162448_))))
                                      (let ((_lp-tl162405162463_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162403162456_)))
                                            (_lp-hd162404162460_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162403162456_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd162404162460_))
                                            (let ((_e162412162466_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd162404162460_))))
                                              (let ((_tl162410162473_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e162412162466_)))
                                                    (_hd162411162470_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e162412162466_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl162410162473_))
                                                    (let ((_e162415162476_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl162410162473_))))
                                                      (let ((_tl162413162483_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e162415162476_)))
                    (_hd162414162480_
                     (let () (declare (not safe)) (##car _e162415162476_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl162413162483_))
                    (_loop162402162444_
                     _lp-tl162405162463_
                     (let ()
                       (declare (not safe))
                       (cons _hd162414162480_ _dispatch162406162451_))
                     (let ()
                       (declare (not safe))
                       (cons _hd162411162470_ _arity162407162453_)))
                    (let () (declare (not safe)) (_g162366162421_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162366162421_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g162366162421_)))))
                                    (let ((_arity162409162489_
                                           (reverse _arity162407162453_))
                                          (_dispatch162408162486_
                                           (reverse _dispatch162406162451_)))
                                      (___kont163945163946_
                                       _dispatch162408162486_
                                       _arity162409162489_))))))
                      (_loop162402162444_ _target162399162438_ '() '()))))
                 (___match163981163982_
                  (lambda (_e162398162428_ _hd162397162432_ _tl162396162435_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl162396162435_))
                        (let ((___splice163947163948_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl162396162435_
                                  '0))))
                          (let ((_tl162401162441_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice163947163948_ '1)))
                                (_target162399162438_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice163947163948_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl162401162441_))
                                (___match163989163990_
                                 _e162398162428_
                                 _hd162397162432_
                                 _tl162396162435_
                                 ___splice163947163948_
                                 _target162399162438_
                                 _tl162401162441_)
                                (let ()
                                  (declare (not safe))
                                  (_g162366162421_)))))
                        (let () (declare (not safe)) (_g162366162421_)))))
                 (___match163975163976_
                  (lambda (_e162372162528_
                           _hd162371162532_
                           _tl162370162535_
                           _e162375162538_
                           _hd162374162542_
                           _tl162373162545_
                           _e162376162548_
                           ___splice163943163944_
                           _target162377162552_
                           _tl162379162555_)
                    (letrec ((_loop162380162558_
                              (lambda (_hd162378162562_
                                       _dispatch162384162565_
                                       _arity162385162567_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162378162562_))
                                    (let ((_e162381162570_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162378162562_))))
                                      (let ((_lp-tl162383162577_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162381162570_)))
                                            (_lp-hd162382162574_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162381162570_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd162382162574_))
                                            (let ((_e162390162580_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd162382162574_))))
                                              (let ((_tl162388162587_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e162390162580_)))
                                                    (_hd162389162584_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e162390162580_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl162388162587_))
                                                    (let ((_e162393162590_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl162388162587_))))
                                                      (let ((_tl162391162597_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e162393162590_)))
                    (_hd162392162594_
                     (let () (declare (not safe)) (##car _e162393162590_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl162391162597_))
                    (_loop162380162558_
                     _lp-tl162383162577_
                     (let ()
                       (declare (not safe))
                       (cons _hd162392162594_ _dispatch162384162565_))
                     (let ()
                       (declare (not safe))
                       (cons _hd162389162584_ _arity162385162567_)))
                    (___match163981163982_
                     _e162372162528_
                     _hd162371162532_
                     _tl162370162535_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match163981163982_
                                                     _e162372162528_
                                                     _hd162371162532_
                                                     _tl162370162535_))))
                                            (___match163981163982_
                                             _e162372162528_
                                             _hd162371162532_
                                             _tl162370162535_))))
                                    (let ((_arity162387162603_
                                           (reverse _arity162385162567_))
                                          (_dispatch162386162600_
                                           (reverse _dispatch162384162565_)))
                                      (___kont163941163942_
                                       _dispatch162386162600_
                                       _arity162387162603_))))))
                      (_loop162380162558_ _target162377162552_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163938163939_))
                (let ((_e162372162528_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163938163939_))))
                  (let ((_tl162370162535_
                         (let () (declare (not safe)) (##cdr _e162372162528_)))
                        (_hd162371162532_
                         (let ()
                           (declare (not safe))
                           (##car _e162372162528_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162370162535_))
                        (let ((_e162375162538_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162370162535_))))
                          (let ((_tl162373162545_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162375162538_)))
                                (_hd162374162542_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162375162538_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd162374162542_))
                                (let ((_e162376162548_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd162374162542_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e162376162548_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl162373162545_))
                                          (let ((___splice163943163944_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl162373162545_
                                                    '0))))
                                            (let ((_tl162379162555_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163943163944_
                                                      '1)))
                                                  (_target162377162552_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163943163944_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162379162555_))
                                                  (___match163975163976_
                                                   _e162372162528_
                                                   _hd162371162532_
                                                   _tl162370162535_
                                                   _e162375162538_
                                                   _hd162374162542_
                                                   _tl162373162545_
                                                   _e162376162548_
                                                   ___splice163943163944_
                                                   _target162377162552_
                                                   _tl162379162555_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162370162535_))
                                                      (let ((___splice163947163948_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162370162535_ '0))))
                (let ((_tl162401162441_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163947163948_ '1)))
                      (_target162399162438_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163947163948_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162401162441_))
                      (___match163989163990_
                       _e162372162528_
                       _hd162371162532_
                       _tl162370162535_
                       ___splice163947163948_
                       _target162399162438_
                       _tl162401162441_)
                      (let () (declare (not safe)) (_g162366162421_)))))
              (let () (declare (not safe)) (_g162366162421_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl162370162535_))
                                              (let ((___splice163947163948_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl162370162535_
                                                        '0))))
                                                (let ((_tl162401162441_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice163947163948_
                                                          '1)))
                                                      (_target162399162438_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice163947163948_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl162401162441_))
                                                      (___match163989163990_
                                                       _e162372162528_
                                                       _hd162371162532_
                                                       _tl162370162535_
                                                       ___splice163947163948_
                                                       _target162399162438_
                                                       _tl162401162441_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g162366162421_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g162366162421_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl162370162535_))
                                          (let ((___splice163947163948_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl162370162535_
                                                    '0))))
                                            (let ((_tl162401162441_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163947163948_
                                                      '1)))
                                                  (_target162399162438_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163947163948_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162401162441_))
                                                  (___match163989163990_
                                                   _e162372162528_
                                                   _hd162371162532_
                                                   _tl162370162535_
                                                   ___splice163947163948_
                                                   _target162399162438_
                                                   _tl162401162441_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g162366162421_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g162366162421_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162370162535_))
                                    (let ((___splice163947163948_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162370162535_
                                              '0))))
                                      (let ((_tl162401162441_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163947163948_
                                                '1)))
                                            (_target162399162438_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163947163948_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162401162441_))
                                            (___match163989163990_
                                             _e162372162528_
                                             _hd162371162532_
                                             _tl162370162535_
                                             ___splice163947163948_
                                             _target162399162438_
                                             _tl162401162441_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162366162421_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162366162421_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl162370162535_))
                            (let ((___splice163947163948_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl162370162535_
                                      '0))))
                              (let ((_tl162401162441_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice163947163948_
                                        '1)))
                                    (_target162399162438_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice163947163948_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl162401162441_))
                                    (___match163989163990_
                                     _e162372162528_
                                     _hd162371162532_
                                     _tl162370162535_
                                     ___splice163947163948_
                                     _target162399162438_
                                     _tl162401162441_)
                                    (let ()
                                      (declare (not safe))
                                      (_g162366162421_)))))
                            (let () (declare (not safe)) (_g162366162421_))))))
                (let () (declare (not safe)) (_g162366162421_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx162643_)
      (let* ((_g162647162665_
              (lambda (_g162648162661_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162648162661_))))
             (_g162646162720_
              (lambda (_g162648162669_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162648162669_))
                    (let ((_e162653162672_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162648162669_))))
                      (let ((_hd162652162676_
                             (let ()
                               (declare (not safe))
                               (##car _e162653162672_)))
                            (_tl162651162679_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162653162672_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl162651162679_))
                            (let ((_e162656162682_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl162651162679_))))
                              (let ((_hd162655162686_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e162656162682_)))
                                    (_tl162654162689_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e162656162682_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl162654162689_))
                                    (let ((_e162659162692_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl162654162689_))))
                                      (let ((_hd162658162696_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162659162692_)))
                                            (_tl162657162699_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162659162692_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162657162699_))
                                            ((lambda (_L162702_ _L162704_)
                                               (let ((__tmp164388
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp164375
                                                      (let ((__tmp164384
                                                             (let ((__tmp164387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp164385
                            (let ((__tmp164386
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp164386 '()))))
                       (declare (not safe))
                       (cons __tmp164387 __tmp164385)))
                    (__tmp164376
                     (let ((__tmp164381
                            (let ((__tmp164383
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp164382
                                   (let ()
                                     (declare (not safe))
                                     (cons _L162704_ '()))))
                              (declare (not safe))
                              (cons __tmp164383 __tmp164382)))
                           (__tmp164377
                            (let ((__tmp164378
                                   (let ((__tmp164380
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp164379
                                          (let ()
                                            (declare (not safe))
                                            (cons _L162702_ '()))))
                                     (declare (not safe))
                                     (cons __tmp164380 __tmp164379))))
                              (declare (not safe))
                              (cons __tmp164378 '()))))
                       (declare (not safe))
                       (cons __tmp164381 __tmp164377))))
                (declare (not safe))
                (cons __tmp164384 __tmp164376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp164388
                                                       __tmp164375)))
                                             _hd162658162696_
                                             _hd162655162686_)
                                            (_g162647162665_
                                             _g162648162669_))))
                                    (_g162647162665_ _g162648162669_))))
                            (_g162647162665_ _g162648162669_))))
                    (_g162647162665_ _g162648162669_)))))
        (_g162646162720_ _$stx162643_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx162724_)
      (let* ((_g162728162746_
              (lambda (_g162729162742_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162729162742_))))
             (_g162727162801_
              (lambda (_g162729162750_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162729162750_))
                    (let ((_e162734162753_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162729162750_))))
                      (let ((_hd162733162757_
                             (let ()
                               (declare (not safe))
                               (##car _e162734162753_)))
                            (_tl162732162760_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162734162753_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl162732162760_))
                            (let ((_e162737162763_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl162732162760_))))
                              (let ((_hd162736162767_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e162737162763_)))
                                    (_tl162735162770_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e162737162763_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl162735162770_))
                                    (let ((_e162740162773_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl162735162770_))))
                                      (let ((_hd162739162777_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162740162773_)))
                                            (_tl162738162780_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162740162773_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162738162780_))
                                            ((lambda (_L162783_ _L162785_)
                                               (let ((__tmp164402
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp164389
                                                      (let ((__tmp164398
                                                             (let ((__tmp164401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp164399
                            (let ((__tmp164400
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp164400 '()))))
                       (declare (not safe))
                       (cons __tmp164401 __tmp164399)))
                    (__tmp164390
                     (let ((__tmp164395
                            (let ((__tmp164397
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp164396
                                   (let ()
                                     (declare (not safe))
                                     (cons _L162785_ '()))))
                              (declare (not safe))
                              (cons __tmp164397 __tmp164396)))
                           (__tmp164391
                            (let ((__tmp164392
                                   (let ((__tmp164394
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp164393
                                          (let ()
                                            (declare (not safe))
                                            (cons _L162783_ '()))))
                                     (declare (not safe))
                                     (cons __tmp164394 __tmp164393))))
                              (declare (not safe))
                              (cons __tmp164392 '()))))
                       (declare (not safe))
                       (cons __tmp164395 __tmp164391))))
                (declare (not safe))
                (cons __tmp164398 __tmp164390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp164402
                                                       __tmp164389)))
                                             _hd162739162777_
                                             _hd162736162767_)
                                            (_g162728162746_
                                             _g162729162750_))))
                                    (_g162728162746_ _g162729162750_))))
                            (_g162728162746_ _g162729162750_))))
                    (_g162728162746_ _g162729162750_)))))
        (_g162727162801_ _$stx162724_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx162805_)
      (let* ((___stx163992163993_ _$stx162805_)
             (_g162812162883_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163992163993_)))))
        (let ((___kont163995163996_
               (lambda (_L163174_ _L163176_)
                 (let ((__tmp164408
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164403
                        (let ((__tmp164404
                               (let ((__tmp164405
                                      (let ((__tmp164407
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164406
                                             (let ()
                                               (declare (not safe))
                                               (cons _L163174_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164407 __tmp164406))))
                                 (declare (not safe))
                                 (cons __tmp164405 '()))))
                          (declare (not safe))
                          (cons _L163176_ __tmp164404))))
                   (declare (not safe))
                   (cons __tmp164408 __tmp164403))))
              (___kont163997163998_
               (lambda (_L163093_ _L163095_)
                 (let ((__tmp164417
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164409
                        (let ((__tmp164410
                               (let ((__tmp164411
                                      (let ((__tmp164416
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164412
                                             (let ((__tmp164413
                                                    (lambda (_g163114163117_
                                                             _g163115163120_)
                                                      (let ((__tmp164414
                                                             (let ((__tmp164415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g163114163117_ __tmp164415))))
                (declare (not safe))
                (cons __tmp164414 _g163115163120_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp164413
                                                       '()
                                                       _L163093_))))
                                        (declare (not safe))
                                        (cons __tmp164416 __tmp164412))))
                                 (declare (not safe))
                                 (cons __tmp164411 '()))))
                          (declare (not safe))
                          (cons _L163095_ __tmp164410))))
                   (declare (not safe))
                   (cons __tmp164417 __tmp164409))))
              (___kont164001164002_
               (lambda (_L163005_ _L163007_)
                 (let ((__tmp164424
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164418
                        (let ((__tmp164419
                               (let ((__tmp164420
                                      (let ((__tmp164423
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164421
                                             (let ((__tmp164422
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L163005_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp164422))))
                                        (declare (not safe))
                                        (cons __tmp164423 __tmp164421))))
                                 (declare (not safe))
                                 (cons __tmp164420 '()))))
                          (declare (not safe))
                          (cons _L163007_ __tmp164419))))
                   (declare (not safe))
                   (cons __tmp164424 __tmp164418))))
              (___kont164003164004_
               (lambda (_L162940_ _L162942_)
                 (let ((__tmp164434
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164425
                        (let ((__tmp164426
                               (let ((__tmp164427
                                      (let ((__tmp164433
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164428
                                             (let ((__tmp164429
                                                    (let ((__tmp164430
                                                           (lambda (_g162959162962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g162960162965_)
                     (let ((__tmp164431
                            (let ((__tmp164432
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g162959162962_ __tmp164432))))
                       (declare (not safe))
                       (cons __tmp164431 _g162960162965_)))))
              (declare (not safe))
              (foldr1 __tmp164430 '() _L162940_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp164429))))
                                        (declare (not safe))
                                        (cons __tmp164433 __tmp164428))))
                                 (declare (not safe))
                                 (cons __tmp164427 '()))))
                          (declare (not safe))
                          (cons _L162942_ __tmp164426))))
                   (declare (not safe))
                   (cons __tmp164434 __tmp164425)))))
          (let* ((___match164111164112_
                  (lambda (_e162865162890_
                           _hd162864162894_
                           _tl162863162897_
                           _e162868162900_
                           _hd162867162904_
                           _tl162866162907_
                           ___splice164005164006_
                           _target162869162910_
                           _tl162871162913_)
                    (letrec ((_loop162872162916_
                              (lambda (_hd162870162920_ _arity162876162923_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162870162920_))
                                    (let ((_e162873162926_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162870162920_))))
                                      (let ((_lp-tl162875162933_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162873162926_)))
                                            (_lp-hd162874162930_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162873162926_))))
                                        (_loop162872162916_
                                         _lp-tl162875162933_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd162874162930_
                                                 _arity162876162923_)))))
                                    (let ((_arity162877162936_
                                           (reverse _arity162876162923_)))
                                      (___kont164003164004_
                                       _arity162877162936_
                                       _hd162867162904_))))))
                      (_loop162872162916_ _target162869162910_ '()))))
                 (___match164071164072_
                  (lambda (_e162833163029_
                           _hd162832163033_
                           _tl162831163036_
                           _e162836163039_
                           _hd162835163043_
                           _tl162834163046_
                           _e162839163049_
                           _hd162838163053_
                           _tl162837163056_
                           _e162840163059_
                           ___splice163999164000_
                           _target162841163063_
                           _tl162843163066_)
                    (letrec ((_loop162844163069_
                              (lambda (_hd162842163073_ _arity162848163076_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162842163073_))
                                    (let ((_e162845163079_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162842163073_))))
                                      (let ((_lp-tl162847163086_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162845163079_)))
                                            (_lp-hd162846163083_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162845163079_))))
                                        (_loop162844163069_
                                         _lp-tl162847163086_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd162846163083_
                                                 _arity162848163076_)))))
                                    (let ((_arity162849163089_
                                           (reverse _arity162848163076_)))
                                      (___kont163997163998_
                                       _arity162849163089_
                                       _hd162835163043_))))))
                      (_loop162844163069_ _target162841163063_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163992163993_))
                (let ((_e162818163130_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163992163993_))))
                  (let ((_tl162816163137_
                         (let () (declare (not safe)) (##cdr _e162818163130_)))
                        (_hd162817163134_
                         (let ()
                           (declare (not safe))
                           (##car _e162818163130_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162816163137_))
                        (let ((_e162821163140_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162816163137_))))
                          (let ((_tl162819163147_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162821163140_)))
                                (_hd162820163144_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162821163140_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl162819163147_))
                                (let ((_e162824163150_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl162819163147_))))
                                  (let ((_tl162822163157_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e162824163150_)))
                                        (_hd162823163154_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e162824163150_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd162823163154_))
                                        (let ((_e162825163160_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd162823163154_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e162825163160_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl162822163157_))
                                                  (let ((_e162828163164_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl162822163157_))))
                                                    (let ((_tl162826163171_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e162828163164_)))
                                                          (_hd162827163168_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e162828163164_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl162826163171_))
                                                          (___kont163995163996_
                                                           _hd162827163168_
                                                           _hd162820163144_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl162822163157_))
                      (let ((___splice163999164000_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl162822163157_ '0))))
                        (let ((_tl162843163066_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice163999164000_ '1)))
                              (_target162841163063_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice163999164000_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162843163066_))
                              (___match164071164072_
                               _e162818163130_
                               _hd162817163134_
                               _tl162816163137_
                               _e162821163140_
                               _hd162820163144_
                               _tl162819163147_
                               _e162824163150_
                               _hd162823163154_
                               _tl162822163157_
                               _e162825163160_
                               ___splice163999164000_
                               _target162841163063_
                               _tl162843163066_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl162819163147_))
                                  (let ((___splice164005164006_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl162819163147_
                                            '0))))
                                    (let ((_tl162871162913_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice164005164006_
                                              '1)))
                                          (_target162869162910_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice164005164006_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl162871162913_))
                                          (___match164111164112_
                                           _e162818163130_
                                           _hd162817163134_
                                           _tl162816163137_
                                           _e162821163140_
                                           _hd162820163144_
                                           _tl162819163147_
                                           ___splice164005164006_
                                           _target162869162910_
                                           _tl162871162913_)
                                          (let ()
                                            (declare (not safe))
                                            (_g162812162883_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g162812162883_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl162819163147_))
                          (let ((___splice164005164006_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl162819163147_
                                    '0))))
                            (let ((_tl162871162913_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice164005164006_ '1)))
                                  (_target162869162910_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice164005164006_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl162871162913_))
                                  (___match164111164112_
                                   _e162818163130_
                                   _hd162817163134_
                                   _tl162816163137_
                                   _e162821163140_
                                   _hd162820163144_
                                   _tl162819163147_
                                   ___splice164005164006_
                                   _target162869162910_
                                   _tl162871162913_)
                                  (let ()
                                    (declare (not safe))
                                    (_g162812162883_)))))
                          (let () (declare (not safe)) (_g162812162883_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162822163157_))
                                                      (let ((___splice163999164000_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162822163157_ '0))))
                (let ((_tl162843163066_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163999164000_ '1)))
                      (_target162841163063_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163999164000_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162843163066_))
                      (___match164071164072_
                       _e162818163130_
                       _hd162817163134_
                       _tl162816163137_
                       _e162821163140_
                       _hd162820163144_
                       _tl162819163147_
                       _e162824163150_
                       _hd162823163154_
                       _tl162822163157_
                       _e162825163160_
                       ___splice163999164000_
                       _target162841163063_
                       _tl162843163066_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl162822163157_))
                          (___kont164001164002_
                           _hd162823163154_
                           _hd162820163144_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl162819163147_))
                              (let ((___splice164005164006_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl162819163147_
                                        '0))))
                                (let ((_tl162871162913_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice164005164006_
                                          '1)))
                                      (_target162869162910_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice164005164006_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162871162913_))
                                      (___match164111164112_
                                       _e162818163130_
                                       _hd162817163134_
                                       _tl162816163137_
                                       _e162821163140_
                                       _hd162820163144_
                                       _tl162819163147_
                                       ___splice164005164006_
                                       _target162869162910_
                                       _tl162871162913_)
                                      (let ()
                                        (declare (not safe))
                                        (_g162812162883_)))))
                              (let ()
                                (declare (not safe))
                                (_g162812162883_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl162822163157_))
                  (___kont164001164002_ _hd162823163154_ _hd162820163144_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl162819163147_))
                      (let ((___splice164005164006_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl162819163147_ '0))))
                        (let ((_tl162871162913_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164005164006_ '1)))
                              (_target162869162910_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164005164006_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162871162913_))
                              (___match164111164112_
                               _e162818163130_
                               _hd162817163134_
                               _tl162816163137_
                               _e162821163140_
                               _hd162820163144_
                               _tl162819163147_
                               ___splice164005164006_
                               _target162869162910_
                               _tl162871162913_)
                              (let ()
                                (declare (not safe))
                                (_g162812162883_)))))
                      (let () (declare (not safe)) (_g162812162883_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162822163157_))
                                                  (___kont164001164002_
                                                   _hd162823163154_
                                                   _hd162820163144_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162819163147_))
                                                      (let ((___splice164005164006_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162819163147_ '0))))
                (let ((_tl162871162913_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164005164006_ '1)))
                      (_target162869162910_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164005164006_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162871162913_))
                      (___match164111164112_
                       _e162818163130_
                       _hd162817163134_
                       _tl162816163137_
                       _e162821163140_
                       _hd162820163144_
                       _tl162819163147_
                       ___splice164005164006_
                       _target162869162910_
                       _tl162871162913_)
                      (let () (declare (not safe)) (_g162812162883_)))))
              (let () (declare (not safe)) (_g162812162883_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162822163157_))
                                            (___kont164001164002_
                                             _hd162823163154_
                                             _hd162820163144_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl162819163147_))
                                                (let ((___splice164005164006_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl162819163147_
                                                          '0))))
                                                  (let ((_tl162871162913_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice164005164006_
                                                            '1)))
                                                        (_target162869162910_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice164005164006_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl162871162913_))
                                                        (___match164111164112_
                                                         _e162818163130_
                                                         _hd162817163134_
                                                         _tl162816163137_
                                                         _e162821163140_
                                                         _hd162820163144_
                                                         _tl162819163147_
                                                         ___splice164005164006_
                                                         _target162869162910_
                                                         _tl162871162913_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g162812162883_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g162812162883_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162819163147_))
                                    (let ((___splice164005164006_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162819163147_
                                              '0))))
                                      (let ((_tl162871162913_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164005164006_
                                                '1)))
                                            (_target162869162910_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164005164006_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162871162913_))
                                            (___match164111164112_
                                             _e162818163130_
                                             _hd162817163134_
                                             _tl162816163137_
                                             _e162821163140_
                                             _hd162820163144_
                                             _tl162819163147_
                                             ___splice164005164006_
                                             _target162869162910_
                                             _tl162871162913_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162812162883_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162812162883_))))))
                        (let () (declare (not safe)) (_g162812162883_)))))
                (let () (declare (not safe)) (_g162812162883_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx163200_)
      (let* ((___stx164114164115_ _$stx163200_)
             (_g163205163240_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx164114164115_)))))
        (let ((___kont164117164118_
               (lambda (_L163362_ _L163364_)
                 (let ((__tmp164440
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164435
                        (let ((__tmp164436
                               (let ((__tmp164437
                                      (let ((__tmp164439
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164438
                                             (let ()
                                               (declare (not safe))
                                               (cons _L163362_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164439 __tmp164438))))
                                 (declare (not safe))
                                 (cons __tmp164437 '()))))
                          (declare (not safe))
                          (cons _L163364_ __tmp164436))))
                   (declare (not safe))
                   (cons __tmp164440 __tmp164435))))
              (___kont164119164120_
               (lambda (_L163297_ _L163299_)
                 (let ((__tmp164449
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164441
                        (let ((__tmp164442
                               (let ((__tmp164443
                                      (let ((__tmp164448
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164444
                                             (let ((__tmp164445
                                                    (lambda (_g163316163319_
                                                             _g163317163322_)
                                                      (let ((__tmp164446
                                                             (let ((__tmp164447
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g163316163319_ __tmp164447))))
                (declare (not safe))
                (cons __tmp164446 _g163317163322_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp164445
                                                       '()
                                                       _L163297_))))
                                        (declare (not safe))
                                        (cons __tmp164448 __tmp164444))))
                                 (declare (not safe))
                                 (cons __tmp164443 '()))))
                          (declare (not safe))
                          (cons _L163299_ __tmp164442))))
                   (declare (not safe))
                   (cons __tmp164449 __tmp164441)))))
          (let ((___match164163164164_
                 (lambda (_e163222163247_
                          _hd163221163251_
                          _tl163220163254_
                          _e163225163257_
                          _hd163224163261_
                          _tl163223163264_
                          ___splice164121164122_
                          _target163226163267_
                          _tl163228163270_)
                   (letrec ((_loop163229163273_
                             (lambda (_hd163227163277_ _arity163233163280_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd163227163277_))
                                   (let ((_e163230163283_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd163227163277_))))
                                     (let ((_lp-tl163232163290_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e163230163283_)))
                                           (_lp-hd163231163287_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e163230163283_))))
                                       (_loop163229163273_
                                        _lp-tl163232163290_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd163231163287_
                                                _arity163233163280_)))))
                                   (let ((_arity163234163293_
                                          (reverse _arity163233163280_)))
                                     (___kont164119164120_
                                      _arity163234163293_
                                      _hd163224163261_))))))
                     (_loop163229163273_ _target163226163267_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx164114164115_))
                (let ((_e163211163332_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx164114164115_))))
                  (let ((_tl163209163339_
                         (let () (declare (not safe)) (##cdr _e163211163332_)))
                        (_hd163210163336_
                         (let ()
                           (declare (not safe))
                           (##car _e163211163332_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl163209163339_))
                        (let ((_e163214163342_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl163209163339_))))
                          (let ((_tl163212163349_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e163214163342_)))
                                (_hd163213163346_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e163214163342_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl163212163349_))
                                (let ((_e163217163352_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl163212163349_))))
                                  (let ((_tl163215163359_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e163217163352_)))
                                        (_hd163216163356_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e163217163352_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163215163359_))
                                        (___kont164117164118_
                                         _hd163216163356_
                                         _hd163213163346_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl163212163349_))
                                            (let ((___splice164121164122_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl163212163349_
                                                      '0))))
                                              (let ((_tl163228163270_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice164121164122_
                                                        '1)))
                                                    (_target163226163267_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice164121164122_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl163228163270_))
                                                    (___match164163164164_
                                                     _e163211163332_
                                                     _hd163210163336_
                                                     _tl163209163339_
                                                     _e163214163342_
                                                     _hd163213163346_
                                                     _tl163212163349_
                                                     ___splice164121164122_
                                                     _target163226163267_
                                                     _tl163228163270_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g163205163240_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g163205163240_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl163212163349_))
                                    (let ((___splice164121164122_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl163212163349_
                                              '0))))
                                      (let ((_tl163228163270_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164121164122_
                                                '1)))
                                            (_target163226163267_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164121164122_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl163228163270_))
                                            (___match164163164164_
                                             _e163211163332_
                                             _hd163210163336_
                                             _tl163209163339_
                                             _e163214163342_
                                             _hd163213163346_
                                             _tl163212163349_
                                             ___splice164121164122_
                                             _target163226163267_
                                             _tl163228163270_)
                                            (let ()
                                              (declare (not safe))
                                              (_g163205163240_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g163205163240_))))))
                        (let () (declare (not safe)) (_g163205163240_)))))
                (let () (declare (not safe)) (_g163205163240_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx163384_)
      (let* ((_g163388163423_
              (lambda (_g163389163419_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g163389163419_))))
             (_g163387163551_
              (lambda (_g163389163427_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g163389163427_))
                    (let ((_e163394163430_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g163389163427_))))
                      (let ((_hd163393163434_
                             (let ()
                               (declare (not safe))
                               (##car _e163394163430_)))
                            (_tl163392163437_
                             (let ()
                               (declare (not safe))
                               (##cdr _e163394163430_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl163392163437_))
                            (let ((_g164450_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl163392163437_
                                      '0))))
                              (begin
                                (let ((_g164451_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164450_)
                                             (##vector-length _g164450_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164451_ 2)))
                                      (error "Context expects 2 values"
                                             _g164451_)))
                                (let ((_target163395163440_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164450_ 0)))
                                      (_tl163397163443_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164450_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl163397163443_))
                                      (letrec ((_loop163398163446_
                                                (lambda (_hd163396163450_
                                                         _arity163402163453_
                                                         _prim163403163455_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd163396163450_))
                                                      (let ((_e163399163458_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd163396163450_))))
                (let ((_lp-hd163400163462_
                       (let () (declare (not safe)) (##car _e163399163458_)))
                      (_lp-tl163401163465_
                       (let () (declare (not safe)) (##cdr _e163399163458_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd163400163462_))
                      (let ((_e163408163468_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd163400163462_))))
                        (let ((_hd163407163472_
                               (let ()
                                 (declare (not safe))
                                 (##car _e163408163468_)))
                              (_tl163406163475_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e163408163468_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl163406163475_))
                              (let ((_g164460_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl163406163475_
                                        '0))))
                                (begin
                                  (let ((_g164461_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g164460_)
                                               (##vector-length _g164460_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g164461_ 2)))
                                        (error "Context expects 2 values"
                                               _g164461_)))
                                  (let ((_target163409163478_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164460_ 0)))
                                        (_tl163411163481_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164460_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163411163481_))
                                        (letrec ((_loop163412163484_
                                                  (lambda (_hd163410163488_
                                                           _arity163416163491_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd163410163488_))
                                                        (let ((_e163413163494_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd163410163488_))))
                  (let ((_lp-hd163414163498_
                         (let () (declare (not safe)) (##car _e163413163494_)))
                        (_lp-tl163415163501_
                         (let ()
                           (declare (not safe))
                           (##cdr _e163413163494_))))
                    (_loop163412163484_
                     _lp-tl163415163501_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd163414163498_ _arity163416163491_)))))
                (let ((_arity163417163504_ (reverse _arity163416163491_)))
                  (_loop163398163446_
                   _lp-tl163401163465_
                   (let ()
                     (declare (not safe))
                     (cons _arity163417163504_ _arity163402163453_))
                   (let ()
                     (declare (not safe))
                     (cons _hd163407163472_ _prim163403163455_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop163412163484_
                                           _target163409163478_
                                           '()))
                                        (_g163388163423_ _g163389163427_)))))
                              (_g163388163423_ _g163389163427_))))
                      (_g163388163423_ _g163389163427_))))
              (let ((_arity163404163508_ (reverse _arity163402163453_))
                    (_prim163405163511_ (reverse _prim163403163455_)))
                ((lambda (_L163514_ _L163516_)
                   (let ((__tmp164459
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164452
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L163514_
                               _L163516_))
                            (let ((__tmp164453
                                   (lambda (_g163531163537_
                                            _g163532163540_
                                            _g163533163542_)
                                     (let ((__tmp164454
                                            (let ((__tmp164458
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp164455
                                                   (let ((__tmp164456
                                                          (let ((__tmp164457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g163534163545_ _g163535163548_)
                           (let ()
                             (declare (not safe))
                             (cons _g163534163545_ _g163535163548_)))))
                    (declare (not safe))
                    (foldr1 __tmp164457 '() _g163531163537_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g163532163540_
                                                           __tmp164456))))
                                              (declare (not safe))
                                              (cons __tmp164458 __tmp164455))))
                                       (declare (not safe))
                                       (cons __tmp164454 _g163533163542_)))))
                              (declare (not safe))
                              (foldr2 __tmp164453 '() _L163514_ _L163516_)))))
                     (declare (not safe))
                     (cons __tmp164459 __tmp164452)))
                 _arity163404163508_
                 _prim163405163511_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop163398163446_
                                         _target163395163440_
                                         '()
                                         '()))
                                      (_g163388163423_ _g163389163427_)))))
                            (_g163388163423_ _g163389163427_))))
                    (_g163388163423_ _g163389163427_)))))
        (_g163387163551_ _$stx163384_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx163557_)
      (let* ((_g163561163596_
              (lambda (_g163562163592_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g163562163592_))))
             (_g163560163724_
              (lambda (_g163562163600_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g163562163600_))
                    (let ((_e163567163603_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g163562163600_))))
                      (let ((_hd163566163607_
                             (let ()
                               (declare (not safe))
                               (##car _e163567163603_)))
                            (_tl163565163610_
                             (let ()
                               (declare (not safe))
                               (##cdr _e163567163603_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl163565163610_))
                            (let ((_g164462_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl163565163610_
                                      '0))))
                              (begin
                                (let ((_g164463_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164462_)
                                             (##vector-length _g164462_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164463_ 2)))
                                      (error "Context expects 2 values"
                                             _g164463_)))
                                (let ((_target163568163613_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164462_ 0)))
                                      (_tl163570163616_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164462_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl163570163616_))
                                      (letrec ((_loop163571163619_
                                                (lambda (_hd163569163623_
                                                         _arity163575163626_
                                                         _prim163576163628_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd163569163623_))
                                                      (let ((_e163572163631_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd163569163623_))))
                (let ((_lp-hd163573163635_
                       (let () (declare (not safe)) (##car _e163572163631_)))
                      (_lp-tl163574163638_
                       (let () (declare (not safe)) (##cdr _e163572163631_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd163573163635_))
                      (let ((_e163581163641_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd163573163635_))))
                        (let ((_hd163580163645_
                               (let ()
                                 (declare (not safe))
                                 (##car _e163581163641_)))
                              (_tl163579163648_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e163581163641_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl163579163648_))
                              (let ((_g164472_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl163579163648_
                                        '0))))
                                (begin
                                  (let ((_g164473_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g164472_)
                                               (##vector-length _g164472_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g164473_ 2)))
                                        (error "Context expects 2 values"
                                               _g164473_)))
                                  (let ((_target163582163651_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164472_ 0)))
                                        (_tl163584163654_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164472_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163584163654_))
                                        (letrec ((_loop163585163657_
                                                  (lambda (_hd163583163661_
                                                           _arity163589163664_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd163583163661_))
                                                        (let ((_e163586163667_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd163583163661_))))
                  (let ((_lp-hd163587163671_
                         (let () (declare (not safe)) (##car _e163586163667_)))
                        (_lp-tl163588163674_
                         (let ()
                           (declare (not safe))
                           (##cdr _e163586163667_))))
                    (_loop163585163657_
                     _lp-tl163588163674_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd163587163671_ _arity163589163664_)))))
                (let ((_arity163590163677_ (reverse _arity163589163664_)))
                  (_loop163571163619_
                   _lp-tl163574163638_
                   (let ()
                     (declare (not safe))
                     (cons _arity163590163677_ _arity163575163626_))
                   (let ()
                     (declare (not safe))
                     (cons _hd163580163645_ _prim163576163628_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop163585163657_
                                           _target163582163651_
                                           '()))
                                        (_g163561163596_ _g163562163600_)))))
                              (_g163561163596_ _g163562163600_))))
                      (_g163561163596_ _g163562163600_))))
              (let ((_arity163577163681_ (reverse _arity163575163626_))
                    (_prim163578163684_ (reverse _prim163576163628_)))
                ((lambda (_L163687_ _L163689_)
                   (let ((__tmp164471
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164464
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L163687_
                               _L163689_))
                            (let ((__tmp164465
                                   (lambda (_g163704163710_
                                            _g163705163713_
                                            _g163706163715_)
                                     (let ((__tmp164466
                                            (let ((__tmp164470
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp164467
                                                   (let ((__tmp164468
                                                          (let ((__tmp164469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g163707163718_ _g163708163721_)
                           (let ()
                             (declare (not safe))
                             (cons _g163707163718_ _g163708163721_)))))
                    (declare (not safe))
                    (foldr1 __tmp164469 '() _g163704163710_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g163705163713_
                                                           __tmp164468))))
                                              (declare (not safe))
                                              (cons __tmp164470 __tmp164467))))
                                       (declare (not safe))
                                       (cons __tmp164466 _g163706163715_)))))
                              (declare (not safe))
                              (foldr2 __tmp164465 '() _L163687_ _L163689_)))))
                     (declare (not safe))
                     (cons __tmp164471 __tmp164464)))
                 _arity163577163681_
                 _prim163578163684_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop163571163619_
                                         _target163568163613_
                                         '()
                                         '()))
                                      (_g163561163596_ _g163562163600_)))))
                            (_g163561163596_ _g163562163600_))))
                    (_g163561163596_ _g163562163600_)))))
        (_g163560163724_ _$stx163557_)))))
