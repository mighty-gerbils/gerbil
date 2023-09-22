(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx69927_)
      (let* ((_g6993169949_
              (lambda (_g6993269945_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g6993269945_))))
             (_g6993070004_
              (lambda (_g6993269953_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g6993269953_))
                    (let ((_e6993769956_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g6993269953_))))
                      (let ((_hd6993669960_
                             (let ()
                               (declare (not safe))
                               (##car _e6993769956_)))
                            (_tl6993569963_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6993769956_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl6993569963_))
                            (let ((_e6994069966_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl6993569963_))))
                              (let ((_hd6993969970_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6994069966_)))
                                    (_tl6993869973_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6994069966_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl6993869973_))
                                    (let ((_e6994369976_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl6993869973_))))
                                      (let ((_hd6994269980_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6994369976_)))
                                            (_tl6994169983_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6994369976_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl6994169983_))
                                            ((lambda (_L69986_ _L69988_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier? _L69988_))
                                                   (let ((__tmp75011
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp75006
                                                          (let ((__tmp75008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp75010
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp75009
                                (let ()
                                  (declare (not safe))
                                  (cons _L69988_ '()))))
                           (declare (not safe))
                           (cons __tmp75010 __tmp75009)))
                        (__tmp75007
                         (let () (declare (not safe)) (cons _L69986_ '()))))
                    (declare (not safe))
                    (cons __tmp75008 __tmp75007))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp75011
                                                           __tmp75006))
                                                   (_g6993169949_
                                                    _g6993269953_)))
                                             _hd6994269980_
                                             _hd6993969970_)
                                            (_g6993169949_ _g6993269953_))))
                                    (_g6993169949_ _g6993269953_))))
                            (_g6993169949_ _g6993269953_))))
                    (_g6993169949_ _g6993269953_)))))
        (_g6993070004_ _$stx69927_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx70008_)
      (let* ((_g7001270041_
              (lambda (_g7001370037_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7001370037_))))
             (_g7001170141_
              (lambda (_g7001370045_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7001370045_))
                    (let ((_e7001870048_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7001370045_))))
                      (let ((_hd7001770052_
                             (let ()
                               (declare (not safe))
                               (##car _e7001870048_)))
                            (_tl7001670055_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7001870048_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7001670055_))
                            (let ((_g75012_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7001670055_
                                      '0))))
                              (begin
                                (let ((_g75013_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g75012_)
                                             (##vector-length _g75012_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g75013_ 2)))
                                      (error "Context expects 2 values"
                                             _g75013_)))
                                (let ((_target7001970058_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75012_ 0)))
                                      (_tl7002170061_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75012_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7002170061_))
                                      (letrec ((_loop7002270064_
                                                (lambda (_hd7002070068_
                                                         _type7002670071_
                                                         _symbol7002770073_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7002070068_))
                                                      (let ((_e7002370076_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7002070068_))))
                (let ((_lp-hd7002470080_
                       (let () (declare (not safe)) (##car _e7002370076_)))
                      (_lp-tl7002570083_
                       (let () (declare (not safe)) (##cdr _e7002370076_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7002470080_))
                      (let ((_e7003270086_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7002470080_))))
                        (let ((_hd7003170090_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7003270086_)))
                              (_tl7003070093_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7003270086_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7003070093_))
                              (let ((_e7003570096_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7003070093_))))
                                (let ((_hd7003470100_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7003570096_)))
                                      (_tl7003370103_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7003570096_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7003370103_))
                                      (_loop7002270064_
                                       _lp-tl7002570083_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd7003470100_
                                               _type7002670071_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd7003170090_
                                               _symbol7002770073_)))
                                      (_g7001270041_ _g7001370045_))))
                              (_g7001270041_ _g7001370045_))))
                      (_g7001270041_ _g7001370045_))))
              (let ((_type7002870106_ (reverse _type7002670071_))
                    (_symbol7002970109_ (reverse _symbol7002770073_)))
                ((lambda (_L70112_ _L70114_)
                   (let ((__tmp75020
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp75014
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L70112_
                               _L70114_))
                            (let ((__tmp75015
                                   (lambda (_g7012970133_
                                            _g7013070136_
                                            _g7013170138_)
                                     (let ((__tmp75016
                                            (let ((__tmp75019
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp75017
                                                   (let ((__tmp75018
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g7012970133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7013070136_
                                                           __tmp75018))))
                                              (declare (not safe))
                                              (cons __tmp75019 __tmp75017))))
                                       (declare (not safe))
                                       (cons __tmp75016 _g7013170138_)))))
                              (declare (not safe))
                              (foldr2 __tmp75015 '() _L70112_ _L70114_)))))
                     (declare (not safe))
                     (cons __tmp75020 __tmp75014)))
                 _type7002870106_
                 _symbol7002970109_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7002270064_
                                         _target7001970058_
                                         '()
                                         '()))
                                      (_g7001270041_ _g7001370045_)))))
                            (_g7001270041_ _g7001370045_))))
                    (_g7001270041_ _g7001370045_)))))
        (_g7001170141_ _$stx70008_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx70146_)
      (let* ((___stx7414774148_ _$stx70146_)
             (_g7015170193_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7414774148_)))))
        (let ((___kont7415074151_
               (lambda (_L70321_ _L70323_ _L70324_ _L70325_)
                 (let ((__tmp75034
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp75021
                        (let ((__tmp75031
                               (let ((__tmp75033
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75032
                                      (let ()
                                        (declare (not safe))
                                        (cons _L70325_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75033 __tmp75032)))
                              (__tmp75022
                               (let ((__tmp75028
                                      (let ((__tmp75030
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75029
                                             (let ()
                                               (declare (not safe))
                                               (cons _L70324_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75030 __tmp75029)))
                                     (__tmp75023
                                      (let ((__tmp75025
                                             (let ((__tmp75027
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp75026
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L70323_ '()))))
                                               (declare (not safe))
                                               (cons __tmp75027 __tmp75026)))
                                            (__tmp75024
                                             (let ()
                                               (declare (not safe))
                                               (cons _L70321_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75025 __tmp75024))))
                                 (declare (not safe))
                                 (cons __tmp75028 __tmp75023))))
                          (declare (not safe))
                          (cons __tmp75031 __tmp75022))))
                   (declare (not safe))
                   (cons __tmp75034 __tmp75021))))
              (___kont7415274153_
               (lambda (_L70240_ _L70242_ _L70243_ _L70244_)
                 (let ((__tmp75035
                        (let ((__tmp75036
                               (let ((__tmp75037
                                      (let ((__tmp75038
                                             (let ((__tmp75039
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp75039 '()))))
                                        (declare (not safe))
                                        (cons _L70240_ __tmp75038))))
                                 (declare (not safe))
                                 (cons _L70242_ __tmp75037))))
                          (declare (not safe))
                          (cons _L70243_ __tmp75036))))
                   (declare (not safe))
                   (cons _L70244_ __tmp75035)))))
          (let ((___match7418674187_
                 (lambda (_e7015970271_
                          _hd7015870275_
                          _tl7015770278_
                          _e7016270281_
                          _hd7016170285_
                          _tl7016070288_
                          _e7016570291_
                          _hd7016470295_
                          _tl7016370298_
                          _e7016870301_
                          _hd7016770305_
                          _tl7016670308_
                          _e7017170311_
                          _hd7017070315_
                          _tl7016970318_)
                   (let ((_L70321_ _hd7017070315_)
                         (_L70323_ _hd7016770305_)
                         (_L70324_ _hd7016470295_)
                         (_L70325_ _hd7016170285_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L70325_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L70324_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L70323_)))
                         (___kont7415074151_
                          _L70321_
                          _L70323_
                          _L70324_
                          _L70325_)
                         (let () (declare (not safe)) (_g7015170193_)))))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7414774148_))
                (let ((_e7015970271_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7414774148_))))
                  (let ((_tl7015770278_
                         (let () (declare (not safe)) (##cdr _e7015970271_)))
                        (_hd7015870275_
                         (let () (declare (not safe)) (##car _e7015970271_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7015770278_))
                        (let ((_e7016270281_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7015770278_))))
                          (let ((_tl7016070288_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7016270281_)))
                                (_hd7016170285_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7016270281_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7016070288_))
                                (let ((_e7016570291_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7016070288_))))
                                  (let ((_tl7016370298_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7016570291_)))
                                        (_hd7016470295_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7016570291_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl7016370298_))
                                        (let ((_e7016870301_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl7016370298_))))
                                          (let ((_tl7016670308_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7016870301_)))
                                                (_hd7016770305_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7016870301_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7016670308_))
                                                (let ((_e7017170311_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7016670308_))))
                                                  (let ((_tl7016970318_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7017170311_)))
                                                        (_hd7017070315_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7017170311_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7016970318_))
                                                        (___match7418674187_
                                                         _e7015970271_
                                                         _hd7015870275_
                                                         _tl7015770278_
                                                         _e7016270281_
                                                         _hd7016170285_
                                                         _tl7016070288_
                                                         _e7016570291_
                                                         _hd7016470295_
                                                         _tl7016370298_
                                                         _e7016870301_
                                                         _hd7016770305_
                                                         _tl7016670308_
                                                         _e7017170311_
                                                         _hd7017070315_
                                                         _tl7016970318_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7015170193_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7016670308_))
                                                    (___kont7415274153_
                                                     _hd7016770305_
                                                     _hd7016470295_
                                                     _hd7016170285_
                                                     _hd7015870275_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7015170193_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g7015170193_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g7015170193_)))))
                        (let () (declare (not safe)) (_g7015170193_)))))
                (let () (declare (not safe)) (_g7015170193_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx70350_)
      (let* ((_g7035470389_
              (lambda (_g7035570385_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7035570385_))))
             (_g7035370508_
              (lambda (_g7035570393_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7035570393_))
                    (let ((_e7036170396_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7035570393_))))
                      (let ((_hd7036070400_
                             (let ()
                               (declare (not safe))
                               (##car _e7036170396_)))
                            (_tl7035970403_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7036170396_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7035970403_))
                            (let ((_g75040_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7035970403_
                                      '0))))
                              (begin
                                (let ((_g75041_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g75040_)
                                             (##vector-length _g75040_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g75041_ 2)))
                                      (error "Context expects 2 values"
                                             _g75041_)))
                                (let ((_target7036270406_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75040_ 0)))
                                      (_tl7036470409_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75040_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7036470409_))
                                      (letrec ((_loop7036570412_
                                                (lambda (_hd7036370416_
                                                         _symbol7036970419_
                                                         _method7037070421_
                                                         _type-t7037170423_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7036370416_))
                                                      (let ((_e7036670426_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7036370416_))))
                (let ((_lp-hd7036770430_
                       (let () (declare (not safe)) (##car _e7036670426_)))
                      (_lp-tl7036870433_
                       (let () (declare (not safe)) (##cdr _e7036670426_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7036770430_))
                      (let ((_e7037770436_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7036770430_))))
                        (let ((_hd7037670440_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7037770436_)))
                              (_tl7037570443_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7037770436_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7037570443_))
                              (let ((_e7038070446_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7037570443_))))
                                (let ((_hd7037970450_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7038070446_)))
                                      (_tl7037870453_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7038070446_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7037870453_))
                                      (let ((_e7038370456_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7037870453_))))
                                        (let ((_hd7038270460_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7038370456_)))
                                              (_tl7038170463_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7038370456_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7038170463_))
                                              (_loop7036570412_
                                               _lp-tl7036870433_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7038270460_
                                                       _symbol7036970419_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7037970450_
                                                       _method7037070421_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7037670440_
                                                       _type-t7037170423_)))
                                              (_g7035470389_ _g7035570393_))))
                                      (_g7035470389_ _g7035570393_))))
                              (_g7035470389_ _g7035570393_))))
                      (_g7035470389_ _g7035570393_))))
              (let ((_symbol7037270466_ (reverse _symbol7036970419_))
                    (_method7037370469_ (reverse _method7037070421_))
                    (_type-t7037470471_ (reverse _type-t7037170423_)))
                ((lambda (_L70474_ _L70476_ _L70477_)
                   (let ((__tmp75049
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp75042
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L70474_
                               _L70476_
                               _L70477_))
                            (let ((__tmp75043
                                   (lambda (_g7049370498_
                                            _g7049470501_
                                            _g7049570503_
                                            _g7049670505_)
                                     (let ((__tmp75044
                                            (let ((__tmp75048
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp75045
                                                   (let ((__tmp75046
                                                          (let ((__tmp75047
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g7049370498_ '()))))
                    (declare (not safe))
                    (cons _g7049470501_ __tmp75047))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7049570503_
                                                           __tmp75046))))
                                              (declare (not safe))
                                              (cons __tmp75048 __tmp75045))))
                                       (declare (not safe))
                                       (cons __tmp75044 _g7049670505_)))))
                              (declare (not safe))
                              (foldr* __tmp75043
                                      '()
                                      _L70474_
                                      _L70476_
                                      _L70477_)))))
                     (declare (not safe))
                     (cons __tmp75049 __tmp75042)))
                 _symbol7037270466_
                 _method7037370469_
                 _type-t7037470471_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7036570412_
                                         _target7036270406_
                                         '()
                                         '()
                                         '()))
                                      (_g7035470389_ _g7035570393_)))))
                            (_g7035470389_ _g7035570393_))))
                    (_g7035470389_ _g7035570393_)))))
        (_g7035370508_ _$stx70350_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx70513_)
      (let* ((_g7051770550_
              (lambda (_g7051870546_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7051870546_))))
             (_g7051670664_
              (lambda (_g7051870554_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7051870554_))
                    (let ((_e7052470557_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7051870554_))))
                      (let ((_hd7052370561_
                             (let ()
                               (declare (not safe))
                               (##car _e7052470557_)))
                            (_tl7052270564_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7052470557_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7052270564_))
                            (let ((_e7052770567_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7052270564_))))
                              (let ((_hd7052670571_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7052770567_)))
                                    (_tl7052570574_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7052770567_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7052570574_))
                                    (let ((_g75050_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7052570574_
                                              '0))))
                                      (begin
                                        (let ((_g75051_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g75050_)
                                                     (##vector-length _g75050_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g75051_ 2)))
                                              (error "Context expects 2 values"
                                                     _g75051_)))
                                        (let ((_target7052870577_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g75050_ 0)))
                                              (_tl7053070580_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g75050_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7053070580_))
                                              (letrec ((_loop7053170583_
                                                        (lambda (_hd7052970587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol7053570590_
                         _method7053670592_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd7052970587_))
                      (let ((_e7053270595_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd7052970587_))))
                        (let ((_lp-hd7053370599_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7053270595_)))
                              (_lp-tl7053470602_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7053270595_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd7053370599_))
                              (let ((_e7054170605_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd7053370599_))))
                                (let ((_hd7054070609_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7054170605_)))
                                      (_tl7053970612_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7054170605_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7053970612_))
                                      (let ((_e7054470615_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7053970612_))))
                                        (let ((_hd7054370619_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7054470615_)))
                                              (_tl7054270622_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7054470615_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7054270622_))
                                              (_loop7053170583_
                                               _lp-tl7053470602_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7054370619_
                                                       _symbol7053570590_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7054070609_
                                                       _method7053670592_)))
                                              (_g7051770550_ _g7051870554_))))
                                      (_g7051770550_ _g7051870554_))))
                              (_g7051770550_ _g7051870554_))))
                      (let ((_symbol7053770625_ (reverse _symbol7053570590_))
                            (_method7053870628_ (reverse _method7053670592_)))
                        ((lambda (_L70631_ _L70633_ _L70634_)
                           (let ((__tmp75059
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp75052
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L70631_
                                       _L70633_))
                                    (let ((__tmp75053
                                           (lambda (_g7065270656_
                                                    _g7065370659_
                                                    _g7065470661_)
                                             (let ((__tmp75054
                                                    (let ((__tmp75058
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp75055
                                                           (let ((__tmp75056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp75057
                                 (let ()
                                   (declare (not safe))
                                   (cons _g7065270656_ '()))))
                            (declare (not safe))
                            (cons _g7065370659_ __tmp75057))))
                     (declare (not safe))
                     (cons _L70634_ __tmp75056))))
              (declare (not safe))
              (cons __tmp75058 __tmp75055))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp75054
                                                     _g7065470661_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp75053
                                              '()
                                              _L70631_
                                              _L70633_)))))
                             (declare (not safe))
                             (cons __tmp75059 __tmp75052)))
                         _symbol7053770625_
                         _method7053870628_
                         _hd7052670571_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7053170583_
                                                 _target7052870577_
                                                 '()
                                                 '()))
                                              (_g7051770550_ _g7051870554_)))))
                                    (_g7051770550_ _g7051870554_))))
                            (_g7051770550_ _g7051870554_))))
                    (_g7051770550_ _g7051870554_)))))
        (_g7051670664_ _$stx70513_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx70669_)
      (let* ((_g7067370687_
              (lambda (_g7067470683_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7067470683_))))
             (_g7067270728_
              (lambda (_g7067470691_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7067470691_))
                    (let ((_e7067870694_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7067470691_))))
                      (let ((_hd7067770698_
                             (let ()
                               (declare (not safe))
                               (##car _e7067870694_)))
                            (_tl7067670701_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7067870694_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7067670701_))
                            (let ((_e7068170704_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7067670701_))))
                              (let ((_hd7068070708_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7068170704_)))
                                    (_tl7067970711_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7068170704_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7067970711_))
                                    ((lambda (_L70714_)
                                       (let ((__tmp75064
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp75060
                                              (let ((__tmp75061
                                                     (let ((__tmp75063
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp75062
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L70714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp75063 __tmp75062))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp75061 '()))))
                                         (declare (not safe))
                                         (cons __tmp75064 __tmp75060)))
                                     _hd7068070708_)
                                    (_g7067370687_ _g7067470691_))))
                            (_g7067370687_ _g7067470691_))))
                    (_g7067370687_ _g7067470691_)))))
        (_g7067270728_ _$stx70669_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx70732_)
      (let* ((___stx7421574216_ _$stx70732_)
             (_g7073870804_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7421574216_)))))
        (let ((___kont7421874219_
               (lambda (_L71026_ _L71028_ _L71029_ _L71030_ _L71031_)
                 (let ((__tmp75070
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f '@make-struct-type)))
                       (__tmp75065
                        (let ((__tmp75066
                               (let ((__tmp75067
                                      (let ((__tmp75068
                                             (let ((__tmp75069
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L71026_ '()))))
                                               (declare (not safe))
                                               (cons _L71028_ __tmp75069))))
                                        (declare (not safe))
                                        (cons _L71029_ __tmp75068))))
                                 (declare (not safe))
                                 (cons _L71030_ __tmp75067))))
                          (declare (not safe))
                          (cons _L71031_ __tmp75066))))
                   (declare (not safe))
                   (cons __tmp75070 __tmp75065))))
              (___kont7422074221_
               (lambda (_L70936_ _L70938_ _L70939_ _L70940_)
                 (let ((__tmp75071
                        (let ((__tmp75072
                               (let ((__tmp75073
                                      (let ((__tmp75074
                                             (let ((__tmp75075
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '#f '()))))
                                               (declare (not safe))
                                               (cons '#f __tmp75075))))
                                        (declare (not safe))
                                        (cons _L70936_ __tmp75074))))
                                 (declare (not safe))
                                 (cons _L70938_ __tmp75073))))
                          (declare (not safe))
                          (cons _L70939_ __tmp75072))))
                   (declare (not safe))
                   (cons _L70940_ __tmp75071))))
              (___kont7422274223_
               (lambda (_L70861_ _L70863_ _L70864_ _L70865_ _L70866_)
                 (let ((__tmp75076
                        (let ((__tmp75081
                               (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'type)))
                              (__tmp75077
                               (let ((__tmp75078
                                      (let ((__tmp75079
                                             (let ((__tmp75080
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '#f '()))))
                                               (declare (not safe))
                                               (cons _L70861_ __tmp75080))))
                                        (declare (not safe))
                                        (cons _L70863_ __tmp75079))))
                                 (declare (not safe))
                                 (cons _L70864_ __tmp75078))))
                          (declare (not safe))
                          (cons __tmp75081 __tmp75077))))
                   (declare (not safe))
                   (cons _L70866_ __tmp75076)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7421574216_))
              (let ((_e7074770966_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7421574216_))))
                (let ((_tl7074570973_
                       (let () (declare (not safe)) (##cdr _e7074770966_)))
                      (_hd7074670970_
                       (let () (declare (not safe)) (##car _e7074770966_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7074570973_))
                      (let ((_e7075070976_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7074570973_))))
                        (let ((_tl7074870983_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7075070976_)))
                              (_hd7074970980_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7075070976_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7074870983_))
                              (let ((_e7075370986_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7074870983_))))
                                (let ((_tl7075170993_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7075370986_)))
                                      (_hd7075270990_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7075370986_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7075170993_))
                                      (let ((_e7075670996_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7075170993_))))
                                        (let ((_tl7075471003_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7075670996_)))
                                              (_hd7075571000_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7075670996_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl7075471003_))
                                              (let ((_e7075971006_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl7075471003_))))
                                                (let ((_tl7075771013_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e7075971006_)))
                                                      (_hd7075871010_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e7075971006_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl7075771013_))
                                                      (let ((_e7076271016_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _tl7075771013_))))
                (let ((_tl7076071023_
                       (let () (declare (not safe)) (##cdr _e7076271016_)))
                      (_hd7076171020_
                       (let () (declare (not safe)) (##car _e7076271016_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7076071023_))
                      (___kont7421874219_
                       _hd7076171020_
                       _hd7075871010_
                       _hd7075571000_
                       _hd7075270990_
                       _hd7074970980_)
                      (let () (declare (not safe)) (_g7073870804_)))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7075771013_))
                  (___kont7422274223_
                   _hd7075871010_
                   _hd7075571000_
                   _hd7075270990_
                   _hd7074970980_
                   _hd7074670970_)
                  (let () (declare (not safe)) (_g7073870804_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7075471003_))
                                                  (___kont7422074221_
                                                   _hd7075571000_
                                                   _hd7075270990_
                                                   _hd7074970980_
                                                   _hd7074670970_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7073870804_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g7073870804_)))))
                              (let () (declare (not safe)) (_g7073870804_)))))
                      (let () (declare (not safe)) (_g7073870804_)))))
              (let () (declare (not safe)) (_g7073870804_)))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx71059_)
      (let* ((___stx7432374324_ _$stx71059_)
             (_g7106471117_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7432374324_)))))
        (let ((___kont7432674327_
               (lambda (_L71285_ _L71287_ _L71288_ _L71289_)
                 (let ((__tmp75097
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-type)))
                       (__tmp75082
                        (let ((__tmp75094
                               (let ((__tmp75096
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75095
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71289_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75096 __tmp75095)))
                              (__tmp75083
                               (let ((__tmp75084
                                      (let ((__tmp75085
                                             (let ((__tmp75086
                                                    (let ((__tmp75091
                                                           (let ((__tmp75093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp75092
                          (let () (declare (not safe)) (cons _L71287_ '()))))
                     (declare (not safe))
                     (cons __tmp75093 __tmp75092)))
                  (__tmp75087
                   (let ((__tmp75088
                          (let ((__tmp75090
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp75089
                                 (let ()
                                   (declare (not safe))
                                   (cons _L71285_ '()))))
                            (declare (not safe))
                            (cons __tmp75090 __tmp75089))))
                     (declare (not safe))
                     (cons __tmp75088 '()))))
              (declare (not safe))
              (cons __tmp75091 __tmp75087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '0 __tmp75086))))
                                        (declare (not safe))
                                        (cons _L71288_ __tmp75085))))
                                 (declare (not safe))
                                 (cons '#f __tmp75084))))
                          (declare (not safe))
                          (cons __tmp75094 __tmp75083))))
                   (declare (not safe))
                   (cons __tmp75097 __tmp75082))))
              (___kont7432874329_
               (lambda (_L71184_ _L71186_ _L71187_ _L71188_ _L71189_)
                 (let ((__tmp75179
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'let*)))
                       (__tmp75098
                        (let ((__tmp75119
                               (let ((__tmp75170
                                      (let ((__tmp75178
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'super-type)))
                                            (__tmp75171
                                             (let ((__tmp75172
                                                    (let ((__tmp75177
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-resolve-type)))
                                                          (__tmp75173
                                                           (let ((__tmp75174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp75176
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp75175
                                 (let ()
                                   (declare (not safe))
                                   (cons _L71188_ '()))))
                            (declare (not safe))
                            (cons __tmp75176 __tmp75175))))
                     (declare (not safe))
                     (cons __tmp75174 '()))))
              (declare (not safe))
              (cons __tmp75177 __tmp75173))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp75172 '()))))
                                        (declare (not safe))
                                        (cons __tmp75178 __tmp75171)))
                                     (__tmp75120
                                      (let ((__tmp75142
                                             (let ((__tmp75169
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'xfields)))
                                                   (__tmp75143
                                                    (let ((__tmp75144
                                                           (let ((__tmp75168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'and)))
                         (__tmp75145
                          (let ((__tmp75167
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'super-type)))
                                (__tmp75146
                                 (let ((__tmp75147
                                        (let ((__tmp75166
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'alet)))
                                              (__tmp75148
                                               (let ((__tmp75159
                                                      (let ((__tmp75165
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'xfields)))
                    (__tmp75160
                     (let ((__tmp75161
                            (let ((__tmp75164
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      '!struct-type-xfields)))
                                  (__tmp75162
                                   (let ((__tmp75163
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'super-type))))
                                     (declare (not safe))
                                     (cons __tmp75163 '()))))
                              (declare (not safe))
                              (cons __tmp75164 __tmp75162))))
                       (declare (not safe))
                       (cons __tmp75161 '()))))
                (declare (not safe))
                (cons __tmp75165 __tmp75160)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp75149
                                                      (let ((__tmp75150
                                                             (let ((__tmp75158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'fx+)))
                           (__tmp75151
                            (let ((__tmp75157
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'xfields)))
                                  (__tmp75152
                                   (let ((__tmp75153
                                          (let ((__tmp75156
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '!struct-type-fields)))
                                                (__tmp75154
                                                 (let ((__tmp75155
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'super-type))))
                                                   (declare (not safe))
                                                   (cons __tmp75155 '()))))
                                            (declare (not safe))
                                            (cons __tmp75156 __tmp75154))))
                                     (declare (not safe))
                                     (cons __tmp75153 '()))))
                              (declare (not safe))
                              (cons __tmp75157 __tmp75152))))
                       (declare (not safe))
                       (cons __tmp75158 __tmp75151))))
                (declare (not safe))
                (cons __tmp75150 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp75159
                                                       __tmp75149))))
                                          (declare (not safe))
                                          (cons __tmp75166 __tmp75148))))
                                   (declare (not safe))
                                   (cons __tmp75147 '()))))
                            (declare (not safe))
                            (cons __tmp75167 __tmp75146))))
                     (declare (not safe))
                     (cons __tmp75168 __tmp75145))))
              (declare (not safe))
              (cons __tmp75144 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp75169 __tmp75143)))
                                            (__tmp75121
                                             (let ((__tmp75122
                                                    (let ((__tmp75141
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'xtor)))
                                                          (__tmp75123
                                                           (let ((__tmp75124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp75140
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'or)))
                                (__tmp75125
                                 (let ((__tmp75137
                                        (let ((__tmp75139
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp75138
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L71186_ '()))))
                                          (declare (not safe))
                                          (cons __tmp75139 __tmp75138)))
                                       (__tmp75126
                                        (let ((__tmp75127
                                               (let ((__tmp75136
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'if)))
                                                     (__tmp75128
                                                      (let ((__tmp75135
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'super-type)))
                    (__tmp75129
                     (let ((__tmp75131
                            (let ((__tmp75134
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      '!struct-type-ctor)))
                                  (__tmp75132
                                   (let ((__tmp75133
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'super-type))))
                                     (declare (not safe))
                                     (cons __tmp75133 '()))))
                              (declare (not safe))
                              (cons __tmp75134 __tmp75132)))
                           (__tmp75130
                            (let () (declare (not safe)) (cons '#!void '()))))
                       (declare (not safe))
                       (cons __tmp75131 __tmp75130))))
                (declare (not safe))
                (cons __tmp75135 __tmp75129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp75136
                                                       __tmp75128))))
                                          (declare (not safe))
                                          (cons __tmp75127 '()))))
                                   (declare (not safe))
                                   (cons __tmp75137 __tmp75126))))
                            (declare (not safe))
                            (cons __tmp75140 __tmp75125))))
                     (declare (not safe))
                     (cons __tmp75124 '()))))
              (declare (not safe))
              (cons __tmp75141 __tmp75123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp75122 '()))))
                                        (declare (not safe))
                                        (cons __tmp75142 __tmp75121))))
                                 (declare (not safe))
                                 (cons __tmp75170 __tmp75120)))
                              (__tmp75099
                               (let ((__tmp75100
                                      (let ((__tmp75118
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!struct-type)))
                                            (__tmp75101
                                             (let ((__tmp75115
                                                    (let ((__tmp75117
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp75116
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L71189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp75117 __tmp75116)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp75102
                                                    (let ((__tmp75112
                                                           (let ((__tmp75114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp75113
                          (let () (declare (not safe)) (cons _L71188_ '()))))
                     (declare (not safe))
                     (cons __tmp75114 __tmp75113)))
                  (__tmp75103
                   (let ((__tmp75104
                          (let ((__tmp75111
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'xfields)))
                                (__tmp75105
                                 (let ((__tmp75110
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'xtor)))
                                       (__tmp75106
                                        (let ((__tmp75107
                                               (let ((__tmp75109
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'quote)))
                                                     (__tmp75108
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L71184_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp75109
                                                       __tmp75108))))
                                          (declare (not safe))
                                          (cons __tmp75107 '()))))
                                   (declare (not safe))
                                   (cons __tmp75110 __tmp75106))))
                            (declare (not safe))
                            (cons __tmp75111 __tmp75105))))
                     (declare (not safe))
                     (cons _L71187_ __tmp75104))))
              (declare (not safe))
              (cons __tmp75112 __tmp75103))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp75115 __tmp75102))))
                                        (declare (not safe))
                                        (cons __tmp75118 __tmp75101))))
                                 (declare (not safe))
                                 (cons __tmp75100 '()))))
                          (declare (not safe))
                          (cons __tmp75119 __tmp75099))))
                   (declare (not safe))
                   (cons __tmp75179 __tmp75098)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7432374324_))
              (let ((_e7107271221_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7432374324_))))
                (let ((_tl7107071228_
                       (let () (declare (not safe)) (##cdr _e7107271221_)))
                      (_hd7107171225_
                       (let () (declare (not safe)) (##car _e7107271221_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7107071228_))
                      (let ((_e7107571231_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7107071228_))))
                        (let ((_tl7107371238_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7107571231_)))
                              (_hd7107471235_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7107571231_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7107371238_))
                              (let ((_e7107871241_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7107371238_))))
                                (let ((_tl7107671248_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7107871241_)))
                                      (_hd7107771245_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7107871241_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd7107771245_))
                                      (let ((_e7107971251_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd7107771245_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e7107971251_ '#f))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7107671248_))
                                                (let ((_e7108271255_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7107671248_))))
                                                  (let ((_tl7108071262_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7108271255_)))
                                                        (_hd7108171259_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7108271255_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7108071262_))
                                                        (let ((_e7108571265_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7108071262_))))
                  (let ((_tl7108371272_
                         (let () (declare (not safe)) (##cdr _e7108571265_)))
                        (_hd7108471269_
                         (let () (declare (not safe)) (##car _e7108571265_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7108371272_))
                        (let ((_e7108871275_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7108371272_))))
                          (let ((_tl7108671282_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7108871275_)))
                                (_hd7108771279_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7108871275_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7108671282_))
                                (___kont7432674327_
                                 _hd7108771279_
                                 _hd7108471269_
                                 _hd7108171259_
                                 _hd7107471235_)
                                (let ()
                                  (declare (not safe))
                                  (_g7106471117_)))))
                        (let () (declare (not safe)) (_g7106471117_)))))
                (let () (declare (not safe)) (_g7106471117_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7106471117_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7107671248_))
                                                (let ((_e7110571154_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7107671248_))))
                                                  (let ((_tl7110371161_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7110571154_)))
                                                        (_hd7110471158_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7110571154_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7110371161_))
                                                        (let ((_e7110871164_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7110371161_))))
                  (let ((_tl7110671171_
                         (let () (declare (not safe)) (##cdr _e7110871164_)))
                        (_hd7110771168_
                         (let () (declare (not safe)) (##car _e7110871164_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7110671171_))
                        (let ((_e7111171174_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7110671171_))))
                          (let ((_tl7110971181_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7111171174_)))
                                (_hd7111071178_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7111171174_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7110971181_))
                                (___kont7432874329_
                                 _hd7111071178_
                                 _hd7110771168_
                                 _hd7110471158_
                                 _hd7107771245_
                                 _hd7107471235_)
                                (let ()
                                  (declare (not safe))
                                  (_g7106471117_)))))
                        (let () (declare (not safe)) (_g7106471117_)))))
                (let () (declare (not safe)) (_g7106471117_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7106471117_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl7107671248_))
                                          (let ((_e7110571154_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl7107671248_))))
                                            (let ((_tl7110371161_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7110571154_)))
                                                  (_hd7110471158_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7110571154_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl7110371161_))
                                                  (let ((_e7110871164_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl7110371161_))))
                                                    (let ((_tl7110671171_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e7110871164_)))
                                                          (_hd7110771168_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e7110871164_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl7110671171_))
                                                          (let ((_e7111171174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _tl7110671171_))))
                    (let ((_tl7110971181_
                           (let () (declare (not safe)) (##cdr _e7111171174_)))
                          (_hd7111071178_
                           (let ()
                             (declare (not safe))
                             (##car _e7111171174_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl7110971181_))
                          (___kont7432874329_
                           _hd7111071178_
                           _hd7110771168_
                           _hd7110471158_
                           _hd7107771245_
                           _hd7107471235_)
                          (let () (declare (not safe)) (_g7106471117_)))))
                  (let () (declare (not safe)) (_g7106471117_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7106471117_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g7106471117_))))))
                              (let () (declare (not safe)) (_g7106471117_)))))
                      (let () (declare (not safe)) (_g7106471117_)))))
              (let () (declare (not safe)) (_g7106471117_)))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx71317_)
      (let* ((_g7132171335_
              (lambda (_g7132271331_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7132271331_))))
             (_g7132071376_
              (lambda (_g7132271339_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7132271339_))
                    (let ((_e7132671342_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7132271339_))))
                      (let ((_hd7132571346_
                             (let ()
                               (declare (not safe))
                               (##car _e7132671342_)))
                            (_tl7132471349_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7132671342_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7132471349_))
                            (let ((_e7132971352_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7132471349_))))
                              (let ((_hd7132871356_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7132971352_)))
                                    (_tl7132771359_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7132971352_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7132771359_))
                                    ((lambda (_L71362_)
                                       (let ((__tmp75184
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!struct-pred)))
                                             (__tmp75180
                                              (let ((__tmp75181
                                                     (let ((__tmp75183
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp75182
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L71362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp75183 __tmp75182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp75181 '()))))
                                         (declare (not safe))
                                         (cons __tmp75184 __tmp75180)))
                                     _hd7132871356_)
                                    (_g7132171335_ _g7132271339_))))
                            (_g7132171335_ _g7132271339_))))
                    (_g7132171335_ _g7132271339_)))))
        (_g7132071376_ _$stx71317_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx71380_)
      (let* ((_g7138471398_
              (lambda (_g7138571394_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7138571394_))))
             (_g7138371439_
              (lambda (_g7138571402_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7138571402_))
                    (let ((_e7138971405_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7138571402_))))
                      (let ((_hd7138871409_
                             (let ()
                               (declare (not safe))
                               (##car _e7138971405_)))
                            (_tl7138771412_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7138971405_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7138771412_))
                            (let ((_e7139271415_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7138771412_))))
                              (let ((_hd7139171419_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7139271415_)))
                                    (_tl7139071422_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7139271415_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7139071422_))
                                    ((lambda (_L71425_)
                                       (let ((__tmp75189
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!struct-cons)))
                                             (__tmp75185
                                              (let ((__tmp75186
                                                     (let ((__tmp75188
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp75187
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L71425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp75188 __tmp75187))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp75186 '()))))
                                         (declare (not safe))
                                         (cons __tmp75189 __tmp75185)))
                                     _hd7139171419_)
                                    (_g7138471398_ _g7138571402_))))
                            (_g7138471398_ _g7138571402_))))
                    (_g7138471398_ _g7138571402_)))))
        (_g7138371439_ _$stx71380_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx71443_)
      (let* ((___stx7441574416_ _$stx71443_)
             (_g7144871481_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7441574416_)))))
        (let ((___kont7441874419_
               (lambda (_L71583_ _L71585_ _L71586_)
                 (let ((__tmp75196
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-getf)))
                       (__tmp75190
                        (let ((__tmp75193
                               (let ((__tmp75195
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75194
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71586_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75195 __tmp75194)))
                              (__tmp75191
                               (let ((__tmp75192
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71583_ '()))))
                                 (declare (not safe))
                                 (cons _L71585_ __tmp75192))))
                          (declare (not safe))
                          (cons __tmp75193 __tmp75191))))
                   (declare (not safe))
                   (cons __tmp75196 __tmp75190))))
              (___kont7442074421_
               (lambda (_L71518_ _L71520_)
                 (let ((__tmp75203
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-getf)))
                       (__tmp75197
                        (let ((__tmp75200
                               (let ((__tmp75202
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75201
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71520_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75202 __tmp75201)))
                              (__tmp75198
                               (let ((__tmp75199
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L71518_ __tmp75199))))
                          (declare (not safe))
                          (cons __tmp75200 __tmp75198))))
                   (declare (not safe))
                   (cons __tmp75203 __tmp75197)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7441574416_))
              (let ((_e7145571543_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7441574416_))))
                (let ((_tl7145371550_
                       (let () (declare (not safe)) (##cdr _e7145571543_)))
                      (_hd7145471547_
                       (let () (declare (not safe)) (##car _e7145571543_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7145371550_))
                      (let ((_e7145871553_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7145371550_))))
                        (let ((_tl7145671560_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7145871553_)))
                              (_hd7145771557_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7145871553_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7145671560_))
                              (let ((_e7146171563_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7145671560_))))
                                (let ((_tl7145971570_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7146171563_)))
                                      (_hd7146071567_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7146171563_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7145971570_))
                                      (let ((_e7146471573_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7145971570_))))
                                        (let ((_tl7146271580_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7146471573_)))
                                              (_hd7146371577_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7146471573_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7146271580_))
                                              (___kont7441874419_
                                               _hd7146371577_
                                               _hd7146071567_
                                               _hd7145771557_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7144871481_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7145971570_))
                                          (___kont7442074421_
                                           _hd7146071567_
                                           _hd7145771557_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7144871481_))))))
                              (let () (declare (not safe)) (_g7144871481_)))))
                      (let () (declare (not safe)) (_g7144871481_)))))
              (let () (declare (not safe)) (_g7144871481_)))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx71608_)
      (let* ((___stx7447174472_ _$stx71608_)
             (_g7161371646_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7447174472_)))))
        (let ((___kont7447474475_
               (lambda (_L71748_ _L71750_ _L71751_)
                 (let ((__tmp75210
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-setf)))
                       (__tmp75204
                        (let ((__tmp75207
                               (let ((__tmp75209
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75208
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71751_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75209 __tmp75208)))
                              (__tmp75205
                               (let ((__tmp75206
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71748_ '()))))
                                 (declare (not safe))
                                 (cons _L71750_ __tmp75206))))
                          (declare (not safe))
                          (cons __tmp75207 __tmp75205))))
                   (declare (not safe))
                   (cons __tmp75210 __tmp75204))))
              (___kont7447674477_
               (lambda (_L71683_ _L71685_)
                 (let ((__tmp75217
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-setf)))
                       (__tmp75211
                        (let ((__tmp75214
                               (let ((__tmp75216
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75215
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71685_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75216 __tmp75215)))
                              (__tmp75212
                               (let ((__tmp75213
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L71683_ __tmp75213))))
                          (declare (not safe))
                          (cons __tmp75214 __tmp75212))))
                   (declare (not safe))
                   (cons __tmp75217 __tmp75211)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7447174472_))
              (let ((_e7162071708_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7447174472_))))
                (let ((_tl7161871715_
                       (let () (declare (not safe)) (##cdr _e7162071708_)))
                      (_hd7161971712_
                       (let () (declare (not safe)) (##car _e7162071708_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7161871715_))
                      (let ((_e7162371718_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7161871715_))))
                        (let ((_tl7162171725_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7162371718_)))
                              (_hd7162271722_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7162371718_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7162171725_))
                              (let ((_e7162671728_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7162171725_))))
                                (let ((_tl7162471735_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7162671728_)))
                                      (_hd7162571732_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7162671728_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7162471735_))
                                      (let ((_e7162971738_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7162471735_))))
                                        (let ((_tl7162771745_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7162971738_)))
                                              (_hd7162871742_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7162971738_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7162771745_))
                                              (___kont7447474475_
                                               _hd7162871742_
                                               _hd7162571732_
                                               _hd7162271722_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7161371646_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7162471735_))
                                          (___kont7447674477_
                                           _hd7162571732_
                                           _hd7162271722_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7161371646_))))))
                              (let () (declare (not safe)) (_g7161371646_)))))
                      (let () (declare (not safe)) (_g7161371646_)))))
              (let () (declare (not safe)) (_g7161371646_)))))))
  (define |gxc[:0:]#@class-type|
    (lambda (_$stx71773_)
      (let* ((_g7177771815_
              (lambda (_g7177871811_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7177871811_))))
             (_g7177671940_
              (lambda (_g7177871819_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7177871819_))
                    (let ((_e7178871822_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7177871819_))))
                      (let ((_hd7178771826_
                             (let ()
                               (declare (not safe))
                               (##car _e7178871822_)))
                            (_tl7178671829_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7178871822_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7178671829_))
                            (let ((_e7179171832_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7178671829_))))
                              (let ((_hd7179071836_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7179171832_)))
                                    (_tl7178971839_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7179171832_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7178971839_))
                                    (let ((_e7179471842_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7178971839_))))
                                      (let ((_hd7179371846_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7179471842_)))
                                            (_tl7179271849_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7179471842_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl7179271849_))
                                            (let ((_e7179771852_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl7179271849_))))
                                              (let ((_hd7179671856_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7179771852_)))
                                                    (_tl7179571859_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7179771852_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7179571859_))
                                                    (let ((_e7180071862_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7179571859_))))
                                                      (let ((_hd7179971866_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e7180071862_)))
                    (_tl7179871869_
                     (let () (declare (not safe)) (##cdr _e7180071862_))))
                (if (let () (declare (not safe)) (gx#stx-pair? _tl7179871869_))
                    (let ((_e7180371872_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl7179871869_))))
                      (let ((_hd7180271876_
                             (let ()
                               (declare (not safe))
                               (##car _e7180371872_)))
                            (_tl7180171879_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7180371872_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7180171879_))
                            (let ((_e7180671882_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7180171879_))))
                              (let ((_hd7180571886_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7180671882_)))
                                    (_tl7180471889_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7180671882_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7180471889_))
                                    (let ((_e7180971892_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7180471889_))))
                                      (let ((_hd7180871896_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7180971892_)))
                                            (_tl7180771899_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7180971892_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7180771899_))
                                            ((lambda (_L71902_
                                                      _L71904_
                                                      _L71905_
                                                      _L71906_
                                                      _L71907_
                                                      _L71908_
                                                      _L71909_)
                                               (let ((__tmp75246
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!class-type)))
                                                     (__tmp75218
                                                      (let ((__tmp75243
                                                             (let ((__tmp75245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp75244
                            (let () (declare (not safe)) (cons _L71909_ '()))))
                       (declare (not safe))
                       (cons __tmp75245 __tmp75244)))
                    (__tmp75219
                     (let ((__tmp75240
                            (let ((__tmp75242
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp75241
                                   (let ()
                                     (declare (not safe))
                                     (cons _L71908_ '()))))
                              (declare (not safe))
                              (cons __tmp75242 __tmp75241)))
                           (__tmp75220
                            (let ((__tmp75237
                                   (let ((__tmp75239
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp75238
                                          (let ()
                                            (declare (not safe))
                                            (cons _L71907_ '()))))
                                     (declare (not safe))
                                     (cons __tmp75239 __tmp75238)))
                                  (__tmp75221
                                   (let ((__tmp75234
                                          (let ((__tmp75236
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote)))
                                                (__tmp75235
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L71906_ '()))))
                                            (declare (not safe))
                                            (cons __tmp75236 __tmp75235)))
                                         (__tmp75222
                                          (let ((__tmp75231
                                                 (let ((__tmp75233
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote)))
                                                       (__tmp75232
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L71905_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp75233
                                                         __tmp75232)))
                                                (__tmp75223
                                                 (let ((__tmp75228
                                                        (let ((__tmp75230
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote)))
                      (__tmp75229
                       (let () (declare (not safe)) (cons _L71904_ '()))))
                  (declare (not safe))
                  (cons __tmp75230 __tmp75229)))
               (__tmp75224
                (let ((__tmp75225
                       (let ((__tmp75227
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote)))
                             (__tmp75226
                              (let ()
                                (declare (not safe))
                                (cons _L71902_ '()))))
                         (declare (not safe))
                         (cons __tmp75227 __tmp75226))))
                  (declare (not safe))
                  (cons __tmp75225 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp75228
                                                         __tmp75224))))
                                            (declare (not safe))
                                            (cons __tmp75231 __tmp75223))))
                                     (declare (not safe))
                                     (cons __tmp75234 __tmp75222))))
                              (declare (not safe))
                              (cons __tmp75237 __tmp75221))))
                       (declare (not safe))
                       (cons __tmp75240 __tmp75220))))
                (declare (not safe))
                (cons __tmp75243 __tmp75219))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp75246 __tmp75218)))
                                             _hd7180871896_
                                             _hd7180571886_
                                             _hd7180271876_
                                             _hd7179971866_
                                             _hd7179671856_
                                             _hd7179371846_
                                             _hd7179071836_)
                                            (_g7177771815_ _g7177871819_))))
                                    (_g7177771815_ _g7177871819_))))
                            (_g7177771815_ _g7177871819_))))
                    (_g7177771815_ _g7177871819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7177771815_
                                                     _g7177871819_))))
                                            (_g7177771815_ _g7177871819_))))
                                    (_g7177771815_ _g7177871819_))))
                            (_g7177771815_ _g7177871819_))))
                    (_g7177771815_ _g7177871819_)))))
        (_g7177671940_ _$stx71773_))))
  (define |gxc[:0:]#@class-pred|
    (lambda (_$stx71944_)
      (let* ((_g7194871962_
              (lambda (_g7194971958_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7194971958_))))
             (_g7194772003_
              (lambda (_g7194971966_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7194971966_))
                    (let ((_e7195371969_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7194971966_))))
                      (let ((_hd7195271973_
                             (let ()
                               (declare (not safe))
                               (##car _e7195371969_)))
                            (_tl7195171976_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7195371969_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7195171976_))
                            (let ((_e7195671979_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7195171976_))))
                              (let ((_hd7195571983_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7195671979_)))
                                    (_tl7195471986_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7195671979_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7195471986_))
                                    ((lambda (_L71989_)
                                       (let ((__tmp75251
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class-pred)))
                                             (__tmp75247
                                              (let ((__tmp75248
                                                     (let ((__tmp75250
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp75249
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L71989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp75250 __tmp75249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp75248 '()))))
                                         (declare (not safe))
                                         (cons __tmp75251 __tmp75247)))
                                     _hd7195571983_)
                                    (_g7194871962_ _g7194971966_))))
                            (_g7194871962_ _g7194971966_))))
                    (_g7194871962_ _g7194971966_)))))
        (_g7194772003_ _$stx71944_))))
  (define |gxc[:0:]#@class-cons|
    (lambda (_$stx72007_)
      (let* ((_g7201172025_
              (lambda (_g7201272021_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7201272021_))))
             (_g7201072066_
              (lambda (_g7201272029_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7201272029_))
                    (let ((_e7201672032_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7201272029_))))
                      (let ((_hd7201572036_
                             (let ()
                               (declare (not safe))
                               (##car _e7201672032_)))
                            (_tl7201472039_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7201672032_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7201472039_))
                            (let ((_e7201972042_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7201472039_))))
                              (let ((_hd7201872046_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7201972042_)))
                                    (_tl7201772049_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7201972042_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7201772049_))
                                    ((lambda (_L72052_)
                                       (let ((__tmp75256
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class-cons)))
                                             (__tmp75252
                                              (let ((__tmp75253
                                                     (let ((__tmp75255
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp75254
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L72052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp75255 __tmp75254))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp75253 '()))))
                                         (declare (not safe))
                                         (cons __tmp75256 __tmp75252)))
                                     _hd7201872046_)
                                    (_g7201172025_ _g7201272029_))))
                            (_g7201172025_ _g7201272029_))))
                    (_g7201172025_ _g7201272029_)))))
        (_g7201072066_ _$stx72007_))))
  (define |gxc[:0:]#@class-getf|
    (lambda (_$stx72070_)
      (let* ((___stx7452774528_ _$stx72070_)
             (_g7207572108_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7452774528_)))))
        (let ((___kont7453074531_
               (lambda (_L72210_ _L72212_ _L72213_)
                 (let ((__tmp75266
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-getf)))
                       (__tmp75257
                        (let ((__tmp75263
                               (let ((__tmp75265
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75264
                                      (let ()
                                        (declare (not safe))
                                        (cons _L72213_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75265 __tmp75264)))
                              (__tmp75258
                               (let ((__tmp75260
                                      (let ((__tmp75262
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75261
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72212_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75262 __tmp75261)))
                                     (__tmp75259
                                      (let ()
                                        (declare (not safe))
                                        (cons _L72210_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75260 __tmp75259))))
                          (declare (not safe))
                          (cons __tmp75263 __tmp75258))))
                   (declare (not safe))
                   (cons __tmp75266 __tmp75257))))
              (___kont7453274533_
               (lambda (_L72145_ _L72147_)
                 (let ((__tmp75276
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-getf)))
                       (__tmp75267
                        (let ((__tmp75273
                               (let ((__tmp75275
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75274
                                      (let ()
                                        (declare (not safe))
                                        (cons _L72147_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75275 __tmp75274)))
                              (__tmp75268
                               (let ((__tmp75270
                                      (let ((__tmp75272
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75271
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72145_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75272 __tmp75271)))
                                     (__tmp75269
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons __tmp75270 __tmp75269))))
                          (declare (not safe))
                          (cons __tmp75273 __tmp75268))))
                   (declare (not safe))
                   (cons __tmp75276 __tmp75267)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7452774528_))
              (let ((_e7208272170_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7452774528_))))
                (let ((_tl7208072177_
                       (let () (declare (not safe)) (##cdr _e7208272170_)))
                      (_hd7208172174_
                       (let () (declare (not safe)) (##car _e7208272170_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7208072177_))
                      (let ((_e7208572180_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7208072177_))))
                        (let ((_tl7208372187_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7208572180_)))
                              (_hd7208472184_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7208572180_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7208372187_))
                              (let ((_e7208872190_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7208372187_))))
                                (let ((_tl7208672197_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7208872190_)))
                                      (_hd7208772194_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7208872190_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7208672197_))
                                      (let ((_e7209172200_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7208672197_))))
                                        (let ((_tl7208972207_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7209172200_)))
                                              (_hd7209072204_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7209172200_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7208972207_))
                                              (___kont7453074531_
                                               _hd7209072204_
                                               _hd7208772194_
                                               _hd7208472184_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7207572108_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7208672197_))
                                          (___kont7453274533_
                                           _hd7208772194_
                                           _hd7208472184_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7207572108_))))))
                              (let () (declare (not safe)) (_g7207572108_)))))
                      (let () (declare (not safe)) (_g7207572108_)))))
              (let () (declare (not safe)) (_g7207572108_)))))))
  (define |gxc[:0:]#@class-setf|
    (lambda (_$stx72235_)
      (let* ((___stx7458374584_ _$stx72235_)
             (_g7224072273_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7458374584_)))))
        (let ((___kont7458674587_
               (lambda (_L72375_ _L72377_ _L72378_)
                 (let ((__tmp75286
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-setf)))
                       (__tmp75277
                        (let ((__tmp75283
                               (let ((__tmp75285
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75284
                                      (let ()
                                        (declare (not safe))
                                        (cons _L72378_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75285 __tmp75284)))
                              (__tmp75278
                               (let ((__tmp75280
                                      (let ((__tmp75282
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75281
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72377_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75282 __tmp75281)))
                                     (__tmp75279
                                      (let ()
                                        (declare (not safe))
                                        (cons _L72375_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75280 __tmp75279))))
                          (declare (not safe))
                          (cons __tmp75283 __tmp75278))))
                   (declare (not safe))
                   (cons __tmp75286 __tmp75277))))
              (___kont7458874589_
               (lambda (_L72310_ _L72312_)
                 (let ((__tmp75296
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-setf)))
                       (__tmp75287
                        (let ((__tmp75293
                               (let ((__tmp75295
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75294
                                      (let ()
                                        (declare (not safe))
                                        (cons _L72312_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75295 __tmp75294)))
                              (__tmp75288
                               (let ((__tmp75290
                                      (let ((__tmp75292
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75291
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72310_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75292 __tmp75291)))
                                     (__tmp75289
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons __tmp75290 __tmp75289))))
                          (declare (not safe))
                          (cons __tmp75293 __tmp75288))))
                   (declare (not safe))
                   (cons __tmp75296 __tmp75287)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7458374584_))
              (let ((_e7224772335_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7458374584_))))
                (let ((_tl7224572342_
                       (let () (declare (not safe)) (##cdr _e7224772335_)))
                      (_hd7224672339_
                       (let () (declare (not safe)) (##car _e7224772335_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7224572342_))
                      (let ((_e7225072345_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7224572342_))))
                        (let ((_tl7224872352_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7225072345_)))
                              (_hd7224972349_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7225072345_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7224872352_))
                              (let ((_e7225372355_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7224872352_))))
                                (let ((_tl7225172362_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7225372355_)))
                                      (_hd7225272359_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7225372355_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7225172362_))
                                      (let ((_e7225672365_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7225172362_))))
                                        (let ((_tl7225472372_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7225672365_)))
                                              (_hd7225572369_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7225672365_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7225472372_))
                                              (___kont7458674587_
                                               _hd7225572369_
                                               _hd7225272359_
                                               _hd7224972349_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7224072273_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7225172362_))
                                          (___kont7458874589_
                                           _hd7225272359_
                                           _hd7224972349_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7224072273_))))))
                              (let () (declare (not safe)) (_g7224072273_)))))
                      (let () (declare (not safe)) (_g7224072273_)))))
              (let () (declare (not safe)) (_g7224072273_)))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx72400_)
      (let* ((___stx7463974640_ _$stx72400_)
             (_g7240872476_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7463974640_)))))
        (let ((___kont7464274643_
               (lambda (_L72754_ _L72756_)
                 (let ((__tmp75312
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp75297
                        (let ((__tmp75308
                               (let ((__tmp75311
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75309
                                      (let ((__tmp75310
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp75310 '()))))
                                 (declare (not safe))
                                 (cons __tmp75311 __tmp75309)))
                              (__tmp75298
                               (let ((__tmp75305
                                      (let ((__tmp75307
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75306
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72756_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75307 __tmp75306)))
                                     (__tmp75299
                                      (let ((__tmp75300
                                             (let ((__tmp75301
                                                    (let ((__tmp75302
                                                           (let ((__tmp75304
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp75303
                          (let () (declare (not safe)) (cons _L72754_ '()))))
                     (declare (not safe))
                     (cons __tmp75304 __tmp75303))))
              (declare (not safe))
              (cons __tmp75302 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L72754_ __tmp75301))))
                                        (declare (not safe))
                                        (cons '#f __tmp75300))))
                                 (declare (not safe))
                                 (cons __tmp75305 __tmp75299))))
                          (declare (not safe))
                          (cons __tmp75308 __tmp75298))))
                   (declare (not safe))
                   (cons __tmp75312 __tmp75297))))
              (___kont7464474645_
               (lambda (_L72685_ _L72687_)
                 (let ((__tmp75313
                        (let ((__tmp75314
                               (let ((__tmp75315
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L72685_ __tmp75315))))
                          (declare (not safe))
                          (cons 'primitive: __tmp75314))))
                   (declare (not safe))
                   (cons _L72687_ __tmp75313))))
              (___kont7464674647_
               (lambda (_L72624_ _L72626_)
                 (let ((__tmp75329
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp75316
                        (let ((__tmp75325
                               (let ((__tmp75328
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75326
                                      (let ((__tmp75327
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp75327 '()))))
                                 (declare (not safe))
                                 (cons __tmp75328 __tmp75326)))
                              (__tmp75317
                               (let ((__tmp75322
                                      (let ((__tmp75324
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75323
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72626_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75324 __tmp75323)))
                                     (__tmp75318
                                      (let ((__tmp75319
                                             (let ((__tmp75321
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp75320
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L72624_ '()))))
                                               (declare (not safe))
                                               (cons __tmp75321 __tmp75320))))
                                        (declare (not safe))
                                        (cons __tmp75319 '()))))
                                 (declare (not safe))
                                 (cons __tmp75322 __tmp75318))))
                          (declare (not safe))
                          (cons __tmp75325 __tmp75317))))
                   (declare (not safe))
                   (cons __tmp75329 __tmp75316))))
              (___kont7464874649_
               (lambda (_L72556_ _L72558_)
                 (let ((__tmp75343
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp75330
                        (let ((__tmp75339
                               (let ((__tmp75342
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75340
                                      (let ((__tmp75341
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp75341 '()))))
                                 (declare (not safe))
                                 (cons __tmp75342 __tmp75340)))
                              (__tmp75331
                               (let ((__tmp75336
                                      (let ((__tmp75338
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75337
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72558_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75338 __tmp75337)))
                                     (__tmp75332
                                      (let ((__tmp75333
                                             (let ((__tmp75335
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp75334
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L72556_ '()))))
                                               (declare (not safe))
                                               (cons __tmp75335 __tmp75334))))
                                        (declare (not safe))
                                        (cons __tmp75333 '()))))
                                 (declare (not safe))
                                 (cons __tmp75336 __tmp75332))))
                          (declare (not safe))
                          (cons __tmp75339 __tmp75331))))
                   (declare (not safe))
                   (cons __tmp75343 __tmp75330))))
              (___kont7465074651_
               (lambda (_L72503_ _L72505_)
                 (let ((__tmp75344
                        (let ((__tmp75345
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L72503_ __tmp75345))))
                   (declare (not safe))
                   (cons _L72505_ __tmp75344)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7463974640_))
              (let ((_e7241472710_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7463974640_))))
                (let ((_tl7241272717_
                       (let () (declare (not safe)) (##cdr _e7241472710_)))
                      (_hd7241372714_
                       (let () (declare (not safe)) (##car _e7241472710_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7241272717_))
                      (let ((_e7241772720_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7241272717_))))
                        (let ((_tl7241572727_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7241772720_)))
                              (_hd7241672724_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7241772720_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7241572727_))
                              (let ((_e7242072730_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7241572727_))))
                                (let ((_tl7241872737_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7242072730_)))
                                      (_hd7241972734_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7242072730_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd7241972734_))
                                      (let ((_e7242172740_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd7241972734_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e7242172740_ 'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7241872737_))
                                                (let ((_e7242472744_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7241872737_))))
                                                  (let ((_tl7242272751_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7242472744_)))
                                                        (_hd7242372748_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7242472744_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7242272751_))
                                                        (___kont7464274643_
                                                         _hd7242372748_
                                                         _hd7241672724_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd7241672724_))
                                                            (let ((_e7243372671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd7241672724_))))
                      (declare (not safe))
                      (_g7240872476_))
                    (let () (declare (not safe)) (_g7240872476_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd7241672724_))
                                                    (let ((_e7243372671_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd7241672724_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e7243372671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7241872737_))
                      (___kont7464474645_ _hd7241972734_ _hd7241372714_)
                      (let () (declare (not safe)) (_g7240872476_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7241872737_))
                      (___kont7464874649_ _hd7241972734_ _hd7241672724_)
                      (let () (declare (not safe)) (_g7240872476_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7241872737_))
                                                        (___kont7464874649_
                                                         _hd7241972734_
                                                         _hd7241672724_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7240872476_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd7241672724_))
                                                (let ((_e7243372671_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd7241672724_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e7243372671_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl7241872737_))
                                                          (___kont7464474645_
                                                           _hd7241972734_
                                                           _hd7241372714_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl7241872737_))
                      (let ((_e7245172614_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7241872737_))))
                        (let ((_tl7244972621_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7245172614_)))
                              (_hd7245072618_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7245172614_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7244972621_))
                              (___kont7464674647_
                               _hd7245072618_
                               _hd7241972734_)
                              (let () (declare (not safe)) (_g7240872476_)))))
                      (let () (declare (not safe)) (_g7240872476_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7241872737_))
                  (___kont7464874649_ _hd7241972734_ _hd7241672724_)
                  (let () (declare (not safe)) (_g7240872476_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7241872737_))
                                                    (___kont7464874649_
                                                     _hd7241972734_
                                                     _hd7241672724_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7240872476_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd7241672724_))
                                          (let ((_e7243372671_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _hd7241672724_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e7243372671_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7241872737_))
                                                    (___kont7464474645_
                                                     _hd7241972734_
                                                     _hd7241372714_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7241872737_))
                                                        (let ((_e7245172614_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7241872737_))))
                  (let ((_tl7244972621_
                         (let () (declare (not safe)) (##cdr _e7245172614_)))
                        (_hd7245072618_
                         (let () (declare (not safe)) (##car _e7245172614_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl7244972621_))
                        (___kont7464674647_ _hd7245072618_ _hd7241972734_)
                        (let () (declare (not safe)) (_g7240872476_)))))
                (let () (declare (not safe)) (_g7240872476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7241872737_))
                                                    (___kont7464874649_
                                                     _hd7241972734_
                                                     _hd7241672724_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7240872476_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7241872737_))
                                              (___kont7464874649_
                                               _hd7241972734_
                                               _hd7241672724_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7240872476_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd7241672724_))
                                  (let ((_e7243372671_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd7241672724_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7241572727_))
                                        (___kont7465074651_
                                         _hd7241672724_
                                         _hd7241372714_)
                                        (let ()
                                          (declare (not safe))
                                          (_g7240872476_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7241572727_))
                                      (___kont7465074651_
                                       _hd7241672724_
                                       _hd7241372714_)
                                      (let ()
                                        (declare (not safe))
                                        (_g7240872476_)))))))
                      (let () (declare (not safe)) (_g7240872476_)))))
              (let () (declare (not safe)) (_g7240872476_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx72778_)
      (let* ((___stx7477974780_ _$stx72778_)
             (_g7278372838_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7477974780_)))))
        (let ((___kont7478274783_
               (lambda (_L73023_ _L73025_)
                 (let ((__tmp75361
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp75346
                        (let ((__tmp75357
                               (let ((__tmp75360
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75358
                                      (let ((__tmp75359
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp75359 '()))))
                                 (declare (not safe))
                                 (cons __tmp75360 __tmp75358)))
                              (__tmp75347
                               (let ((__tmp75348
                                      (let ((__tmp75356
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp75349
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L73023_
                                                  _L73025_))
                                               (let ((__tmp75350
                                                      (lambda (_g7304273046_
                                                               _g7304373049_
                                                               _g7304473051_)
                                                        (let ((__tmp75351
                                                               (let ((__tmp75355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp75352
                              (let ((__tmp75353
                                     (let ((__tmp75354
                                            (let ()
                                              (declare (not safe))
                                              (cons _g7304273046_ '()))))
                                       (declare (not safe))
                                       (cons _g7304373049_ __tmp75354))))
                                (declare (not safe))
                                (cons 'primitive: __tmp75353))))
                         (declare (not safe))
                         (cons __tmp75355 __tmp75352))))
                  (declare (not safe))
                  (cons __tmp75351 _g7304473051_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp75350
                                                         '()
                                                         _L73023_
                                                         _L73025_)))))
                                        (declare (not safe))
                                        (cons __tmp75356 __tmp75349))))
                                 (declare (not safe))
                                 (cons __tmp75348 '()))))
                          (declare (not safe))
                          (cons __tmp75357 __tmp75347))))
                   (declare (not safe))
                   (cons __tmp75361 __tmp75346))))
              (___kont7478674787_
               (lambda (_L72909_ _L72911_)
                 (let ((__tmp75376
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp75362
                        (let ((__tmp75372
                               (let ((__tmp75375
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75373
                                      (let ((__tmp75374
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp75374 '()))))
                                 (declare (not safe))
                                 (cons __tmp75375 __tmp75373)))
                              (__tmp75363
                               (let ((__tmp75364
                                      (let ((__tmp75371
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp75365
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L72909_
                                                  _L72911_))
                                               (let ((__tmp75366
                                                      (lambda (_g7292672930_
                                                               _g7292772933_
                                                               _g7292872935_)
                                                        (let ((__tmp75367
                                                               (let ((__tmp75370
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp75368
                              (let ((__tmp75369
                                     (let ()
                                       (declare (not safe))
                                       (cons _g7292672930_ '()))))
                                (declare (not safe))
                                (cons _g7292772933_ __tmp75369))))
                         (declare (not safe))
                         (cons __tmp75370 __tmp75368))))
                  (declare (not safe))
                  (cons __tmp75367 _g7292872935_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp75366
                                                         '()
                                                         _L72909_
                                                         _L72911_)))))
                                        (declare (not safe))
                                        (cons __tmp75371 __tmp75365))))
                                 (declare (not safe))
                                 (cons __tmp75364 '()))))
                          (declare (not safe))
                          (cons __tmp75372 __tmp75363))))
                   (declare (not safe))
                   (cons __tmp75376 __tmp75362)))))
          (let* ((___match7483074831_
                  (lambda (_e7281572845_
                           _hd7281472849_
                           _tl7281372852_
                           ___splice7478874789_
                           _target7281672855_
                           _tl7281872858_)
                    (letrec ((_loop7281972861_
                              (lambda (_hd7281772865_
                                       _dispatch7282372868_
                                       _arity7282472870_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7281772865_))
                                    (let ((_e7282072873_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7281772865_))))
                                      (let ((_lp-tl7282272880_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7282072873_)))
                                            (_lp-hd7282172877_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7282072873_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _lp-hd7282172877_))
                                            (let ((_e7282972883_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd7282172877_))))
                                              (let ((_tl7282772890_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7282972883_)))
                                                    (_hd7282872887_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7282972883_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7282772890_))
                                                    (let ((_e7283272893_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7282772890_))))
                                                      (let ((_tl7283072900_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7283272893_)))
                    (_hd7283172897_
                     (let () (declare (not safe)) (##car _e7283272893_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl7283072900_))
                    (_loop7281972861_
                     _lp-tl7282272880_
                     (let ()
                       (declare (not safe))
                       (cons _hd7283172897_ _dispatch7282372868_))
                     (let ()
                       (declare (not safe))
                       (cons _hd7282872887_ _arity7282472870_)))
                    (let () (declare (not safe)) (_g7278372838_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7278372838_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g7278372838_)))))
                                    (let ((_arity7282672906_
                                           (reverse _arity7282472870_))
                                          (_dispatch7282572903_
                                           (reverse _dispatch7282372868_)))
                                      (___kont7478674787_
                                       _dispatch7282572903_
                                       _arity7282672906_))))))
                      (_loop7281972861_ _target7281672855_ '() '()))))
                 (___match7482274823_
                  (lambda (_e7281572845_ _hd7281472849_ _tl7281372852_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl7281372852_))
                        (let ((___splice7478874789_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice _tl7281372852_ '0))))
                          (let ((_tl7281872858_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice7478874789_ '1)))
                                (_target7281672855_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice7478874789_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7281872858_))
                                (___match7483074831_
                                 _e7281572845_
                                 _hd7281472849_
                                 _tl7281372852_
                                 ___splice7478874789_
                                 _target7281672855_
                                 _tl7281872858_)
                                (let ()
                                  (declare (not safe))
                                  (_g7278372838_)))))
                        (let () (declare (not safe)) (_g7278372838_)))))
                 (___match7481674817_
                  (lambda (_e7278972945_
                           _hd7278872949_
                           _tl7278772952_
                           _e7279272955_
                           _hd7279172959_
                           _tl7279072962_
                           _e7279372965_
                           ___splice7478474785_
                           _target7279472969_
                           _tl7279672972_)
                    (letrec ((_loop7279772975_
                              (lambda (_hd7279572979_
                                       _dispatch7280172982_
                                       _arity7280272984_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7279572979_))
                                    (let ((_e7279872987_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7279572979_))))
                                      (let ((_lp-tl7280072994_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7279872987_)))
                                            (_lp-hd7279972991_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7279872987_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _lp-hd7279972991_))
                                            (let ((_e7280772997_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd7279972991_))))
                                              (let ((_tl7280573004_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7280772997_)))
                                                    (_hd7280673001_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7280772997_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7280573004_))
                                                    (let ((_e7281073007_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7280573004_))))
                                                      (let ((_tl7280873014_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7281073007_)))
                    (_hd7280973011_
                     (let () (declare (not safe)) (##car _e7281073007_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl7280873014_))
                    (_loop7279772975_
                     _lp-tl7280072994_
                     (let ()
                       (declare (not safe))
                       (cons _hd7280973011_ _dispatch7280172982_))
                     (let ()
                       (declare (not safe))
                       (cons _hd7280673001_ _arity7280272984_)))
                    (___match7482274823_
                     _e7278972945_
                     _hd7278872949_
                     _tl7278772952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match7482274823_
                                                     _e7278972945_
                                                     _hd7278872949_
                                                     _tl7278772952_))))
                                            (___match7482274823_
                                             _e7278972945_
                                             _hd7278872949_
                                             _tl7278772952_))))
                                    (let ((_arity7280473020_
                                           (reverse _arity7280272984_))
                                          (_dispatch7280373017_
                                           (reverse _dispatch7280172982_)))
                                      (___kont7478274783_
                                       _dispatch7280373017_
                                       _arity7280473020_))))))
                      (_loop7279772975_ _target7279472969_ '() '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7477974780_))
                (let ((_e7278972945_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7477974780_))))
                  (let ((_tl7278772952_
                         (let () (declare (not safe)) (##cdr _e7278972945_)))
                        (_hd7278872949_
                         (let () (declare (not safe)) (##car _e7278972945_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7278772952_))
                        (let ((_e7279272955_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7278772952_))))
                          (let ((_tl7279072962_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7279272955_)))
                                (_hd7279172959_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7279272955_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd7279172959_))
                                (let ((_e7279372965_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd7279172959_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e7279372965_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl7279072962_))
                                          (let ((___splice7478474785_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl7279072962_
                                                    '0))))
                                            (let ((_tl7279672972_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7478474785_
                                                      '1)))
                                                  (_target7279472969_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7478474785_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7279672972_))
                                                  (___match7481674817_
                                                   _e7278972945_
                                                   _hd7278872949_
                                                   _tl7278772952_
                                                   _e7279272955_
                                                   _hd7279172959_
                                                   _tl7279072962_
                                                   _e7279372965_
                                                   ___splice7478474785_
                                                   _target7279472969_
                                                   _tl7279672972_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7278772952_))
                                                      (let ((___splice7478874789_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7278772952_ '0))))
                (let ((_tl7281872858_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7478874789_ '1)))
                      (_target7281672855_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7478874789_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7281872858_))
                      (___match7483074831_
                       _e7278972945_
                       _hd7278872949_
                       _tl7278772952_
                       ___splice7478874789_
                       _target7281672855_
                       _tl7281872858_)
                      (let () (declare (not safe)) (_g7278372838_)))))
              (let () (declare (not safe)) (_g7278372838_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl7278772952_))
                                              (let ((___splice7478874789_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl7278772952_
                                                        '0))))
                                                (let ((_tl7281872858_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice7478874789_
                                                          '1)))
                                                      (_target7281672855_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice7478874789_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl7281872858_))
                                                      (___match7483074831_
                                                       _e7278972945_
                                                       _hd7278872949_
                                                       _tl7278772952_
                                                       ___splice7478874789_
                                                       _target7281672855_
                                                       _tl7281872858_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g7278372838_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g7278372838_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl7278772952_))
                                          (let ((___splice7478874789_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl7278772952_
                                                    '0))))
                                            (let ((_tl7281872858_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7478874789_
                                                      '1)))
                                                  (_target7281672855_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7478874789_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7281872858_))
                                                  (___match7483074831_
                                                   _e7278972945_
                                                   _hd7278872949_
                                                   _tl7278772952_
                                                   ___splice7478874789_
                                                   _target7281672855_
                                                   _tl7281872858_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7278372838_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g7278372838_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7278772952_))
                                    (let ((___splice7478874789_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7278772952_
                                              '0))))
                                      (let ((_tl7281872858_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7478874789_
                                                '1)))
                                            (_target7281672855_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7478874789_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7281872858_))
                                            (___match7483074831_
                                             _e7278972945_
                                             _hd7278872949_
                                             _tl7278772952_
                                             ___splice7478874789_
                                             _target7281672855_
                                             _tl7281872858_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7278372838_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7278372838_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7278772952_))
                            (let ((___splice7478874789_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7278772952_
                                      '0))))
                              (let ((_tl7281872858_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice7478874789_ '1)))
                                    (_target7281672855_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice7478874789_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7281872858_))
                                    (___match7483074831_
                                     _e7278972945_
                                     _hd7278872949_
                                     _tl7278772952_
                                     ___splice7478874789_
                                     _target7281672855_
                                     _tl7281872858_)
                                    (let ()
                                      (declare (not safe))
                                      (_g7278372838_)))))
                            (let () (declare (not safe)) (_g7278372838_))))))
                (let () (declare (not safe)) (_g7278372838_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx73060_)
      (let* ((_g7306473082_
              (lambda (_g7306573078_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7306573078_))))
             (_g7306373137_
              (lambda (_g7306573086_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7306573086_))
                    (let ((_e7307073089_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7306573086_))))
                      (let ((_hd7306973093_
                             (let ()
                               (declare (not safe))
                               (##car _e7307073089_)))
                            (_tl7306873096_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7307073089_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7306873096_))
                            (let ((_e7307373099_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7306873096_))))
                              (let ((_hd7307273103_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7307373099_)))
                                    (_tl7307173106_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7307373099_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7307173106_))
                                    (let ((_e7307673109_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7307173106_))))
                                      (let ((_hd7307573113_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7307673109_)))
                                            (_tl7307473116_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7307673109_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7307473116_))
                                            ((lambda (_L73119_ _L73121_)
                                               (let ((__tmp75390
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp75377
                                                      (let ((__tmp75386
                                                             (let ((__tmp75389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp75387
                            (let ((__tmp75388
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp75388 '()))))
                       (declare (not safe))
                       (cons __tmp75389 __tmp75387)))
                    (__tmp75378
                     (let ((__tmp75383
                            (let ((__tmp75385
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp75384
                                   (let ()
                                     (declare (not safe))
                                     (cons _L73121_ '()))))
                              (declare (not safe))
                              (cons __tmp75385 __tmp75384)))
                           (__tmp75379
                            (let ((__tmp75380
                                   (let ((__tmp75382
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp75381
                                          (let ()
                                            (declare (not safe))
                                            (cons _L73119_ '()))))
                                     (declare (not safe))
                                     (cons __tmp75382 __tmp75381))))
                              (declare (not safe))
                              (cons __tmp75380 '()))))
                       (declare (not safe))
                       (cons __tmp75383 __tmp75379))))
                (declare (not safe))
                (cons __tmp75386 __tmp75378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp75390 __tmp75377)))
                                             _hd7307573113_
                                             _hd7307273103_)
                                            (_g7306473082_ _g7306573086_))))
                                    (_g7306473082_ _g7306573086_))))
                            (_g7306473082_ _g7306573086_))))
                    (_g7306473082_ _g7306573086_)))))
        (_g7306373137_ _$stx73060_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx73141_)
      (let* ((_g7314573163_
              (lambda (_g7314673159_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7314673159_))))
             (_g7314473218_
              (lambda (_g7314673167_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7314673167_))
                    (let ((_e7315173170_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7314673167_))))
                      (let ((_hd7315073174_
                             (let ()
                               (declare (not safe))
                               (##car _e7315173170_)))
                            (_tl7314973177_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7315173170_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7314973177_))
                            (let ((_e7315473180_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7314973177_))))
                              (let ((_hd7315373184_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7315473180_)))
                                    (_tl7315273187_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7315473180_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7315273187_))
                                    (let ((_e7315773190_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7315273187_))))
                                      (let ((_hd7315673194_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7315773190_)))
                                            (_tl7315573197_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7315773190_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7315573197_))
                                            ((lambda (_L73200_ _L73202_)
                                               (let ((__tmp75404
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp75391
                                                      (let ((__tmp75400
                                                             (let ((__tmp75403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp75401
                            (let ((__tmp75402
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp75402 '()))))
                       (declare (not safe))
                       (cons __tmp75403 __tmp75401)))
                    (__tmp75392
                     (let ((__tmp75397
                            (let ((__tmp75399
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp75398
                                   (let ()
                                     (declare (not safe))
                                     (cons _L73202_ '()))))
                              (declare (not safe))
                              (cons __tmp75399 __tmp75398)))
                           (__tmp75393
                            (let ((__tmp75394
                                   (let ((__tmp75396
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp75395
                                          (let ()
                                            (declare (not safe))
                                            (cons _L73200_ '()))))
                                     (declare (not safe))
                                     (cons __tmp75396 __tmp75395))))
                              (declare (not safe))
                              (cons __tmp75394 '()))))
                       (declare (not safe))
                       (cons __tmp75397 __tmp75393))))
                (declare (not safe))
                (cons __tmp75400 __tmp75392))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp75404 __tmp75391)))
                                             _hd7315673194_
                                             _hd7315373184_)
                                            (_g7314573163_ _g7314673167_))))
                                    (_g7314573163_ _g7314673167_))))
                            (_g7314573163_ _g7314673167_))))
                    (_g7314573163_ _g7314673167_)))))
        (_g7314473218_ _$stx73141_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx73222_)
      (let* ((___stx7483374834_ _$stx73222_)
             (_g7322973300_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7483374834_)))))
        (let ((___kont7483674837_
               (lambda (_L73591_ _L73593_)
                 (let ((__tmp75410
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75405
                        (let ((__tmp75406
                               (let ((__tmp75407
                                      (let ((__tmp75409
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp75408
                                             (let ()
                                               (declare (not safe))
                                               (cons _L73591_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75409 __tmp75408))))
                                 (declare (not safe))
                                 (cons __tmp75407 '()))))
                          (declare (not safe))
                          (cons _L73593_ __tmp75406))))
                   (declare (not safe))
                   (cons __tmp75410 __tmp75405))))
              (___kont7483874839_
               (lambda (_L73510_ _L73512_)
                 (let ((__tmp75419
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75411
                        (let ((__tmp75412
                               (let ((__tmp75413
                                      (let ((__tmp75418
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp75414
                                             (let ((__tmp75415
                                                    (lambda (_g7353173534_
                                                             _g7353273537_)
                                                      (let ((__tmp75416
                                                             (let ((__tmp75417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g7353173534_ __tmp75417))))
                (declare (not safe))
                (cons __tmp75416 _g7353273537_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp75415
                                                       '()
                                                       _L73510_))))
                                        (declare (not safe))
                                        (cons __tmp75418 __tmp75414))))
                                 (declare (not safe))
                                 (cons __tmp75413 '()))))
                          (declare (not safe))
                          (cons _L73512_ __tmp75412))))
                   (declare (not safe))
                   (cons __tmp75419 __tmp75411))))
              (___kont7484274843_
               (lambda (_L73422_ _L73424_)
                 (let ((__tmp75426
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75420
                        (let ((__tmp75421
                               (let ((__tmp75422
                                      (let ((__tmp75425
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp75423
                                             (let ((__tmp75424
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L73422_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive: __tmp75424))))
                                        (declare (not safe))
                                        (cons __tmp75425 __tmp75423))))
                                 (declare (not safe))
                                 (cons __tmp75422 '()))))
                          (declare (not safe))
                          (cons _L73424_ __tmp75421))))
                   (declare (not safe))
                   (cons __tmp75426 __tmp75420))))
              (___kont7484474845_
               (lambda (_L73357_ _L73359_)
                 (let ((__tmp75436
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75427
                        (let ((__tmp75428
                               (let ((__tmp75429
                                      (let ((__tmp75435
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp75430
                                             (let ((__tmp75431
                                                    (let ((__tmp75432
                                                           (lambda (_g7337673379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g7337773382_)
                     (let ((__tmp75433
                            (let ((__tmp75434
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g7337673379_ __tmp75434))))
                       (declare (not safe))
                       (cons __tmp75433 _g7337773382_)))))
              (declare (not safe))
              (foldr1 __tmp75432 '() _L73357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive: __tmp75431))))
                                        (declare (not safe))
                                        (cons __tmp75435 __tmp75430))))
                                 (declare (not safe))
                                 (cons __tmp75429 '()))))
                          (declare (not safe))
                          (cons _L73359_ __tmp75428))))
                   (declare (not safe))
                   (cons __tmp75436 __tmp75427)))))
          (let* ((___match7495274953_
                  (lambda (_e7328273307_
                           _hd7328173311_
                           _tl7328073314_
                           _e7328573317_
                           _hd7328473321_
                           _tl7328373324_
                           ___splice7484674847_
                           _target7328673327_
                           _tl7328873330_)
                    (letrec ((_loop7328973333_
                              (lambda (_hd7328773337_ _arity7329373340_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7328773337_))
                                    (let ((_e7329073343_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7328773337_))))
                                      (let ((_lp-tl7329273350_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7329073343_)))
                                            (_lp-hd7329173347_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7329073343_))))
                                        (_loop7328973333_
                                         _lp-tl7329273350_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd7329173347_
                                                 _arity7329373340_)))))
                                    (let ((_arity7329473353_
                                           (reverse _arity7329373340_)))
                                      (___kont7484474845_
                                       _arity7329473353_
                                       _hd7328473321_))))))
                      (_loop7328973333_ _target7328673327_ '()))))
                 (___match7491274913_
                  (lambda (_e7325073446_
                           _hd7324973450_
                           _tl7324873453_
                           _e7325373456_
                           _hd7325273460_
                           _tl7325173463_
                           _e7325673466_
                           _hd7325573470_
                           _tl7325473473_
                           _e7325773476_
                           ___splice7484074841_
                           _target7325873480_
                           _tl7326073483_)
                    (letrec ((_loop7326173486_
                              (lambda (_hd7325973490_ _arity7326573493_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7325973490_))
                                    (let ((_e7326273496_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7325973490_))))
                                      (let ((_lp-tl7326473503_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7326273496_)))
                                            (_lp-hd7326373500_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7326273496_))))
                                        (_loop7326173486_
                                         _lp-tl7326473503_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd7326373500_
                                                 _arity7326573493_)))))
                                    (let ((_arity7326673506_
                                           (reverse _arity7326573493_)))
                                      (___kont7483874839_
                                       _arity7326673506_
                                       _hd7325273460_))))))
                      (_loop7326173486_ _target7325873480_ '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7483374834_))
                (let ((_e7323573547_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7483374834_))))
                  (let ((_tl7323373554_
                         (let () (declare (not safe)) (##cdr _e7323573547_)))
                        (_hd7323473551_
                         (let () (declare (not safe)) (##car _e7323573547_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7323373554_))
                        (let ((_e7323873557_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7323373554_))))
                          (let ((_tl7323673564_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7323873557_)))
                                (_hd7323773561_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7323873557_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7323673564_))
                                (let ((_e7324173567_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7323673564_))))
                                  (let ((_tl7323973574_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7324173567_)))
                                        (_hd7324073571_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7324173567_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd7324073571_))
                                        (let ((_e7324273577_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd7324073571_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e7324273577_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl7323973574_))
                                                  (let ((_e7324573581_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl7323973574_))))
                                                    (let ((_tl7324373588_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e7324573581_)))
                                                          (_hd7324473585_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e7324573581_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl7324373588_))
                                                          (___kont7483674837_
                                                           _hd7324473585_
                                                           _hd7323773561_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl7323973574_))
                      (let ((___splice7484074841_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl7323973574_ '0))))
                        (let ((_tl7326073483_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7484074841_ '1)))
                              (_target7325873480_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7484074841_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7326073483_))
                              (___match7491274913_
                               _e7323573547_
                               _hd7323473551_
                               _tl7323373554_
                               _e7323873557_
                               _hd7323773561_
                               _tl7323673564_
                               _e7324173567_
                               _hd7324073571_
                               _tl7323973574_
                               _e7324273577_
                               ___splice7484074841_
                               _target7325873480_
                               _tl7326073483_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl7323673564_))
                                  (let ((___splice7484674847_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl7323673564_
                                            '0))))
                                    (let ((_tl7328873330_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice7484674847_
                                              '1)))
                                          (_target7328673327_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice7484674847_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7328873330_))
                                          (___match7495274953_
                                           _e7323573547_
                                           _hd7323473551_
                                           _tl7323373554_
                                           _e7323873557_
                                           _hd7323773561_
                                           _tl7323673564_
                                           ___splice7484674847_
                                           _target7328673327_
                                           _tl7328873330_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7322973300_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g7322973300_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl7323673564_))
                          (let ((___splice7484674847_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl7323673564_
                                    '0))))
                            (let ((_tl7328873330_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice7484674847_ '1)))
                                  (_target7328673327_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice7484674847_ '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl7328873330_))
                                  (___match7495274953_
                                   _e7323573547_
                                   _hd7323473551_
                                   _tl7323373554_
                                   _e7323873557_
                                   _hd7323773561_
                                   _tl7323673564_
                                   ___splice7484674847_
                                   _target7328673327_
                                   _tl7328873330_)
                                  (let ()
                                    (declare (not safe))
                                    (_g7322973300_)))))
                          (let () (declare (not safe)) (_g7322973300_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7323973574_))
                                                      (let ((___splice7484074841_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7323973574_ '0))))
                (let ((_tl7326073483_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7484074841_ '1)))
                      (_target7325873480_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7484074841_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7326073483_))
                      (___match7491274913_
                       _e7323573547_
                       _hd7323473551_
                       _tl7323373554_
                       _e7323873557_
                       _hd7323773561_
                       _tl7323673564_
                       _e7324173567_
                       _hd7324073571_
                       _tl7323973574_
                       _e7324273577_
                       ___splice7484074841_
                       _target7325873480_
                       _tl7326073483_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl7323973574_))
                          (___kont7484274843_ _hd7324073571_ _hd7323773561_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7323673564_))
                              (let ((___splice7484674847_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7323673564_
                                        '0))))
                                (let ((_tl7328873330_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice7484674847_
                                          '1)))
                                      (_target7328673327_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice7484674847_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7328873330_))
                                      (___match7495274953_
                                       _e7323573547_
                                       _hd7323473551_
                                       _tl7323373554_
                                       _e7323873557_
                                       _hd7323773561_
                                       _tl7323673564_
                                       ___splice7484674847_
                                       _target7328673327_
                                       _tl7328873330_)
                                      (let ()
                                        (declare (not safe))
                                        (_g7322973300_)))))
                              (let ()
                                (declare (not safe))
                                (_g7322973300_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7323973574_))
                  (___kont7484274843_ _hd7324073571_ _hd7323773561_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl7323673564_))
                      (let ((___splice7484674847_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl7323673564_ '0))))
                        (let ((_tl7328873330_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7484674847_ '1)))
                              (_target7328673327_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7484674847_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7328873330_))
                              (___match7495274953_
                               _e7323573547_
                               _hd7323473551_
                               _tl7323373554_
                               _e7323873557_
                               _hd7323773561_
                               _tl7323673564_
                               ___splice7484674847_
                               _target7328673327_
                               _tl7328873330_)
                              (let () (declare (not safe)) (_g7322973300_)))))
                      (let () (declare (not safe)) (_g7322973300_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7323973574_))
                                                  (___kont7484274843_
                                                   _hd7324073571_
                                                   _hd7323773561_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7323673564_))
                                                      (let ((___splice7484674847_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7323673564_ '0))))
                (let ((_tl7328873330_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7484674847_ '1)))
                      (_target7328673327_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7484674847_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7328873330_))
                      (___match7495274953_
                       _e7323573547_
                       _hd7323473551_
                       _tl7323373554_
                       _e7323873557_
                       _hd7323773561_
                       _tl7323673564_
                       ___splice7484674847_
                       _target7328673327_
                       _tl7328873330_)
                      (let () (declare (not safe)) (_g7322973300_)))))
              (let () (declare (not safe)) (_g7322973300_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7323973574_))
                                            (___kont7484274843_
                                             _hd7324073571_
                                             _hd7323773561_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl7323673564_))
                                                (let ((___splice7484674847_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl7323673564_
                                                          '0))))
                                                  (let ((_tl7328873330_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice7484674847_
                                                            '1)))
                                                        (_target7328673327_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice7484674847_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7328873330_))
                                                        (___match7495274953_
                                                         _e7323573547_
                                                         _hd7323473551_
                                                         _tl7323373554_
                                                         _e7323873557_
                                                         _hd7323773561_
                                                         _tl7323673564_
                                                         ___splice7484674847_
                                                         _target7328673327_
                                                         _tl7328873330_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7322973300_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7322973300_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7323673564_))
                                    (let ((___splice7484674847_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7323673564_
                                              '0))))
                                      (let ((_tl7328873330_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7484674847_
                                                '1)))
                                            (_target7328673327_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7484674847_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7328873330_))
                                            (___match7495274953_
                                             _e7323573547_
                                             _hd7323473551_
                                             _tl7323373554_
                                             _e7323873557_
                                             _hd7323773561_
                                             _tl7323673564_
                                             ___splice7484674847_
                                             _target7328673327_
                                             _tl7328873330_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7322973300_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7322973300_))))))
                        (let () (declare (not safe)) (_g7322973300_)))))
                (let () (declare (not safe)) (_g7322973300_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx73617_)
      (let* ((___stx7495574956_ _$stx73617_)
             (_g7362273657_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7495574956_)))))
        (let ((___kont7495874959_
               (lambda (_L73779_ _L73781_)
                 (let ((__tmp75442
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75437
                        (let ((__tmp75438
                               (let ((__tmp75439
                                      (let ((__tmp75441
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp75440
                                             (let ()
                                               (declare (not safe))
                                               (cons _L73779_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75441 __tmp75440))))
                                 (declare (not safe))
                                 (cons __tmp75439 '()))))
                          (declare (not safe))
                          (cons _L73781_ __tmp75438))))
                   (declare (not safe))
                   (cons __tmp75442 __tmp75437))))
              (___kont7496074961_
               (lambda (_L73714_ _L73716_)
                 (let ((__tmp75451
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75443
                        (let ((__tmp75444
                               (let ((__tmp75445
                                      (let ((__tmp75450
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp75446
                                             (let ((__tmp75447
                                                    (lambda (_g7373373736_
                                                             _g7373473739_)
                                                      (let ((__tmp75448
                                                             (let ((__tmp75449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g7373373736_ __tmp75449))))
                (declare (not safe))
                (cons __tmp75448 _g7373473739_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp75447
                                                       '()
                                                       _L73714_))))
                                        (declare (not safe))
                                        (cons __tmp75450 __tmp75446))))
                                 (declare (not safe))
                                 (cons __tmp75445 '()))))
                          (declare (not safe))
                          (cons _L73716_ __tmp75444))))
                   (declare (not safe))
                   (cons __tmp75451 __tmp75443)))))
          (let ((___match7500475005_
                 (lambda (_e7363973664_
                          _hd7363873668_
                          _tl7363773671_
                          _e7364273674_
                          _hd7364173678_
                          _tl7364073681_
                          ___splice7496274963_
                          _target7364373684_
                          _tl7364573687_)
                   (letrec ((_loop7364673690_
                             (lambda (_hd7364473694_ _arity7365073697_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd7364473694_))
                                   (let ((_e7364773700_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd7364473694_))))
                                     (let ((_lp-tl7364973707_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e7364773700_)))
                                           (_lp-hd7364873704_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e7364773700_))))
                                       (_loop7364673690_
                                        _lp-tl7364973707_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd7364873704_
                                                _arity7365073697_)))))
                                   (let ((_arity7365173710_
                                          (reverse _arity7365073697_)))
                                     (___kont7496074961_
                                      _arity7365173710_
                                      _hd7364173678_))))))
                     (_loop7364673690_ _target7364373684_ '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7495574956_))
                (let ((_e7362873749_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7495574956_))))
                  (let ((_tl7362673756_
                         (let () (declare (not safe)) (##cdr _e7362873749_)))
                        (_hd7362773753_
                         (let () (declare (not safe)) (##car _e7362873749_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7362673756_))
                        (let ((_e7363173759_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7362673756_))))
                          (let ((_tl7362973766_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7363173759_)))
                                (_hd7363073763_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7363173759_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7362973766_))
                                (let ((_e7363473769_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7362973766_))))
                                  (let ((_tl7363273776_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7363473769_)))
                                        (_hd7363373773_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7363473769_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7363273776_))
                                        (___kont7495874959_
                                         _hd7363373773_
                                         _hd7363073763_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl7362973766_))
                                            (let ((___splice7496274963_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl7362973766_
                                                      '0))))
                                              (let ((_tl7364573687_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice7496274963_
                                                        '1)))
                                                    (_target7364373684_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice7496274963_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7364573687_))
                                                    (___match7500475005_
                                                     _e7362873749_
                                                     _hd7362773753_
                                                     _tl7362673756_
                                                     _e7363173759_
                                                     _hd7363073763_
                                                     _tl7362973766_
                                                     ___splice7496274963_
                                                     _target7364373684_
                                                     _tl7364573687_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7362273657_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g7362273657_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7362973766_))
                                    (let ((___splice7496274963_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7362973766_
                                              '0))))
                                      (let ((_tl7364573687_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7496274963_
                                                '1)))
                                            (_target7364373684_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7496274963_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7364573687_))
                                            (___match7500475005_
                                             _e7362873749_
                                             _hd7362773753_
                                             _tl7362673756_
                                             _e7363173759_
                                             _hd7363073763_
                                             _tl7362973766_
                                             ___splice7496274963_
                                             _target7364373684_
                                             _tl7364573687_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7362273657_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7362273657_))))))
                        (let () (declare (not safe)) (_g7362273657_)))))
                (let () (declare (not safe)) (_g7362273657_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx73801_)
      (let* ((_g7380573840_
              (lambda (_g7380673836_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7380673836_))))
             (_g7380473968_
              (lambda (_g7380673844_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7380673844_))
                    (let ((_e7381173847_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7380673844_))))
                      (let ((_hd7381073851_
                             (let ()
                               (declare (not safe))
                               (##car _e7381173847_)))
                            (_tl7380973854_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7381173847_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7380973854_))
                            (let ((_g75452_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7380973854_
                                      '0))))
                              (begin
                                (let ((_g75453_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g75452_)
                                             (##vector-length _g75452_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g75453_ 2)))
                                      (error "Context expects 2 values"
                                             _g75453_)))
                                (let ((_target7381273857_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75452_ 0)))
                                      (_tl7381473860_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75452_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7381473860_))
                                      (letrec ((_loop7381573863_
                                                (lambda (_hd7381373867_
                                                         _arity7381973870_
                                                         _prim7382073872_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7381373867_))
                                                      (let ((_e7381673875_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7381373867_))))
                (let ((_lp-hd7381773879_
                       (let () (declare (not safe)) (##car _e7381673875_)))
                      (_lp-tl7381873882_
                       (let () (declare (not safe)) (##cdr _e7381673875_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7381773879_))
                      (let ((_e7382573885_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7381773879_))))
                        (let ((_hd7382473889_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7382573885_)))
                              (_tl7382373892_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7382573885_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7382373892_))
                              (let ((_g75462_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7382373892_
                                        '0))))
                                (begin
                                  (let ((_g75463_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g75462_)
                                               (##vector-length _g75462_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g75463_ 2)))
                                        (error "Context expects 2 values"
                                               _g75463_)))
                                  (let ((_target7382673895_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g75462_ 0)))
                                        (_tl7382873898_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g75462_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7382873898_))
                                        (letrec ((_loop7382973901_
                                                  (lambda (_hd7382773905_
                                                           _arity7383373908_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd7382773905_))
                                                        (let ((_e7383073911_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd7382773905_))))
                  (let ((_lp-hd7383173915_
                         (let () (declare (not safe)) (##car _e7383073911_)))
                        (_lp-tl7383273918_
                         (let () (declare (not safe)) (##cdr _e7383073911_))))
                    (_loop7382973901_
                     _lp-tl7383273918_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd7383173915_ _arity7383373908_)))))
                (let ((_arity7383473921_ (reverse _arity7383373908_)))
                  (_loop7381573863_
                   _lp-tl7381873882_
                   (let ()
                     (declare (not safe))
                     (cons _arity7383473921_ _arity7381973870_))
                   (let ()
                     (declare (not safe))
                     (cons _hd7382473889_ _prim7382073872_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop7382973901_
                                           _target7382673895_
                                           '()))
                                        (_g7380573840_ _g7380673844_)))))
                              (_g7380573840_ _g7380673844_))))
                      (_g7380573840_ _g7380673844_))))
              (let ((_arity7382173925_ (reverse _arity7381973870_))
                    (_prim7382273928_ (reverse _prim7382073872_)))
                ((lambda (_L73931_ _L73933_)
                   (let ((__tmp75461
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp75454
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L73931_
                               _L73933_))
                            (let ((__tmp75455
                                   (lambda (_g7394873954_
                                            _g7394973957_
                                            _g7395073959_)
                                     (let ((__tmp75456
                                            (let ((__tmp75460
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp75457
                                                   (let ((__tmp75458
                                                          (let ((__tmp75459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g7395173962_ _g7395273965_)
                           (let ()
                             (declare (not safe))
                             (cons _g7395173962_ _g7395273965_)))))
                    (declare (not safe))
                    (foldr1 __tmp75459 '() _g7394873954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7394973957_
                                                           __tmp75458))))
                                              (declare (not safe))
                                              (cons __tmp75460 __tmp75457))))
                                       (declare (not safe))
                                       (cons __tmp75456 _g7395073959_)))))
                              (declare (not safe))
                              (foldr2 __tmp75455 '() _L73931_ _L73933_)))))
                     (declare (not safe))
                     (cons __tmp75461 __tmp75454)))
                 _arity7382173925_
                 _prim7382273928_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7381573863_
                                         _target7381273857_
                                         '()
                                         '()))
                                      (_g7380573840_ _g7380673844_)))))
                            (_g7380573840_ _g7380673844_))))
                    (_g7380573840_ _g7380673844_)))))
        (_g7380473968_ _$stx73801_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx73974_)
      (let* ((_g7397874013_
              (lambda (_g7397974009_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7397974009_))))
             (_g7397774141_
              (lambda (_g7397974017_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7397974017_))
                    (let ((_e7398474020_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7397974017_))))
                      (let ((_hd7398374024_
                             (let ()
                               (declare (not safe))
                               (##car _e7398474020_)))
                            (_tl7398274027_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7398474020_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7398274027_))
                            (let ((_g75464_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7398274027_
                                      '0))))
                              (begin
                                (let ((_g75465_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g75464_)
                                             (##vector-length _g75464_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g75465_ 2)))
                                      (error "Context expects 2 values"
                                             _g75465_)))
                                (let ((_target7398574030_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75464_ 0)))
                                      (_tl7398774033_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75464_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7398774033_))
                                      (letrec ((_loop7398874036_
                                                (lambda (_hd7398674040_
                                                         _arity7399274043_
                                                         _prim7399374045_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7398674040_))
                                                      (let ((_e7398974048_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7398674040_))))
                (let ((_lp-hd7399074052_
                       (let () (declare (not safe)) (##car _e7398974048_)))
                      (_lp-tl7399174055_
                       (let () (declare (not safe)) (##cdr _e7398974048_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7399074052_))
                      (let ((_e7399874058_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7399074052_))))
                        (let ((_hd7399774062_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7399874058_)))
                              (_tl7399674065_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7399874058_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7399674065_))
                              (let ((_g75474_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7399674065_
                                        '0))))
                                (begin
                                  (let ((_g75475_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g75474_)
                                               (##vector-length _g75474_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g75475_ 2)))
                                        (error "Context expects 2 values"
                                               _g75475_)))
                                  (let ((_target7399974068_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g75474_ 0)))
                                        (_tl7400174071_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g75474_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7400174071_))
                                        (letrec ((_loop7400274074_
                                                  (lambda (_hd7400074078_
                                                           _arity7400674081_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd7400074078_))
                                                        (let ((_e7400374084_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd7400074078_))))
                  (let ((_lp-hd7400474088_
                         (let () (declare (not safe)) (##car _e7400374084_)))
                        (_lp-tl7400574091_
                         (let () (declare (not safe)) (##cdr _e7400374084_))))
                    (_loop7400274074_
                     _lp-tl7400574091_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd7400474088_ _arity7400674081_)))))
                (let ((_arity7400774094_ (reverse _arity7400674081_)))
                  (_loop7398874036_
                   _lp-tl7399174055_
                   (let ()
                     (declare (not safe))
                     (cons _arity7400774094_ _arity7399274043_))
                   (let ()
                     (declare (not safe))
                     (cons _hd7399774062_ _prim7399374045_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop7400274074_
                                           _target7399974068_
                                           '()))
                                        (_g7397874013_ _g7397974017_)))))
                              (_g7397874013_ _g7397974017_))))
                      (_g7397874013_ _g7397974017_))))
              (let ((_arity7399474098_ (reverse _arity7399274043_))
                    (_prim7399574101_ (reverse _prim7399374045_)))
                ((lambda (_L74104_ _L74106_)
                   (let ((__tmp75473
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp75466
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L74104_
                               _L74106_))
                            (let ((__tmp75467
                                   (lambda (_g7412174127_
                                            _g7412274130_
                                            _g7412374132_)
                                     (let ((__tmp75468
                                            (let ((__tmp75472
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp75469
                                                   (let ((__tmp75470
                                                          (let ((__tmp75471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g7412474135_ _g7412574138_)
                           (let ()
                             (declare (not safe))
                             (cons _g7412474135_ _g7412574138_)))))
                    (declare (not safe))
                    (foldr1 __tmp75471 '() _g7412174127_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7412274130_
                                                           __tmp75470))))
                                              (declare (not safe))
                                              (cons __tmp75472 __tmp75469))))
                                       (declare (not safe))
                                       (cons __tmp75468 _g7412374132_)))))
                              (declare (not safe))
                              (foldr2 __tmp75467 '() _L74104_ _L74106_)))))
                     (declare (not safe))
                     (cons __tmp75473 __tmp75466)))
                 _arity7399474098_
                 _prim7399574101_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7398874036_
                                         _target7398574030_
                                         '()
                                         '()))
                                      (_g7397874013_ _g7397974017_)))))
                            (_g7397874013_ _g7397974017_))))
                    (_g7397874013_ _g7397974017_)))))
        (_g7397774141_ _$stx73974_)))))
