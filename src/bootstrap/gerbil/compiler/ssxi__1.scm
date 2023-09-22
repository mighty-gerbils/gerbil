(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx69926_)
      (let* ((_g6993069948_
              (lambda (_g6993169944_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g6993169944_))))
             (_g6992970003_
              (lambda (_g6993169952_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g6993169952_))
                    (let ((_e6993669955_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g6993169952_))))
                      (let ((_hd6993569959_
                             (let ()
                               (declare (not safe))
                               (##car _e6993669955_)))
                            (_tl6993469962_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6993669955_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl6993469962_))
                            (let ((_e6993969965_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl6993469962_))))
                              (let ((_hd6993869969_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6993969965_)))
                                    (_tl6993769972_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6993969965_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl6993769972_))
                                    (let ((_e6994269975_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl6993769972_))))
                                      (let ((_hd6994169979_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6994269975_)))
                                            (_tl6994069982_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6994269975_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl6994069982_))
                                            ((lambda (_L69985_ _L69987_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier? _L69987_))
                                                   (let ((__tmp75010
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp75005
                                                          (let ((__tmp75007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp75009
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp75008
                                (let ()
                                  (declare (not safe))
                                  (cons _L69987_ '()))))
                           (declare (not safe))
                           (cons __tmp75009 __tmp75008)))
                        (__tmp75006
                         (let () (declare (not safe)) (cons _L69985_ '()))))
                    (declare (not safe))
                    (cons __tmp75007 __tmp75006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp75010
                                                           __tmp75005))
                                                   (_g6993069948_
                                                    _g6993169952_)))
                                             _hd6994169979_
                                             _hd6993869969_)
                                            (_g6993069948_ _g6993169952_))))
                                    (_g6993069948_ _g6993169952_))))
                            (_g6993069948_ _g6993169952_))))
                    (_g6993069948_ _g6993169952_)))))
        (_g6992970003_ _$stx69926_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx70007_)
      (let* ((_g7001170040_
              (lambda (_g7001270036_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7001270036_))))
             (_g7001070140_
              (lambda (_g7001270044_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7001270044_))
                    (let ((_e7001770047_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7001270044_))))
                      (let ((_hd7001670051_
                             (let ()
                               (declare (not safe))
                               (##car _e7001770047_)))
                            (_tl7001570054_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7001770047_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7001570054_))
                            (let ((_g75011_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7001570054_
                                      '0))))
                              (begin
                                (let ((_g75012_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g75011_)
                                             (##vector-length _g75011_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g75012_ 2)))
                                      (error "Context expects 2 values"
                                             _g75012_)))
                                (let ((_target7001870057_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75011_ 0)))
                                      (_tl7002070060_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75011_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7002070060_))
                                      (letrec ((_loop7002170063_
                                                (lambda (_hd7001970067_
                                                         _type7002570070_
                                                         _symbol7002670072_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7001970067_))
                                                      (let ((_e7002270075_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7001970067_))))
                (let ((_lp-hd7002370079_
                       (let () (declare (not safe)) (##car _e7002270075_)))
                      (_lp-tl7002470082_
                       (let () (declare (not safe)) (##cdr _e7002270075_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7002370079_))
                      (let ((_e7003170085_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7002370079_))))
                        (let ((_hd7003070089_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7003170085_)))
                              (_tl7002970092_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7003170085_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7002970092_))
                              (let ((_e7003470095_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7002970092_))))
                                (let ((_hd7003370099_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7003470095_)))
                                      (_tl7003270102_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7003470095_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7003270102_))
                                      (_loop7002170063_
                                       _lp-tl7002470082_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd7003370099_
                                               _type7002570070_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd7003070089_
                                               _symbol7002670072_)))
                                      (_g7001170040_ _g7001270044_))))
                              (_g7001170040_ _g7001270044_))))
                      (_g7001170040_ _g7001270044_))))
              (let ((_type7002770105_ (reverse _type7002570070_))
                    (_symbol7002870108_ (reverse _symbol7002670072_)))
                ((lambda (_L70111_ _L70113_)
                   (let ((__tmp75019
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp75013
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L70111_
                               _L70113_))
                            (let ((__tmp75014
                                   (lambda (_g7012870132_
                                            _g7012970135_
                                            _g7013070137_)
                                     (let ((__tmp75015
                                            (let ((__tmp75018
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp75016
                                                   (let ((__tmp75017
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g7012870132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7012970135_
                                                           __tmp75017))))
                                              (declare (not safe))
                                              (cons __tmp75018 __tmp75016))))
                                       (declare (not safe))
                                       (cons __tmp75015 _g7013070137_)))))
                              (declare (not safe))
                              (foldr2 __tmp75014 '() _L70111_ _L70113_)))))
                     (declare (not safe))
                     (cons __tmp75019 __tmp75013)))
                 _type7002770105_
                 _symbol7002870108_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7002170063_
                                         _target7001870057_
                                         '()
                                         '()))
                                      (_g7001170040_ _g7001270044_)))))
                            (_g7001170040_ _g7001270044_))))
                    (_g7001170040_ _g7001270044_)))))
        (_g7001070140_ _$stx70007_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx70145_)
      (let* ((___stx7414674147_ _$stx70145_)
             (_g7015070192_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7414674147_)))))
        (let ((___kont7414974150_
               (lambda (_L70320_ _L70322_ _L70323_ _L70324_)
                 (let ((__tmp75033
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp75020
                        (let ((__tmp75030
                               (let ((__tmp75032
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75031
                                      (let ()
                                        (declare (not safe))
                                        (cons _L70324_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75032 __tmp75031)))
                              (__tmp75021
                               (let ((__tmp75027
                                      (let ((__tmp75029
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75028
                                             (let ()
                                               (declare (not safe))
                                               (cons _L70323_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75029 __tmp75028)))
                                     (__tmp75022
                                      (let ((__tmp75024
                                             (let ((__tmp75026
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp75025
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L70322_ '()))))
                                               (declare (not safe))
                                               (cons __tmp75026 __tmp75025)))
                                            (__tmp75023
                                             (let ()
                                               (declare (not safe))
                                               (cons _L70320_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75024 __tmp75023))))
                                 (declare (not safe))
                                 (cons __tmp75027 __tmp75022))))
                          (declare (not safe))
                          (cons __tmp75030 __tmp75021))))
                   (declare (not safe))
                   (cons __tmp75033 __tmp75020))))
              (___kont7415174152_
               (lambda (_L70239_ _L70241_ _L70242_ _L70243_)
                 (let ((__tmp75034
                        (let ((__tmp75035
                               (let ((__tmp75036
                                      (let ((__tmp75037
                                             (let ((__tmp75038
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp75038 '()))))
                                        (declare (not safe))
                                        (cons _L70239_ __tmp75037))))
                                 (declare (not safe))
                                 (cons _L70241_ __tmp75036))))
                          (declare (not safe))
                          (cons _L70242_ __tmp75035))))
                   (declare (not safe))
                   (cons _L70243_ __tmp75034)))))
          (let ((___match7418574186_
                 (lambda (_e7015870270_
                          _hd7015770274_
                          _tl7015670277_
                          _e7016170280_
                          _hd7016070284_
                          _tl7015970287_
                          _e7016470290_
                          _hd7016370294_
                          _tl7016270297_
                          _e7016770300_
                          _hd7016670304_
                          _tl7016570307_
                          _e7017070310_
                          _hd7016970314_
                          _tl7016870317_)
                   (let ((_L70320_ _hd7016970314_)
                         (_L70322_ _hd7016670304_)
                         (_L70323_ _hd7016370294_)
                         (_L70324_ _hd7016070284_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L70324_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L70323_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L70322_)))
                         (___kont7414974150_
                          _L70320_
                          _L70322_
                          _L70323_
                          _L70324_)
                         (let () (declare (not safe)) (_g7015070192_)))))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7414674147_))
                (let ((_e7015870270_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7414674147_))))
                  (let ((_tl7015670277_
                         (let () (declare (not safe)) (##cdr _e7015870270_)))
                        (_hd7015770274_
                         (let () (declare (not safe)) (##car _e7015870270_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7015670277_))
                        (let ((_e7016170280_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7015670277_))))
                          (let ((_tl7015970287_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7016170280_)))
                                (_hd7016070284_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7016170280_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7015970287_))
                                (let ((_e7016470290_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7015970287_))))
                                  (let ((_tl7016270297_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7016470290_)))
                                        (_hd7016370294_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7016470290_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl7016270297_))
                                        (let ((_e7016770300_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl7016270297_))))
                                          (let ((_tl7016570307_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7016770300_)))
                                                (_hd7016670304_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7016770300_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7016570307_))
                                                (let ((_e7017070310_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7016570307_))))
                                                  (let ((_tl7016870317_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7017070310_)))
                                                        (_hd7016970314_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7017070310_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7016870317_))
                                                        (___match7418574186_
                                                         _e7015870270_
                                                         _hd7015770274_
                                                         _tl7015670277_
                                                         _e7016170280_
                                                         _hd7016070284_
                                                         _tl7015970287_
                                                         _e7016470290_
                                                         _hd7016370294_
                                                         _tl7016270297_
                                                         _e7016770300_
                                                         _hd7016670304_
                                                         _tl7016570307_
                                                         _e7017070310_
                                                         _hd7016970314_
                                                         _tl7016870317_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7015070192_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7016570307_))
                                                    (___kont7415174152_
                                                     _hd7016670304_
                                                     _hd7016370294_
                                                     _hd7016070284_
                                                     _hd7015770274_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7015070192_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g7015070192_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g7015070192_)))))
                        (let () (declare (not safe)) (_g7015070192_)))))
                (let () (declare (not safe)) (_g7015070192_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx70349_)
      (let* ((_g7035370388_
              (lambda (_g7035470384_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7035470384_))))
             (_g7035270507_
              (lambda (_g7035470392_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7035470392_))
                    (let ((_e7036070395_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7035470392_))))
                      (let ((_hd7035970399_
                             (let ()
                               (declare (not safe))
                               (##car _e7036070395_)))
                            (_tl7035870402_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7036070395_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7035870402_))
                            (let ((_g75039_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7035870402_
                                      '0))))
                              (begin
                                (let ((_g75040_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g75039_)
                                             (##vector-length _g75039_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g75040_ 2)))
                                      (error "Context expects 2 values"
                                             _g75040_)))
                                (let ((_target7036170405_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75039_ 0)))
                                      (_tl7036370408_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75039_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7036370408_))
                                      (letrec ((_loop7036470411_
                                                (lambda (_hd7036270415_
                                                         _symbol7036870418_
                                                         _method7036970420_
                                                         _type-t7037070422_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7036270415_))
                                                      (let ((_e7036570425_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7036270415_))))
                (let ((_lp-hd7036670429_
                       (let () (declare (not safe)) (##car _e7036570425_)))
                      (_lp-tl7036770432_
                       (let () (declare (not safe)) (##cdr _e7036570425_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7036670429_))
                      (let ((_e7037670435_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7036670429_))))
                        (let ((_hd7037570439_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7037670435_)))
                              (_tl7037470442_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7037670435_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7037470442_))
                              (let ((_e7037970445_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7037470442_))))
                                (let ((_hd7037870449_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7037970445_)))
                                      (_tl7037770452_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7037970445_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7037770452_))
                                      (let ((_e7038270455_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7037770452_))))
                                        (let ((_hd7038170459_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7038270455_)))
                                              (_tl7038070462_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7038270455_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7038070462_))
                                              (_loop7036470411_
                                               _lp-tl7036770432_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7038170459_
                                                       _symbol7036870418_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7037870449_
                                                       _method7036970420_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7037570439_
                                                       _type-t7037070422_)))
                                              (_g7035370388_ _g7035470392_))))
                                      (_g7035370388_ _g7035470392_))))
                              (_g7035370388_ _g7035470392_))))
                      (_g7035370388_ _g7035470392_))))
              (let ((_symbol7037170465_ (reverse _symbol7036870418_))
                    (_method7037270468_ (reverse _method7036970420_))
                    (_type-t7037370470_ (reverse _type-t7037070422_)))
                ((lambda (_L70473_ _L70475_ _L70476_)
                   (let ((__tmp75048
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp75041
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L70473_
                               _L70475_
                               _L70476_))
                            (let ((__tmp75042
                                   (lambda (_g7049270497_
                                            _g7049370500_
                                            _g7049470502_
                                            _g7049570504_)
                                     (let ((__tmp75043
                                            (let ((__tmp75047
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp75044
                                                   (let ((__tmp75045
                                                          (let ((__tmp75046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g7049270497_ '()))))
                    (declare (not safe))
                    (cons _g7049370500_ __tmp75046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7049470502_
                                                           __tmp75045))))
                                              (declare (not safe))
                                              (cons __tmp75047 __tmp75044))))
                                       (declare (not safe))
                                       (cons __tmp75043 _g7049570504_)))))
                              (declare (not safe))
                              (foldr* __tmp75042
                                      '()
                                      _L70473_
                                      _L70475_
                                      _L70476_)))))
                     (declare (not safe))
                     (cons __tmp75048 __tmp75041)))
                 _symbol7037170465_
                 _method7037270468_
                 _type-t7037370470_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7036470411_
                                         _target7036170405_
                                         '()
                                         '()
                                         '()))
                                      (_g7035370388_ _g7035470392_)))))
                            (_g7035370388_ _g7035470392_))))
                    (_g7035370388_ _g7035470392_)))))
        (_g7035270507_ _$stx70349_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx70512_)
      (let* ((_g7051670549_
              (lambda (_g7051770545_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7051770545_))))
             (_g7051570663_
              (lambda (_g7051770553_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7051770553_))
                    (let ((_e7052370556_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7051770553_))))
                      (let ((_hd7052270560_
                             (let ()
                               (declare (not safe))
                               (##car _e7052370556_)))
                            (_tl7052170563_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7052370556_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7052170563_))
                            (let ((_e7052670566_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7052170563_))))
                              (let ((_hd7052570570_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7052670566_)))
                                    (_tl7052470573_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7052670566_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7052470573_))
                                    (let ((_g75049_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7052470573_
                                              '0))))
                                      (begin
                                        (let ((_g75050_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g75049_)
                                                     (##vector-length _g75049_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g75050_ 2)))
                                              (error "Context expects 2 values"
                                                     _g75050_)))
                                        (let ((_target7052770576_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g75049_ 0)))
                                              (_tl7052970579_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g75049_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7052970579_))
                                              (letrec ((_loop7053070582_
                                                        (lambda (_hd7052870586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol7053470589_
                         _method7053570591_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd7052870586_))
                      (let ((_e7053170594_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd7052870586_))))
                        (let ((_lp-hd7053270598_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7053170594_)))
                              (_lp-tl7053370601_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7053170594_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd7053270598_))
                              (let ((_e7054070604_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd7053270598_))))
                                (let ((_hd7053970608_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7054070604_)))
                                      (_tl7053870611_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7054070604_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7053870611_))
                                      (let ((_e7054370614_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7053870611_))))
                                        (let ((_hd7054270618_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7054370614_)))
                                              (_tl7054170621_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7054370614_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7054170621_))
                                              (_loop7053070582_
                                               _lp-tl7053370601_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7054270618_
                                                       _symbol7053470589_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7053970608_
                                                       _method7053570591_)))
                                              (_g7051670549_ _g7051770553_))))
                                      (_g7051670549_ _g7051770553_))))
                              (_g7051670549_ _g7051770553_))))
                      (let ((_symbol7053670624_ (reverse _symbol7053470589_))
                            (_method7053770627_ (reverse _method7053570591_)))
                        ((lambda (_L70630_ _L70632_ _L70633_)
                           (let ((__tmp75058
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp75051
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L70630_
                                       _L70632_))
                                    (let ((__tmp75052
                                           (lambda (_g7065170655_
                                                    _g7065270658_
                                                    _g7065370660_)
                                             (let ((__tmp75053
                                                    (let ((__tmp75057
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp75054
                                                           (let ((__tmp75055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp75056
                                 (let ()
                                   (declare (not safe))
                                   (cons _g7065170655_ '()))))
                            (declare (not safe))
                            (cons _g7065270658_ __tmp75056))))
                     (declare (not safe))
                     (cons _L70633_ __tmp75055))))
              (declare (not safe))
              (cons __tmp75057 __tmp75054))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp75053
                                                     _g7065370660_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp75052
                                              '()
                                              _L70630_
                                              _L70632_)))))
                             (declare (not safe))
                             (cons __tmp75058 __tmp75051)))
                         _symbol7053670624_
                         _method7053770627_
                         _hd7052570570_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7053070582_
                                                 _target7052770576_
                                                 '()
                                                 '()))
                                              (_g7051670549_ _g7051770553_)))))
                                    (_g7051670549_ _g7051770553_))))
                            (_g7051670549_ _g7051770553_))))
                    (_g7051670549_ _g7051770553_)))))
        (_g7051570663_ _$stx70512_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx70668_)
      (let* ((_g7067270686_
              (lambda (_g7067370682_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7067370682_))))
             (_g7067170727_
              (lambda (_g7067370690_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7067370690_))
                    (let ((_e7067770693_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7067370690_))))
                      (let ((_hd7067670697_
                             (let ()
                               (declare (not safe))
                               (##car _e7067770693_)))
                            (_tl7067570700_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7067770693_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7067570700_))
                            (let ((_e7068070703_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7067570700_))))
                              (let ((_hd7067970707_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7068070703_)))
                                    (_tl7067870710_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7068070703_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7067870710_))
                                    ((lambda (_L70713_)
                                       (let ((__tmp75063
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp75059
                                              (let ((__tmp75060
                                                     (let ((__tmp75062
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp75061
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L70713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp75062 __tmp75061))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp75060 '()))))
                                         (declare (not safe))
                                         (cons __tmp75063 __tmp75059)))
                                     _hd7067970707_)
                                    (_g7067270686_ _g7067370690_))))
                            (_g7067270686_ _g7067370690_))))
                    (_g7067270686_ _g7067370690_)))))
        (_g7067170727_ _$stx70668_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx70731_)
      (let* ((___stx7421474215_ _$stx70731_)
             (_g7073770803_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7421474215_)))))
        (let ((___kont7421774218_
               (lambda (_L71025_ _L71027_ _L71028_ _L71029_ _L71030_)
                 (let ((__tmp75069
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f '@make-struct-type)))
                       (__tmp75064
                        (let ((__tmp75065
                               (let ((__tmp75066
                                      (let ((__tmp75067
                                             (let ((__tmp75068
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L71025_ '()))))
                                               (declare (not safe))
                                               (cons _L71027_ __tmp75068))))
                                        (declare (not safe))
                                        (cons _L71028_ __tmp75067))))
                                 (declare (not safe))
                                 (cons _L71029_ __tmp75066))))
                          (declare (not safe))
                          (cons _L71030_ __tmp75065))))
                   (declare (not safe))
                   (cons __tmp75069 __tmp75064))))
              (___kont7421974220_
               (lambda (_L70935_ _L70937_ _L70938_ _L70939_)
                 (let ((__tmp75070
                        (let ((__tmp75071
                               (let ((__tmp75072
                                      (let ((__tmp75073
                                             (let ((__tmp75074
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '#f '()))))
                                               (declare (not safe))
                                               (cons '#f __tmp75074))))
                                        (declare (not safe))
                                        (cons _L70935_ __tmp75073))))
                                 (declare (not safe))
                                 (cons _L70937_ __tmp75072))))
                          (declare (not safe))
                          (cons _L70938_ __tmp75071))))
                   (declare (not safe))
                   (cons _L70939_ __tmp75070))))
              (___kont7422174222_
               (lambda (_L70860_ _L70862_ _L70863_ _L70864_ _L70865_)
                 (let ((__tmp75075
                        (let ((__tmp75080
                               (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'type)))
                              (__tmp75076
                               (let ((__tmp75077
                                      (let ((__tmp75078
                                             (let ((__tmp75079
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '#f '()))))
                                               (declare (not safe))
                                               (cons _L70860_ __tmp75079))))
                                        (declare (not safe))
                                        (cons _L70862_ __tmp75078))))
                                 (declare (not safe))
                                 (cons _L70863_ __tmp75077))))
                          (declare (not safe))
                          (cons __tmp75080 __tmp75076))))
                   (declare (not safe))
                   (cons _L70865_ __tmp75075)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7421474215_))
              (let ((_e7074670965_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7421474215_))))
                (let ((_tl7074470972_
                       (let () (declare (not safe)) (##cdr _e7074670965_)))
                      (_hd7074570969_
                       (let () (declare (not safe)) (##car _e7074670965_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7074470972_))
                      (let ((_e7074970975_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7074470972_))))
                        (let ((_tl7074770982_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7074970975_)))
                              (_hd7074870979_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7074970975_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7074770982_))
                              (let ((_e7075270985_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7074770982_))))
                                (let ((_tl7075070992_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7075270985_)))
                                      (_hd7075170989_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7075270985_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7075070992_))
                                      (let ((_e7075570995_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7075070992_))))
                                        (let ((_tl7075371002_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7075570995_)))
                                              (_hd7075470999_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7075570995_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl7075371002_))
                                              (let ((_e7075871005_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl7075371002_))))
                                                (let ((_tl7075671012_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e7075871005_)))
                                                      (_hd7075771009_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e7075871005_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl7075671012_))
                                                      (let ((_e7076171015_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _tl7075671012_))))
                (let ((_tl7075971022_
                       (let () (declare (not safe)) (##cdr _e7076171015_)))
                      (_hd7076071019_
                       (let () (declare (not safe)) (##car _e7076171015_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7075971022_))
                      (___kont7421774218_
                       _hd7076071019_
                       _hd7075771009_
                       _hd7075470999_
                       _hd7075170989_
                       _hd7074870979_)
                      (let () (declare (not safe)) (_g7073770803_)))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7075671012_))
                  (___kont7422174222_
                   _hd7075771009_
                   _hd7075470999_
                   _hd7075170989_
                   _hd7074870979_
                   _hd7074570969_)
                  (let () (declare (not safe)) (_g7073770803_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7075371002_))
                                                  (___kont7421974220_
                                                   _hd7075470999_
                                                   _hd7075170989_
                                                   _hd7074870979_
                                                   _hd7074570969_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7073770803_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g7073770803_)))))
                              (let () (declare (not safe)) (_g7073770803_)))))
                      (let () (declare (not safe)) (_g7073770803_)))))
              (let () (declare (not safe)) (_g7073770803_)))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx71058_)
      (let* ((___stx7432274323_ _$stx71058_)
             (_g7106371116_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7432274323_)))))
        (let ((___kont7432574326_
               (lambda (_L71284_ _L71286_ _L71287_ _L71288_)
                 (let ((__tmp75096
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-type)))
                       (__tmp75081
                        (let ((__tmp75093
                               (let ((__tmp75095
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75094
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71288_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75095 __tmp75094)))
                              (__tmp75082
                               (let ((__tmp75083
                                      (let ((__tmp75084
                                             (let ((__tmp75085
                                                    (let ((__tmp75090
                                                           (let ((__tmp75092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp75091
                          (let () (declare (not safe)) (cons _L71286_ '()))))
                     (declare (not safe))
                     (cons __tmp75092 __tmp75091)))
                  (__tmp75086
                   (let ((__tmp75087
                          (let ((__tmp75089
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp75088
                                 (let ()
                                   (declare (not safe))
                                   (cons _L71284_ '()))))
                            (declare (not safe))
                            (cons __tmp75089 __tmp75088))))
                     (declare (not safe))
                     (cons __tmp75087 '()))))
              (declare (not safe))
              (cons __tmp75090 __tmp75086))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '0 __tmp75085))))
                                        (declare (not safe))
                                        (cons _L71287_ __tmp75084))))
                                 (declare (not safe))
                                 (cons '#f __tmp75083))))
                          (declare (not safe))
                          (cons __tmp75093 __tmp75082))))
                   (declare (not safe))
                   (cons __tmp75096 __tmp75081))))
              (___kont7432774328_
               (lambda (_L71183_ _L71185_ _L71186_ _L71187_ _L71188_)
                 (let ((__tmp75178
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'let*)))
                       (__tmp75097
                        (let ((__tmp75118
                               (let ((__tmp75169
                                      (let ((__tmp75177
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'super-type)))
                                            (__tmp75170
                                             (let ((__tmp75171
                                                    (let ((__tmp75176
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-resolve-type)))
                                                          (__tmp75172
                                                           (let ((__tmp75173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp75175
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp75174
                                 (let ()
                                   (declare (not safe))
                                   (cons _L71187_ '()))))
                            (declare (not safe))
                            (cons __tmp75175 __tmp75174))))
                     (declare (not safe))
                     (cons __tmp75173 '()))))
              (declare (not safe))
              (cons __tmp75176 __tmp75172))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp75171 '()))))
                                        (declare (not safe))
                                        (cons __tmp75177 __tmp75170)))
                                     (__tmp75119
                                      (let ((__tmp75141
                                             (let ((__tmp75168
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'xfields)))
                                                   (__tmp75142
                                                    (let ((__tmp75143
                                                           (let ((__tmp75167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'and)))
                         (__tmp75144
                          (let ((__tmp75166
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'super-type)))
                                (__tmp75145
                                 (let ((__tmp75146
                                        (let ((__tmp75165
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'alet)))
                                              (__tmp75147
                                               (let ((__tmp75158
                                                      (let ((__tmp75164
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'xfields)))
                    (__tmp75159
                     (let ((__tmp75160
                            (let ((__tmp75163
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      '!struct-type-xfields)))
                                  (__tmp75161
                                   (let ((__tmp75162
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'super-type))))
                                     (declare (not safe))
                                     (cons __tmp75162 '()))))
                              (declare (not safe))
                              (cons __tmp75163 __tmp75161))))
                       (declare (not safe))
                       (cons __tmp75160 '()))))
                (declare (not safe))
                (cons __tmp75164 __tmp75159)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp75148
                                                      (let ((__tmp75149
                                                             (let ((__tmp75157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'fx+)))
                           (__tmp75150
                            (let ((__tmp75156
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'xfields)))
                                  (__tmp75151
                                   (let ((__tmp75152
                                          (let ((__tmp75155
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '!struct-type-fields)))
                                                (__tmp75153
                                                 (let ((__tmp75154
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'super-type))))
                                                   (declare (not safe))
                                                   (cons __tmp75154 '()))))
                                            (declare (not safe))
                                            (cons __tmp75155 __tmp75153))))
                                     (declare (not safe))
                                     (cons __tmp75152 '()))))
                              (declare (not safe))
                              (cons __tmp75156 __tmp75151))))
                       (declare (not safe))
                       (cons __tmp75157 __tmp75150))))
                (declare (not safe))
                (cons __tmp75149 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp75158
                                                       __tmp75148))))
                                          (declare (not safe))
                                          (cons __tmp75165 __tmp75147))))
                                   (declare (not safe))
                                   (cons __tmp75146 '()))))
                            (declare (not safe))
                            (cons __tmp75166 __tmp75145))))
                     (declare (not safe))
                     (cons __tmp75167 __tmp75144))))
              (declare (not safe))
              (cons __tmp75143 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp75168 __tmp75142)))
                                            (__tmp75120
                                             (let ((__tmp75121
                                                    (let ((__tmp75140
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'xtor)))
                                                          (__tmp75122
                                                           (let ((__tmp75123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp75139
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'or)))
                                (__tmp75124
                                 (let ((__tmp75136
                                        (let ((__tmp75138
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp75137
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L71185_ '()))))
                                          (declare (not safe))
                                          (cons __tmp75138 __tmp75137)))
                                       (__tmp75125
                                        (let ((__tmp75126
                                               (let ((__tmp75135
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'if)))
                                                     (__tmp75127
                                                      (let ((__tmp75134
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'super-type)))
                    (__tmp75128
                     (let ((__tmp75130
                            (let ((__tmp75133
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      '!struct-type-ctor)))
                                  (__tmp75131
                                   (let ((__tmp75132
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'super-type))))
                                     (declare (not safe))
                                     (cons __tmp75132 '()))))
                              (declare (not safe))
                              (cons __tmp75133 __tmp75131)))
                           (__tmp75129
                            (let () (declare (not safe)) (cons '#!void '()))))
                       (declare (not safe))
                       (cons __tmp75130 __tmp75129))))
                (declare (not safe))
                (cons __tmp75134 __tmp75128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp75135
                                                       __tmp75127))))
                                          (declare (not safe))
                                          (cons __tmp75126 '()))))
                                   (declare (not safe))
                                   (cons __tmp75136 __tmp75125))))
                            (declare (not safe))
                            (cons __tmp75139 __tmp75124))))
                     (declare (not safe))
                     (cons __tmp75123 '()))))
              (declare (not safe))
              (cons __tmp75140 __tmp75122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp75121 '()))))
                                        (declare (not safe))
                                        (cons __tmp75141 __tmp75120))))
                                 (declare (not safe))
                                 (cons __tmp75169 __tmp75119)))
                              (__tmp75098
                               (let ((__tmp75099
                                      (let ((__tmp75117
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!struct-type)))
                                            (__tmp75100
                                             (let ((__tmp75114
                                                    (let ((__tmp75116
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp75115
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L71188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp75116 __tmp75115)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp75101
                                                    (let ((__tmp75111
                                                           (let ((__tmp75113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp75112
                          (let () (declare (not safe)) (cons _L71187_ '()))))
                     (declare (not safe))
                     (cons __tmp75113 __tmp75112)))
                  (__tmp75102
                   (let ((__tmp75103
                          (let ((__tmp75110
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'xfields)))
                                (__tmp75104
                                 (let ((__tmp75109
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'xtor)))
                                       (__tmp75105
                                        (let ((__tmp75106
                                               (let ((__tmp75108
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'quote)))
                                                     (__tmp75107
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L71183_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp75108
                                                       __tmp75107))))
                                          (declare (not safe))
                                          (cons __tmp75106 '()))))
                                   (declare (not safe))
                                   (cons __tmp75109 __tmp75105))))
                            (declare (not safe))
                            (cons __tmp75110 __tmp75104))))
                     (declare (not safe))
                     (cons _L71186_ __tmp75103))))
              (declare (not safe))
              (cons __tmp75111 __tmp75102))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp75114 __tmp75101))))
                                        (declare (not safe))
                                        (cons __tmp75117 __tmp75100))))
                                 (declare (not safe))
                                 (cons __tmp75099 '()))))
                          (declare (not safe))
                          (cons __tmp75118 __tmp75098))))
                   (declare (not safe))
                   (cons __tmp75178 __tmp75097)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7432274323_))
              (let ((_e7107171220_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7432274323_))))
                (let ((_tl7106971227_
                       (let () (declare (not safe)) (##cdr _e7107171220_)))
                      (_hd7107071224_
                       (let () (declare (not safe)) (##car _e7107171220_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7106971227_))
                      (let ((_e7107471230_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7106971227_))))
                        (let ((_tl7107271237_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7107471230_)))
                              (_hd7107371234_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7107471230_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7107271237_))
                              (let ((_e7107771240_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7107271237_))))
                                (let ((_tl7107571247_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7107771240_)))
                                      (_hd7107671244_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7107771240_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd7107671244_))
                                      (let ((_e7107871250_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd7107671244_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e7107871250_ '#f))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7107571247_))
                                                (let ((_e7108171254_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7107571247_))))
                                                  (let ((_tl7107971261_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7108171254_)))
                                                        (_hd7108071258_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7108171254_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7107971261_))
                                                        (let ((_e7108471264_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7107971261_))))
                  (let ((_tl7108271271_
                         (let () (declare (not safe)) (##cdr _e7108471264_)))
                        (_hd7108371268_
                         (let () (declare (not safe)) (##car _e7108471264_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7108271271_))
                        (let ((_e7108771274_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7108271271_))))
                          (let ((_tl7108571281_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7108771274_)))
                                (_hd7108671278_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7108771274_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7108571281_))
                                (___kont7432574326_
                                 _hd7108671278_
                                 _hd7108371268_
                                 _hd7108071258_
                                 _hd7107371234_)
                                (let ()
                                  (declare (not safe))
                                  (_g7106371116_)))))
                        (let () (declare (not safe)) (_g7106371116_)))))
                (let () (declare (not safe)) (_g7106371116_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7106371116_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7107571247_))
                                                (let ((_e7110471153_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7107571247_))))
                                                  (let ((_tl7110271160_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7110471153_)))
                                                        (_hd7110371157_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7110471153_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7110271160_))
                                                        (let ((_e7110771163_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7110271160_))))
                  (let ((_tl7110571170_
                         (let () (declare (not safe)) (##cdr _e7110771163_)))
                        (_hd7110671167_
                         (let () (declare (not safe)) (##car _e7110771163_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7110571170_))
                        (let ((_e7111071173_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7110571170_))))
                          (let ((_tl7110871180_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7111071173_)))
                                (_hd7110971177_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7111071173_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7110871180_))
                                (___kont7432774328_
                                 _hd7110971177_
                                 _hd7110671167_
                                 _hd7110371157_
                                 _hd7107671244_
                                 _hd7107371234_)
                                (let ()
                                  (declare (not safe))
                                  (_g7106371116_)))))
                        (let () (declare (not safe)) (_g7106371116_)))))
                (let () (declare (not safe)) (_g7106371116_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7106371116_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl7107571247_))
                                          (let ((_e7110471153_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl7107571247_))))
                                            (let ((_tl7110271160_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7110471153_)))
                                                  (_hd7110371157_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7110471153_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl7110271160_))
                                                  (let ((_e7110771163_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl7110271160_))))
                                                    (let ((_tl7110571170_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e7110771163_)))
                                                          (_hd7110671167_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e7110771163_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl7110571170_))
                                                          (let ((_e7111071173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _tl7110571170_))))
                    (let ((_tl7110871180_
                           (let () (declare (not safe)) (##cdr _e7111071173_)))
                          (_hd7110971177_
                           (let ()
                             (declare (not safe))
                             (##car _e7111071173_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl7110871180_))
                          (___kont7432774328_
                           _hd7110971177_
                           _hd7110671167_
                           _hd7110371157_
                           _hd7107671244_
                           _hd7107371234_)
                          (let () (declare (not safe)) (_g7106371116_)))))
                  (let () (declare (not safe)) (_g7106371116_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7106371116_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g7106371116_))))))
                              (let () (declare (not safe)) (_g7106371116_)))))
                      (let () (declare (not safe)) (_g7106371116_)))))
              (let () (declare (not safe)) (_g7106371116_)))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx71316_)
      (let* ((_g7132071334_
              (lambda (_g7132171330_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7132171330_))))
             (_g7131971375_
              (lambda (_g7132171338_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7132171338_))
                    (let ((_e7132571341_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7132171338_))))
                      (let ((_hd7132471345_
                             (let ()
                               (declare (not safe))
                               (##car _e7132571341_)))
                            (_tl7132371348_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7132571341_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7132371348_))
                            (let ((_e7132871351_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7132371348_))))
                              (let ((_hd7132771355_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7132871351_)))
                                    (_tl7132671358_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7132871351_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7132671358_))
                                    ((lambda (_L71361_)
                                       (let ((__tmp75183
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!struct-pred)))
                                             (__tmp75179
                                              (let ((__tmp75180
                                                     (let ((__tmp75182
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp75181
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L71361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp75182 __tmp75181))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp75180 '()))))
                                         (declare (not safe))
                                         (cons __tmp75183 __tmp75179)))
                                     _hd7132771355_)
                                    (_g7132071334_ _g7132171338_))))
                            (_g7132071334_ _g7132171338_))))
                    (_g7132071334_ _g7132171338_)))))
        (_g7131971375_ _$stx71316_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx71379_)
      (let* ((_g7138371397_
              (lambda (_g7138471393_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7138471393_))))
             (_g7138271438_
              (lambda (_g7138471401_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7138471401_))
                    (let ((_e7138871404_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7138471401_))))
                      (let ((_hd7138771408_
                             (let ()
                               (declare (not safe))
                               (##car _e7138871404_)))
                            (_tl7138671411_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7138871404_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7138671411_))
                            (let ((_e7139171414_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7138671411_))))
                              (let ((_hd7139071418_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7139171414_)))
                                    (_tl7138971421_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7139171414_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7138971421_))
                                    ((lambda (_L71424_)
                                       (let ((__tmp75188
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!struct-cons)))
                                             (__tmp75184
                                              (let ((__tmp75185
                                                     (let ((__tmp75187
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp75186
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L71424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp75187 __tmp75186))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp75185 '()))))
                                         (declare (not safe))
                                         (cons __tmp75188 __tmp75184)))
                                     _hd7139071418_)
                                    (_g7138371397_ _g7138471401_))))
                            (_g7138371397_ _g7138471401_))))
                    (_g7138371397_ _g7138471401_)))))
        (_g7138271438_ _$stx71379_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx71442_)
      (let* ((___stx7441474415_ _$stx71442_)
             (_g7144771480_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7441474415_)))))
        (let ((___kont7441774418_
               (lambda (_L71582_ _L71584_ _L71585_)
                 (let ((__tmp75195
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-getf)))
                       (__tmp75189
                        (let ((__tmp75192
                               (let ((__tmp75194
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75193
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71585_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75194 __tmp75193)))
                              (__tmp75190
                               (let ((__tmp75191
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71582_ '()))))
                                 (declare (not safe))
                                 (cons _L71584_ __tmp75191))))
                          (declare (not safe))
                          (cons __tmp75192 __tmp75190))))
                   (declare (not safe))
                   (cons __tmp75195 __tmp75189))))
              (___kont7441974420_
               (lambda (_L71517_ _L71519_)
                 (let ((__tmp75202
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-getf)))
                       (__tmp75196
                        (let ((__tmp75199
                               (let ((__tmp75201
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75200
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71519_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75201 __tmp75200)))
                              (__tmp75197
                               (let ((__tmp75198
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L71517_ __tmp75198))))
                          (declare (not safe))
                          (cons __tmp75199 __tmp75197))))
                   (declare (not safe))
                   (cons __tmp75202 __tmp75196)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7441474415_))
              (let ((_e7145471542_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7441474415_))))
                (let ((_tl7145271549_
                       (let () (declare (not safe)) (##cdr _e7145471542_)))
                      (_hd7145371546_
                       (let () (declare (not safe)) (##car _e7145471542_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7145271549_))
                      (let ((_e7145771552_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7145271549_))))
                        (let ((_tl7145571559_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7145771552_)))
                              (_hd7145671556_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7145771552_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7145571559_))
                              (let ((_e7146071562_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7145571559_))))
                                (let ((_tl7145871569_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7146071562_)))
                                      (_hd7145971566_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7146071562_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7145871569_))
                                      (let ((_e7146371572_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7145871569_))))
                                        (let ((_tl7146171579_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7146371572_)))
                                              (_hd7146271576_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7146371572_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7146171579_))
                                              (___kont7441774418_
                                               _hd7146271576_
                                               _hd7145971566_
                                               _hd7145671556_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7144771480_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7145871569_))
                                          (___kont7441974420_
                                           _hd7145971566_
                                           _hd7145671556_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7144771480_))))))
                              (let () (declare (not safe)) (_g7144771480_)))))
                      (let () (declare (not safe)) (_g7144771480_)))))
              (let () (declare (not safe)) (_g7144771480_)))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx71607_)
      (let* ((___stx7447074471_ _$stx71607_)
             (_g7161271645_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7447074471_)))))
        (let ((___kont7447374474_
               (lambda (_L71747_ _L71749_ _L71750_)
                 (let ((__tmp75209
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-setf)))
                       (__tmp75203
                        (let ((__tmp75206
                               (let ((__tmp75208
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75207
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71750_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75208 __tmp75207)))
                              (__tmp75204
                               (let ((__tmp75205
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71747_ '()))))
                                 (declare (not safe))
                                 (cons _L71749_ __tmp75205))))
                          (declare (not safe))
                          (cons __tmp75206 __tmp75204))))
                   (declare (not safe))
                   (cons __tmp75209 __tmp75203))))
              (___kont7447574476_
               (lambda (_L71682_ _L71684_)
                 (let ((__tmp75216
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-setf)))
                       (__tmp75210
                        (let ((__tmp75213
                               (let ((__tmp75215
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75214
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71684_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75215 __tmp75214)))
                              (__tmp75211
                               (let ((__tmp75212
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L71682_ __tmp75212))))
                          (declare (not safe))
                          (cons __tmp75213 __tmp75211))))
                   (declare (not safe))
                   (cons __tmp75216 __tmp75210)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7447074471_))
              (let ((_e7161971707_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7447074471_))))
                (let ((_tl7161771714_
                       (let () (declare (not safe)) (##cdr _e7161971707_)))
                      (_hd7161871711_
                       (let () (declare (not safe)) (##car _e7161971707_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7161771714_))
                      (let ((_e7162271717_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7161771714_))))
                        (let ((_tl7162071724_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7162271717_)))
                              (_hd7162171721_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7162271717_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7162071724_))
                              (let ((_e7162571727_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7162071724_))))
                                (let ((_tl7162371734_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7162571727_)))
                                      (_hd7162471731_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7162571727_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7162371734_))
                                      (let ((_e7162871737_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7162371734_))))
                                        (let ((_tl7162671744_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7162871737_)))
                                              (_hd7162771741_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7162871737_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7162671744_))
                                              (___kont7447374474_
                                               _hd7162771741_
                                               _hd7162471731_
                                               _hd7162171721_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7161271645_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7162371734_))
                                          (___kont7447574476_
                                           _hd7162471731_
                                           _hd7162171721_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7161271645_))))))
                              (let () (declare (not safe)) (_g7161271645_)))))
                      (let () (declare (not safe)) (_g7161271645_)))))
              (let () (declare (not safe)) (_g7161271645_)))))))
  (define |gxc[:0:]#@class-type|
    (lambda (_$stx71772_)
      (let* ((_g7177671814_
              (lambda (_g7177771810_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7177771810_))))
             (_g7177571939_
              (lambda (_g7177771818_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7177771818_))
                    (let ((_e7178771821_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7177771818_))))
                      (let ((_hd7178671825_
                             (let ()
                               (declare (not safe))
                               (##car _e7178771821_)))
                            (_tl7178571828_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7178771821_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7178571828_))
                            (let ((_e7179071831_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7178571828_))))
                              (let ((_hd7178971835_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7179071831_)))
                                    (_tl7178871838_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7179071831_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7178871838_))
                                    (let ((_e7179371841_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7178871838_))))
                                      (let ((_hd7179271845_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7179371841_)))
                                            (_tl7179171848_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7179371841_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl7179171848_))
                                            (let ((_e7179671851_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl7179171848_))))
                                              (let ((_hd7179571855_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7179671851_)))
                                                    (_tl7179471858_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7179671851_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7179471858_))
                                                    (let ((_e7179971861_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7179471858_))))
                                                      (let ((_hd7179871865_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e7179971861_)))
                    (_tl7179771868_
                     (let () (declare (not safe)) (##cdr _e7179971861_))))
                (if (let () (declare (not safe)) (gx#stx-pair? _tl7179771868_))
                    (let ((_e7180271871_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl7179771868_))))
                      (let ((_hd7180171875_
                             (let ()
                               (declare (not safe))
                               (##car _e7180271871_)))
                            (_tl7180071878_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7180271871_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7180071878_))
                            (let ((_e7180571881_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7180071878_))))
                              (let ((_hd7180471885_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7180571881_)))
                                    (_tl7180371888_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7180571881_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7180371888_))
                                    (let ((_e7180871891_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7180371888_))))
                                      (let ((_hd7180771895_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7180871891_)))
                                            (_tl7180671898_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7180871891_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7180671898_))
                                            ((lambda (_L71901_
                                                      _L71903_
                                                      _L71904_
                                                      _L71905_
                                                      _L71906_
                                                      _L71907_
                                                      _L71908_)
                                               (let ((__tmp75245
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!class-type)))
                                                     (__tmp75217
                                                      (let ((__tmp75242
                                                             (let ((__tmp75244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp75243
                            (let () (declare (not safe)) (cons _L71908_ '()))))
                       (declare (not safe))
                       (cons __tmp75244 __tmp75243)))
                    (__tmp75218
                     (let ((__tmp75239
                            (let ((__tmp75241
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp75240
                                   (let ()
                                     (declare (not safe))
                                     (cons _L71907_ '()))))
                              (declare (not safe))
                              (cons __tmp75241 __tmp75240)))
                           (__tmp75219
                            (let ((__tmp75236
                                   (let ((__tmp75238
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp75237
                                          (let ()
                                            (declare (not safe))
                                            (cons _L71906_ '()))))
                                     (declare (not safe))
                                     (cons __tmp75238 __tmp75237)))
                                  (__tmp75220
                                   (let ((__tmp75233
                                          (let ((__tmp75235
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote)))
                                                (__tmp75234
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L71905_ '()))))
                                            (declare (not safe))
                                            (cons __tmp75235 __tmp75234)))
                                         (__tmp75221
                                          (let ((__tmp75230
                                                 (let ((__tmp75232
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote)))
                                                       (__tmp75231
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L71904_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp75232
                                                         __tmp75231)))
                                                (__tmp75222
                                                 (let ((__tmp75227
                                                        (let ((__tmp75229
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote)))
                      (__tmp75228
                       (let () (declare (not safe)) (cons _L71903_ '()))))
                  (declare (not safe))
                  (cons __tmp75229 __tmp75228)))
               (__tmp75223
                (let ((__tmp75224
                       (let ((__tmp75226
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote)))
                             (__tmp75225
                              (let ()
                                (declare (not safe))
                                (cons _L71901_ '()))))
                         (declare (not safe))
                         (cons __tmp75226 __tmp75225))))
                  (declare (not safe))
                  (cons __tmp75224 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp75227
                                                         __tmp75223))))
                                            (declare (not safe))
                                            (cons __tmp75230 __tmp75222))))
                                     (declare (not safe))
                                     (cons __tmp75233 __tmp75221))))
                              (declare (not safe))
                              (cons __tmp75236 __tmp75220))))
                       (declare (not safe))
                       (cons __tmp75239 __tmp75219))))
                (declare (not safe))
                (cons __tmp75242 __tmp75218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp75245 __tmp75217)))
                                             _hd7180771895_
                                             _hd7180471885_
                                             _hd7180171875_
                                             _hd7179871865_
                                             _hd7179571855_
                                             _hd7179271845_
                                             _hd7178971835_)
                                            (_g7177671814_ _g7177771818_))))
                                    (_g7177671814_ _g7177771818_))))
                            (_g7177671814_ _g7177771818_))))
                    (_g7177671814_ _g7177771818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7177671814_
                                                     _g7177771818_))))
                                            (_g7177671814_ _g7177771818_))))
                                    (_g7177671814_ _g7177771818_))))
                            (_g7177671814_ _g7177771818_))))
                    (_g7177671814_ _g7177771818_)))))
        (_g7177571939_ _$stx71772_))))
  (define |gxc[:0:]#@class-pred|
    (lambda (_$stx71943_)
      (let* ((_g7194771961_
              (lambda (_g7194871957_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7194871957_))))
             (_g7194672002_
              (lambda (_g7194871965_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7194871965_))
                    (let ((_e7195271968_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7194871965_))))
                      (let ((_hd7195171972_
                             (let ()
                               (declare (not safe))
                               (##car _e7195271968_)))
                            (_tl7195071975_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7195271968_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7195071975_))
                            (let ((_e7195571978_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7195071975_))))
                              (let ((_hd7195471982_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7195571978_)))
                                    (_tl7195371985_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7195571978_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7195371985_))
                                    ((lambda (_L71988_)
                                       (let ((__tmp75250
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class-pred)))
                                             (__tmp75246
                                              (let ((__tmp75247
                                                     (let ((__tmp75249
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp75248
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L71988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp75249 __tmp75248))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp75247 '()))))
                                         (declare (not safe))
                                         (cons __tmp75250 __tmp75246)))
                                     _hd7195471982_)
                                    (_g7194771961_ _g7194871965_))))
                            (_g7194771961_ _g7194871965_))))
                    (_g7194771961_ _g7194871965_)))))
        (_g7194672002_ _$stx71943_))))
  (define |gxc[:0:]#@class-cons|
    (lambda (_$stx72006_)
      (let* ((_g7201072024_
              (lambda (_g7201172020_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7201172020_))))
             (_g7200972065_
              (lambda (_g7201172028_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7201172028_))
                    (let ((_e7201572031_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7201172028_))))
                      (let ((_hd7201472035_
                             (let ()
                               (declare (not safe))
                               (##car _e7201572031_)))
                            (_tl7201372038_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7201572031_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7201372038_))
                            (let ((_e7201872041_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7201372038_))))
                              (let ((_hd7201772045_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7201872041_)))
                                    (_tl7201672048_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7201872041_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7201672048_))
                                    ((lambda (_L72051_)
                                       (let ((__tmp75255
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class-cons)))
                                             (__tmp75251
                                              (let ((__tmp75252
                                                     (let ((__tmp75254
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp75253
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L72051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp75254 __tmp75253))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp75252 '()))))
                                         (declare (not safe))
                                         (cons __tmp75255 __tmp75251)))
                                     _hd7201772045_)
                                    (_g7201072024_ _g7201172028_))))
                            (_g7201072024_ _g7201172028_))))
                    (_g7201072024_ _g7201172028_)))))
        (_g7200972065_ _$stx72006_))))
  (define |gxc[:0:]#@class-getf|
    (lambda (_$stx72069_)
      (let* ((___stx7452674527_ _$stx72069_)
             (_g7207472107_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7452674527_)))))
        (let ((___kont7452974530_
               (lambda (_L72209_ _L72211_ _L72212_)
                 (let ((__tmp75265
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-getf)))
                       (__tmp75256
                        (let ((__tmp75262
                               (let ((__tmp75264
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75263
                                      (let ()
                                        (declare (not safe))
                                        (cons _L72212_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75264 __tmp75263)))
                              (__tmp75257
                               (let ((__tmp75259
                                      (let ((__tmp75261
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75260
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72211_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75261 __tmp75260)))
                                     (__tmp75258
                                      (let ()
                                        (declare (not safe))
                                        (cons _L72209_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75259 __tmp75258))))
                          (declare (not safe))
                          (cons __tmp75262 __tmp75257))))
                   (declare (not safe))
                   (cons __tmp75265 __tmp75256))))
              (___kont7453174532_
               (lambda (_L72144_ _L72146_)
                 (let ((__tmp75275
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-getf)))
                       (__tmp75266
                        (let ((__tmp75272
                               (let ((__tmp75274
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75273
                                      (let ()
                                        (declare (not safe))
                                        (cons _L72146_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75274 __tmp75273)))
                              (__tmp75267
                               (let ((__tmp75269
                                      (let ((__tmp75271
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75270
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72144_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75271 __tmp75270)))
                                     (__tmp75268
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons __tmp75269 __tmp75268))))
                          (declare (not safe))
                          (cons __tmp75272 __tmp75267))))
                   (declare (not safe))
                   (cons __tmp75275 __tmp75266)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7452674527_))
              (let ((_e7208172169_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7452674527_))))
                (let ((_tl7207972176_
                       (let () (declare (not safe)) (##cdr _e7208172169_)))
                      (_hd7208072173_
                       (let () (declare (not safe)) (##car _e7208172169_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7207972176_))
                      (let ((_e7208472179_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7207972176_))))
                        (let ((_tl7208272186_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7208472179_)))
                              (_hd7208372183_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7208472179_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7208272186_))
                              (let ((_e7208772189_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7208272186_))))
                                (let ((_tl7208572196_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7208772189_)))
                                      (_hd7208672193_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7208772189_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7208572196_))
                                      (let ((_e7209072199_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7208572196_))))
                                        (let ((_tl7208872206_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7209072199_)))
                                              (_hd7208972203_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7209072199_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7208872206_))
                                              (___kont7452974530_
                                               _hd7208972203_
                                               _hd7208672193_
                                               _hd7208372183_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7207472107_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7208572196_))
                                          (___kont7453174532_
                                           _hd7208672193_
                                           _hd7208372183_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7207472107_))))))
                              (let () (declare (not safe)) (_g7207472107_)))))
                      (let () (declare (not safe)) (_g7207472107_)))))
              (let () (declare (not safe)) (_g7207472107_)))))))
  (define |gxc[:0:]#@class-setf|
    (lambda (_$stx72234_)
      (let* ((___stx7458274583_ _$stx72234_)
             (_g7223972272_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7458274583_)))))
        (let ((___kont7458574586_
               (lambda (_L72374_ _L72376_ _L72377_)
                 (let ((__tmp75285
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-setf)))
                       (__tmp75276
                        (let ((__tmp75282
                               (let ((__tmp75284
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75283
                                      (let ()
                                        (declare (not safe))
                                        (cons _L72377_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75284 __tmp75283)))
                              (__tmp75277
                               (let ((__tmp75279
                                      (let ((__tmp75281
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75280
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72376_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75281 __tmp75280)))
                                     (__tmp75278
                                      (let ()
                                        (declare (not safe))
                                        (cons _L72374_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75279 __tmp75278))))
                          (declare (not safe))
                          (cons __tmp75282 __tmp75277))))
                   (declare (not safe))
                   (cons __tmp75285 __tmp75276))))
              (___kont7458774588_
               (lambda (_L72309_ _L72311_)
                 (let ((__tmp75295
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-setf)))
                       (__tmp75286
                        (let ((__tmp75292
                               (let ((__tmp75294
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75293
                                      (let ()
                                        (declare (not safe))
                                        (cons _L72311_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75294 __tmp75293)))
                              (__tmp75287
                               (let ((__tmp75289
                                      (let ((__tmp75291
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75290
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72309_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75291 __tmp75290)))
                                     (__tmp75288
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons __tmp75289 __tmp75288))))
                          (declare (not safe))
                          (cons __tmp75292 __tmp75287))))
                   (declare (not safe))
                   (cons __tmp75295 __tmp75286)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7458274583_))
              (let ((_e7224672334_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7458274583_))))
                (let ((_tl7224472341_
                       (let () (declare (not safe)) (##cdr _e7224672334_)))
                      (_hd7224572338_
                       (let () (declare (not safe)) (##car _e7224672334_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7224472341_))
                      (let ((_e7224972344_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7224472341_))))
                        (let ((_tl7224772351_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7224972344_)))
                              (_hd7224872348_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7224972344_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7224772351_))
                              (let ((_e7225272354_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7224772351_))))
                                (let ((_tl7225072361_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7225272354_)))
                                      (_hd7225172358_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7225272354_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7225072361_))
                                      (let ((_e7225572364_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7225072361_))))
                                        (let ((_tl7225372371_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7225572364_)))
                                              (_hd7225472368_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7225572364_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7225372371_))
                                              (___kont7458574586_
                                               _hd7225472368_
                                               _hd7225172358_
                                               _hd7224872348_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7223972272_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7225072361_))
                                          (___kont7458774588_
                                           _hd7225172358_
                                           _hd7224872348_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7223972272_))))))
                              (let () (declare (not safe)) (_g7223972272_)))))
                      (let () (declare (not safe)) (_g7223972272_)))))
              (let () (declare (not safe)) (_g7223972272_)))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx72399_)
      (let* ((___stx7463874639_ _$stx72399_)
             (_g7240772475_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7463874639_)))))
        (let ((___kont7464174642_
               (lambda (_L72753_ _L72755_)
                 (let ((__tmp75311
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp75296
                        (let ((__tmp75307
                               (let ((__tmp75310
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75308
                                      (let ((__tmp75309
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp75309 '()))))
                                 (declare (not safe))
                                 (cons __tmp75310 __tmp75308)))
                              (__tmp75297
                               (let ((__tmp75304
                                      (let ((__tmp75306
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75305
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72755_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75306 __tmp75305)))
                                     (__tmp75298
                                      (let ((__tmp75299
                                             (let ((__tmp75300
                                                    (let ((__tmp75301
                                                           (let ((__tmp75303
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp75302
                          (let () (declare (not safe)) (cons _L72753_ '()))))
                     (declare (not safe))
                     (cons __tmp75303 __tmp75302))))
              (declare (not safe))
              (cons __tmp75301 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L72753_ __tmp75300))))
                                        (declare (not safe))
                                        (cons '#f __tmp75299))))
                                 (declare (not safe))
                                 (cons __tmp75304 __tmp75298))))
                          (declare (not safe))
                          (cons __tmp75307 __tmp75297))))
                   (declare (not safe))
                   (cons __tmp75311 __tmp75296))))
              (___kont7464374644_
               (lambda (_L72684_ _L72686_)
                 (let ((__tmp75312
                        (let ((__tmp75313
                               (let ((__tmp75314
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L72684_ __tmp75314))))
                          (declare (not safe))
                          (cons 'primitive: __tmp75313))))
                   (declare (not safe))
                   (cons _L72686_ __tmp75312))))
              (___kont7464574646_
               (lambda (_L72623_ _L72625_)
                 (let ((__tmp75328
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp75315
                        (let ((__tmp75324
                               (let ((__tmp75327
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75325
                                      (let ((__tmp75326
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp75326 '()))))
                                 (declare (not safe))
                                 (cons __tmp75327 __tmp75325)))
                              (__tmp75316
                               (let ((__tmp75321
                                      (let ((__tmp75323
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75322
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72625_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75323 __tmp75322)))
                                     (__tmp75317
                                      (let ((__tmp75318
                                             (let ((__tmp75320
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp75319
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L72623_ '()))))
                                               (declare (not safe))
                                               (cons __tmp75320 __tmp75319))))
                                        (declare (not safe))
                                        (cons __tmp75318 '()))))
                                 (declare (not safe))
                                 (cons __tmp75321 __tmp75317))))
                          (declare (not safe))
                          (cons __tmp75324 __tmp75316))))
                   (declare (not safe))
                   (cons __tmp75328 __tmp75315))))
              (___kont7464774648_
               (lambda (_L72555_ _L72557_)
                 (let ((__tmp75342
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp75329
                        (let ((__tmp75338
                               (let ((__tmp75341
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75339
                                      (let ((__tmp75340
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp75340 '()))))
                                 (declare (not safe))
                                 (cons __tmp75341 __tmp75339)))
                              (__tmp75330
                               (let ((__tmp75335
                                      (let ((__tmp75337
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75336
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72557_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75337 __tmp75336)))
                                     (__tmp75331
                                      (let ((__tmp75332
                                             (let ((__tmp75334
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp75333
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L72555_ '()))))
                                               (declare (not safe))
                                               (cons __tmp75334 __tmp75333))))
                                        (declare (not safe))
                                        (cons __tmp75332 '()))))
                                 (declare (not safe))
                                 (cons __tmp75335 __tmp75331))))
                          (declare (not safe))
                          (cons __tmp75338 __tmp75330))))
                   (declare (not safe))
                   (cons __tmp75342 __tmp75329))))
              (___kont7464974650_
               (lambda (_L72502_ _L72504_)
                 (let ((__tmp75343
                        (let ((__tmp75344
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L72502_ __tmp75344))))
                   (declare (not safe))
                   (cons _L72504_ __tmp75343)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7463874639_))
              (let ((_e7241372709_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7463874639_))))
                (let ((_tl7241172716_
                       (let () (declare (not safe)) (##cdr _e7241372709_)))
                      (_hd7241272713_
                       (let () (declare (not safe)) (##car _e7241372709_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7241172716_))
                      (let ((_e7241672719_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7241172716_))))
                        (let ((_tl7241472726_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7241672719_)))
                              (_hd7241572723_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7241672719_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7241472726_))
                              (let ((_e7241972729_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7241472726_))))
                                (let ((_tl7241772736_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7241972729_)))
                                      (_hd7241872733_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7241972729_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd7241872733_))
                                      (let ((_e7242072739_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd7241872733_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e7242072739_ 'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7241772736_))
                                                (let ((_e7242372743_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7241772736_))))
                                                  (let ((_tl7242172750_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7242372743_)))
                                                        (_hd7242272747_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7242372743_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7242172750_))
                                                        (___kont7464174642_
                                                         _hd7242272747_
                                                         _hd7241572723_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd7241572723_))
                                                            (let ((_e7243272670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd7241572723_))))
                      (declare (not safe))
                      (_g7240772475_))
                    (let () (declare (not safe)) (_g7240772475_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd7241572723_))
                                                    (let ((_e7243272670_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd7241572723_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e7243272670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7241772736_))
                      (___kont7464374644_ _hd7241872733_ _hd7241272713_)
                      (let () (declare (not safe)) (_g7240772475_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7241772736_))
                      (___kont7464774648_ _hd7241872733_ _hd7241572723_)
                      (let () (declare (not safe)) (_g7240772475_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7241772736_))
                                                        (___kont7464774648_
                                                         _hd7241872733_
                                                         _hd7241572723_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7240772475_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd7241572723_))
                                                (let ((_e7243272670_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd7241572723_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e7243272670_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl7241772736_))
                                                          (___kont7464374644_
                                                           _hd7241872733_
                                                           _hd7241272713_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl7241772736_))
                      (let ((_e7245072613_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7241772736_))))
                        (let ((_tl7244872620_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7245072613_)))
                              (_hd7244972617_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7245072613_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7244872620_))
                              (___kont7464574646_
                               _hd7244972617_
                               _hd7241872733_)
                              (let () (declare (not safe)) (_g7240772475_)))))
                      (let () (declare (not safe)) (_g7240772475_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7241772736_))
                  (___kont7464774648_ _hd7241872733_ _hd7241572723_)
                  (let () (declare (not safe)) (_g7240772475_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7241772736_))
                                                    (___kont7464774648_
                                                     _hd7241872733_
                                                     _hd7241572723_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7240772475_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd7241572723_))
                                          (let ((_e7243272670_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _hd7241572723_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e7243272670_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7241772736_))
                                                    (___kont7464374644_
                                                     _hd7241872733_
                                                     _hd7241272713_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7241772736_))
                                                        (let ((_e7245072613_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7241772736_))))
                  (let ((_tl7244872620_
                         (let () (declare (not safe)) (##cdr _e7245072613_)))
                        (_hd7244972617_
                         (let () (declare (not safe)) (##car _e7245072613_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl7244872620_))
                        (___kont7464574646_ _hd7244972617_ _hd7241872733_)
                        (let () (declare (not safe)) (_g7240772475_)))))
                (let () (declare (not safe)) (_g7240772475_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7241772736_))
                                                    (___kont7464774648_
                                                     _hd7241872733_
                                                     _hd7241572723_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7240772475_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7241772736_))
                                              (___kont7464774648_
                                               _hd7241872733_
                                               _hd7241572723_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7240772475_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd7241572723_))
                                  (let ((_e7243272670_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd7241572723_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7241472726_))
                                        (___kont7464974650_
                                         _hd7241572723_
                                         _hd7241272713_)
                                        (let ()
                                          (declare (not safe))
                                          (_g7240772475_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7241472726_))
                                      (___kont7464974650_
                                       _hd7241572723_
                                       _hd7241272713_)
                                      (let ()
                                        (declare (not safe))
                                        (_g7240772475_)))))))
                      (let () (declare (not safe)) (_g7240772475_)))))
              (let () (declare (not safe)) (_g7240772475_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx72777_)
      (let* ((___stx7477874779_ _$stx72777_)
             (_g7278272837_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7477874779_)))))
        (let ((___kont7478174782_
               (lambda (_L73022_ _L73024_)
                 (let ((__tmp75360
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp75345
                        (let ((__tmp75356
                               (let ((__tmp75359
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75357
                                      (let ((__tmp75358
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp75358 '()))))
                                 (declare (not safe))
                                 (cons __tmp75359 __tmp75357)))
                              (__tmp75346
                               (let ((__tmp75347
                                      (let ((__tmp75355
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp75348
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L73022_
                                                  _L73024_))
                                               (let ((__tmp75349
                                                      (lambda (_g7304173045_
                                                               _g7304273048_
                                                               _g7304373050_)
                                                        (let ((__tmp75350
                                                               (let ((__tmp75354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp75351
                              (let ((__tmp75352
                                     (let ((__tmp75353
                                            (let ()
                                              (declare (not safe))
                                              (cons _g7304173045_ '()))))
                                       (declare (not safe))
                                       (cons _g7304273048_ __tmp75353))))
                                (declare (not safe))
                                (cons 'primitive: __tmp75352))))
                         (declare (not safe))
                         (cons __tmp75354 __tmp75351))))
                  (declare (not safe))
                  (cons __tmp75350 _g7304373050_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp75349
                                                         '()
                                                         _L73022_
                                                         _L73024_)))))
                                        (declare (not safe))
                                        (cons __tmp75355 __tmp75348))))
                                 (declare (not safe))
                                 (cons __tmp75347 '()))))
                          (declare (not safe))
                          (cons __tmp75356 __tmp75346))))
                   (declare (not safe))
                   (cons __tmp75360 __tmp75345))))
              (___kont7478574786_
               (lambda (_L72908_ _L72910_)
                 (let ((__tmp75375
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp75361
                        (let ((__tmp75371
                               (let ((__tmp75374
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75372
                                      (let ((__tmp75373
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp75373 '()))))
                                 (declare (not safe))
                                 (cons __tmp75374 __tmp75372)))
                              (__tmp75362
                               (let ((__tmp75363
                                      (let ((__tmp75370
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp75364
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L72908_
                                                  _L72910_))
                                               (let ((__tmp75365
                                                      (lambda (_g7292572929_
                                                               _g7292672932_
                                                               _g7292772934_)
                                                        (let ((__tmp75366
                                                               (let ((__tmp75369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp75367
                              (let ((__tmp75368
                                     (let ()
                                       (declare (not safe))
                                       (cons _g7292572929_ '()))))
                                (declare (not safe))
                                (cons _g7292672932_ __tmp75368))))
                         (declare (not safe))
                         (cons __tmp75369 __tmp75367))))
                  (declare (not safe))
                  (cons __tmp75366 _g7292772934_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp75365
                                                         '()
                                                         _L72908_
                                                         _L72910_)))))
                                        (declare (not safe))
                                        (cons __tmp75370 __tmp75364))))
                                 (declare (not safe))
                                 (cons __tmp75363 '()))))
                          (declare (not safe))
                          (cons __tmp75371 __tmp75362))))
                   (declare (not safe))
                   (cons __tmp75375 __tmp75361)))))
          (let* ((___match7482974830_
                  (lambda (_e7281472844_
                           _hd7281372848_
                           _tl7281272851_
                           ___splice7478774788_
                           _target7281572854_
                           _tl7281772857_)
                    (letrec ((_loop7281872860_
                              (lambda (_hd7281672864_
                                       _dispatch7282272867_
                                       _arity7282372869_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7281672864_))
                                    (let ((_e7281972872_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7281672864_))))
                                      (let ((_lp-tl7282172879_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7281972872_)))
                                            (_lp-hd7282072876_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7281972872_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _lp-hd7282072876_))
                                            (let ((_e7282872882_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd7282072876_))))
                                              (let ((_tl7282672889_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7282872882_)))
                                                    (_hd7282772886_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7282872882_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7282672889_))
                                                    (let ((_e7283172892_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7282672889_))))
                                                      (let ((_tl7282972899_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7283172892_)))
                    (_hd7283072896_
                     (let () (declare (not safe)) (##car _e7283172892_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl7282972899_))
                    (_loop7281872860_
                     _lp-tl7282172879_
                     (let ()
                       (declare (not safe))
                       (cons _hd7283072896_ _dispatch7282272867_))
                     (let ()
                       (declare (not safe))
                       (cons _hd7282772886_ _arity7282372869_)))
                    (let () (declare (not safe)) (_g7278272837_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7278272837_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g7278272837_)))))
                                    (let ((_arity7282572905_
                                           (reverse _arity7282372869_))
                                          (_dispatch7282472902_
                                           (reverse _dispatch7282272867_)))
                                      (___kont7478574786_
                                       _dispatch7282472902_
                                       _arity7282572905_))))))
                      (_loop7281872860_ _target7281572854_ '() '()))))
                 (___match7482174822_
                  (lambda (_e7281472844_ _hd7281372848_ _tl7281272851_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl7281272851_))
                        (let ((___splice7478774788_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice _tl7281272851_ '0))))
                          (let ((_tl7281772857_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice7478774788_ '1)))
                                (_target7281572854_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice7478774788_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7281772857_))
                                (___match7482974830_
                                 _e7281472844_
                                 _hd7281372848_
                                 _tl7281272851_
                                 ___splice7478774788_
                                 _target7281572854_
                                 _tl7281772857_)
                                (let ()
                                  (declare (not safe))
                                  (_g7278272837_)))))
                        (let () (declare (not safe)) (_g7278272837_)))))
                 (___match7481574816_
                  (lambda (_e7278872944_
                           _hd7278772948_
                           _tl7278672951_
                           _e7279172954_
                           _hd7279072958_
                           _tl7278972961_
                           _e7279272964_
                           ___splice7478374784_
                           _target7279372968_
                           _tl7279572971_)
                    (letrec ((_loop7279672974_
                              (lambda (_hd7279472978_
                                       _dispatch7280072981_
                                       _arity7280172983_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7279472978_))
                                    (let ((_e7279772986_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7279472978_))))
                                      (let ((_lp-tl7279972993_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7279772986_)))
                                            (_lp-hd7279872990_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7279772986_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _lp-hd7279872990_))
                                            (let ((_e7280672996_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd7279872990_))))
                                              (let ((_tl7280473003_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7280672996_)))
                                                    (_hd7280573000_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7280672996_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7280473003_))
                                                    (let ((_e7280973006_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7280473003_))))
                                                      (let ((_tl7280773013_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7280973006_)))
                    (_hd7280873010_
                     (let () (declare (not safe)) (##car _e7280973006_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl7280773013_))
                    (_loop7279672974_
                     _lp-tl7279972993_
                     (let ()
                       (declare (not safe))
                       (cons _hd7280873010_ _dispatch7280072981_))
                     (let ()
                       (declare (not safe))
                       (cons _hd7280573000_ _arity7280172983_)))
                    (___match7482174822_
                     _e7278872944_
                     _hd7278772948_
                     _tl7278672951_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match7482174822_
                                                     _e7278872944_
                                                     _hd7278772948_
                                                     _tl7278672951_))))
                                            (___match7482174822_
                                             _e7278872944_
                                             _hd7278772948_
                                             _tl7278672951_))))
                                    (let ((_arity7280373019_
                                           (reverse _arity7280172983_))
                                          (_dispatch7280273016_
                                           (reverse _dispatch7280072981_)))
                                      (___kont7478174782_
                                       _dispatch7280273016_
                                       _arity7280373019_))))))
                      (_loop7279672974_ _target7279372968_ '() '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7477874779_))
                (let ((_e7278872944_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7477874779_))))
                  (let ((_tl7278672951_
                         (let () (declare (not safe)) (##cdr _e7278872944_)))
                        (_hd7278772948_
                         (let () (declare (not safe)) (##car _e7278872944_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7278672951_))
                        (let ((_e7279172954_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7278672951_))))
                          (let ((_tl7278972961_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7279172954_)))
                                (_hd7279072958_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7279172954_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd7279072958_))
                                (let ((_e7279272964_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd7279072958_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e7279272964_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl7278972961_))
                                          (let ((___splice7478374784_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl7278972961_
                                                    '0))))
                                            (let ((_tl7279572971_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7478374784_
                                                      '1)))
                                                  (_target7279372968_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7478374784_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7279572971_))
                                                  (___match7481574816_
                                                   _e7278872944_
                                                   _hd7278772948_
                                                   _tl7278672951_
                                                   _e7279172954_
                                                   _hd7279072958_
                                                   _tl7278972961_
                                                   _e7279272964_
                                                   ___splice7478374784_
                                                   _target7279372968_
                                                   _tl7279572971_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7278672951_))
                                                      (let ((___splice7478774788_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7278672951_ '0))))
                (let ((_tl7281772857_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7478774788_ '1)))
                      (_target7281572854_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7478774788_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7281772857_))
                      (___match7482974830_
                       _e7278872944_
                       _hd7278772948_
                       _tl7278672951_
                       ___splice7478774788_
                       _target7281572854_
                       _tl7281772857_)
                      (let () (declare (not safe)) (_g7278272837_)))))
              (let () (declare (not safe)) (_g7278272837_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl7278672951_))
                                              (let ((___splice7478774788_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl7278672951_
                                                        '0))))
                                                (let ((_tl7281772857_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice7478774788_
                                                          '1)))
                                                      (_target7281572854_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice7478774788_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl7281772857_))
                                                      (___match7482974830_
                                                       _e7278872944_
                                                       _hd7278772948_
                                                       _tl7278672951_
                                                       ___splice7478774788_
                                                       _target7281572854_
                                                       _tl7281772857_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g7278272837_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g7278272837_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl7278672951_))
                                          (let ((___splice7478774788_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl7278672951_
                                                    '0))))
                                            (let ((_tl7281772857_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7478774788_
                                                      '1)))
                                                  (_target7281572854_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7478774788_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7281772857_))
                                                  (___match7482974830_
                                                   _e7278872944_
                                                   _hd7278772948_
                                                   _tl7278672951_
                                                   ___splice7478774788_
                                                   _target7281572854_
                                                   _tl7281772857_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7278272837_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g7278272837_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7278672951_))
                                    (let ((___splice7478774788_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7278672951_
                                              '0))))
                                      (let ((_tl7281772857_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7478774788_
                                                '1)))
                                            (_target7281572854_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7478774788_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7281772857_))
                                            (___match7482974830_
                                             _e7278872944_
                                             _hd7278772948_
                                             _tl7278672951_
                                             ___splice7478774788_
                                             _target7281572854_
                                             _tl7281772857_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7278272837_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7278272837_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7278672951_))
                            (let ((___splice7478774788_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7278672951_
                                      '0))))
                              (let ((_tl7281772857_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice7478774788_ '1)))
                                    (_target7281572854_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice7478774788_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7281772857_))
                                    (___match7482974830_
                                     _e7278872944_
                                     _hd7278772948_
                                     _tl7278672951_
                                     ___splice7478774788_
                                     _target7281572854_
                                     _tl7281772857_)
                                    (let ()
                                      (declare (not safe))
                                      (_g7278272837_)))))
                            (let () (declare (not safe)) (_g7278272837_))))))
                (let () (declare (not safe)) (_g7278272837_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx73059_)
      (let* ((_g7306373081_
              (lambda (_g7306473077_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7306473077_))))
             (_g7306273136_
              (lambda (_g7306473085_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7306473085_))
                    (let ((_e7306973088_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7306473085_))))
                      (let ((_hd7306873092_
                             (let ()
                               (declare (not safe))
                               (##car _e7306973088_)))
                            (_tl7306773095_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7306973088_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7306773095_))
                            (let ((_e7307273098_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7306773095_))))
                              (let ((_hd7307173102_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7307273098_)))
                                    (_tl7307073105_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7307273098_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7307073105_))
                                    (let ((_e7307573108_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7307073105_))))
                                      (let ((_hd7307473112_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7307573108_)))
                                            (_tl7307373115_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7307573108_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7307373115_))
                                            ((lambda (_L73118_ _L73120_)
                                               (let ((__tmp75389
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp75376
                                                      (let ((__tmp75385
                                                             (let ((__tmp75388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp75386
                            (let ((__tmp75387
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp75387 '()))))
                       (declare (not safe))
                       (cons __tmp75388 __tmp75386)))
                    (__tmp75377
                     (let ((__tmp75382
                            (let ((__tmp75384
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp75383
                                   (let ()
                                     (declare (not safe))
                                     (cons _L73120_ '()))))
                              (declare (not safe))
                              (cons __tmp75384 __tmp75383)))
                           (__tmp75378
                            (let ((__tmp75379
                                   (let ((__tmp75381
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp75380
                                          (let ()
                                            (declare (not safe))
                                            (cons _L73118_ '()))))
                                     (declare (not safe))
                                     (cons __tmp75381 __tmp75380))))
                              (declare (not safe))
                              (cons __tmp75379 '()))))
                       (declare (not safe))
                       (cons __tmp75382 __tmp75378))))
                (declare (not safe))
                (cons __tmp75385 __tmp75377))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp75389 __tmp75376)))
                                             _hd7307473112_
                                             _hd7307173102_)
                                            (_g7306373081_ _g7306473085_))))
                                    (_g7306373081_ _g7306473085_))))
                            (_g7306373081_ _g7306473085_))))
                    (_g7306373081_ _g7306473085_)))))
        (_g7306273136_ _$stx73059_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx73140_)
      (let* ((_g7314473162_
              (lambda (_g7314573158_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7314573158_))))
             (_g7314373217_
              (lambda (_g7314573166_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7314573166_))
                    (let ((_e7315073169_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7314573166_))))
                      (let ((_hd7314973173_
                             (let ()
                               (declare (not safe))
                               (##car _e7315073169_)))
                            (_tl7314873176_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7315073169_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7314873176_))
                            (let ((_e7315373179_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7314873176_))))
                              (let ((_hd7315273183_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7315373179_)))
                                    (_tl7315173186_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7315373179_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7315173186_))
                                    (let ((_e7315673189_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7315173186_))))
                                      (let ((_hd7315573193_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7315673189_)))
                                            (_tl7315473196_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7315673189_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7315473196_))
                                            ((lambda (_L73199_ _L73201_)
                                               (let ((__tmp75403
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp75390
                                                      (let ((__tmp75399
                                                             (let ((__tmp75402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp75400
                            (let ((__tmp75401
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp75401 '()))))
                       (declare (not safe))
                       (cons __tmp75402 __tmp75400)))
                    (__tmp75391
                     (let ((__tmp75396
                            (let ((__tmp75398
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp75397
                                   (let ()
                                     (declare (not safe))
                                     (cons _L73201_ '()))))
                              (declare (not safe))
                              (cons __tmp75398 __tmp75397)))
                           (__tmp75392
                            (let ((__tmp75393
                                   (let ((__tmp75395
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp75394
                                          (let ()
                                            (declare (not safe))
                                            (cons _L73199_ '()))))
                                     (declare (not safe))
                                     (cons __tmp75395 __tmp75394))))
                              (declare (not safe))
                              (cons __tmp75393 '()))))
                       (declare (not safe))
                       (cons __tmp75396 __tmp75392))))
                (declare (not safe))
                (cons __tmp75399 __tmp75391))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp75403 __tmp75390)))
                                             _hd7315573193_
                                             _hd7315273183_)
                                            (_g7314473162_ _g7314573166_))))
                                    (_g7314473162_ _g7314573166_))))
                            (_g7314473162_ _g7314573166_))))
                    (_g7314473162_ _g7314573166_)))))
        (_g7314373217_ _$stx73140_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx73221_)
      (let* ((___stx7483274833_ _$stx73221_)
             (_g7322873299_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7483274833_)))))
        (let ((___kont7483574836_
               (lambda (_L73590_ _L73592_)
                 (let ((__tmp75409
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75404
                        (let ((__tmp75405
                               (let ((__tmp75406
                                      (let ((__tmp75408
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp75407
                                             (let ()
                                               (declare (not safe))
                                               (cons _L73590_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75408 __tmp75407))))
                                 (declare (not safe))
                                 (cons __tmp75406 '()))))
                          (declare (not safe))
                          (cons _L73592_ __tmp75405))))
                   (declare (not safe))
                   (cons __tmp75409 __tmp75404))))
              (___kont7483774838_
               (lambda (_L73509_ _L73511_)
                 (let ((__tmp75418
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75410
                        (let ((__tmp75411
                               (let ((__tmp75412
                                      (let ((__tmp75417
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp75413
                                             (let ((__tmp75414
                                                    (lambda (_g7353073533_
                                                             _g7353173536_)
                                                      (let ((__tmp75415
                                                             (let ((__tmp75416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g7353073533_ __tmp75416))))
                (declare (not safe))
                (cons __tmp75415 _g7353173536_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp75414
                                                       '()
                                                       _L73509_))))
                                        (declare (not safe))
                                        (cons __tmp75417 __tmp75413))))
                                 (declare (not safe))
                                 (cons __tmp75412 '()))))
                          (declare (not safe))
                          (cons _L73511_ __tmp75411))))
                   (declare (not safe))
                   (cons __tmp75418 __tmp75410))))
              (___kont7484174842_
               (lambda (_L73421_ _L73423_)
                 (let ((__tmp75425
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75419
                        (let ((__tmp75420
                               (let ((__tmp75421
                                      (let ((__tmp75424
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp75422
                                             (let ((__tmp75423
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L73421_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive: __tmp75423))))
                                        (declare (not safe))
                                        (cons __tmp75424 __tmp75422))))
                                 (declare (not safe))
                                 (cons __tmp75421 '()))))
                          (declare (not safe))
                          (cons _L73423_ __tmp75420))))
                   (declare (not safe))
                   (cons __tmp75425 __tmp75419))))
              (___kont7484374844_
               (lambda (_L73356_ _L73358_)
                 (let ((__tmp75435
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75426
                        (let ((__tmp75427
                               (let ((__tmp75428
                                      (let ((__tmp75434
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp75429
                                             (let ((__tmp75430
                                                    (let ((__tmp75431
                                                           (lambda (_g7337573378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g7337673381_)
                     (let ((__tmp75432
                            (let ((__tmp75433
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g7337573378_ __tmp75433))))
                       (declare (not safe))
                       (cons __tmp75432 _g7337673381_)))))
              (declare (not safe))
              (foldr1 __tmp75431 '() _L73356_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive: __tmp75430))))
                                        (declare (not safe))
                                        (cons __tmp75434 __tmp75429))))
                                 (declare (not safe))
                                 (cons __tmp75428 '()))))
                          (declare (not safe))
                          (cons _L73358_ __tmp75427))))
                   (declare (not safe))
                   (cons __tmp75435 __tmp75426)))))
          (let* ((___match7495174952_
                  (lambda (_e7328173306_
                           _hd7328073310_
                           _tl7327973313_
                           _e7328473316_
                           _hd7328373320_
                           _tl7328273323_
                           ___splice7484574846_
                           _target7328573326_
                           _tl7328773329_)
                    (letrec ((_loop7328873332_
                              (lambda (_hd7328673336_ _arity7329273339_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7328673336_))
                                    (let ((_e7328973342_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7328673336_))))
                                      (let ((_lp-tl7329173349_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7328973342_)))
                                            (_lp-hd7329073346_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7328973342_))))
                                        (_loop7328873332_
                                         _lp-tl7329173349_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd7329073346_
                                                 _arity7329273339_)))))
                                    (let ((_arity7329373352_
                                           (reverse _arity7329273339_)))
                                      (___kont7484374844_
                                       _arity7329373352_
                                       _hd7328373320_))))))
                      (_loop7328873332_ _target7328573326_ '()))))
                 (___match7491174912_
                  (lambda (_e7324973445_
                           _hd7324873449_
                           _tl7324773452_
                           _e7325273455_
                           _hd7325173459_
                           _tl7325073462_
                           _e7325573465_
                           _hd7325473469_
                           _tl7325373472_
                           _e7325673475_
                           ___splice7483974840_
                           _target7325773479_
                           _tl7325973482_)
                    (letrec ((_loop7326073485_
                              (lambda (_hd7325873489_ _arity7326473492_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7325873489_))
                                    (let ((_e7326173495_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7325873489_))))
                                      (let ((_lp-tl7326373502_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7326173495_)))
                                            (_lp-hd7326273499_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7326173495_))))
                                        (_loop7326073485_
                                         _lp-tl7326373502_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd7326273499_
                                                 _arity7326473492_)))))
                                    (let ((_arity7326573505_
                                           (reverse _arity7326473492_)))
                                      (___kont7483774838_
                                       _arity7326573505_
                                       _hd7325173459_))))))
                      (_loop7326073485_ _target7325773479_ '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7483274833_))
                (let ((_e7323473546_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7483274833_))))
                  (let ((_tl7323273553_
                         (let () (declare (not safe)) (##cdr _e7323473546_)))
                        (_hd7323373550_
                         (let () (declare (not safe)) (##car _e7323473546_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7323273553_))
                        (let ((_e7323773556_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7323273553_))))
                          (let ((_tl7323573563_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7323773556_)))
                                (_hd7323673560_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7323773556_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7323573563_))
                                (let ((_e7324073566_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7323573563_))))
                                  (let ((_tl7323873573_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7324073566_)))
                                        (_hd7323973570_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7324073566_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd7323973570_))
                                        (let ((_e7324173576_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd7323973570_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e7324173576_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl7323873573_))
                                                  (let ((_e7324473580_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl7323873573_))))
                                                    (let ((_tl7324273587_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e7324473580_)))
                                                          (_hd7324373584_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e7324473580_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl7324273587_))
                                                          (___kont7483574836_
                                                           _hd7324373584_
                                                           _hd7323673560_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl7323873573_))
                      (let ((___splice7483974840_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl7323873573_ '0))))
                        (let ((_tl7325973482_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7483974840_ '1)))
                              (_target7325773479_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7483974840_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7325973482_))
                              (___match7491174912_
                               _e7323473546_
                               _hd7323373550_
                               _tl7323273553_
                               _e7323773556_
                               _hd7323673560_
                               _tl7323573563_
                               _e7324073566_
                               _hd7323973570_
                               _tl7323873573_
                               _e7324173576_
                               ___splice7483974840_
                               _target7325773479_
                               _tl7325973482_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl7323573563_))
                                  (let ((___splice7484574846_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl7323573563_
                                            '0))))
                                    (let ((_tl7328773329_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice7484574846_
                                              '1)))
                                          (_target7328573326_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice7484574846_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7328773329_))
                                          (___match7495174952_
                                           _e7323473546_
                                           _hd7323373550_
                                           _tl7323273553_
                                           _e7323773556_
                                           _hd7323673560_
                                           _tl7323573563_
                                           ___splice7484574846_
                                           _target7328573326_
                                           _tl7328773329_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7322873299_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g7322873299_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl7323573563_))
                          (let ((___splice7484574846_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl7323573563_
                                    '0))))
                            (let ((_tl7328773329_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice7484574846_ '1)))
                                  (_target7328573326_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice7484574846_ '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl7328773329_))
                                  (___match7495174952_
                                   _e7323473546_
                                   _hd7323373550_
                                   _tl7323273553_
                                   _e7323773556_
                                   _hd7323673560_
                                   _tl7323573563_
                                   ___splice7484574846_
                                   _target7328573326_
                                   _tl7328773329_)
                                  (let ()
                                    (declare (not safe))
                                    (_g7322873299_)))))
                          (let () (declare (not safe)) (_g7322873299_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7323873573_))
                                                      (let ((___splice7483974840_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7323873573_ '0))))
                (let ((_tl7325973482_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7483974840_ '1)))
                      (_target7325773479_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7483974840_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7325973482_))
                      (___match7491174912_
                       _e7323473546_
                       _hd7323373550_
                       _tl7323273553_
                       _e7323773556_
                       _hd7323673560_
                       _tl7323573563_
                       _e7324073566_
                       _hd7323973570_
                       _tl7323873573_
                       _e7324173576_
                       ___splice7483974840_
                       _target7325773479_
                       _tl7325973482_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl7323873573_))
                          (___kont7484174842_ _hd7323973570_ _hd7323673560_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7323573563_))
                              (let ((___splice7484574846_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7323573563_
                                        '0))))
                                (let ((_tl7328773329_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice7484574846_
                                          '1)))
                                      (_target7328573326_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice7484574846_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7328773329_))
                                      (___match7495174952_
                                       _e7323473546_
                                       _hd7323373550_
                                       _tl7323273553_
                                       _e7323773556_
                                       _hd7323673560_
                                       _tl7323573563_
                                       ___splice7484574846_
                                       _target7328573326_
                                       _tl7328773329_)
                                      (let ()
                                        (declare (not safe))
                                        (_g7322873299_)))))
                              (let ()
                                (declare (not safe))
                                (_g7322873299_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7323873573_))
                  (___kont7484174842_ _hd7323973570_ _hd7323673560_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl7323573563_))
                      (let ((___splice7484574846_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl7323573563_ '0))))
                        (let ((_tl7328773329_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7484574846_ '1)))
                              (_target7328573326_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7484574846_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7328773329_))
                              (___match7495174952_
                               _e7323473546_
                               _hd7323373550_
                               _tl7323273553_
                               _e7323773556_
                               _hd7323673560_
                               _tl7323573563_
                               ___splice7484574846_
                               _target7328573326_
                               _tl7328773329_)
                              (let () (declare (not safe)) (_g7322873299_)))))
                      (let () (declare (not safe)) (_g7322873299_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7323873573_))
                                                  (___kont7484174842_
                                                   _hd7323973570_
                                                   _hd7323673560_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7323573563_))
                                                      (let ((___splice7484574846_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7323573563_ '0))))
                (let ((_tl7328773329_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7484574846_ '1)))
                      (_target7328573326_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7484574846_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7328773329_))
                      (___match7495174952_
                       _e7323473546_
                       _hd7323373550_
                       _tl7323273553_
                       _e7323773556_
                       _hd7323673560_
                       _tl7323573563_
                       ___splice7484574846_
                       _target7328573326_
                       _tl7328773329_)
                      (let () (declare (not safe)) (_g7322873299_)))))
              (let () (declare (not safe)) (_g7322873299_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7323873573_))
                                            (___kont7484174842_
                                             _hd7323973570_
                                             _hd7323673560_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl7323573563_))
                                                (let ((___splice7484574846_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl7323573563_
                                                          '0))))
                                                  (let ((_tl7328773329_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice7484574846_
                                                            '1)))
                                                        (_target7328573326_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice7484574846_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7328773329_))
                                                        (___match7495174952_
                                                         _e7323473546_
                                                         _hd7323373550_
                                                         _tl7323273553_
                                                         _e7323773556_
                                                         _hd7323673560_
                                                         _tl7323573563_
                                                         ___splice7484574846_
                                                         _target7328573326_
                                                         _tl7328773329_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7322873299_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7322873299_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7323573563_))
                                    (let ((___splice7484574846_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7323573563_
                                              '0))))
                                      (let ((_tl7328773329_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7484574846_
                                                '1)))
                                            (_target7328573326_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7484574846_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7328773329_))
                                            (___match7495174952_
                                             _e7323473546_
                                             _hd7323373550_
                                             _tl7323273553_
                                             _e7323773556_
                                             _hd7323673560_
                                             _tl7323573563_
                                             ___splice7484574846_
                                             _target7328573326_
                                             _tl7328773329_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7322873299_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7322873299_))))))
                        (let () (declare (not safe)) (_g7322873299_)))))
                (let () (declare (not safe)) (_g7322873299_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx73616_)
      (let* ((___stx7495474955_ _$stx73616_)
             (_g7362173656_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7495474955_)))))
        (let ((___kont7495774958_
               (lambda (_L73778_ _L73780_)
                 (let ((__tmp75441
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75436
                        (let ((__tmp75437
                               (let ((__tmp75438
                                      (let ((__tmp75440
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp75439
                                             (let ()
                                               (declare (not safe))
                                               (cons _L73778_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75440 __tmp75439))))
                                 (declare (not safe))
                                 (cons __tmp75438 '()))))
                          (declare (not safe))
                          (cons _L73780_ __tmp75437))))
                   (declare (not safe))
                   (cons __tmp75441 __tmp75436))))
              (___kont7495974960_
               (lambda (_L73713_ _L73715_)
                 (let ((__tmp75450
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75442
                        (let ((__tmp75443
                               (let ((__tmp75444
                                      (let ((__tmp75449
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp75445
                                             (let ((__tmp75446
                                                    (lambda (_g7373273735_
                                                             _g7373373738_)
                                                      (let ((__tmp75447
                                                             (let ((__tmp75448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g7373273735_ __tmp75448))))
                (declare (not safe))
                (cons __tmp75447 _g7373373738_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp75446
                                                       '()
                                                       _L73713_))))
                                        (declare (not safe))
                                        (cons __tmp75449 __tmp75445))))
                                 (declare (not safe))
                                 (cons __tmp75444 '()))))
                          (declare (not safe))
                          (cons _L73715_ __tmp75443))))
                   (declare (not safe))
                   (cons __tmp75450 __tmp75442)))))
          (let ((___match7500375004_
                 (lambda (_e7363873663_
                          _hd7363773667_
                          _tl7363673670_
                          _e7364173673_
                          _hd7364073677_
                          _tl7363973680_
                          ___splice7496174962_
                          _target7364273683_
                          _tl7364473686_)
                   (letrec ((_loop7364573689_
                             (lambda (_hd7364373693_ _arity7364973696_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd7364373693_))
                                   (let ((_e7364673699_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd7364373693_))))
                                     (let ((_lp-tl7364873706_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e7364673699_)))
                                           (_lp-hd7364773703_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e7364673699_))))
                                       (_loop7364573689_
                                        _lp-tl7364873706_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd7364773703_
                                                _arity7364973696_)))))
                                   (let ((_arity7365073709_
                                          (reverse _arity7364973696_)))
                                     (___kont7495974960_
                                      _arity7365073709_
                                      _hd7364073677_))))))
                     (_loop7364573689_ _target7364273683_ '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7495474955_))
                (let ((_e7362773748_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7495474955_))))
                  (let ((_tl7362573755_
                         (let () (declare (not safe)) (##cdr _e7362773748_)))
                        (_hd7362673752_
                         (let () (declare (not safe)) (##car _e7362773748_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7362573755_))
                        (let ((_e7363073758_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7362573755_))))
                          (let ((_tl7362873765_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7363073758_)))
                                (_hd7362973762_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7363073758_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7362873765_))
                                (let ((_e7363373768_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7362873765_))))
                                  (let ((_tl7363173775_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7363373768_)))
                                        (_hd7363273772_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7363373768_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7363173775_))
                                        (___kont7495774958_
                                         _hd7363273772_
                                         _hd7362973762_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl7362873765_))
                                            (let ((___splice7496174962_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl7362873765_
                                                      '0))))
                                              (let ((_tl7364473686_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice7496174962_
                                                        '1)))
                                                    (_target7364273683_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice7496174962_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7364473686_))
                                                    (___match7500375004_
                                                     _e7362773748_
                                                     _hd7362673752_
                                                     _tl7362573755_
                                                     _e7363073758_
                                                     _hd7362973762_
                                                     _tl7362873765_
                                                     ___splice7496174962_
                                                     _target7364273683_
                                                     _tl7364473686_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7362173656_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g7362173656_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7362873765_))
                                    (let ((___splice7496174962_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7362873765_
                                              '0))))
                                      (let ((_tl7364473686_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7496174962_
                                                '1)))
                                            (_target7364273683_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7496174962_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7364473686_))
                                            (___match7500375004_
                                             _e7362773748_
                                             _hd7362673752_
                                             _tl7362573755_
                                             _e7363073758_
                                             _hd7362973762_
                                             _tl7362873765_
                                             ___splice7496174962_
                                             _target7364273683_
                                             _tl7364473686_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7362173656_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7362173656_))))))
                        (let () (declare (not safe)) (_g7362173656_)))))
                (let () (declare (not safe)) (_g7362173656_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx73800_)
      (let* ((_g7380473839_
              (lambda (_g7380573835_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7380573835_))))
             (_g7380373967_
              (lambda (_g7380573843_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7380573843_))
                    (let ((_e7381073846_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7380573843_))))
                      (let ((_hd7380973850_
                             (let ()
                               (declare (not safe))
                               (##car _e7381073846_)))
                            (_tl7380873853_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7381073846_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7380873853_))
                            (let ((_g75451_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7380873853_
                                      '0))))
                              (begin
                                (let ((_g75452_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g75451_)
                                             (##vector-length _g75451_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g75452_ 2)))
                                      (error "Context expects 2 values"
                                             _g75452_)))
                                (let ((_target7381173856_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75451_ 0)))
                                      (_tl7381373859_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75451_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7381373859_))
                                      (letrec ((_loop7381473862_
                                                (lambda (_hd7381273866_
                                                         _arity7381873869_
                                                         _prim7381973871_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7381273866_))
                                                      (let ((_e7381573874_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7381273866_))))
                (let ((_lp-hd7381673878_
                       (let () (declare (not safe)) (##car _e7381573874_)))
                      (_lp-tl7381773881_
                       (let () (declare (not safe)) (##cdr _e7381573874_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7381673878_))
                      (let ((_e7382473884_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7381673878_))))
                        (let ((_hd7382373888_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7382473884_)))
                              (_tl7382273891_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7382473884_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7382273891_))
                              (let ((_g75461_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7382273891_
                                        '0))))
                                (begin
                                  (let ((_g75462_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g75461_)
                                               (##vector-length _g75461_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g75462_ 2)))
                                        (error "Context expects 2 values"
                                               _g75462_)))
                                  (let ((_target7382573894_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g75461_ 0)))
                                        (_tl7382773897_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g75461_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7382773897_))
                                        (letrec ((_loop7382873900_
                                                  (lambda (_hd7382673904_
                                                           _arity7383273907_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd7382673904_))
                                                        (let ((_e7382973910_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd7382673904_))))
                  (let ((_lp-hd7383073914_
                         (let () (declare (not safe)) (##car _e7382973910_)))
                        (_lp-tl7383173917_
                         (let () (declare (not safe)) (##cdr _e7382973910_))))
                    (_loop7382873900_
                     _lp-tl7383173917_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd7383073914_ _arity7383273907_)))))
                (let ((_arity7383373920_ (reverse _arity7383273907_)))
                  (_loop7381473862_
                   _lp-tl7381773881_
                   (let ()
                     (declare (not safe))
                     (cons _arity7383373920_ _arity7381873869_))
                   (let ()
                     (declare (not safe))
                     (cons _hd7382373888_ _prim7381973871_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop7382873900_
                                           _target7382573894_
                                           '()))
                                        (_g7380473839_ _g7380573843_)))))
                              (_g7380473839_ _g7380573843_))))
                      (_g7380473839_ _g7380573843_))))
              (let ((_arity7382073924_ (reverse _arity7381873869_))
                    (_prim7382173927_ (reverse _prim7381973871_)))
                ((lambda (_L73930_ _L73932_)
                   (let ((__tmp75460
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp75453
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L73930_
                               _L73932_))
                            (let ((__tmp75454
                                   (lambda (_g7394773953_
                                            _g7394873956_
                                            _g7394973958_)
                                     (let ((__tmp75455
                                            (let ((__tmp75459
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp75456
                                                   (let ((__tmp75457
                                                          (let ((__tmp75458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g7395073961_ _g7395173964_)
                           (let ()
                             (declare (not safe))
                             (cons _g7395073961_ _g7395173964_)))))
                    (declare (not safe))
                    (foldr1 __tmp75458 '() _g7394773953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7394873956_
                                                           __tmp75457))))
                                              (declare (not safe))
                                              (cons __tmp75459 __tmp75456))))
                                       (declare (not safe))
                                       (cons __tmp75455 _g7394973958_)))))
                              (declare (not safe))
                              (foldr2 __tmp75454 '() _L73930_ _L73932_)))))
                     (declare (not safe))
                     (cons __tmp75460 __tmp75453)))
                 _arity7382073924_
                 _prim7382173927_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7381473862_
                                         _target7381173856_
                                         '()
                                         '()))
                                      (_g7380473839_ _g7380573843_)))))
                            (_g7380473839_ _g7380573843_))))
                    (_g7380473839_ _g7380573843_)))))
        (_g7380373967_ _$stx73800_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx73973_)
      (let* ((_g7397774012_
              (lambda (_g7397874008_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7397874008_))))
             (_g7397674140_
              (lambda (_g7397874016_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7397874016_))
                    (let ((_e7398374019_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7397874016_))))
                      (let ((_hd7398274023_
                             (let ()
                               (declare (not safe))
                               (##car _e7398374019_)))
                            (_tl7398174026_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7398374019_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7398174026_))
                            (let ((_g75463_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7398174026_
                                      '0))))
                              (begin
                                (let ((_g75464_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g75463_)
                                             (##vector-length _g75463_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g75464_ 2)))
                                      (error "Context expects 2 values"
                                             _g75464_)))
                                (let ((_target7398474029_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75463_ 0)))
                                      (_tl7398674032_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75463_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7398674032_))
                                      (letrec ((_loop7398774035_
                                                (lambda (_hd7398574039_
                                                         _arity7399174042_
                                                         _prim7399274044_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7398574039_))
                                                      (let ((_e7398874047_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7398574039_))))
                (let ((_lp-hd7398974051_
                       (let () (declare (not safe)) (##car _e7398874047_)))
                      (_lp-tl7399074054_
                       (let () (declare (not safe)) (##cdr _e7398874047_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7398974051_))
                      (let ((_e7399774057_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7398974051_))))
                        (let ((_hd7399674061_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7399774057_)))
                              (_tl7399574064_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7399774057_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7399574064_))
                              (let ((_g75473_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7399574064_
                                        '0))))
                                (begin
                                  (let ((_g75474_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g75473_)
                                               (##vector-length _g75473_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g75474_ 2)))
                                        (error "Context expects 2 values"
                                               _g75474_)))
                                  (let ((_target7399874067_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g75473_ 0)))
                                        (_tl7400074070_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g75473_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7400074070_))
                                        (letrec ((_loop7400174073_
                                                  (lambda (_hd7399974077_
                                                           _arity7400574080_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd7399974077_))
                                                        (let ((_e7400274083_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd7399974077_))))
                  (let ((_lp-hd7400374087_
                         (let () (declare (not safe)) (##car _e7400274083_)))
                        (_lp-tl7400474090_
                         (let () (declare (not safe)) (##cdr _e7400274083_))))
                    (_loop7400174073_
                     _lp-tl7400474090_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd7400374087_ _arity7400574080_)))))
                (let ((_arity7400674093_ (reverse _arity7400574080_)))
                  (_loop7398774035_
                   _lp-tl7399074054_
                   (let ()
                     (declare (not safe))
                     (cons _arity7400674093_ _arity7399174042_))
                   (let ()
                     (declare (not safe))
                     (cons _hd7399674061_ _prim7399274044_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop7400174073_
                                           _target7399874067_
                                           '()))
                                        (_g7397774012_ _g7397874016_)))))
                              (_g7397774012_ _g7397874016_))))
                      (_g7397774012_ _g7397874016_))))
              (let ((_arity7399374097_ (reverse _arity7399174042_))
                    (_prim7399474100_ (reverse _prim7399274044_)))
                ((lambda (_L74103_ _L74105_)
                   (let ((__tmp75472
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp75465
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L74103_
                               _L74105_))
                            (let ((__tmp75466
                                   (lambda (_g7412074126_
                                            _g7412174129_
                                            _g7412274131_)
                                     (let ((__tmp75467
                                            (let ((__tmp75471
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp75468
                                                   (let ((__tmp75469
                                                          (let ((__tmp75470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g7412374134_ _g7412474137_)
                           (let ()
                             (declare (not safe))
                             (cons _g7412374134_ _g7412474137_)))))
                    (declare (not safe))
                    (foldr1 __tmp75470 '() _g7412074126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7412174129_
                                                           __tmp75469))))
                                              (declare (not safe))
                                              (cons __tmp75471 __tmp75468))))
                                       (declare (not safe))
                                       (cons __tmp75467 _g7412274131_)))))
                              (declare (not safe))
                              (foldr2 __tmp75466 '() _L74103_ _L74105_)))))
                     (declare (not safe))
                     (cons __tmp75472 __tmp75465)))
                 _arity7399374097_
                 _prim7399474100_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7398774035_
                                         _target7398474029_
                                         '()
                                         '()))
                                      (_g7397774012_ _g7397874016_)))))
                            (_g7397774012_ _g7397874016_))))
                    (_g7397774012_ _g7397874016_)))))
        (_g7397674140_ _$stx73973_)))))
