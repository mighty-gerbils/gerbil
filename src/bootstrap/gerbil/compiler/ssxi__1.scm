(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx69932_)
      (let* ((_g6993669954_
              (lambda (_g6993769950_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g6993769950_))))
             (_g6993570009_
              (lambda (_g6993769958_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g6993769958_))
                    (let ((_e6994269961_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g6993769958_))))
                      (let ((_hd6994169965_
                             (let ()
                               (declare (not safe))
                               (##car _e6994269961_)))
                            (_tl6994069968_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6994269961_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl6994069968_))
                            (let ((_e6994569971_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl6994069968_))))
                              (let ((_hd6994469975_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6994569971_)))
                                    (_tl6994369978_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6994569971_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl6994369978_))
                                    (let ((_e6994869981_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl6994369978_))))
                                      (let ((_hd6994769985_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6994869981_)))
                                            (_tl6994669988_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6994869981_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl6994669988_))
                                            ((lambda (_L69991_ _L69993_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier? _L69993_))
                                                   (let ((__tmp75016
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp75011
                                                          (let ((__tmp75013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp75015
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp75014
                                (let ()
                                  (declare (not safe))
                                  (cons _L69993_ '()))))
                           (declare (not safe))
                           (cons __tmp75015 __tmp75014)))
                        (__tmp75012
                         (let () (declare (not safe)) (cons _L69991_ '()))))
                    (declare (not safe))
                    (cons __tmp75013 __tmp75012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp75016
                                                           __tmp75011))
                                                   (_g6993669954_
                                                    _g6993769958_)))
                                             _hd6994769985_
                                             _hd6994469975_)
                                            (_g6993669954_ _g6993769958_))))
                                    (_g6993669954_ _g6993769958_))))
                            (_g6993669954_ _g6993769958_))))
                    (_g6993669954_ _g6993769958_)))))
        (_g6993570009_ _$stx69932_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx70013_)
      (let* ((_g7001770046_
              (lambda (_g7001870042_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7001870042_))))
             (_g7001670146_
              (lambda (_g7001870050_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7001870050_))
                    (let ((_e7002370053_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7001870050_))))
                      (let ((_hd7002270057_
                             (let ()
                               (declare (not safe))
                               (##car _e7002370053_)))
                            (_tl7002170060_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7002370053_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7002170060_))
                            (let ((_g75017_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7002170060_
                                      '0))))
                              (begin
                                (let ((_g75018_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g75017_)
                                             (##vector-length _g75017_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g75018_ 2)))
                                      (error "Context expects 2 values"
                                             _g75018_)))
                                (let ((_target7002470063_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75017_ 0)))
                                      (_tl7002670066_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75017_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7002670066_))
                                      (letrec ((_loop7002770069_
                                                (lambda (_hd7002570073_
                                                         _type7003170076_
                                                         _symbol7003270078_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7002570073_))
                                                      (let ((_e7002870081_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7002570073_))))
                (let ((_lp-hd7002970085_
                       (let () (declare (not safe)) (##car _e7002870081_)))
                      (_lp-tl7003070088_
                       (let () (declare (not safe)) (##cdr _e7002870081_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7002970085_))
                      (let ((_e7003770091_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7002970085_))))
                        (let ((_hd7003670095_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7003770091_)))
                              (_tl7003570098_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7003770091_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7003570098_))
                              (let ((_e7004070101_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7003570098_))))
                                (let ((_hd7003970105_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7004070101_)))
                                      (_tl7003870108_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7004070101_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7003870108_))
                                      (_loop7002770069_
                                       _lp-tl7003070088_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd7003970105_
                                               _type7003170076_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd7003670095_
                                               _symbol7003270078_)))
                                      (_g7001770046_ _g7001870050_))))
                              (_g7001770046_ _g7001870050_))))
                      (_g7001770046_ _g7001870050_))))
              (let ((_type7003370111_ (reverse _type7003170076_))
                    (_symbol7003470114_ (reverse _symbol7003270078_)))
                ((lambda (_L70117_ _L70119_)
                   (let ((__tmp75025
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp75019
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L70117_
                               _L70119_))
                            (let ((__tmp75020
                                   (lambda (_g7013470138_
                                            _g7013570141_
                                            _g7013670143_)
                                     (let ((__tmp75021
                                            (let ((__tmp75024
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp75022
                                                   (let ((__tmp75023
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g7013470138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7013570141_
                                                           __tmp75023))))
                                              (declare (not safe))
                                              (cons __tmp75024 __tmp75022))))
                                       (declare (not safe))
                                       (cons __tmp75021 _g7013670143_)))))
                              (declare (not safe))
                              (foldr2 __tmp75020 '() _L70117_ _L70119_)))))
                     (declare (not safe))
                     (cons __tmp75025 __tmp75019)))
                 _type7003370111_
                 _symbol7003470114_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7002770069_
                                         _target7002470063_
                                         '()
                                         '()))
                                      (_g7001770046_ _g7001870050_)))))
                            (_g7001770046_ _g7001870050_))))
                    (_g7001770046_ _g7001870050_)))))
        (_g7001670146_ _$stx70013_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx70151_)
      (let* ((___stx7415274153_ _$stx70151_)
             (_g7015670198_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7415274153_)))))
        (let ((___kont7415574156_
               (lambda (_L70326_ _L70328_ _L70329_ _L70330_)
                 (let ((__tmp75039
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp75026
                        (let ((__tmp75036
                               (let ((__tmp75038
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75037
                                      (let ()
                                        (declare (not safe))
                                        (cons _L70330_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75038 __tmp75037)))
                              (__tmp75027
                               (let ((__tmp75033
                                      (let ((__tmp75035
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75034
                                             (let ()
                                               (declare (not safe))
                                               (cons _L70329_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75035 __tmp75034)))
                                     (__tmp75028
                                      (let ((__tmp75030
                                             (let ((__tmp75032
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp75031
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L70328_ '()))))
                                               (declare (not safe))
                                               (cons __tmp75032 __tmp75031)))
                                            (__tmp75029
                                             (let ()
                                               (declare (not safe))
                                               (cons _L70326_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75030 __tmp75029))))
                                 (declare (not safe))
                                 (cons __tmp75033 __tmp75028))))
                          (declare (not safe))
                          (cons __tmp75036 __tmp75027))))
                   (declare (not safe))
                   (cons __tmp75039 __tmp75026))))
              (___kont7415774158_
               (lambda (_L70245_ _L70247_ _L70248_ _L70249_)
                 (let ((__tmp75040
                        (let ((__tmp75041
                               (let ((__tmp75042
                                      (let ((__tmp75043
                                             (let ((__tmp75044
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp75044 '()))))
                                        (declare (not safe))
                                        (cons _L70245_ __tmp75043))))
                                 (declare (not safe))
                                 (cons _L70247_ __tmp75042))))
                          (declare (not safe))
                          (cons _L70248_ __tmp75041))))
                   (declare (not safe))
                   (cons _L70249_ __tmp75040)))))
          (let ((___match7419174192_
                 (lambda (_e7016470276_
                          _hd7016370280_
                          _tl7016270283_
                          _e7016770286_
                          _hd7016670290_
                          _tl7016570293_
                          _e7017070296_
                          _hd7016970300_
                          _tl7016870303_
                          _e7017370306_
                          _hd7017270310_
                          _tl7017170313_
                          _e7017670316_
                          _hd7017570320_
                          _tl7017470323_)
                   (let ((_L70326_ _hd7017570320_)
                         (_L70328_ _hd7017270310_)
                         (_L70329_ _hd7016970300_)
                         (_L70330_ _hd7016670290_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L70330_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L70329_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L70328_)))
                         (___kont7415574156_
                          _L70326_
                          _L70328_
                          _L70329_
                          _L70330_)
                         (let () (declare (not safe)) (_g7015670198_)))))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7415274153_))
                (let ((_e7016470276_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7415274153_))))
                  (let ((_tl7016270283_
                         (let () (declare (not safe)) (##cdr _e7016470276_)))
                        (_hd7016370280_
                         (let () (declare (not safe)) (##car _e7016470276_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7016270283_))
                        (let ((_e7016770286_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7016270283_))))
                          (let ((_tl7016570293_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7016770286_)))
                                (_hd7016670290_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7016770286_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7016570293_))
                                (let ((_e7017070296_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7016570293_))))
                                  (let ((_tl7016870303_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7017070296_)))
                                        (_hd7016970300_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7017070296_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl7016870303_))
                                        (let ((_e7017370306_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl7016870303_))))
                                          (let ((_tl7017170313_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7017370306_)))
                                                (_hd7017270310_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7017370306_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7017170313_))
                                                (let ((_e7017670316_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7017170313_))))
                                                  (let ((_tl7017470323_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7017670316_)))
                                                        (_hd7017570320_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7017670316_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7017470323_))
                                                        (___match7419174192_
                                                         _e7016470276_
                                                         _hd7016370280_
                                                         _tl7016270283_
                                                         _e7016770286_
                                                         _hd7016670290_
                                                         _tl7016570293_
                                                         _e7017070296_
                                                         _hd7016970300_
                                                         _tl7016870303_
                                                         _e7017370306_
                                                         _hd7017270310_
                                                         _tl7017170313_
                                                         _e7017670316_
                                                         _hd7017570320_
                                                         _tl7017470323_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7015670198_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7017170313_))
                                                    (___kont7415774158_
                                                     _hd7017270310_
                                                     _hd7016970300_
                                                     _hd7016670290_
                                                     _hd7016370280_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7015670198_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g7015670198_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g7015670198_)))))
                        (let () (declare (not safe)) (_g7015670198_)))))
                (let () (declare (not safe)) (_g7015670198_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx70355_)
      (let* ((_g7035970394_
              (lambda (_g7036070390_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7036070390_))))
             (_g7035870513_
              (lambda (_g7036070398_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7036070398_))
                    (let ((_e7036670401_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7036070398_))))
                      (let ((_hd7036570405_
                             (let ()
                               (declare (not safe))
                               (##car _e7036670401_)))
                            (_tl7036470408_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7036670401_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7036470408_))
                            (let ((_g75045_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7036470408_
                                      '0))))
                              (begin
                                (let ((_g75046_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g75045_)
                                             (##vector-length _g75045_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g75046_ 2)))
                                      (error "Context expects 2 values"
                                             _g75046_)))
                                (let ((_target7036770411_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75045_ 0)))
                                      (_tl7036970414_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75045_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7036970414_))
                                      (letrec ((_loop7037070417_
                                                (lambda (_hd7036870421_
                                                         _symbol7037470424_
                                                         _method7037570426_
                                                         _type-t7037670428_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7036870421_))
                                                      (let ((_e7037170431_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7036870421_))))
                (let ((_lp-hd7037270435_
                       (let () (declare (not safe)) (##car _e7037170431_)))
                      (_lp-tl7037370438_
                       (let () (declare (not safe)) (##cdr _e7037170431_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7037270435_))
                      (let ((_e7038270441_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7037270435_))))
                        (let ((_hd7038170445_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7038270441_)))
                              (_tl7038070448_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7038270441_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7038070448_))
                              (let ((_e7038570451_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7038070448_))))
                                (let ((_hd7038470455_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7038570451_)))
                                      (_tl7038370458_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7038570451_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7038370458_))
                                      (let ((_e7038870461_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7038370458_))))
                                        (let ((_hd7038770465_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7038870461_)))
                                              (_tl7038670468_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7038870461_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7038670468_))
                                              (_loop7037070417_
                                               _lp-tl7037370438_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7038770465_
                                                       _symbol7037470424_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7038470455_
                                                       _method7037570426_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7038170445_
                                                       _type-t7037670428_)))
                                              (_g7035970394_ _g7036070398_))))
                                      (_g7035970394_ _g7036070398_))))
                              (_g7035970394_ _g7036070398_))))
                      (_g7035970394_ _g7036070398_))))
              (let ((_symbol7037770471_ (reverse _symbol7037470424_))
                    (_method7037870474_ (reverse _method7037570426_))
                    (_type-t7037970476_ (reverse _type-t7037670428_)))
                ((lambda (_L70479_ _L70481_ _L70482_)
                   (let ((__tmp75054
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp75047
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L70479_
                               _L70481_
                               _L70482_))
                            (let ((__tmp75048
                                   (lambda (_g7049870503_
                                            _g7049970506_
                                            _g7050070508_
                                            _g7050170510_)
                                     (let ((__tmp75049
                                            (let ((__tmp75053
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp75050
                                                   (let ((__tmp75051
                                                          (let ((__tmp75052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g7049870503_ '()))))
                    (declare (not safe))
                    (cons _g7049970506_ __tmp75052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7050070508_
                                                           __tmp75051))))
                                              (declare (not safe))
                                              (cons __tmp75053 __tmp75050))))
                                       (declare (not safe))
                                       (cons __tmp75049 _g7050170510_)))))
                              (declare (not safe))
                              (foldr* __tmp75048
                                      '()
                                      _L70479_
                                      _L70481_
                                      _L70482_)))))
                     (declare (not safe))
                     (cons __tmp75054 __tmp75047)))
                 _symbol7037770471_
                 _method7037870474_
                 _type-t7037970476_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7037070417_
                                         _target7036770411_
                                         '()
                                         '()
                                         '()))
                                      (_g7035970394_ _g7036070398_)))))
                            (_g7035970394_ _g7036070398_))))
                    (_g7035970394_ _g7036070398_)))))
        (_g7035870513_ _$stx70355_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx70518_)
      (let* ((_g7052270555_
              (lambda (_g7052370551_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7052370551_))))
             (_g7052170669_
              (lambda (_g7052370559_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7052370559_))
                    (let ((_e7052970562_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7052370559_))))
                      (let ((_hd7052870566_
                             (let ()
                               (declare (not safe))
                               (##car _e7052970562_)))
                            (_tl7052770569_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7052970562_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7052770569_))
                            (let ((_e7053270572_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7052770569_))))
                              (let ((_hd7053170576_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7053270572_)))
                                    (_tl7053070579_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7053270572_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7053070579_))
                                    (let ((_g75055_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7053070579_
                                              '0))))
                                      (begin
                                        (let ((_g75056_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g75055_)
                                                     (##vector-length _g75055_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g75056_ 2)))
                                              (error "Context expects 2 values"
                                                     _g75056_)))
                                        (let ((_target7053370582_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g75055_ 0)))
                                              (_tl7053570585_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g75055_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7053570585_))
                                              (letrec ((_loop7053670588_
                                                        (lambda (_hd7053470592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol7054070595_
                         _method7054170597_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd7053470592_))
                      (let ((_e7053770600_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd7053470592_))))
                        (let ((_lp-hd7053870604_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7053770600_)))
                              (_lp-tl7053970607_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7053770600_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd7053870604_))
                              (let ((_e7054670610_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd7053870604_))))
                                (let ((_hd7054570614_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7054670610_)))
                                      (_tl7054470617_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7054670610_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7054470617_))
                                      (let ((_e7054970620_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7054470617_))))
                                        (let ((_hd7054870624_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7054970620_)))
                                              (_tl7054770627_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7054970620_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7054770627_))
                                              (_loop7053670588_
                                               _lp-tl7053970607_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7054870624_
                                                       _symbol7054070595_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7054570614_
                                                       _method7054170597_)))
                                              (_g7052270555_ _g7052370559_))))
                                      (_g7052270555_ _g7052370559_))))
                              (_g7052270555_ _g7052370559_))))
                      (let ((_symbol7054270630_ (reverse _symbol7054070595_))
                            (_method7054370633_ (reverse _method7054170597_)))
                        ((lambda (_L70636_ _L70638_ _L70639_)
                           (let ((__tmp75064
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp75057
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L70636_
                                       _L70638_))
                                    (let ((__tmp75058
                                           (lambda (_g7065770661_
                                                    _g7065870664_
                                                    _g7065970666_)
                                             (let ((__tmp75059
                                                    (let ((__tmp75063
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp75060
                                                           (let ((__tmp75061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp75062
                                 (let ()
                                   (declare (not safe))
                                   (cons _g7065770661_ '()))))
                            (declare (not safe))
                            (cons _g7065870664_ __tmp75062))))
                     (declare (not safe))
                     (cons _L70639_ __tmp75061))))
              (declare (not safe))
              (cons __tmp75063 __tmp75060))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp75059
                                                     _g7065970666_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp75058
                                              '()
                                              _L70636_
                                              _L70638_)))))
                             (declare (not safe))
                             (cons __tmp75064 __tmp75057)))
                         _symbol7054270630_
                         _method7054370633_
                         _hd7053170576_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7053670588_
                                                 _target7053370582_
                                                 '()
                                                 '()))
                                              (_g7052270555_ _g7052370559_)))))
                                    (_g7052270555_ _g7052370559_))))
                            (_g7052270555_ _g7052370559_))))
                    (_g7052270555_ _g7052370559_)))))
        (_g7052170669_ _$stx70518_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx70674_)
      (let* ((_g7067870692_
              (lambda (_g7067970688_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7067970688_))))
             (_g7067770733_
              (lambda (_g7067970696_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7067970696_))
                    (let ((_e7068370699_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7067970696_))))
                      (let ((_hd7068270703_
                             (let ()
                               (declare (not safe))
                               (##car _e7068370699_)))
                            (_tl7068170706_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7068370699_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7068170706_))
                            (let ((_e7068670709_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7068170706_))))
                              (let ((_hd7068570713_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7068670709_)))
                                    (_tl7068470716_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7068670709_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7068470716_))
                                    ((lambda (_L70719_)
                                       (let ((__tmp75069
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp75065
                                              (let ((__tmp75066
                                                     (let ((__tmp75068
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp75067
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L70719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp75068 __tmp75067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp75066 '()))))
                                         (declare (not safe))
                                         (cons __tmp75069 __tmp75065)))
                                     _hd7068570713_)
                                    (_g7067870692_ _g7067970696_))))
                            (_g7067870692_ _g7067970696_))))
                    (_g7067870692_ _g7067970696_)))))
        (_g7067770733_ _$stx70674_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx70737_)
      (let* ((___stx7422074221_ _$stx70737_)
             (_g7074370809_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7422074221_)))))
        (let ((___kont7422374224_
               (lambda (_L71031_ _L71033_ _L71034_ _L71035_ _L71036_)
                 (let ((__tmp75075
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f '@make-struct-type)))
                       (__tmp75070
                        (let ((__tmp75071
                               (let ((__tmp75072
                                      (let ((__tmp75073
                                             (let ((__tmp75074
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L71031_ '()))))
                                               (declare (not safe))
                                               (cons _L71033_ __tmp75074))))
                                        (declare (not safe))
                                        (cons _L71034_ __tmp75073))))
                                 (declare (not safe))
                                 (cons _L71035_ __tmp75072))))
                          (declare (not safe))
                          (cons _L71036_ __tmp75071))))
                   (declare (not safe))
                   (cons __tmp75075 __tmp75070))))
              (___kont7422574226_
               (lambda (_L70941_ _L70943_ _L70944_ _L70945_)
                 (let ((__tmp75076
                        (let ((__tmp75077
                               (let ((__tmp75078
                                      (let ((__tmp75079
                                             (let ((__tmp75080
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '#f '()))))
                                               (declare (not safe))
                                               (cons '#f __tmp75080))))
                                        (declare (not safe))
                                        (cons _L70941_ __tmp75079))))
                                 (declare (not safe))
                                 (cons _L70943_ __tmp75078))))
                          (declare (not safe))
                          (cons _L70944_ __tmp75077))))
                   (declare (not safe))
                   (cons _L70945_ __tmp75076))))
              (___kont7422774228_
               (lambda (_L70866_ _L70868_ _L70869_ _L70870_ _L70871_)
                 (let ((__tmp75081
                        (let ((__tmp75086
                               (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'type)))
                              (__tmp75082
                               (let ((__tmp75083
                                      (let ((__tmp75084
                                             (let ((__tmp75085
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '#f '()))))
                                               (declare (not safe))
                                               (cons _L70866_ __tmp75085))))
                                        (declare (not safe))
                                        (cons _L70868_ __tmp75084))))
                                 (declare (not safe))
                                 (cons _L70869_ __tmp75083))))
                          (declare (not safe))
                          (cons __tmp75086 __tmp75082))))
                   (declare (not safe))
                   (cons _L70871_ __tmp75081)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7422074221_))
              (let ((_e7075270971_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7422074221_))))
                (let ((_tl7075070978_
                       (let () (declare (not safe)) (##cdr _e7075270971_)))
                      (_hd7075170975_
                       (let () (declare (not safe)) (##car _e7075270971_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7075070978_))
                      (let ((_e7075570981_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7075070978_))))
                        (let ((_tl7075370988_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7075570981_)))
                              (_hd7075470985_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7075570981_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7075370988_))
                              (let ((_e7075870991_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7075370988_))))
                                (let ((_tl7075670998_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7075870991_)))
                                      (_hd7075770995_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7075870991_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7075670998_))
                                      (let ((_e7076171001_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7075670998_))))
                                        (let ((_tl7075971008_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7076171001_)))
                                              (_hd7076071005_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7076171001_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl7075971008_))
                                              (let ((_e7076471011_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl7075971008_))))
                                                (let ((_tl7076271018_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e7076471011_)))
                                                      (_hd7076371015_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e7076471011_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl7076271018_))
                                                      (let ((_e7076771021_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _tl7076271018_))))
                (let ((_tl7076571028_
                       (let () (declare (not safe)) (##cdr _e7076771021_)))
                      (_hd7076671025_
                       (let () (declare (not safe)) (##car _e7076771021_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7076571028_))
                      (___kont7422374224_
                       _hd7076671025_
                       _hd7076371015_
                       _hd7076071005_
                       _hd7075770995_
                       _hd7075470985_)
                      (let () (declare (not safe)) (_g7074370809_)))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7076271018_))
                  (___kont7422774228_
                   _hd7076371015_
                   _hd7076071005_
                   _hd7075770995_
                   _hd7075470985_
                   _hd7075170975_)
                  (let () (declare (not safe)) (_g7074370809_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7075971008_))
                                                  (___kont7422574226_
                                                   _hd7076071005_
                                                   _hd7075770995_
                                                   _hd7075470985_
                                                   _hd7075170975_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7074370809_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g7074370809_)))))
                              (let () (declare (not safe)) (_g7074370809_)))))
                      (let () (declare (not safe)) (_g7074370809_)))))
              (let () (declare (not safe)) (_g7074370809_)))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx71064_)
      (let* ((___stx7432874329_ _$stx71064_)
             (_g7106971122_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7432874329_)))))
        (let ((___kont7433174332_
               (lambda (_L71290_ _L71292_ _L71293_ _L71294_)
                 (let ((__tmp75102
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-type)))
                       (__tmp75087
                        (let ((__tmp75099
                               (let ((__tmp75101
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75100
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71294_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75101 __tmp75100)))
                              (__tmp75088
                               (let ((__tmp75089
                                      (let ((__tmp75090
                                             (let ((__tmp75091
                                                    (let ((__tmp75096
                                                           (let ((__tmp75098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp75097
                          (let () (declare (not safe)) (cons _L71292_ '()))))
                     (declare (not safe))
                     (cons __tmp75098 __tmp75097)))
                  (__tmp75092
                   (let ((__tmp75093
                          (let ((__tmp75095
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp75094
                                 (let ()
                                   (declare (not safe))
                                   (cons _L71290_ '()))))
                            (declare (not safe))
                            (cons __tmp75095 __tmp75094))))
                     (declare (not safe))
                     (cons __tmp75093 '()))))
              (declare (not safe))
              (cons __tmp75096 __tmp75092))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '0 __tmp75091))))
                                        (declare (not safe))
                                        (cons _L71293_ __tmp75090))))
                                 (declare (not safe))
                                 (cons '#f __tmp75089))))
                          (declare (not safe))
                          (cons __tmp75099 __tmp75088))))
                   (declare (not safe))
                   (cons __tmp75102 __tmp75087))))
              (___kont7433374334_
               (lambda (_L71189_ _L71191_ _L71192_ _L71193_ _L71194_)
                 (let ((__tmp75184
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'let*)))
                       (__tmp75103
                        (let ((__tmp75124
                               (let ((__tmp75175
                                      (let ((__tmp75183
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'super-type)))
                                            (__tmp75176
                                             (let ((__tmp75177
                                                    (let ((__tmp75182
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-resolve-type)))
                                                          (__tmp75178
                                                           (let ((__tmp75179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp75181
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp75180
                                 (let ()
                                   (declare (not safe))
                                   (cons _L71193_ '()))))
                            (declare (not safe))
                            (cons __tmp75181 __tmp75180))))
                     (declare (not safe))
                     (cons __tmp75179 '()))))
              (declare (not safe))
              (cons __tmp75182 __tmp75178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp75177 '()))))
                                        (declare (not safe))
                                        (cons __tmp75183 __tmp75176)))
                                     (__tmp75125
                                      (let ((__tmp75147
                                             (let ((__tmp75174
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'xfields)))
                                                   (__tmp75148
                                                    (let ((__tmp75149
                                                           (let ((__tmp75173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'and)))
                         (__tmp75150
                          (let ((__tmp75172
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'super-type)))
                                (__tmp75151
                                 (let ((__tmp75152
                                        (let ((__tmp75171
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'alet)))
                                              (__tmp75153
                                               (let ((__tmp75164
                                                      (let ((__tmp75170
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'xfields)))
                    (__tmp75165
                     (let ((__tmp75166
                            (let ((__tmp75169
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      '!struct-type-xfields)))
                                  (__tmp75167
                                   (let ((__tmp75168
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'super-type))))
                                     (declare (not safe))
                                     (cons __tmp75168 '()))))
                              (declare (not safe))
                              (cons __tmp75169 __tmp75167))))
                       (declare (not safe))
                       (cons __tmp75166 '()))))
                (declare (not safe))
                (cons __tmp75170 __tmp75165)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp75154
                                                      (let ((__tmp75155
                                                             (let ((__tmp75163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'fx+)))
                           (__tmp75156
                            (let ((__tmp75162
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'xfields)))
                                  (__tmp75157
                                   (let ((__tmp75158
                                          (let ((__tmp75161
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '!struct-type-fields)))
                                                (__tmp75159
                                                 (let ((__tmp75160
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'super-type))))
                                                   (declare (not safe))
                                                   (cons __tmp75160 '()))))
                                            (declare (not safe))
                                            (cons __tmp75161 __tmp75159))))
                                     (declare (not safe))
                                     (cons __tmp75158 '()))))
                              (declare (not safe))
                              (cons __tmp75162 __tmp75157))))
                       (declare (not safe))
                       (cons __tmp75163 __tmp75156))))
                (declare (not safe))
                (cons __tmp75155 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp75164
                                                       __tmp75154))))
                                          (declare (not safe))
                                          (cons __tmp75171 __tmp75153))))
                                   (declare (not safe))
                                   (cons __tmp75152 '()))))
                            (declare (not safe))
                            (cons __tmp75172 __tmp75151))))
                     (declare (not safe))
                     (cons __tmp75173 __tmp75150))))
              (declare (not safe))
              (cons __tmp75149 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp75174 __tmp75148)))
                                            (__tmp75126
                                             (let ((__tmp75127
                                                    (let ((__tmp75146
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'xtor)))
                                                          (__tmp75128
                                                           (let ((__tmp75129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp75145
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'or)))
                                (__tmp75130
                                 (let ((__tmp75142
                                        (let ((__tmp75144
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp75143
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L71191_ '()))))
                                          (declare (not safe))
                                          (cons __tmp75144 __tmp75143)))
                                       (__tmp75131
                                        (let ((__tmp75132
                                               (let ((__tmp75141
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'if)))
                                                     (__tmp75133
                                                      (let ((__tmp75140
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'super-type)))
                    (__tmp75134
                     (let ((__tmp75136
                            (let ((__tmp75139
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      '!struct-type-ctor)))
                                  (__tmp75137
                                   (let ((__tmp75138
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'super-type))))
                                     (declare (not safe))
                                     (cons __tmp75138 '()))))
                              (declare (not safe))
                              (cons __tmp75139 __tmp75137)))
                           (__tmp75135
                            (let () (declare (not safe)) (cons '#!void '()))))
                       (declare (not safe))
                       (cons __tmp75136 __tmp75135))))
                (declare (not safe))
                (cons __tmp75140 __tmp75134))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp75141
                                                       __tmp75133))))
                                          (declare (not safe))
                                          (cons __tmp75132 '()))))
                                   (declare (not safe))
                                   (cons __tmp75142 __tmp75131))))
                            (declare (not safe))
                            (cons __tmp75145 __tmp75130))))
                     (declare (not safe))
                     (cons __tmp75129 '()))))
              (declare (not safe))
              (cons __tmp75146 __tmp75128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp75127 '()))))
                                        (declare (not safe))
                                        (cons __tmp75147 __tmp75126))))
                                 (declare (not safe))
                                 (cons __tmp75175 __tmp75125)))
                              (__tmp75104
                               (let ((__tmp75105
                                      (let ((__tmp75123
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!struct-type)))
                                            (__tmp75106
                                             (let ((__tmp75120
                                                    (let ((__tmp75122
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp75121
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L71194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp75122 __tmp75121)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp75107
                                                    (let ((__tmp75117
                                                           (let ((__tmp75119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp75118
                          (let () (declare (not safe)) (cons _L71193_ '()))))
                     (declare (not safe))
                     (cons __tmp75119 __tmp75118)))
                  (__tmp75108
                   (let ((__tmp75109
                          (let ((__tmp75116
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'xfields)))
                                (__tmp75110
                                 (let ((__tmp75115
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'xtor)))
                                       (__tmp75111
                                        (let ((__tmp75112
                                               (let ((__tmp75114
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'quote)))
                                                     (__tmp75113
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L71189_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp75114
                                                       __tmp75113))))
                                          (declare (not safe))
                                          (cons __tmp75112 '()))))
                                   (declare (not safe))
                                   (cons __tmp75115 __tmp75111))))
                            (declare (not safe))
                            (cons __tmp75116 __tmp75110))))
                     (declare (not safe))
                     (cons _L71192_ __tmp75109))))
              (declare (not safe))
              (cons __tmp75117 __tmp75108))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp75120 __tmp75107))))
                                        (declare (not safe))
                                        (cons __tmp75123 __tmp75106))))
                                 (declare (not safe))
                                 (cons __tmp75105 '()))))
                          (declare (not safe))
                          (cons __tmp75124 __tmp75104))))
                   (declare (not safe))
                   (cons __tmp75184 __tmp75103)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7432874329_))
              (let ((_e7107771226_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7432874329_))))
                (let ((_tl7107571233_
                       (let () (declare (not safe)) (##cdr _e7107771226_)))
                      (_hd7107671230_
                       (let () (declare (not safe)) (##car _e7107771226_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7107571233_))
                      (let ((_e7108071236_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7107571233_))))
                        (let ((_tl7107871243_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7108071236_)))
                              (_hd7107971240_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7108071236_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7107871243_))
                              (let ((_e7108371246_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7107871243_))))
                                (let ((_tl7108171253_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7108371246_)))
                                      (_hd7108271250_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7108371246_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd7108271250_))
                                      (let ((_e7108471256_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd7108271250_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e7108471256_ '#f))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7108171253_))
                                                (let ((_e7108771260_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7108171253_))))
                                                  (let ((_tl7108571267_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7108771260_)))
                                                        (_hd7108671264_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7108771260_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7108571267_))
                                                        (let ((_e7109071270_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7108571267_))))
                  (let ((_tl7108871277_
                         (let () (declare (not safe)) (##cdr _e7109071270_)))
                        (_hd7108971274_
                         (let () (declare (not safe)) (##car _e7109071270_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7108871277_))
                        (let ((_e7109371280_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7108871277_))))
                          (let ((_tl7109171287_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7109371280_)))
                                (_hd7109271284_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7109371280_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7109171287_))
                                (___kont7433174332_
                                 _hd7109271284_
                                 _hd7108971274_
                                 _hd7108671264_
                                 _hd7107971240_)
                                (let ()
                                  (declare (not safe))
                                  (_g7106971122_)))))
                        (let () (declare (not safe)) (_g7106971122_)))))
                (let () (declare (not safe)) (_g7106971122_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7106971122_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7108171253_))
                                                (let ((_e7111071159_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7108171253_))))
                                                  (let ((_tl7110871166_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7111071159_)))
                                                        (_hd7110971163_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7111071159_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7110871166_))
                                                        (let ((_e7111371169_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7110871166_))))
                  (let ((_tl7111171176_
                         (let () (declare (not safe)) (##cdr _e7111371169_)))
                        (_hd7111271173_
                         (let () (declare (not safe)) (##car _e7111371169_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7111171176_))
                        (let ((_e7111671179_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7111171176_))))
                          (let ((_tl7111471186_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7111671179_)))
                                (_hd7111571183_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7111671179_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7111471186_))
                                (___kont7433374334_
                                 _hd7111571183_
                                 _hd7111271173_
                                 _hd7110971163_
                                 _hd7108271250_
                                 _hd7107971240_)
                                (let ()
                                  (declare (not safe))
                                  (_g7106971122_)))))
                        (let () (declare (not safe)) (_g7106971122_)))))
                (let () (declare (not safe)) (_g7106971122_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7106971122_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl7108171253_))
                                          (let ((_e7111071159_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl7108171253_))))
                                            (let ((_tl7110871166_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7111071159_)))
                                                  (_hd7110971163_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7111071159_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl7110871166_))
                                                  (let ((_e7111371169_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl7110871166_))))
                                                    (let ((_tl7111171176_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e7111371169_)))
                                                          (_hd7111271173_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e7111371169_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl7111171176_))
                                                          (let ((_e7111671179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _tl7111171176_))))
                    (let ((_tl7111471186_
                           (let () (declare (not safe)) (##cdr _e7111671179_)))
                          (_hd7111571183_
                           (let ()
                             (declare (not safe))
                             (##car _e7111671179_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl7111471186_))
                          (___kont7433374334_
                           _hd7111571183_
                           _hd7111271173_
                           _hd7110971163_
                           _hd7108271250_
                           _hd7107971240_)
                          (let () (declare (not safe)) (_g7106971122_)))))
                  (let () (declare (not safe)) (_g7106971122_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7106971122_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g7106971122_))))))
                              (let () (declare (not safe)) (_g7106971122_)))))
                      (let () (declare (not safe)) (_g7106971122_)))))
              (let () (declare (not safe)) (_g7106971122_)))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx71322_)
      (let* ((_g7132671340_
              (lambda (_g7132771336_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7132771336_))))
             (_g7132571381_
              (lambda (_g7132771344_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7132771344_))
                    (let ((_e7133171347_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7132771344_))))
                      (let ((_hd7133071351_
                             (let ()
                               (declare (not safe))
                               (##car _e7133171347_)))
                            (_tl7132971354_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7133171347_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7132971354_))
                            (let ((_e7133471357_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7132971354_))))
                              (let ((_hd7133371361_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7133471357_)))
                                    (_tl7133271364_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7133471357_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7133271364_))
                                    ((lambda (_L71367_)
                                       (let ((__tmp75189
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!struct-pred)))
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
                                                              (cons _L71367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp75188 __tmp75187))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp75186 '()))))
                                         (declare (not safe))
                                         (cons __tmp75189 __tmp75185)))
                                     _hd7133371361_)
                                    (_g7132671340_ _g7132771344_))))
                            (_g7132671340_ _g7132771344_))))
                    (_g7132671340_ _g7132771344_)))))
        (_g7132571381_ _$stx71322_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx71385_)
      (let* ((_g7138971403_
              (lambda (_g7139071399_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7139071399_))))
             (_g7138871444_
              (lambda (_g7139071407_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7139071407_))
                    (let ((_e7139471410_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7139071407_))))
                      (let ((_hd7139371414_
                             (let ()
                               (declare (not safe))
                               (##car _e7139471410_)))
                            (_tl7139271417_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7139471410_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7139271417_))
                            (let ((_e7139771420_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7139271417_))))
                              (let ((_hd7139671424_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7139771420_)))
                                    (_tl7139571427_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7139771420_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7139571427_))
                                    ((lambda (_L71430_)
                                       (let ((__tmp75194
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!struct-cons)))
                                             (__tmp75190
                                              (let ((__tmp75191
                                                     (let ((__tmp75193
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp75192
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L71430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp75193 __tmp75192))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp75191 '()))))
                                         (declare (not safe))
                                         (cons __tmp75194 __tmp75190)))
                                     _hd7139671424_)
                                    (_g7138971403_ _g7139071407_))))
                            (_g7138971403_ _g7139071407_))))
                    (_g7138971403_ _g7139071407_)))))
        (_g7138871444_ _$stx71385_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx71448_)
      (let* ((___stx7442074421_ _$stx71448_)
             (_g7145371486_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7442074421_)))))
        (let ((___kont7442374424_
               (lambda (_L71588_ _L71590_ _L71591_)
                 (let ((__tmp75201
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-getf)))
                       (__tmp75195
                        (let ((__tmp75198
                               (let ((__tmp75200
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75199
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71591_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75200 __tmp75199)))
                              (__tmp75196
                               (let ((__tmp75197
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71588_ '()))))
                                 (declare (not safe))
                                 (cons _L71590_ __tmp75197))))
                          (declare (not safe))
                          (cons __tmp75198 __tmp75196))))
                   (declare (not safe))
                   (cons __tmp75201 __tmp75195))))
              (___kont7442574426_
               (lambda (_L71523_ _L71525_)
                 (let ((__tmp75208
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-getf)))
                       (__tmp75202
                        (let ((__tmp75205
                               (let ((__tmp75207
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75206
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71525_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75207 __tmp75206)))
                              (__tmp75203
                               (let ((__tmp75204
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L71523_ __tmp75204))))
                          (declare (not safe))
                          (cons __tmp75205 __tmp75203))))
                   (declare (not safe))
                   (cons __tmp75208 __tmp75202)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7442074421_))
              (let ((_e7146071548_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7442074421_))))
                (let ((_tl7145871555_
                       (let () (declare (not safe)) (##cdr _e7146071548_)))
                      (_hd7145971552_
                       (let () (declare (not safe)) (##car _e7146071548_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7145871555_))
                      (let ((_e7146371558_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7145871555_))))
                        (let ((_tl7146171565_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7146371558_)))
                              (_hd7146271562_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7146371558_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7146171565_))
                              (let ((_e7146671568_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7146171565_))))
                                (let ((_tl7146471575_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7146671568_)))
                                      (_hd7146571572_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7146671568_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7146471575_))
                                      (let ((_e7146971578_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7146471575_))))
                                        (let ((_tl7146771585_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7146971578_)))
                                              (_hd7146871582_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7146971578_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7146771585_))
                                              (___kont7442374424_
                                               _hd7146871582_
                                               _hd7146571572_
                                               _hd7146271562_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7145371486_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7146471575_))
                                          (___kont7442574426_
                                           _hd7146571572_
                                           _hd7146271562_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7145371486_))))))
                              (let () (declare (not safe)) (_g7145371486_)))))
                      (let () (declare (not safe)) (_g7145371486_)))))
              (let () (declare (not safe)) (_g7145371486_)))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx71613_)
      (let* ((___stx7447674477_ _$stx71613_)
             (_g7161871651_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7447674477_)))))
        (let ((___kont7447974480_
               (lambda (_L71753_ _L71755_ _L71756_)
                 (let ((__tmp75215
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-setf)))
                       (__tmp75209
                        (let ((__tmp75212
                               (let ((__tmp75214
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75213
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71756_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75214 __tmp75213)))
                              (__tmp75210
                               (let ((__tmp75211
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71753_ '()))))
                                 (declare (not safe))
                                 (cons _L71755_ __tmp75211))))
                          (declare (not safe))
                          (cons __tmp75212 __tmp75210))))
                   (declare (not safe))
                   (cons __tmp75215 __tmp75209))))
              (___kont7448174482_
               (lambda (_L71688_ _L71690_)
                 (let ((__tmp75222
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-setf)))
                       (__tmp75216
                        (let ((__tmp75219
                               (let ((__tmp75221
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75220
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71690_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75221 __tmp75220)))
                              (__tmp75217
                               (let ((__tmp75218
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L71688_ __tmp75218))))
                          (declare (not safe))
                          (cons __tmp75219 __tmp75217))))
                   (declare (not safe))
                   (cons __tmp75222 __tmp75216)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7447674477_))
              (let ((_e7162571713_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7447674477_))))
                (let ((_tl7162371720_
                       (let () (declare (not safe)) (##cdr _e7162571713_)))
                      (_hd7162471717_
                       (let () (declare (not safe)) (##car _e7162571713_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7162371720_))
                      (let ((_e7162871723_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7162371720_))))
                        (let ((_tl7162671730_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7162871723_)))
                              (_hd7162771727_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7162871723_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7162671730_))
                              (let ((_e7163171733_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7162671730_))))
                                (let ((_tl7162971740_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7163171733_)))
                                      (_hd7163071737_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7163171733_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7162971740_))
                                      (let ((_e7163471743_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7162971740_))))
                                        (let ((_tl7163271750_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7163471743_)))
                                              (_hd7163371747_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7163471743_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7163271750_))
                                              (___kont7447974480_
                                               _hd7163371747_
                                               _hd7163071737_
                                               _hd7162771727_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7161871651_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7162971740_))
                                          (___kont7448174482_
                                           _hd7163071737_
                                           _hd7162771727_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7161871651_))))))
                              (let () (declare (not safe)) (_g7161871651_)))))
                      (let () (declare (not safe)) (_g7161871651_)))))
              (let () (declare (not safe)) (_g7161871651_)))))))
  (define |gxc[:0:]#@class-type|
    (lambda (_$stx71778_)
      (let* ((_g7178271820_
              (lambda (_g7178371816_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7178371816_))))
             (_g7178171945_
              (lambda (_g7178371824_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7178371824_))
                    (let ((_e7179371827_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7178371824_))))
                      (let ((_hd7179271831_
                             (let ()
                               (declare (not safe))
                               (##car _e7179371827_)))
                            (_tl7179171834_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7179371827_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7179171834_))
                            (let ((_e7179671837_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7179171834_))))
                              (let ((_hd7179571841_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7179671837_)))
                                    (_tl7179471844_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7179671837_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7179471844_))
                                    (let ((_e7179971847_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7179471844_))))
                                      (let ((_hd7179871851_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7179971847_)))
                                            (_tl7179771854_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7179971847_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl7179771854_))
                                            (let ((_e7180271857_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl7179771854_))))
                                              (let ((_hd7180171861_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7180271857_)))
                                                    (_tl7180071864_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7180271857_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7180071864_))
                                                    (let ((_e7180571867_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7180071864_))))
                                                      (let ((_hd7180471871_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e7180571867_)))
                    (_tl7180371874_
                     (let () (declare (not safe)) (##cdr _e7180571867_))))
                (if (let () (declare (not safe)) (gx#stx-pair? _tl7180371874_))
                    (let ((_e7180871877_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl7180371874_))))
                      (let ((_hd7180771881_
                             (let ()
                               (declare (not safe))
                               (##car _e7180871877_)))
                            (_tl7180671884_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7180871877_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7180671884_))
                            (let ((_e7181171887_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7180671884_))))
                              (let ((_hd7181071891_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7181171887_)))
                                    (_tl7180971894_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7181171887_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7180971894_))
                                    (let ((_e7181471897_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7180971894_))))
                                      (let ((_hd7181371901_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7181471897_)))
                                            (_tl7181271904_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7181471897_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7181271904_))
                                            ((lambda (_L71907_
                                                      _L71909_
                                                      _L71910_
                                                      _L71911_
                                                      _L71912_
                                                      _L71913_
                                                      _L71914_)
                                               (let ((__tmp75251
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!class-type)))
                                                     (__tmp75223
                                                      (let ((__tmp75248
                                                             (let ((__tmp75250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp75249
                            (let () (declare (not safe)) (cons _L71914_ '()))))
                       (declare (not safe))
                       (cons __tmp75250 __tmp75249)))
                    (__tmp75224
                     (let ((__tmp75245
                            (let ((__tmp75247
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp75246
                                   (let ()
                                     (declare (not safe))
                                     (cons _L71913_ '()))))
                              (declare (not safe))
                              (cons __tmp75247 __tmp75246)))
                           (__tmp75225
                            (let ((__tmp75242
                                   (let ((__tmp75244
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp75243
                                          (let ()
                                            (declare (not safe))
                                            (cons _L71912_ '()))))
                                     (declare (not safe))
                                     (cons __tmp75244 __tmp75243)))
                                  (__tmp75226
                                   (let ((__tmp75239
                                          (let ((__tmp75241
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote)))
                                                (__tmp75240
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L71911_ '()))))
                                            (declare (not safe))
                                            (cons __tmp75241 __tmp75240)))
                                         (__tmp75227
                                          (let ((__tmp75236
                                                 (let ((__tmp75238
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote)))
                                                       (__tmp75237
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L71910_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp75238
                                                         __tmp75237)))
                                                (__tmp75228
                                                 (let ((__tmp75233
                                                        (let ((__tmp75235
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote)))
                      (__tmp75234
                       (let () (declare (not safe)) (cons _L71909_ '()))))
                  (declare (not safe))
                  (cons __tmp75235 __tmp75234)))
               (__tmp75229
                (let ((__tmp75230
                       (let ((__tmp75232
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote)))
                             (__tmp75231
                              (let ()
                                (declare (not safe))
                                (cons _L71907_ '()))))
                         (declare (not safe))
                         (cons __tmp75232 __tmp75231))))
                  (declare (not safe))
                  (cons __tmp75230 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp75233
                                                         __tmp75229))))
                                            (declare (not safe))
                                            (cons __tmp75236 __tmp75228))))
                                     (declare (not safe))
                                     (cons __tmp75239 __tmp75227))))
                              (declare (not safe))
                              (cons __tmp75242 __tmp75226))))
                       (declare (not safe))
                       (cons __tmp75245 __tmp75225))))
                (declare (not safe))
                (cons __tmp75248 __tmp75224))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp75251 __tmp75223)))
                                             _hd7181371901_
                                             _hd7181071891_
                                             _hd7180771881_
                                             _hd7180471871_
                                             _hd7180171861_
                                             _hd7179871851_
                                             _hd7179571841_)
                                            (_g7178271820_ _g7178371824_))))
                                    (_g7178271820_ _g7178371824_))))
                            (_g7178271820_ _g7178371824_))))
                    (_g7178271820_ _g7178371824_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7178271820_
                                                     _g7178371824_))))
                                            (_g7178271820_ _g7178371824_))))
                                    (_g7178271820_ _g7178371824_))))
                            (_g7178271820_ _g7178371824_))))
                    (_g7178271820_ _g7178371824_)))))
        (_g7178171945_ _$stx71778_))))
  (define |gxc[:0:]#@class-pred|
    (lambda (_$stx71949_)
      (let* ((_g7195371967_
              (lambda (_g7195471963_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7195471963_))))
             (_g7195272008_
              (lambda (_g7195471971_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7195471971_))
                    (let ((_e7195871974_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7195471971_))))
                      (let ((_hd7195771978_
                             (let ()
                               (declare (not safe))
                               (##car _e7195871974_)))
                            (_tl7195671981_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7195871974_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7195671981_))
                            (let ((_e7196171984_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7195671981_))))
                              (let ((_hd7196071988_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7196171984_)))
                                    (_tl7195971991_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7196171984_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7195971991_))
                                    ((lambda (_L71994_)
                                       (let ((__tmp75256
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class-pred)))
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
                                                              (cons _L71994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp75255 __tmp75254))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp75253 '()))))
                                         (declare (not safe))
                                         (cons __tmp75256 __tmp75252)))
                                     _hd7196071988_)
                                    (_g7195371967_ _g7195471971_))))
                            (_g7195371967_ _g7195471971_))))
                    (_g7195371967_ _g7195471971_)))))
        (_g7195272008_ _$stx71949_))))
  (define |gxc[:0:]#@class-cons|
    (lambda (_$stx72012_)
      (let* ((_g7201672030_
              (lambda (_g7201772026_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7201772026_))))
             (_g7201572071_
              (lambda (_g7201772034_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7201772034_))
                    (let ((_e7202172037_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7201772034_))))
                      (let ((_hd7202072041_
                             (let ()
                               (declare (not safe))
                               (##car _e7202172037_)))
                            (_tl7201972044_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7202172037_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7201972044_))
                            (let ((_e7202472047_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7201972044_))))
                              (let ((_hd7202372051_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7202472047_)))
                                    (_tl7202272054_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7202472047_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7202272054_))
                                    ((lambda (_L72057_)
                                       (let ((__tmp75261
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class-cons)))
                                             (__tmp75257
                                              (let ((__tmp75258
                                                     (let ((__tmp75260
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp75259
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L72057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp75260 __tmp75259))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp75258 '()))))
                                         (declare (not safe))
                                         (cons __tmp75261 __tmp75257)))
                                     _hd7202372051_)
                                    (_g7201672030_ _g7201772034_))))
                            (_g7201672030_ _g7201772034_))))
                    (_g7201672030_ _g7201772034_)))))
        (_g7201572071_ _$stx72012_))))
  (define |gxc[:0:]#@class-getf|
    (lambda (_$stx72075_)
      (let* ((___stx7453274533_ _$stx72075_)
             (_g7208072113_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7453274533_)))))
        (let ((___kont7453574536_
               (lambda (_L72215_ _L72217_ _L72218_)
                 (let ((__tmp75271
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-getf)))
                       (__tmp75262
                        (let ((__tmp75268
                               (let ((__tmp75270
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75269
                                      (let ()
                                        (declare (not safe))
                                        (cons _L72218_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75270 __tmp75269)))
                              (__tmp75263
                               (let ((__tmp75265
                                      (let ((__tmp75267
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75266
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72217_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75267 __tmp75266)))
                                     (__tmp75264
                                      (let ()
                                        (declare (not safe))
                                        (cons _L72215_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75265 __tmp75264))))
                          (declare (not safe))
                          (cons __tmp75268 __tmp75263))))
                   (declare (not safe))
                   (cons __tmp75271 __tmp75262))))
              (___kont7453774538_
               (lambda (_L72150_ _L72152_)
                 (let ((__tmp75281
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-getf)))
                       (__tmp75272
                        (let ((__tmp75278
                               (let ((__tmp75280
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75279
                                      (let ()
                                        (declare (not safe))
                                        (cons _L72152_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75280 __tmp75279)))
                              (__tmp75273
                               (let ((__tmp75275
                                      (let ((__tmp75277
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75276
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72150_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75277 __tmp75276)))
                                     (__tmp75274
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons __tmp75275 __tmp75274))))
                          (declare (not safe))
                          (cons __tmp75278 __tmp75273))))
                   (declare (not safe))
                   (cons __tmp75281 __tmp75272)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7453274533_))
              (let ((_e7208772175_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7453274533_))))
                (let ((_tl7208572182_
                       (let () (declare (not safe)) (##cdr _e7208772175_)))
                      (_hd7208672179_
                       (let () (declare (not safe)) (##car _e7208772175_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7208572182_))
                      (let ((_e7209072185_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7208572182_))))
                        (let ((_tl7208872192_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7209072185_)))
                              (_hd7208972189_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7209072185_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7208872192_))
                              (let ((_e7209372195_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7208872192_))))
                                (let ((_tl7209172202_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7209372195_)))
                                      (_hd7209272199_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7209372195_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7209172202_))
                                      (let ((_e7209672205_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7209172202_))))
                                        (let ((_tl7209472212_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7209672205_)))
                                              (_hd7209572209_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7209672205_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7209472212_))
                                              (___kont7453574536_
                                               _hd7209572209_
                                               _hd7209272199_
                                               _hd7208972189_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7208072113_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7209172202_))
                                          (___kont7453774538_
                                           _hd7209272199_
                                           _hd7208972189_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7208072113_))))))
                              (let () (declare (not safe)) (_g7208072113_)))))
                      (let () (declare (not safe)) (_g7208072113_)))))
              (let () (declare (not safe)) (_g7208072113_)))))))
  (define |gxc[:0:]#@class-setf|
    (lambda (_$stx72240_)
      (let* ((___stx7458874589_ _$stx72240_)
             (_g7224572278_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7458874589_)))))
        (let ((___kont7459174592_
               (lambda (_L72380_ _L72382_ _L72383_)
                 (let ((__tmp75291
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-setf)))
                       (__tmp75282
                        (let ((__tmp75288
                               (let ((__tmp75290
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75289
                                      (let ()
                                        (declare (not safe))
                                        (cons _L72383_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75290 __tmp75289)))
                              (__tmp75283
                               (let ((__tmp75285
                                      (let ((__tmp75287
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75286
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72382_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75287 __tmp75286)))
                                     (__tmp75284
                                      (let ()
                                        (declare (not safe))
                                        (cons _L72380_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75285 __tmp75284))))
                          (declare (not safe))
                          (cons __tmp75288 __tmp75283))))
                   (declare (not safe))
                   (cons __tmp75291 __tmp75282))))
              (___kont7459374594_
               (lambda (_L72315_ _L72317_)
                 (let ((__tmp75301
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-setf)))
                       (__tmp75292
                        (let ((__tmp75298
                               (let ((__tmp75300
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75299
                                      (let ()
                                        (declare (not safe))
                                        (cons _L72317_ '()))))
                                 (declare (not safe))
                                 (cons __tmp75300 __tmp75299)))
                              (__tmp75293
                               (let ((__tmp75295
                                      (let ((__tmp75297
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75296
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72315_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75297 __tmp75296)))
                                     (__tmp75294
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons __tmp75295 __tmp75294))))
                          (declare (not safe))
                          (cons __tmp75298 __tmp75293))))
                   (declare (not safe))
                   (cons __tmp75301 __tmp75292)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7458874589_))
              (let ((_e7225272340_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7458874589_))))
                (let ((_tl7225072347_
                       (let () (declare (not safe)) (##cdr _e7225272340_)))
                      (_hd7225172344_
                       (let () (declare (not safe)) (##car _e7225272340_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7225072347_))
                      (let ((_e7225572350_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7225072347_))))
                        (let ((_tl7225372357_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7225572350_)))
                              (_hd7225472354_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7225572350_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7225372357_))
                              (let ((_e7225872360_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7225372357_))))
                                (let ((_tl7225672367_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7225872360_)))
                                      (_hd7225772364_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7225872360_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7225672367_))
                                      (let ((_e7226172370_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7225672367_))))
                                        (let ((_tl7225972377_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7226172370_)))
                                              (_hd7226072374_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7226172370_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7225972377_))
                                              (___kont7459174592_
                                               _hd7226072374_
                                               _hd7225772364_
                                               _hd7225472354_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7224572278_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7225672367_))
                                          (___kont7459374594_
                                           _hd7225772364_
                                           _hd7225472354_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7224572278_))))))
                              (let () (declare (not safe)) (_g7224572278_)))))
                      (let () (declare (not safe)) (_g7224572278_)))))
              (let () (declare (not safe)) (_g7224572278_)))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx72405_)
      (let* ((___stx7464474645_ _$stx72405_)
             (_g7241372481_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7464474645_)))))
        (let ((___kont7464774648_
               (lambda (_L72759_ _L72761_)
                 (let ((__tmp75317
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp75302
                        (let ((__tmp75313
                               (let ((__tmp75316
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75314
                                      (let ((__tmp75315
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp75315 '()))))
                                 (declare (not safe))
                                 (cons __tmp75316 __tmp75314)))
                              (__tmp75303
                               (let ((__tmp75310
                                      (let ((__tmp75312
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75311
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72761_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75312 __tmp75311)))
                                     (__tmp75304
                                      (let ((__tmp75305
                                             (let ((__tmp75306
                                                    (let ((__tmp75307
                                                           (let ((__tmp75309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp75308
                          (let () (declare (not safe)) (cons _L72759_ '()))))
                     (declare (not safe))
                     (cons __tmp75309 __tmp75308))))
              (declare (not safe))
              (cons __tmp75307 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L72759_ __tmp75306))))
                                        (declare (not safe))
                                        (cons '#f __tmp75305))))
                                 (declare (not safe))
                                 (cons __tmp75310 __tmp75304))))
                          (declare (not safe))
                          (cons __tmp75313 __tmp75303))))
                   (declare (not safe))
                   (cons __tmp75317 __tmp75302))))
              (___kont7464974650_
               (lambda (_L72690_ _L72692_)
                 (let ((__tmp75318
                        (let ((__tmp75319
                               (let ((__tmp75320
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L72690_ __tmp75320))))
                          (declare (not safe))
                          (cons 'primitive: __tmp75319))))
                   (declare (not safe))
                   (cons _L72692_ __tmp75318))))
              (___kont7465174652_
               (lambda (_L72629_ _L72631_)
                 (let ((__tmp75334
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp75321
                        (let ((__tmp75330
                               (let ((__tmp75333
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75331
                                      (let ((__tmp75332
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp75332 '()))))
                                 (declare (not safe))
                                 (cons __tmp75333 __tmp75331)))
                              (__tmp75322
                               (let ((__tmp75327
                                      (let ((__tmp75329
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75328
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72631_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75329 __tmp75328)))
                                     (__tmp75323
                                      (let ((__tmp75324
                                             (let ((__tmp75326
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp75325
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L72629_ '()))))
                                               (declare (not safe))
                                               (cons __tmp75326 __tmp75325))))
                                        (declare (not safe))
                                        (cons __tmp75324 '()))))
                                 (declare (not safe))
                                 (cons __tmp75327 __tmp75323))))
                          (declare (not safe))
                          (cons __tmp75330 __tmp75322))))
                   (declare (not safe))
                   (cons __tmp75334 __tmp75321))))
              (___kont7465374654_
               (lambda (_L72561_ _L72563_)
                 (let ((__tmp75348
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp75335
                        (let ((__tmp75344
                               (let ((__tmp75347
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75345
                                      (let ((__tmp75346
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp75346 '()))))
                                 (declare (not safe))
                                 (cons __tmp75347 __tmp75345)))
                              (__tmp75336
                               (let ((__tmp75341
                                      (let ((__tmp75343
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75342
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72563_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75343 __tmp75342)))
                                     (__tmp75337
                                      (let ((__tmp75338
                                             (let ((__tmp75340
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp75339
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L72561_ '()))))
                                               (declare (not safe))
                                               (cons __tmp75340 __tmp75339))))
                                        (declare (not safe))
                                        (cons __tmp75338 '()))))
                                 (declare (not safe))
                                 (cons __tmp75341 __tmp75337))))
                          (declare (not safe))
                          (cons __tmp75344 __tmp75336))))
                   (declare (not safe))
                   (cons __tmp75348 __tmp75335))))
              (___kont7465574656_
               (lambda (_L72508_ _L72510_)
                 (let ((__tmp75349
                        (let ((__tmp75350
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L72508_ __tmp75350))))
                   (declare (not safe))
                   (cons _L72510_ __tmp75349)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7464474645_))
              (let ((_e7241972715_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7464474645_))))
                (let ((_tl7241772722_
                       (let () (declare (not safe)) (##cdr _e7241972715_)))
                      (_hd7241872719_
                       (let () (declare (not safe)) (##car _e7241972715_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7241772722_))
                      (let ((_e7242272725_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7241772722_))))
                        (let ((_tl7242072732_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7242272725_)))
                              (_hd7242172729_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7242272725_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7242072732_))
                              (let ((_e7242572735_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7242072732_))))
                                (let ((_tl7242372742_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7242572735_)))
                                      (_hd7242472739_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7242572735_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd7242472739_))
                                      (let ((_e7242672745_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd7242472739_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e7242672745_ 'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7242372742_))
                                                (let ((_e7242972749_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7242372742_))))
                                                  (let ((_tl7242772756_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7242972749_)))
                                                        (_hd7242872753_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7242972749_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7242772756_))
                                                        (___kont7464774648_
                                                         _hd7242872753_
                                                         _hd7242172729_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd7242172729_))
                                                            (let ((_e7243872676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd7242172729_))))
                      (declare (not safe))
                      (_g7241372481_))
                    (let () (declare (not safe)) (_g7241372481_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd7242172729_))
                                                    (let ((_e7243872676_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd7242172729_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e7243872676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7242372742_))
                      (___kont7464974650_ _hd7242472739_ _hd7241872719_)
                      (let () (declare (not safe)) (_g7241372481_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7242372742_))
                      (___kont7465374654_ _hd7242472739_ _hd7242172729_)
                      (let () (declare (not safe)) (_g7241372481_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7242372742_))
                                                        (___kont7465374654_
                                                         _hd7242472739_
                                                         _hd7242172729_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7241372481_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd7242172729_))
                                                (let ((_e7243872676_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd7242172729_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e7243872676_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl7242372742_))
                                                          (___kont7464974650_
                                                           _hd7242472739_
                                                           _hd7241872719_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl7242372742_))
                      (let ((_e7245672619_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7242372742_))))
                        (let ((_tl7245472626_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7245672619_)))
                              (_hd7245572623_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7245672619_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7245472626_))
                              (___kont7465174652_
                               _hd7245572623_
                               _hd7242472739_)
                              (let () (declare (not safe)) (_g7241372481_)))))
                      (let () (declare (not safe)) (_g7241372481_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7242372742_))
                  (___kont7465374654_ _hd7242472739_ _hd7242172729_)
                  (let () (declare (not safe)) (_g7241372481_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7242372742_))
                                                    (___kont7465374654_
                                                     _hd7242472739_
                                                     _hd7242172729_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7241372481_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd7242172729_))
                                          (let ((_e7243872676_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _hd7242172729_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e7243872676_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7242372742_))
                                                    (___kont7464974650_
                                                     _hd7242472739_
                                                     _hd7241872719_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7242372742_))
                                                        (let ((_e7245672619_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7242372742_))))
                  (let ((_tl7245472626_
                         (let () (declare (not safe)) (##cdr _e7245672619_)))
                        (_hd7245572623_
                         (let () (declare (not safe)) (##car _e7245672619_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl7245472626_))
                        (___kont7465174652_ _hd7245572623_ _hd7242472739_)
                        (let () (declare (not safe)) (_g7241372481_)))))
                (let () (declare (not safe)) (_g7241372481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7242372742_))
                                                    (___kont7465374654_
                                                     _hd7242472739_
                                                     _hd7242172729_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7241372481_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7242372742_))
                                              (___kont7465374654_
                                               _hd7242472739_
                                               _hd7242172729_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7241372481_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd7242172729_))
                                  (let ((_e7243872676_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd7242172729_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7242072732_))
                                        (___kont7465574656_
                                         _hd7242172729_
                                         _hd7241872719_)
                                        (let ()
                                          (declare (not safe))
                                          (_g7241372481_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7242072732_))
                                      (___kont7465574656_
                                       _hd7242172729_
                                       _hd7241872719_)
                                      (let ()
                                        (declare (not safe))
                                        (_g7241372481_)))))))
                      (let () (declare (not safe)) (_g7241372481_)))))
              (let () (declare (not safe)) (_g7241372481_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx72783_)
      (let* ((___stx7478474785_ _$stx72783_)
             (_g7278872843_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7478474785_)))))
        (let ((___kont7478774788_
               (lambda (_L73028_ _L73030_)
                 (let ((__tmp75366
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp75351
                        (let ((__tmp75362
                               (let ((__tmp75365
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75363
                                      (let ((__tmp75364
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp75364 '()))))
                                 (declare (not safe))
                                 (cons __tmp75365 __tmp75363)))
                              (__tmp75352
                               (let ((__tmp75353
                                      (let ((__tmp75361
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp75354
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L73028_
                                                  _L73030_))
                                               (let ((__tmp75355
                                                      (lambda (_g7304773051_
                                                               _g7304873054_
                                                               _g7304973056_)
                                                        (let ((__tmp75356
                                                               (let ((__tmp75360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp75357
                              (let ((__tmp75358
                                     (let ((__tmp75359
                                            (let ()
                                              (declare (not safe))
                                              (cons _g7304773051_ '()))))
                                       (declare (not safe))
                                       (cons _g7304873054_ __tmp75359))))
                                (declare (not safe))
                                (cons 'primitive: __tmp75358))))
                         (declare (not safe))
                         (cons __tmp75360 __tmp75357))))
                  (declare (not safe))
                  (cons __tmp75356 _g7304973056_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp75355
                                                         '()
                                                         _L73028_
                                                         _L73030_)))))
                                        (declare (not safe))
                                        (cons __tmp75361 __tmp75354))))
                                 (declare (not safe))
                                 (cons __tmp75353 '()))))
                          (declare (not safe))
                          (cons __tmp75362 __tmp75352))))
                   (declare (not safe))
                   (cons __tmp75366 __tmp75351))))
              (___kont7479174792_
               (lambda (_L72914_ _L72916_)
                 (let ((__tmp75381
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp75367
                        (let ((__tmp75377
                               (let ((__tmp75380
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75378
                                      (let ((__tmp75379
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp75379 '()))))
                                 (declare (not safe))
                                 (cons __tmp75380 __tmp75378)))
                              (__tmp75368
                               (let ((__tmp75369
                                      (let ((__tmp75376
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp75370
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L72914_
                                                  _L72916_))
                                               (let ((__tmp75371
                                                      (lambda (_g7293172935_
                                                               _g7293272938_
                                                               _g7293372940_)
                                                        (let ((__tmp75372
                                                               (let ((__tmp75375
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp75373
                              (let ((__tmp75374
                                     (let ()
                                       (declare (not safe))
                                       (cons _g7293172935_ '()))))
                                (declare (not safe))
                                (cons _g7293272938_ __tmp75374))))
                         (declare (not safe))
                         (cons __tmp75375 __tmp75373))))
                  (declare (not safe))
                  (cons __tmp75372 _g7293372940_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp75371
                                                         '()
                                                         _L72914_
                                                         _L72916_)))))
                                        (declare (not safe))
                                        (cons __tmp75376 __tmp75370))))
                                 (declare (not safe))
                                 (cons __tmp75369 '()))))
                          (declare (not safe))
                          (cons __tmp75377 __tmp75368))))
                   (declare (not safe))
                   (cons __tmp75381 __tmp75367)))))
          (let* ((___match7483574836_
                  (lambda (_e7282072850_
                           _hd7281972854_
                           _tl7281872857_
                           ___splice7479374794_
                           _target7282172860_
                           _tl7282372863_)
                    (letrec ((_loop7282472866_
                              (lambda (_hd7282272870_
                                       _dispatch7282872873_
                                       _arity7282972875_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7282272870_))
                                    (let ((_e7282572878_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7282272870_))))
                                      (let ((_lp-tl7282772885_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7282572878_)))
                                            (_lp-hd7282672882_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7282572878_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _lp-hd7282672882_))
                                            (let ((_e7283472888_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd7282672882_))))
                                              (let ((_tl7283272895_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7283472888_)))
                                                    (_hd7283372892_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7283472888_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7283272895_))
                                                    (let ((_e7283772898_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7283272895_))))
                                                      (let ((_tl7283572905_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7283772898_)))
                    (_hd7283672902_
                     (let () (declare (not safe)) (##car _e7283772898_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl7283572905_))
                    (_loop7282472866_
                     _lp-tl7282772885_
                     (let ()
                       (declare (not safe))
                       (cons _hd7283672902_ _dispatch7282872873_))
                     (let ()
                       (declare (not safe))
                       (cons _hd7283372892_ _arity7282972875_)))
                    (let () (declare (not safe)) (_g7278872843_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7278872843_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g7278872843_)))))
                                    (let ((_arity7283172911_
                                           (reverse _arity7282972875_))
                                          (_dispatch7283072908_
                                           (reverse _dispatch7282872873_)))
                                      (___kont7479174792_
                                       _dispatch7283072908_
                                       _arity7283172911_))))))
                      (_loop7282472866_ _target7282172860_ '() '()))))
                 (___match7482774828_
                  (lambda (_e7282072850_ _hd7281972854_ _tl7281872857_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl7281872857_))
                        (let ((___splice7479374794_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice _tl7281872857_ '0))))
                          (let ((_tl7282372863_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice7479374794_ '1)))
                                (_target7282172860_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice7479374794_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7282372863_))
                                (___match7483574836_
                                 _e7282072850_
                                 _hd7281972854_
                                 _tl7281872857_
                                 ___splice7479374794_
                                 _target7282172860_
                                 _tl7282372863_)
                                (let ()
                                  (declare (not safe))
                                  (_g7278872843_)))))
                        (let () (declare (not safe)) (_g7278872843_)))))
                 (___match7482174822_
                  (lambda (_e7279472950_
                           _hd7279372954_
                           _tl7279272957_
                           _e7279772960_
                           _hd7279672964_
                           _tl7279572967_
                           _e7279872970_
                           ___splice7478974790_
                           _target7279972974_
                           _tl7280172977_)
                    (letrec ((_loop7280272980_
                              (lambda (_hd7280072984_
                                       _dispatch7280672987_
                                       _arity7280772989_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7280072984_))
                                    (let ((_e7280372992_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7280072984_))))
                                      (let ((_lp-tl7280572999_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7280372992_)))
                                            (_lp-hd7280472996_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7280372992_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _lp-hd7280472996_))
                                            (let ((_e7281273002_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd7280472996_))))
                                              (let ((_tl7281073009_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7281273002_)))
                                                    (_hd7281173006_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7281273002_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7281073009_))
                                                    (let ((_e7281573012_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7281073009_))))
                                                      (let ((_tl7281373019_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7281573012_)))
                    (_hd7281473016_
                     (let () (declare (not safe)) (##car _e7281573012_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl7281373019_))
                    (_loop7280272980_
                     _lp-tl7280572999_
                     (let ()
                       (declare (not safe))
                       (cons _hd7281473016_ _dispatch7280672987_))
                     (let ()
                       (declare (not safe))
                       (cons _hd7281173006_ _arity7280772989_)))
                    (___match7482774828_
                     _e7279472950_
                     _hd7279372954_
                     _tl7279272957_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match7482774828_
                                                     _e7279472950_
                                                     _hd7279372954_
                                                     _tl7279272957_))))
                                            (___match7482774828_
                                             _e7279472950_
                                             _hd7279372954_
                                             _tl7279272957_))))
                                    (let ((_arity7280973025_
                                           (reverse _arity7280772989_))
                                          (_dispatch7280873022_
                                           (reverse _dispatch7280672987_)))
                                      (___kont7478774788_
                                       _dispatch7280873022_
                                       _arity7280973025_))))))
                      (_loop7280272980_ _target7279972974_ '() '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7478474785_))
                (let ((_e7279472950_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7478474785_))))
                  (let ((_tl7279272957_
                         (let () (declare (not safe)) (##cdr _e7279472950_)))
                        (_hd7279372954_
                         (let () (declare (not safe)) (##car _e7279472950_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7279272957_))
                        (let ((_e7279772960_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7279272957_))))
                          (let ((_tl7279572967_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7279772960_)))
                                (_hd7279672964_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7279772960_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd7279672964_))
                                (let ((_e7279872970_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd7279672964_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e7279872970_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl7279572967_))
                                          (let ((___splice7478974790_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl7279572967_
                                                    '0))))
                                            (let ((_tl7280172977_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7478974790_
                                                      '1)))
                                                  (_target7279972974_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7478974790_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7280172977_))
                                                  (___match7482174822_
                                                   _e7279472950_
                                                   _hd7279372954_
                                                   _tl7279272957_
                                                   _e7279772960_
                                                   _hd7279672964_
                                                   _tl7279572967_
                                                   _e7279872970_
                                                   ___splice7478974790_
                                                   _target7279972974_
                                                   _tl7280172977_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7279272957_))
                                                      (let ((___splice7479374794_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7279272957_ '0))))
                (let ((_tl7282372863_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7479374794_ '1)))
                      (_target7282172860_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7479374794_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7282372863_))
                      (___match7483574836_
                       _e7279472950_
                       _hd7279372954_
                       _tl7279272957_
                       ___splice7479374794_
                       _target7282172860_
                       _tl7282372863_)
                      (let () (declare (not safe)) (_g7278872843_)))))
              (let () (declare (not safe)) (_g7278872843_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl7279272957_))
                                              (let ((___splice7479374794_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl7279272957_
                                                        '0))))
                                                (let ((_tl7282372863_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice7479374794_
                                                          '1)))
                                                      (_target7282172860_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice7479374794_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl7282372863_))
                                                      (___match7483574836_
                                                       _e7279472950_
                                                       _hd7279372954_
                                                       _tl7279272957_
                                                       ___splice7479374794_
                                                       _target7282172860_
                                                       _tl7282372863_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g7278872843_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g7278872843_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl7279272957_))
                                          (let ((___splice7479374794_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl7279272957_
                                                    '0))))
                                            (let ((_tl7282372863_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7479374794_
                                                      '1)))
                                                  (_target7282172860_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7479374794_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7282372863_))
                                                  (___match7483574836_
                                                   _e7279472950_
                                                   _hd7279372954_
                                                   _tl7279272957_
                                                   ___splice7479374794_
                                                   _target7282172860_
                                                   _tl7282372863_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7278872843_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g7278872843_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7279272957_))
                                    (let ((___splice7479374794_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7279272957_
                                              '0))))
                                      (let ((_tl7282372863_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7479374794_
                                                '1)))
                                            (_target7282172860_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7479374794_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7282372863_))
                                            (___match7483574836_
                                             _e7279472950_
                                             _hd7279372954_
                                             _tl7279272957_
                                             ___splice7479374794_
                                             _target7282172860_
                                             _tl7282372863_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7278872843_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7278872843_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7279272957_))
                            (let ((___splice7479374794_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7279272957_
                                      '0))))
                              (let ((_tl7282372863_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice7479374794_ '1)))
                                    (_target7282172860_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice7479374794_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7282372863_))
                                    (___match7483574836_
                                     _e7279472950_
                                     _hd7279372954_
                                     _tl7279272957_
                                     ___splice7479374794_
                                     _target7282172860_
                                     _tl7282372863_)
                                    (let ()
                                      (declare (not safe))
                                      (_g7278872843_)))))
                            (let () (declare (not safe)) (_g7278872843_))))))
                (let () (declare (not safe)) (_g7278872843_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx73065_)
      (let* ((_g7306973087_
              (lambda (_g7307073083_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7307073083_))))
             (_g7306873142_
              (lambda (_g7307073091_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7307073091_))
                    (let ((_e7307573094_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7307073091_))))
                      (let ((_hd7307473098_
                             (let ()
                               (declare (not safe))
                               (##car _e7307573094_)))
                            (_tl7307373101_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7307573094_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7307373101_))
                            (let ((_e7307873104_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7307373101_))))
                              (let ((_hd7307773108_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7307873104_)))
                                    (_tl7307673111_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7307873104_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7307673111_))
                                    (let ((_e7308173114_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7307673111_))))
                                      (let ((_hd7308073118_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7308173114_)))
                                            (_tl7307973121_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7308173114_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7307973121_))
                                            ((lambda (_L73124_ _L73126_)
                                               (let ((__tmp75395
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp75382
                                                      (let ((__tmp75391
                                                             (let ((__tmp75394
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp75392
                            (let ((__tmp75393
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp75393 '()))))
                       (declare (not safe))
                       (cons __tmp75394 __tmp75392)))
                    (__tmp75383
                     (let ((__tmp75388
                            (let ((__tmp75390
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp75389
                                   (let ()
                                     (declare (not safe))
                                     (cons _L73126_ '()))))
                              (declare (not safe))
                              (cons __tmp75390 __tmp75389)))
                           (__tmp75384
                            (let ((__tmp75385
                                   (let ((__tmp75387
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp75386
                                          (let ()
                                            (declare (not safe))
                                            (cons _L73124_ '()))))
                                     (declare (not safe))
                                     (cons __tmp75387 __tmp75386))))
                              (declare (not safe))
                              (cons __tmp75385 '()))))
                       (declare (not safe))
                       (cons __tmp75388 __tmp75384))))
                (declare (not safe))
                (cons __tmp75391 __tmp75383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp75395 __tmp75382)))
                                             _hd7308073118_
                                             _hd7307773108_)
                                            (_g7306973087_ _g7307073091_))))
                                    (_g7306973087_ _g7307073091_))))
                            (_g7306973087_ _g7307073091_))))
                    (_g7306973087_ _g7307073091_)))))
        (_g7306873142_ _$stx73065_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx73146_)
      (let* ((_g7315073168_
              (lambda (_g7315173164_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7315173164_))))
             (_g7314973223_
              (lambda (_g7315173172_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7315173172_))
                    (let ((_e7315673175_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7315173172_))))
                      (let ((_hd7315573179_
                             (let ()
                               (declare (not safe))
                               (##car _e7315673175_)))
                            (_tl7315473182_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7315673175_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7315473182_))
                            (let ((_e7315973185_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7315473182_))))
                              (let ((_hd7315873189_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7315973185_)))
                                    (_tl7315773192_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7315973185_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7315773192_))
                                    (let ((_e7316273195_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7315773192_))))
                                      (let ((_hd7316173199_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7316273195_)))
                                            (_tl7316073202_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7316273195_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7316073202_))
                                            ((lambda (_L73205_ _L73207_)
                                               (let ((__tmp75409
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp75396
                                                      (let ((__tmp75405
                                                             (let ((__tmp75408
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp75406
                            (let ((__tmp75407
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp75407 '()))))
                       (declare (not safe))
                       (cons __tmp75408 __tmp75406)))
                    (__tmp75397
                     (let ((__tmp75402
                            (let ((__tmp75404
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp75403
                                   (let ()
                                     (declare (not safe))
                                     (cons _L73207_ '()))))
                              (declare (not safe))
                              (cons __tmp75404 __tmp75403)))
                           (__tmp75398
                            (let ((__tmp75399
                                   (let ((__tmp75401
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp75400
                                          (let ()
                                            (declare (not safe))
                                            (cons _L73205_ '()))))
                                     (declare (not safe))
                                     (cons __tmp75401 __tmp75400))))
                              (declare (not safe))
                              (cons __tmp75399 '()))))
                       (declare (not safe))
                       (cons __tmp75402 __tmp75398))))
                (declare (not safe))
                (cons __tmp75405 __tmp75397))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp75409 __tmp75396)))
                                             _hd7316173199_
                                             _hd7315873189_)
                                            (_g7315073168_ _g7315173172_))))
                                    (_g7315073168_ _g7315173172_))))
                            (_g7315073168_ _g7315173172_))))
                    (_g7315073168_ _g7315173172_)))))
        (_g7314973223_ _$stx73146_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx73227_)
      (let* ((___stx7483874839_ _$stx73227_)
             (_g7323473305_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7483874839_)))))
        (let ((___kont7484174842_
               (lambda (_L73596_ _L73598_)
                 (let ((__tmp75415
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75410
                        (let ((__tmp75411
                               (let ((__tmp75412
                                      (let ((__tmp75414
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp75413
                                             (let ()
                                               (declare (not safe))
                                               (cons _L73596_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75414 __tmp75413))))
                                 (declare (not safe))
                                 (cons __tmp75412 '()))))
                          (declare (not safe))
                          (cons _L73598_ __tmp75411))))
                   (declare (not safe))
                   (cons __tmp75415 __tmp75410))))
              (___kont7484374844_
               (lambda (_L73515_ _L73517_)
                 (let ((__tmp75424
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75416
                        (let ((__tmp75417
                               (let ((__tmp75418
                                      (let ((__tmp75423
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp75419
                                             (let ((__tmp75420
                                                    (lambda (_g7353673539_
                                                             _g7353773542_)
                                                      (let ((__tmp75421
                                                             (let ((__tmp75422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g7353673539_ __tmp75422))))
                (declare (not safe))
                (cons __tmp75421 _g7353773542_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp75420
                                                       '()
                                                       _L73515_))))
                                        (declare (not safe))
                                        (cons __tmp75423 __tmp75419))))
                                 (declare (not safe))
                                 (cons __tmp75418 '()))))
                          (declare (not safe))
                          (cons _L73517_ __tmp75417))))
                   (declare (not safe))
                   (cons __tmp75424 __tmp75416))))
              (___kont7484774848_
               (lambda (_L73427_ _L73429_)
                 (let ((__tmp75431
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75425
                        (let ((__tmp75426
                               (let ((__tmp75427
                                      (let ((__tmp75430
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp75428
                                             (let ((__tmp75429
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L73427_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive: __tmp75429))))
                                        (declare (not safe))
                                        (cons __tmp75430 __tmp75428))))
                                 (declare (not safe))
                                 (cons __tmp75427 '()))))
                          (declare (not safe))
                          (cons _L73429_ __tmp75426))))
                   (declare (not safe))
                   (cons __tmp75431 __tmp75425))))
              (___kont7484974850_
               (lambda (_L73362_ _L73364_)
                 (let ((__tmp75441
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75432
                        (let ((__tmp75433
                               (let ((__tmp75434
                                      (let ((__tmp75440
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp75435
                                             (let ((__tmp75436
                                                    (let ((__tmp75437
                                                           (lambda (_g7338173384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g7338273387_)
                     (let ((__tmp75438
                            (let ((__tmp75439
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g7338173384_ __tmp75439))))
                       (declare (not safe))
                       (cons __tmp75438 _g7338273387_)))))
              (declare (not safe))
              (foldr1 __tmp75437 '() _L73362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive: __tmp75436))))
                                        (declare (not safe))
                                        (cons __tmp75440 __tmp75435))))
                                 (declare (not safe))
                                 (cons __tmp75434 '()))))
                          (declare (not safe))
                          (cons _L73364_ __tmp75433))))
                   (declare (not safe))
                   (cons __tmp75441 __tmp75432)))))
          (let* ((___match7495774958_
                  (lambda (_e7328773312_
                           _hd7328673316_
                           _tl7328573319_
                           _e7329073322_
                           _hd7328973326_
                           _tl7328873329_
                           ___splice7485174852_
                           _target7329173332_
                           _tl7329373335_)
                    (letrec ((_loop7329473338_
                              (lambda (_hd7329273342_ _arity7329873345_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7329273342_))
                                    (let ((_e7329573348_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7329273342_))))
                                      (let ((_lp-tl7329773355_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7329573348_)))
                                            (_lp-hd7329673352_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7329573348_))))
                                        (_loop7329473338_
                                         _lp-tl7329773355_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd7329673352_
                                                 _arity7329873345_)))))
                                    (let ((_arity7329973358_
                                           (reverse _arity7329873345_)))
                                      (___kont7484974850_
                                       _arity7329973358_
                                       _hd7328973326_))))))
                      (_loop7329473338_ _target7329173332_ '()))))
                 (___match7491774918_
                  (lambda (_e7325573451_
                           _hd7325473455_
                           _tl7325373458_
                           _e7325873461_
                           _hd7325773465_
                           _tl7325673468_
                           _e7326173471_
                           _hd7326073475_
                           _tl7325973478_
                           _e7326273481_
                           ___splice7484574846_
                           _target7326373485_
                           _tl7326573488_)
                    (letrec ((_loop7326673491_
                              (lambda (_hd7326473495_ _arity7327073498_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7326473495_))
                                    (let ((_e7326773501_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7326473495_))))
                                      (let ((_lp-tl7326973508_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7326773501_)))
                                            (_lp-hd7326873505_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7326773501_))))
                                        (_loop7326673491_
                                         _lp-tl7326973508_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd7326873505_
                                                 _arity7327073498_)))))
                                    (let ((_arity7327173511_
                                           (reverse _arity7327073498_)))
                                      (___kont7484374844_
                                       _arity7327173511_
                                       _hd7325773465_))))))
                      (_loop7326673491_ _target7326373485_ '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7483874839_))
                (let ((_e7324073552_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7483874839_))))
                  (let ((_tl7323873559_
                         (let () (declare (not safe)) (##cdr _e7324073552_)))
                        (_hd7323973556_
                         (let () (declare (not safe)) (##car _e7324073552_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7323873559_))
                        (let ((_e7324373562_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7323873559_))))
                          (let ((_tl7324173569_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7324373562_)))
                                (_hd7324273566_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7324373562_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7324173569_))
                                (let ((_e7324673572_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7324173569_))))
                                  (let ((_tl7324473579_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7324673572_)))
                                        (_hd7324573576_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7324673572_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd7324573576_))
                                        (let ((_e7324773582_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd7324573576_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e7324773582_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl7324473579_))
                                                  (let ((_e7325073586_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl7324473579_))))
                                                    (let ((_tl7324873593_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e7325073586_)))
                                                          (_hd7324973590_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e7325073586_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl7324873593_))
                                                          (___kont7484174842_
                                                           _hd7324973590_
                                                           _hd7324273566_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl7324473579_))
                      (let ((___splice7484574846_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl7324473579_ '0))))
                        (let ((_tl7326573488_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7484574846_ '1)))
                              (_target7326373485_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7484574846_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7326573488_))
                              (___match7491774918_
                               _e7324073552_
                               _hd7323973556_
                               _tl7323873559_
                               _e7324373562_
                               _hd7324273566_
                               _tl7324173569_
                               _e7324673572_
                               _hd7324573576_
                               _tl7324473579_
                               _e7324773582_
                               ___splice7484574846_
                               _target7326373485_
                               _tl7326573488_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl7324173569_))
                                  (let ((___splice7485174852_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl7324173569_
                                            '0))))
                                    (let ((_tl7329373335_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice7485174852_
                                              '1)))
                                          (_target7329173332_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice7485174852_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7329373335_))
                                          (___match7495774958_
                                           _e7324073552_
                                           _hd7323973556_
                                           _tl7323873559_
                                           _e7324373562_
                                           _hd7324273566_
                                           _tl7324173569_
                                           ___splice7485174852_
                                           _target7329173332_
                                           _tl7329373335_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7323473305_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g7323473305_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl7324173569_))
                          (let ((___splice7485174852_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl7324173569_
                                    '0))))
                            (let ((_tl7329373335_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice7485174852_ '1)))
                                  (_target7329173332_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice7485174852_ '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl7329373335_))
                                  (___match7495774958_
                                   _e7324073552_
                                   _hd7323973556_
                                   _tl7323873559_
                                   _e7324373562_
                                   _hd7324273566_
                                   _tl7324173569_
                                   ___splice7485174852_
                                   _target7329173332_
                                   _tl7329373335_)
                                  (let ()
                                    (declare (not safe))
                                    (_g7323473305_)))))
                          (let () (declare (not safe)) (_g7323473305_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7324473579_))
                                                      (let ((___splice7484574846_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7324473579_ '0))))
                (let ((_tl7326573488_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7484574846_ '1)))
                      (_target7326373485_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7484574846_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7326573488_))
                      (___match7491774918_
                       _e7324073552_
                       _hd7323973556_
                       _tl7323873559_
                       _e7324373562_
                       _hd7324273566_
                       _tl7324173569_
                       _e7324673572_
                       _hd7324573576_
                       _tl7324473579_
                       _e7324773582_
                       ___splice7484574846_
                       _target7326373485_
                       _tl7326573488_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl7324473579_))
                          (___kont7484774848_ _hd7324573576_ _hd7324273566_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7324173569_))
                              (let ((___splice7485174852_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7324173569_
                                        '0))))
                                (let ((_tl7329373335_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice7485174852_
                                          '1)))
                                      (_target7329173332_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice7485174852_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7329373335_))
                                      (___match7495774958_
                                       _e7324073552_
                                       _hd7323973556_
                                       _tl7323873559_
                                       _e7324373562_
                                       _hd7324273566_
                                       _tl7324173569_
                                       ___splice7485174852_
                                       _target7329173332_
                                       _tl7329373335_)
                                      (let ()
                                        (declare (not safe))
                                        (_g7323473305_)))))
                              (let ()
                                (declare (not safe))
                                (_g7323473305_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7324473579_))
                  (___kont7484774848_ _hd7324573576_ _hd7324273566_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl7324173569_))
                      (let ((___splice7485174852_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl7324173569_ '0))))
                        (let ((_tl7329373335_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7485174852_ '1)))
                              (_target7329173332_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7485174852_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7329373335_))
                              (___match7495774958_
                               _e7324073552_
                               _hd7323973556_
                               _tl7323873559_
                               _e7324373562_
                               _hd7324273566_
                               _tl7324173569_
                               ___splice7485174852_
                               _target7329173332_
                               _tl7329373335_)
                              (let () (declare (not safe)) (_g7323473305_)))))
                      (let () (declare (not safe)) (_g7323473305_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7324473579_))
                                                  (___kont7484774848_
                                                   _hd7324573576_
                                                   _hd7324273566_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7324173569_))
                                                      (let ((___splice7485174852_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7324173569_ '0))))
                (let ((_tl7329373335_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7485174852_ '1)))
                      (_target7329173332_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7485174852_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7329373335_))
                      (___match7495774958_
                       _e7324073552_
                       _hd7323973556_
                       _tl7323873559_
                       _e7324373562_
                       _hd7324273566_
                       _tl7324173569_
                       ___splice7485174852_
                       _target7329173332_
                       _tl7329373335_)
                      (let () (declare (not safe)) (_g7323473305_)))))
              (let () (declare (not safe)) (_g7323473305_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7324473579_))
                                            (___kont7484774848_
                                             _hd7324573576_
                                             _hd7324273566_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl7324173569_))
                                                (let ((___splice7485174852_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl7324173569_
                                                          '0))))
                                                  (let ((_tl7329373335_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice7485174852_
                                                            '1)))
                                                        (_target7329173332_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice7485174852_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7329373335_))
                                                        (___match7495774958_
                                                         _e7324073552_
                                                         _hd7323973556_
                                                         _tl7323873559_
                                                         _e7324373562_
                                                         _hd7324273566_
                                                         _tl7324173569_
                                                         ___splice7485174852_
                                                         _target7329173332_
                                                         _tl7329373335_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7323473305_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7323473305_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7324173569_))
                                    (let ((___splice7485174852_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7324173569_
                                              '0))))
                                      (let ((_tl7329373335_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7485174852_
                                                '1)))
                                            (_target7329173332_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7485174852_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7329373335_))
                                            (___match7495774958_
                                             _e7324073552_
                                             _hd7323973556_
                                             _tl7323873559_
                                             _e7324373562_
                                             _hd7324273566_
                                             _tl7324173569_
                                             ___splice7485174852_
                                             _target7329173332_
                                             _tl7329373335_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7323473305_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7323473305_))))))
                        (let () (declare (not safe)) (_g7323473305_)))))
                (let () (declare (not safe)) (_g7323473305_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx73622_)
      (let* ((___stx7496074961_ _$stx73622_)
             (_g7362773662_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7496074961_)))))
        (let ((___kont7496374964_
               (lambda (_L73784_ _L73786_)
                 (let ((__tmp75447
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75442
                        (let ((__tmp75443
                               (let ((__tmp75444
                                      (let ((__tmp75446
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp75445
                                             (let ()
                                               (declare (not safe))
                                               (cons _L73784_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75446 __tmp75445))))
                                 (declare (not safe))
                                 (cons __tmp75444 '()))))
                          (declare (not safe))
                          (cons _L73786_ __tmp75443))))
                   (declare (not safe))
                   (cons __tmp75447 __tmp75442))))
              (___kont7496574966_
               (lambda (_L73719_ _L73721_)
                 (let ((__tmp75456
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75448
                        (let ((__tmp75449
                               (let ((__tmp75450
                                      (let ((__tmp75455
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp75451
                                             (let ((__tmp75452
                                                    (lambda (_g7373873741_
                                                             _g7373973744_)
                                                      (let ((__tmp75453
                                                             (let ((__tmp75454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g7373873741_ __tmp75454))))
                (declare (not safe))
                (cons __tmp75453 _g7373973744_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp75452
                                                       '()
                                                       _L73719_))))
                                        (declare (not safe))
                                        (cons __tmp75455 __tmp75451))))
                                 (declare (not safe))
                                 (cons __tmp75450 '()))))
                          (declare (not safe))
                          (cons _L73721_ __tmp75449))))
                   (declare (not safe))
                   (cons __tmp75456 __tmp75448)))))
          (let ((___match7500975010_
                 (lambda (_e7364473669_
                          _hd7364373673_
                          _tl7364273676_
                          _e7364773679_
                          _hd7364673683_
                          _tl7364573686_
                          ___splice7496774968_
                          _target7364873689_
                          _tl7365073692_)
                   (letrec ((_loop7365173695_
                             (lambda (_hd7364973699_ _arity7365573702_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd7364973699_))
                                   (let ((_e7365273705_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd7364973699_))))
                                     (let ((_lp-tl7365473712_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e7365273705_)))
                                           (_lp-hd7365373709_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e7365273705_))))
                                       (_loop7365173695_
                                        _lp-tl7365473712_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd7365373709_
                                                _arity7365573702_)))))
                                   (let ((_arity7365673715_
                                          (reverse _arity7365573702_)))
                                     (___kont7496574966_
                                      _arity7365673715_
                                      _hd7364673683_))))))
                     (_loop7365173695_ _target7364873689_ '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7496074961_))
                (let ((_e7363373754_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7496074961_))))
                  (let ((_tl7363173761_
                         (let () (declare (not safe)) (##cdr _e7363373754_)))
                        (_hd7363273758_
                         (let () (declare (not safe)) (##car _e7363373754_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7363173761_))
                        (let ((_e7363673764_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7363173761_))))
                          (let ((_tl7363473771_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7363673764_)))
                                (_hd7363573768_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7363673764_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7363473771_))
                                (let ((_e7363973774_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7363473771_))))
                                  (let ((_tl7363773781_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7363973774_)))
                                        (_hd7363873778_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7363973774_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7363773781_))
                                        (___kont7496374964_
                                         _hd7363873778_
                                         _hd7363573768_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl7363473771_))
                                            (let ((___splice7496774968_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl7363473771_
                                                      '0))))
                                              (let ((_tl7365073692_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice7496774968_
                                                        '1)))
                                                    (_target7364873689_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice7496774968_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7365073692_))
                                                    (___match7500975010_
                                                     _e7363373754_
                                                     _hd7363273758_
                                                     _tl7363173761_
                                                     _e7363673764_
                                                     _hd7363573768_
                                                     _tl7363473771_
                                                     ___splice7496774968_
                                                     _target7364873689_
                                                     _tl7365073692_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7362773662_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g7362773662_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7363473771_))
                                    (let ((___splice7496774968_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7363473771_
                                              '0))))
                                      (let ((_tl7365073692_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7496774968_
                                                '1)))
                                            (_target7364873689_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7496774968_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7365073692_))
                                            (___match7500975010_
                                             _e7363373754_
                                             _hd7363273758_
                                             _tl7363173761_
                                             _e7363673764_
                                             _hd7363573768_
                                             _tl7363473771_
                                             ___splice7496774968_
                                             _target7364873689_
                                             _tl7365073692_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7362773662_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7362773662_))))))
                        (let () (declare (not safe)) (_g7362773662_)))))
                (let () (declare (not safe)) (_g7362773662_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx73806_)
      (let* ((_g7381073845_
              (lambda (_g7381173841_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7381173841_))))
             (_g7380973973_
              (lambda (_g7381173849_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7381173849_))
                    (let ((_e7381673852_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7381173849_))))
                      (let ((_hd7381573856_
                             (let ()
                               (declare (not safe))
                               (##car _e7381673852_)))
                            (_tl7381473859_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7381673852_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7381473859_))
                            (let ((_g75457_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7381473859_
                                      '0))))
                              (begin
                                (let ((_g75458_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g75457_)
                                             (##vector-length _g75457_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g75458_ 2)))
                                      (error "Context expects 2 values"
                                             _g75458_)))
                                (let ((_target7381773862_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75457_ 0)))
                                      (_tl7381973865_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75457_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7381973865_))
                                      (letrec ((_loop7382073868_
                                                (lambda (_hd7381873872_
                                                         _arity7382473875_
                                                         _prim7382573877_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7381873872_))
                                                      (let ((_e7382173880_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7381873872_))))
                (let ((_lp-hd7382273884_
                       (let () (declare (not safe)) (##car _e7382173880_)))
                      (_lp-tl7382373887_
                       (let () (declare (not safe)) (##cdr _e7382173880_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7382273884_))
                      (let ((_e7383073890_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7382273884_))))
                        (let ((_hd7382973894_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7383073890_)))
                              (_tl7382873897_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7383073890_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7382873897_))
                              (let ((_g75467_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7382873897_
                                        '0))))
                                (begin
                                  (let ((_g75468_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g75467_)
                                               (##vector-length _g75467_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g75468_ 2)))
                                        (error "Context expects 2 values"
                                               _g75468_)))
                                  (let ((_target7383173900_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g75467_ 0)))
                                        (_tl7383373903_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g75467_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7383373903_))
                                        (letrec ((_loop7383473906_
                                                  (lambda (_hd7383273910_
                                                           _arity7383873913_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd7383273910_))
                                                        (let ((_e7383573916_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd7383273910_))))
                  (let ((_lp-hd7383673920_
                         (let () (declare (not safe)) (##car _e7383573916_)))
                        (_lp-tl7383773923_
                         (let () (declare (not safe)) (##cdr _e7383573916_))))
                    (_loop7383473906_
                     _lp-tl7383773923_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd7383673920_ _arity7383873913_)))))
                (let ((_arity7383973926_ (reverse _arity7383873913_)))
                  (_loop7382073868_
                   _lp-tl7382373887_
                   (let ()
                     (declare (not safe))
                     (cons _arity7383973926_ _arity7382473875_))
                   (let ()
                     (declare (not safe))
                     (cons _hd7382973894_ _prim7382573877_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop7383473906_
                                           _target7383173900_
                                           '()))
                                        (_g7381073845_ _g7381173849_)))))
                              (_g7381073845_ _g7381173849_))))
                      (_g7381073845_ _g7381173849_))))
              (let ((_arity7382673930_ (reverse _arity7382473875_))
                    (_prim7382773933_ (reverse _prim7382573877_)))
                ((lambda (_L73936_ _L73938_)
                   (let ((__tmp75466
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp75459
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L73936_
                               _L73938_))
                            (let ((__tmp75460
                                   (lambda (_g7395373959_
                                            _g7395473962_
                                            _g7395573964_)
                                     (let ((__tmp75461
                                            (let ((__tmp75465
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp75462
                                                   (let ((__tmp75463
                                                          (let ((__tmp75464
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g7395673967_ _g7395773970_)
                           (let ()
                             (declare (not safe))
                             (cons _g7395673967_ _g7395773970_)))))
                    (declare (not safe))
                    (foldr1 __tmp75464 '() _g7395373959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7395473962_
                                                           __tmp75463))))
                                              (declare (not safe))
                                              (cons __tmp75465 __tmp75462))))
                                       (declare (not safe))
                                       (cons __tmp75461 _g7395573964_)))))
                              (declare (not safe))
                              (foldr2 __tmp75460 '() _L73936_ _L73938_)))))
                     (declare (not safe))
                     (cons __tmp75466 __tmp75459)))
                 _arity7382673930_
                 _prim7382773933_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7382073868_
                                         _target7381773862_
                                         '()
                                         '()))
                                      (_g7381073845_ _g7381173849_)))))
                            (_g7381073845_ _g7381173849_))))
                    (_g7381073845_ _g7381173849_)))))
        (_g7380973973_ _$stx73806_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx73979_)
      (let* ((_g7398374018_
              (lambda (_g7398474014_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7398474014_))))
             (_g7398274146_
              (lambda (_g7398474022_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7398474022_))
                    (let ((_e7398974025_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7398474022_))))
                      (let ((_hd7398874029_
                             (let ()
                               (declare (not safe))
                               (##car _e7398974025_)))
                            (_tl7398774032_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7398974025_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7398774032_))
                            (let ((_g75469_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7398774032_
                                      '0))))
                              (begin
                                (let ((_g75470_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g75469_)
                                             (##vector-length _g75469_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g75470_ 2)))
                                      (error "Context expects 2 values"
                                             _g75470_)))
                                (let ((_target7399074035_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75469_ 0)))
                                      (_tl7399274038_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75469_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7399274038_))
                                      (letrec ((_loop7399374041_
                                                (lambda (_hd7399174045_
                                                         _arity7399774048_
                                                         _prim7399874050_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7399174045_))
                                                      (let ((_e7399474053_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7399174045_))))
                (let ((_lp-hd7399574057_
                       (let () (declare (not safe)) (##car _e7399474053_)))
                      (_lp-tl7399674060_
                       (let () (declare (not safe)) (##cdr _e7399474053_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7399574057_))
                      (let ((_e7400374063_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7399574057_))))
                        (let ((_hd7400274067_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7400374063_)))
                              (_tl7400174070_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7400374063_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7400174070_))
                              (let ((_g75479_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7400174070_
                                        '0))))
                                (begin
                                  (let ((_g75480_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g75479_)
                                               (##vector-length _g75479_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g75480_ 2)))
                                        (error "Context expects 2 values"
                                               _g75480_)))
                                  (let ((_target7400474073_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g75479_ 0)))
                                        (_tl7400674076_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g75479_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7400674076_))
                                        (letrec ((_loop7400774079_
                                                  (lambda (_hd7400574083_
                                                           _arity7401174086_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd7400574083_))
                                                        (let ((_e7400874089_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd7400574083_))))
                  (let ((_lp-hd7400974093_
                         (let () (declare (not safe)) (##car _e7400874089_)))
                        (_lp-tl7401074096_
                         (let () (declare (not safe)) (##cdr _e7400874089_))))
                    (_loop7400774079_
                     _lp-tl7401074096_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd7400974093_ _arity7401174086_)))))
                (let ((_arity7401274099_ (reverse _arity7401174086_)))
                  (_loop7399374041_
                   _lp-tl7399674060_
                   (let ()
                     (declare (not safe))
                     (cons _arity7401274099_ _arity7399774048_))
                   (let ()
                     (declare (not safe))
                     (cons _hd7400274067_ _prim7399874050_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop7400774079_
                                           _target7400474073_
                                           '()))
                                        (_g7398374018_ _g7398474022_)))))
                              (_g7398374018_ _g7398474022_))))
                      (_g7398374018_ _g7398474022_))))
              (let ((_arity7399974103_ (reverse _arity7399774048_))
                    (_prim7400074106_ (reverse _prim7399874050_)))
                ((lambda (_L74109_ _L74111_)
                   (let ((__tmp75478
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp75471
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L74109_
                               _L74111_))
                            (let ((__tmp75472
                                   (lambda (_g7412674132_
                                            _g7412774135_
                                            _g7412874137_)
                                     (let ((__tmp75473
                                            (let ((__tmp75477
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp75474
                                                   (let ((__tmp75475
                                                          (let ((__tmp75476
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g7412974140_ _g7413074143_)
                           (let ()
                             (declare (not safe))
                             (cons _g7412974140_ _g7413074143_)))))
                    (declare (not safe))
                    (foldr1 __tmp75476 '() _g7412674132_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7412774135_
                                                           __tmp75475))))
                                              (declare (not safe))
                                              (cons __tmp75477 __tmp75474))))
                                       (declare (not safe))
                                       (cons __tmp75473 _g7412874137_)))))
                              (declare (not safe))
                              (foldr2 __tmp75472 '() _L74109_ _L74111_)))))
                     (declare (not safe))
                     (cons __tmp75478 __tmp75471)))
                 _arity7399974103_
                 _prim7400074106_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7399374041_
                                         _target7399074035_
                                         '()
                                         '()))
                                      (_g7398374018_ _g7398474022_)))))
                            (_g7398374018_ _g7398474022_))))
                    (_g7398374018_ _g7398474022_)))))
        (_g7398274146_ _$stx73979_)))))
