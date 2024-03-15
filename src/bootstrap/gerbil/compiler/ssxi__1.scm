(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx158919_)
      (let* ((_g158923158941_
              (lambda (_g158924158937_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158924158937_))))
             (_g158922158996_
              (lambda (_g158924158945_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158924158945_))
                    (let ((_e158929158948_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158924158945_))))
                      (let ((_hd158928158952_
                             (let ()
                               (declare (not safe))
                               (##car _e158929158948_)))
                            (_tl158927158955_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158929158948_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158927158955_))
                            (let ((_e158932158958_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158927158955_))))
                              (let ((_hd158931158962_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158932158958_)))
                                    (_tl158930158965_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158932158958_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158930158965_))
                                    (let ((_e158935158968_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158930158965_))))
                                      (let ((_hd158934158972_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158935158968_)))
                                            (_tl158933158975_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158935158968_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl158933158975_))
                                            ((lambda (_L158978_ _L158980_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L158980_))
                                                   (let ((__tmp162460
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp162455
                                                          (let ((__tmp162457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp162459
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp162458
                                (let ()
                                  (declare (not safe))
                                  (cons _L158980_ '()))))
                           (declare (not safe))
                           (cons __tmp162459 __tmp162458)))
                        (__tmp162456
                         (let () (declare (not safe)) (cons _L158978_ '()))))
                    (declare (not safe))
                    (cons __tmp162457 __tmp162456))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp162460
                                                           __tmp162455))
                                                   (_g158923158941_
                                                    _g158924158945_)))
                                             _hd158934158972_
                                             _hd158931158962_)
                                            (_g158923158941_
                                             _g158924158945_))))
                                    (_g158923158941_ _g158924158945_))))
                            (_g158923158941_ _g158924158945_))))
                    (_g158923158941_ _g158924158945_)))))
        (_g158922158996_ _$stx158919_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx159000_)
      (let* ((_g159004159033_
              (lambda (_g159005159029_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159005159029_))))
             (_g159003159133_
              (lambda (_g159005159037_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159005159037_))
                    (let ((_e159010159040_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159005159037_))))
                      (let ((_hd159009159044_
                             (let ()
                               (declare (not safe))
                               (##car _e159010159040_)))
                            (_tl159008159047_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159010159040_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159008159047_))
                            (let ((_g162461_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159008159047_
                                      '0))))
                              (begin
                                (let ((_g162462_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162461_)
                                             (##vector-length _g162461_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162462_ 2)))
                                      (error "Context expects 2 values"
                                             _g162462_)))
                                (let ((_target159011159050_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162461_ 0)))
                                      (_tl159013159053_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162461_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159013159053_))
                                      (letrec ((_loop159014159056_
                                                (lambda (_hd159012159060_
                                                         _type159018159063_
                                                         _symbol159019159065_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd159012159060_))
                                                      (let ((_e159015159068_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd159012159060_))))
                (let ((_lp-hd159016159072_
                       (let () (declare (not safe)) (##car _e159015159068_)))
                      (_lp-tl159017159075_
                       (let () (declare (not safe)) (##cdr _e159015159068_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd159016159072_))
                      (let ((_e159024159078_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd159016159072_))))
                        (let ((_hd159023159082_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159024159078_)))
                              (_tl159022159085_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159024159078_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159022159085_))
                              (let ((_e159027159088_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159022159085_))))
                                (let ((_hd159026159092_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159027159088_)))
                                      (_tl159025159095_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159027159088_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159025159095_))
                                      (_loop159014159056_
                                       _lp-tl159017159075_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd159026159092_
                                               _type159018159063_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd159023159082_
                                               _symbol159019159065_)))
                                      (_g159004159033_ _g159005159037_))))
                              (_g159004159033_ _g159005159037_))))
                      (_g159004159033_ _g159005159037_))))
              (let ((_type159020159098_ (reverse _type159018159063_))
                    (_symbol159021159101_ (reverse _symbol159019159065_)))
                ((lambda (_L159104_ _L159106_)
                   (let ((__tmp162469
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162463
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L159104_
                               _L159106_))
                            (let ((__tmp162464
                                   (lambda (_g159121159125_
                                            _g159122159128_
                                            _g159123159130_)
                                     (let ((__tmp162465
                                            (let ((__tmp162468
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp162466
                                                   (let ((__tmp162467
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g159121159125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g159122159128_
                                                           __tmp162467))))
                                              (declare (not safe))
                                              (cons __tmp162468 __tmp162466))))
                                       (declare (not safe))
                                       (cons __tmp162465 _g159123159130_)))))
                              (declare (not safe))
                              (foldr2 __tmp162464 '() _L159104_ _L159106_)))))
                     (declare (not safe))
                     (cons __tmp162469 __tmp162463)))
                 _type159020159098_
                 _symbol159021159101_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop159014159056_
                                         _target159011159050_
                                         '()
                                         '()))
                                      (_g159004159033_ _g159005159037_)))))
                            (_g159004159033_ _g159005159037_))))
                    (_g159004159033_ _g159005159037_)))))
        (_g159003159133_ _$stx159000_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx159138_)
      (let* ((___stx162020162021_ _$stx159138_)
             (_g159143159185_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162020162021_)))))
        (let ((___kont162023162024_
               (lambda (_L159313_ _L159315_ _L159316_ _L159317_)
                 (let ((__tmp162483
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp162470
                        (let ((__tmp162480
                               (let ((__tmp162482
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162481
                                      (let ()
                                        (declare (not safe))
                                        (cons _L159317_ '()))))
                                 (declare (not safe))
                                 (cons __tmp162482 __tmp162481)))
                              (__tmp162471
                               (let ((__tmp162477
                                      (let ((__tmp162479
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162478
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159316_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162479 __tmp162478)))
                                     (__tmp162472
                                      (let ((__tmp162474
                                             (let ((__tmp162476
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162475
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159315_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162476 __tmp162475)))
                                            (__tmp162473
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159313_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162474 __tmp162473))))
                                 (declare (not safe))
                                 (cons __tmp162477 __tmp162472))))
                          (declare (not safe))
                          (cons __tmp162480 __tmp162471))))
                   (declare (not safe))
                   (cons __tmp162483 __tmp162470))))
              (___kont162025162026_
               (lambda (_L159232_ _L159234_ _L159235_ _L159236_)
                 (let ((__tmp162484
                        (let ((__tmp162485
                               (let ((__tmp162486
                                      (let ((__tmp162487
                                             (let ((__tmp162488
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp162488 '()))))
                                        (declare (not safe))
                                        (cons _L159232_ __tmp162487))))
                                 (declare (not safe))
                                 (cons _L159234_ __tmp162486))))
                          (declare (not safe))
                          (cons _L159235_ __tmp162485))))
                   (declare (not safe))
                   (cons _L159236_ __tmp162484)))))
          (let ((___match162059162060_
                 (lambda (_e159151159263_
                          _hd159150159267_
                          _tl159149159270_
                          _e159154159273_
                          _hd159153159277_
                          _tl159152159280_
                          _e159157159283_
                          _hd159156159287_
                          _tl159155159290_
                          _e159160159293_
                          _hd159159159297_
                          _tl159158159300_
                          _e159163159303_
                          _hd159162159307_
                          _tl159161159310_)
                   (let ((_L159313_ _hd159162159307_)
                         (_L159315_ _hd159159159297_)
                         (_L159316_ _hd159156159287_)
                         (_L159317_ _hd159153159277_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L159317_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159316_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159315_)))
                         (___kont162023162024_
                          _L159313_
                          _L159315_
                          _L159316_
                          _L159317_)
                         (let () (declare (not safe)) (_g159143159185_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162020162021_))
                (let ((_e159151159263_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162020162021_))))
                  (let ((_tl159149159270_
                         (let () (declare (not safe)) (##cdr _e159151159263_)))
                        (_hd159150159267_
                         (let ()
                           (declare (not safe))
                           (##car _e159151159263_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159149159270_))
                        (let ((_e159154159273_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159149159270_))))
                          (let ((_tl159152159280_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159154159273_)))
                                (_hd159153159277_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159154159273_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl159152159280_))
                                (let ((_e159157159283_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl159152159280_))))
                                  (let ((_tl159155159290_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e159157159283_)))
                                        (_hd159156159287_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e159157159283_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl159155159290_))
                                        (let ((_e159160159293_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl159155159290_))))
                                          (let ((_tl159158159300_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e159160159293_)))
                                                (_hd159159159297_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e159160159293_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159158159300_))
                                                (let ((_e159163159303_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159158159300_))))
                                                  (let ((_tl159161159310_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159163159303_)))
                                                        (_hd159162159307_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159163159303_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159161159310_))
                                                        (___match162059162060_
                                                         _e159151159263_
                                                         _hd159150159267_
                                                         _tl159149159270_
                                                         _e159154159273_
                                                         _hd159153159277_
                                                         _tl159152159280_
                                                         _e159157159283_
                                                         _hd159156159287_
                                                         _tl159155159290_
                                                         _e159160159293_
                                                         _hd159159159297_
                                                         _tl159158159300_
                                                         _e159163159303_
                                                         _hd159162159307_
                                                         _tl159161159310_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159143159185_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159158159300_))
                                                    (___kont162025162026_
                                                     _hd159159159297_
                                                     _hd159156159287_
                                                     _hd159153159277_
                                                     _hd159150159267_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159143159185_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g159143159185_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g159143159185_)))))
                        (let () (declare (not safe)) (_g159143159185_)))))
                (let () (declare (not safe)) (_g159143159185_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx159342_)
      (let* ((_g159346159381_
              (lambda (_g159347159377_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159347159377_))))
             (_g159345159500_
              (lambda (_g159347159385_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159347159385_))
                    (let ((_e159353159388_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159347159385_))))
                      (let ((_hd159352159392_
                             (let ()
                               (declare (not safe))
                               (##car _e159353159388_)))
                            (_tl159351159395_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159353159388_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159351159395_))
                            (let ((_g162489_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159351159395_
                                      '0))))
                              (begin
                                (let ((_g162490_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162489_)
                                             (##vector-length _g162489_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162490_ 2)))
                                      (error "Context expects 2 values"
                                             _g162490_)))
                                (let ((_target159354159398_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162489_ 0)))
                                      (_tl159356159401_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162489_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159356159401_))
                                      (letrec ((_loop159357159404_
                                                (lambda (_hd159355159408_
                                                         _symbol159361159411_
                                                         _method159362159413_
                                                         _type-t159363159415_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd159355159408_))
                                                      (let ((_e159358159418_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd159355159408_))))
                (let ((_lp-hd159359159422_
                       (let () (declare (not safe)) (##car _e159358159418_)))
                      (_lp-tl159360159425_
                       (let () (declare (not safe)) (##cdr _e159358159418_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd159359159422_))
                      (let ((_e159369159428_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd159359159422_))))
                        (let ((_hd159368159432_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159369159428_)))
                              (_tl159367159435_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159369159428_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159367159435_))
                              (let ((_e159372159438_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159367159435_))))
                                (let ((_hd159371159442_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159372159438_)))
                                      (_tl159370159445_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159372159438_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159370159445_))
                                      (let ((_e159375159448_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159370159445_))))
                                        (let ((_hd159374159452_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159375159448_)))
                                              (_tl159373159455_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159375159448_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159373159455_))
                                              (_loop159357159404_
                                               _lp-tl159360159425_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159374159452_
                                                       _symbol159361159411_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159371159442_
                                                       _method159362159413_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159368159432_
                                                       _type-t159363159415_)))
                                              (_g159346159381_
                                               _g159347159385_))))
                                      (_g159346159381_ _g159347159385_))))
                              (_g159346159381_ _g159347159385_))))
                      (_g159346159381_ _g159347159385_))))
              (let ((_symbol159364159458_ (reverse _symbol159361159411_))
                    (_method159365159461_ (reverse _method159362159413_))
                    (_type-t159366159463_ (reverse _type-t159363159415_)))
                ((lambda (_L159466_ _L159468_ _L159469_)
                   (let ((__tmp162498
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162491
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L159466_
                               _L159468_
                               _L159469_))
                            (let ((__tmp162492
                                   (lambda (_g159485159490_
                                            _g159486159493_
                                            _g159487159495_
                                            _g159488159497_)
                                     (let ((__tmp162493
                                            (let ((__tmp162497
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp162494
                                                   (let ((__tmp162495
                                                          (let ((__tmp162496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g159485159490_ '()))))
                    (declare (not safe))
                    (cons _g159486159493_ __tmp162496))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g159487159495_
                                                           __tmp162495))))
                                              (declare (not safe))
                                              (cons __tmp162497 __tmp162494))))
                                       (declare (not safe))
                                       (cons __tmp162493 _g159488159497_)))))
                              (declare (not safe))
                              (foldr* __tmp162492
                                      '()
                                      _L159466_
                                      _L159468_
                                      _L159469_)))))
                     (declare (not safe))
                     (cons __tmp162498 __tmp162491)))
                 _symbol159364159458_
                 _method159365159461_
                 _type-t159366159463_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop159357159404_
                                         _target159354159398_
                                         '()
                                         '()
                                         '()))
                                      (_g159346159381_ _g159347159385_)))))
                            (_g159346159381_ _g159347159385_))))
                    (_g159346159381_ _g159347159385_)))))
        (_g159345159500_ _$stx159342_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx159505_)
      (let* ((_g159509159542_
              (lambda (_g159510159538_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159510159538_))))
             (_g159508159656_
              (lambda (_g159510159546_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159510159546_))
                    (let ((_e159516159549_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159510159546_))))
                      (let ((_hd159515159553_
                             (let ()
                               (declare (not safe))
                               (##car _e159516159549_)))
                            (_tl159514159556_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159516159549_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159514159556_))
                            (let ((_e159519159559_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159514159556_))))
                              (let ((_hd159518159563_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159519159559_)))
                                    (_tl159517159566_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159519159559_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159517159566_))
                                    (let ((_g162499_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159517159566_
                                              '0))))
                                      (begin
                                        (let ((_g162500_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g162499_)
                                                     (##vector-length
                                                      _g162499_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g162500_ 2)))
                                              (error "Context expects 2 values"
                                                     _g162500_)))
                                        (let ((_target159520159569_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162499_ 0)))
                                              (_tl159522159572_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162499_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159522159572_))
                                              (letrec ((_loop159523159575_
                                                        (lambda (_hd159521159579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol159527159582_
                         _method159528159584_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd159521159579_))
                      (let ((_e159524159587_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd159521159579_))))
                        (let ((_lp-hd159525159591_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159524159587_)))
                              (_lp-tl159526159594_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159524159587_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd159525159591_))
                              (let ((_e159533159597_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd159525159591_))))
                                (let ((_hd159532159601_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159533159597_)))
                                      (_tl159531159604_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159533159597_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159531159604_))
                                      (let ((_e159536159607_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159531159604_))))
                                        (let ((_hd159535159611_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159536159607_)))
                                              (_tl159534159614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159536159607_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159534159614_))
                                              (_loop159523159575_
                                               _lp-tl159526159594_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159535159611_
                                                       _symbol159527159582_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159532159601_
                                                       _method159528159584_)))
                                              (_g159509159542_
                                               _g159510159546_))))
                                      (_g159509159542_ _g159510159546_))))
                              (_g159509159542_ _g159510159546_))))
                      (let ((_symbol159529159617_
                             (reverse _symbol159527159582_))
                            (_method159530159620_
                             (reverse _method159528159584_)))
                        ((lambda (_L159623_ _L159625_ _L159626_)
                           (let ((__tmp162508
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp162501
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L159623_
                                       _L159625_))
                                    (let ((__tmp162502
                                           (lambda (_g159644159648_
                                                    _g159645159651_
                                                    _g159646159653_)
                                             (let ((__tmp162503
                                                    (let ((__tmp162507
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp162504
                                                           (let ((__tmp162505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp162506
                                 (let ()
                                   (declare (not safe))
                                   (cons _g159644159648_ '()))))
                            (declare (not safe))
                            (cons _g159645159651_ __tmp162506))))
                     (declare (not safe))
                     (cons _L159626_ __tmp162505))))
              (declare (not safe))
              (cons __tmp162507 __tmp162504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162503
                                                     _g159646159653_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp162502
                                              '()
                                              _L159623_
                                              _L159625_)))))
                             (declare (not safe))
                             (cons __tmp162508 __tmp162501)))
                         _symbol159529159617_
                         _method159530159620_
                         _hd159518159563_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop159523159575_
                                                 _target159520159569_
                                                 '()
                                                 '()))
                                              (_g159509159542_
                                               _g159510159546_)))))
                                    (_g159509159542_ _g159510159546_))))
                            (_g159509159542_ _g159510159546_))))
                    (_g159509159542_ _g159510159546_)))))
        (_g159508159656_ _$stx159505_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx159661_)
      (let* ((_g159665159679_
              (lambda (_g159666159675_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159666159675_))))
             (_g159664159720_
              (lambda (_g159666159683_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159666159683_))
                    (let ((_e159670159686_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159666159683_))))
                      (let ((_hd159669159690_
                             (let ()
                               (declare (not safe))
                               (##car _e159670159686_)))
                            (_tl159668159693_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159670159686_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159668159693_))
                            (let ((_e159673159696_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159668159693_))))
                              (let ((_hd159672159700_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159673159696_)))
                                    (_tl159671159703_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159673159696_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159671159703_))
                                    ((lambda (_L159706_)
                                       (let ((__tmp162513
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp162509
                                              (let ((__tmp162510
                                                     (let ((__tmp162512
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162511
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162512 __tmp162511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162510 '()))))
                                         (declare (not safe))
                                         (cons __tmp162513 __tmp162509)))
                                     _hd159672159700_)
                                    (_g159665159679_ _g159666159683_))))
                            (_g159665159679_ _g159666159683_))))
                    (_g159665159679_ _g159666159683_)))))
        (_g159664159720_ _$stx159661_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx159724_)
      (let* ((_g159728159778_
              (lambda (_g159729159774_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159729159774_))))
             (_g159727159945_
              (lambda (_g159729159782_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159729159782_))
                    (let ((_e159742159785_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159729159782_))))
                      (let ((_hd159741159789_
                             (let ()
                               (declare (not safe))
                               (##car _e159742159785_)))
                            (_tl159740159792_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159742159785_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159740159792_))
                            (let ((_e159745159795_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159740159792_))))
                              (let ((_hd159744159799_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159745159795_)))
                                    (_tl159743159802_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159745159795_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159743159802_))
                                    (let ((_e159748159805_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159743159802_))))
                                      (let ((_hd159747159809_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159748159805_)))
                                            (_tl159746159812_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159748159805_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159746159812_))
                                            (let ((_e159751159815_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159746159812_))))
                                              (let ((_hd159750159819_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159751159815_)))
                                                    (_tl159749159822_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159751159815_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159749159822_))
                                                    (let ((_e159754159825_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159749159822_))))
                                                      (let ((_hd159753159829_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159754159825_)))
                    (_tl159752159832_
                     (let () (declare (not safe)) (##cdr _e159754159825_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159752159832_))
                    (let ((_e159757159835_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159752159832_))))
                      (let ((_hd159756159839_
                             (let ()
                               (declare (not safe))
                               (##car _e159757159835_)))
                            (_tl159755159842_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159757159835_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159755159842_))
                            (let ((_e159760159845_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159755159842_))))
                              (let ((_hd159759159849_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159760159845_)))
                                    (_tl159758159852_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159760159845_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159758159852_))
                                    (let ((_e159763159855_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159758159852_))))
                                      (let ((_hd159762159859_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159763159855_)))
                                            (_tl159761159862_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159763159855_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159761159862_))
                                            (let ((_e159766159865_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159761159862_))))
                                              (let ((_hd159765159869_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159766159865_)))
                                                    (_tl159764159872_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159766159865_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159764159872_))
                                                    (let ((_e159769159875_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159764159872_))))
                                                      (let ((_hd159768159879_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159769159875_)))
                    (_tl159767159882_
                     (let () (declare (not safe)) (##cdr _e159769159875_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159767159882_))
                    (let ((_e159772159885_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159767159882_))))
                      (let ((_hd159771159889_
                             (let ()
                               (declare (not safe))
                               (##car _e159772159885_)))
                            (_tl159770159892_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159772159885_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl159770159892_))
                            ((lambda (_L159895_
                                      _L159897_
                                      _L159898_
                                      _L159899_
                                      _L159900_
                                      _L159901_
                                      _L159902_
                                      _L159903_
                                      _L159904_
                                      _L159905_)
                               (let ((__tmp162548
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp162514
                                      (let ((__tmp162545
                                             (let ((__tmp162547
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162546
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159905_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162547 __tmp162546)))
                                            (__tmp162515
                                             (let ((__tmp162542
                                                    (let ((__tmp162544
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp162543
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L159904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp162544 __tmp162543)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp162516
                                                    (let ((__tmp162539
                                                           (let ((__tmp162541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162540
                          (let () (declare (not safe)) (cons _L159903_ '()))))
                     (declare (not safe))
                     (cons __tmp162541 __tmp162540)))
                  (__tmp162517
                   (let ((__tmp162536
                          (let ((__tmp162538
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp162537
                                 (let ()
                                   (declare (not safe))
                                   (cons _L159902_ '()))))
                            (declare (not safe))
                            (cons __tmp162538 __tmp162537)))
                         (__tmp162518
                          (let ((__tmp162533
                                 (let ((__tmp162535
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp162534
                                        (let ()
                                          (declare (not safe))
                                          (cons _L159901_ '()))))
                                   (declare (not safe))
                                   (cons __tmp162535 __tmp162534)))
                                (__tmp162519
                                 (let ((__tmp162530
                                        (let ((__tmp162532
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp162531
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L159900_ '()))))
                                          (declare (not safe))
                                          (cons __tmp162532 __tmp162531)))
                                       (__tmp162520
                                        (let ((__tmp162521
                                               (let ((__tmp162522
                                                      (let ((__tmp162527
                                                             (let ((__tmp162529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162528
                            (let ()
                              (declare (not safe))
                              (cons _L159897_ '()))))
                       (declare (not safe))
                       (cons __tmp162529 __tmp162528)))
                    (__tmp162523
                     (let ((__tmp162524
                            (let ((__tmp162526
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162525
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159895_ '()))))
                              (declare (not safe))
                              (cons __tmp162526 __tmp162525))))
                       (declare (not safe))
                       (cons __tmp162524 '()))))
                (declare (not safe))
                (cons __tmp162527 __tmp162523))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L159898_
                                                       __tmp162522))))
                                          (declare (not safe))
                                          (cons _L159899_ __tmp162521))))
                                   (declare (not safe))
                                   (cons __tmp162530 __tmp162520))))
                            (declare (not safe))
                            (cons __tmp162533 __tmp162519))))
                     (declare (not safe))
                     (cons __tmp162536 __tmp162518))))
              (declare (not safe))
              (cons __tmp162539 __tmp162517))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162542
                                                     __tmp162516))))
                                        (declare (not safe))
                                        (cons __tmp162545 __tmp162515))))
                                 (declare (not safe))
                                 (cons __tmp162548 __tmp162514)))
                             _hd159771159889_
                             _hd159768159879_
                             _hd159765159869_
                             _hd159762159859_
                             _hd159759159849_
                             _hd159756159839_
                             _hd159753159829_
                             _hd159750159819_
                             _hd159747159809_
                             _hd159744159799_)
                            (_g159728159778_ _g159729159782_))))
                    (_g159728159778_ _g159729159782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159728159778_
                                                     _g159729159782_))))
                                            (_g159728159778_
                                             _g159729159782_))))
                                    (_g159728159778_ _g159729159782_))))
                            (_g159728159778_ _g159729159782_))))
                    (_g159728159778_ _g159729159782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159728159778_
                                                     _g159729159782_))))
                                            (_g159728159778_
                                             _g159729159782_))))
                                    (_g159728159778_ _g159729159782_))))
                            (_g159728159778_ _g159729159782_))))
                    (_g159728159778_ _g159729159782_)))))
        (_g159727159945_ _$stx159724_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx159949_)
      (let* ((_g159953159967_
              (lambda (_g159954159963_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159954159963_))))
             (_g159952160008_
              (lambda (_g159954159971_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159954159971_))
                    (let ((_e159958159974_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159954159971_))))
                      (let ((_hd159957159978_
                             (let ()
                               (declare (not safe))
                               (##car _e159958159974_)))
                            (_tl159956159981_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159958159974_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159956159981_))
                            (let ((_e159961159984_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159956159981_))))
                              (let ((_hd159960159988_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159961159984_)))
                                    (_tl159959159991_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159961159984_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159959159991_))
                                    ((lambda (_L159994_)
                                       (let ((__tmp162553
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp162549
                                              (let ((__tmp162550
                                                     (let ((__tmp162552
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162551
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162552 __tmp162551))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162550 '()))))
                                         (declare (not safe))
                                         (cons __tmp162553 __tmp162549)))
                                     _hd159960159988_)
                                    (_g159953159967_ _g159954159971_))))
                            (_g159953159967_ _g159954159971_))))
                    (_g159953159967_ _g159954159971_)))))
        (_g159952160008_ _$stx159949_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx160012_)
      (let* ((_g160016160030_
              (lambda (_g160017160026_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160017160026_))))
             (_g160015160071_
              (lambda (_g160017160034_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160017160034_))
                    (let ((_e160021160037_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160017160034_))))
                      (let ((_hd160020160041_
                             (let ()
                               (declare (not safe))
                               (##car _e160021160037_)))
                            (_tl160019160044_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160021160037_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160019160044_))
                            (let ((_e160024160047_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160019160044_))))
                              (let ((_hd160023160051_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160024160047_)))
                                    (_tl160022160054_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160024160047_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160022160054_))
                                    ((lambda (_L160057_)
                                       (let ((__tmp162558
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp162554
                                              (let ((__tmp162555
                                                     (let ((__tmp162557
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162556
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L160057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162557 __tmp162556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162555 '()))))
                                         (declare (not safe))
                                         (cons __tmp162558 __tmp162554)))
                                     _hd160023160051_)
                                    (_g160016160030_ _g160017160034_))))
                            (_g160016160030_ _g160017160034_))))
                    (_g160016160030_ _g160017160034_)))))
        (_g160015160071_ _$stx160012_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx160075_)
      (let* ((_g160079160101_
              (lambda (_g160080160097_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160080160097_))))
             (_g160078160170_
              (lambda (_g160080160105_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160080160105_))
                    (let ((_e160086160108_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160080160105_))))
                      (let ((_hd160085160112_
                             (let ()
                               (declare (not safe))
                               (##car _e160086160108_)))
                            (_tl160084160115_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160086160108_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160084160115_))
                            (let ((_e160089160118_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160084160115_))))
                              (let ((_hd160088160122_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160089160118_)))
                                    (_tl160087160125_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160089160118_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160087160125_))
                                    (let ((_e160092160128_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160087160125_))))
                                      (let ((_hd160091160132_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160092160128_)))
                                            (_tl160090160135_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160092160128_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160090160135_))
                                            (let ((_e160095160138_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160090160135_))))
                                              (let ((_hd160094160142_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160095160138_)))
                                                    (_tl160093160145_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160095160138_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160093160145_))
                                                    ((lambda (_L160148_
                                                              _L160150_
                                                              _L160151_)
                                                       (let ((__tmp162568
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp162559
                      (let ((__tmp162565
                             (let ((__tmp162567
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162566
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160151_ '()))))
                               (declare (not safe))
                               (cons __tmp162567 __tmp162566)))
                            (__tmp162560
                             (let ((__tmp162562
                                    (let ((__tmp162564
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp162563
                                           (let ()
                                             (declare (not safe))
                                             (cons _L160150_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162564 __tmp162563)))
                                   (__tmp162561
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160148_ '()))))
                               (declare (not safe))
                               (cons __tmp162562 __tmp162561))))
                        (declare (not safe))
                        (cons __tmp162565 __tmp162560))))
                 (declare (not safe))
                 (cons __tmp162568 __tmp162559)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd160094160142_
                                                     _hd160091160132_
                                                     _hd160088160122_)
                                                    (_g160079160101_
                                                     _g160080160105_))))
                                            (_g160079160101_
                                             _g160080160105_))))
                                    (_g160079160101_ _g160080160105_))))
                            (_g160079160101_ _g160080160105_))))
                    (_g160079160101_ _g160080160105_)))))
        (_g160078160170_ _$stx160075_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx160174_)
      (let* ((_g160178160200_
              (lambda (_g160179160196_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160179160196_))))
             (_g160177160269_
              (lambda (_g160179160204_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160179160204_))
                    (let ((_e160185160207_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160179160204_))))
                      (let ((_hd160184160211_
                             (let ()
                               (declare (not safe))
                               (##car _e160185160207_)))
                            (_tl160183160214_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160185160207_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160183160214_))
                            (let ((_e160188160217_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160183160214_))))
                              (let ((_hd160187160221_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160188160217_)))
                                    (_tl160186160224_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160188160217_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160186160224_))
                                    (let ((_e160191160227_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160186160224_))))
                                      (let ((_hd160190160231_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160191160227_)))
                                            (_tl160189160234_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160191160227_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160189160234_))
                                            (let ((_e160194160237_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160189160234_))))
                                              (let ((_hd160193160241_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160194160237_)))
                                                    (_tl160192160244_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160194160237_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160192160244_))
                                                    ((lambda (_L160247_
                                                              _L160249_
                                                              _L160250_)
                                                       (let ((__tmp162578
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp162569
                      (let ((__tmp162575
                             (let ((__tmp162577
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162576
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160250_ '()))))
                               (declare (not safe))
                               (cons __tmp162577 __tmp162576)))
                            (__tmp162570
                             (let ((__tmp162572
                                    (let ((__tmp162574
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp162573
                                           (let ()
                                             (declare (not safe))
                                             (cons _L160249_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162574 __tmp162573)))
                                   (__tmp162571
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160247_ '()))))
                               (declare (not safe))
                               (cons __tmp162572 __tmp162571))))
                        (declare (not safe))
                        (cons __tmp162575 __tmp162570))))
                 (declare (not safe))
                 (cons __tmp162578 __tmp162569)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd160193160241_
                                                     _hd160190160231_
                                                     _hd160187160221_)
                                                    (_g160178160200_
                                                     _g160179160204_))))
                                            (_g160178160200_
                                             _g160179160204_))))
                                    (_g160178160200_ _g160179160204_))))
                            (_g160178160200_ _g160179160204_))))
                    (_g160178160200_ _g160179160204_)))))
        (_g160177160269_ _$stx160174_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx160273_)
      (let* ((___stx162088162089_ _$stx160273_)
             (_g160281160349_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162088162089_)))))
        (let ((___kont162091162092_
               (lambda (_L160627_ _L160629_)
                 (let ((__tmp162599
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162579
                        (let ((__tmp162595
                               (let ((__tmp162598
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162596
                                      (let ((__tmp162597
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162597 '()))))
                                 (declare (not safe))
                                 (cons __tmp162598 __tmp162596)))
                              (__tmp162580
                               (let ((__tmp162592
                                      (let ((__tmp162594
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162593
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160629_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162594 __tmp162593)))
                                     (__tmp162581
                                      (let ((__tmp162582
                                             (let ((__tmp162583
                                                    (let ((__tmp162584
                                                           (let ((__tmp162591
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162585
                          (let ((__tmp162586
                                 (let ((__tmp162590
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp162587
                                        (let ((__tmp162588
                                               (let ((__tmp162589
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L160627_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp162589))))
                                          (declare (not safe))
                                          (cons _L160629_ __tmp162588))))
                                   (declare (not safe))
                                   (cons __tmp162590 __tmp162587))))
                            (declare (not safe))
                            (cons __tmp162586 '()))))
                     (declare (not safe))
                     (cons __tmp162591 __tmp162585))))
              (declare (not safe))
              (cons __tmp162584 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L160627_ __tmp162583))))
                                        (declare (not safe))
                                        (cons '#f __tmp162582))))
                                 (declare (not safe))
                                 (cons __tmp162592 __tmp162581))))
                          (declare (not safe))
                          (cons __tmp162595 __tmp162580))))
                   (declare (not safe))
                   (cons __tmp162599 __tmp162579))))
              (___kont162093162094_
               (lambda (_L160558_ _L160560_)
                 (let ((__tmp162600
                        (let ((__tmp162601
                               (let ((__tmp162602
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L160558_ __tmp162602))))
                          (declare (not safe))
                          (cons 'primitive: __tmp162601))))
                   (declare (not safe))
                   (cons _L160560_ __tmp162600))))
              (___kont162095162096_
               (lambda (_L160497_ _L160499_)
                 (let ((__tmp162616
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp162603
                        (let ((__tmp162612
                               (let ((__tmp162615
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162613
                                      (let ((__tmp162614
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162614 '()))))
                                 (declare (not safe))
                                 (cons __tmp162615 __tmp162613)))
                              (__tmp162604
                               (let ((__tmp162609
                                      (let ((__tmp162611
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162610
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160499_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162611 __tmp162610)))
                                     (__tmp162605
                                      (let ((__tmp162606
                                             (let ((__tmp162608
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162607
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160497_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162608
                                                     __tmp162607))))
                                        (declare (not safe))
                                        (cons __tmp162606 '()))))
                                 (declare (not safe))
                                 (cons __tmp162609 __tmp162605))))
                          (declare (not safe))
                          (cons __tmp162612 __tmp162604))))
                   (declare (not safe))
                   (cons __tmp162616 __tmp162603))))
              (___kont162097162098_
               (lambda (_L160429_ _L160431_)
                 (let ((__tmp162630
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162617
                        (let ((__tmp162626
                               (let ((__tmp162629
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162627
                                      (let ((__tmp162628
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162628 '()))))
                                 (declare (not safe))
                                 (cons __tmp162629 __tmp162627)))
                              (__tmp162618
                               (let ((__tmp162623
                                      (let ((__tmp162625
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162624
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160431_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162625 __tmp162624)))
                                     (__tmp162619
                                      (let ((__tmp162620
                                             (let ((__tmp162622
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162621
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160429_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162622
                                                     __tmp162621))))
                                        (declare (not safe))
                                        (cons __tmp162620 '()))))
                                 (declare (not safe))
                                 (cons __tmp162623 __tmp162619))))
                          (declare (not safe))
                          (cons __tmp162626 __tmp162618))))
                   (declare (not safe))
                   (cons __tmp162630 __tmp162617))))
              (___kont162099162100_
               (lambda (_L160376_ _L160378_)
                 (let ((__tmp162631
                        (let ((__tmp162632
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L160376_ __tmp162632))))
                   (declare (not safe))
                   (cons _L160378_ __tmp162631)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx162088162089_))
              (let ((_e160287160583_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx162088162089_))))
                (let ((_tl160285160590_
                       (let () (declare (not safe)) (##cdr _e160287160583_)))
                      (_hd160286160587_
                       (let () (declare (not safe)) (##car _e160287160583_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl160285160590_))
                      (let ((_e160290160593_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160285160590_))))
                        (let ((_tl160288160600_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160290160593_)))
                              (_hd160289160597_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160290160593_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160288160600_))
                              (let ((_e160293160603_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160288160600_))))
                                (let ((_tl160291160610_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160293160603_)))
                                      (_hd160292160607_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160293160603_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd160292160607_))
                                      (let ((_e160294160613_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd160292160607_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e160294160613_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl160291160610_))
                                                (let ((_e160297160617_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl160291160610_))))
                                                  (let ((_tl160295160624_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e160297160617_)))
                                                        (_hd160296160621_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e160297160617_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160295160624_))
                                                        (___kont162091162092_
                                                         _hd160296160621_
                                                         _hd160289160597_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd160289160597_))
                                                            (let ((_e160306160544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd160289160597_))))
                      (declare (not safe))
                      (_g160281160349_))
                    (let () (declare (not safe)) (_g160281160349_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd160289160597_))
                                                    (let ((_e160306160544_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd160289160597_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e160306160544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160291160610_))
                      (___kont162093162094_ _hd160292160607_ _hd160286160587_)
                      (let () (declare (not safe)) (_g160281160349_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160291160610_))
                      (___kont162097162098_ _hd160292160607_ _hd160289160597_)
                      (let () (declare (not safe)) (_g160281160349_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160291160610_))
                                                        (___kont162097162098_
                                                         _hd160292160607_
                                                         _hd160289160597_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160281160349_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd160289160597_))
                                                (let ((_e160306160544_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd160289160597_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e160306160544_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160291160610_))
                                                          (___kont162093162094_
                                                           _hd160292160607_
                                                           _hd160286160587_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl160291160610_))
                      (let ((_e160324160487_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160291160610_))))
                        (let ((_tl160322160494_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160324160487_)))
                              (_hd160323160491_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160324160487_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160322160494_))
                              (___kont162095162096_
                               _hd160323160491_
                               _hd160292160607_)
                              (let ()
                                (declare (not safe))
                                (_g160281160349_)))))
                      (let () (declare (not safe)) (_g160281160349_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160291160610_))
                  (___kont162097162098_ _hd160292160607_ _hd160289160597_)
                  (let () (declare (not safe)) (_g160281160349_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160291160610_))
                                                    (___kont162097162098_
                                                     _hd160292160607_
                                                     _hd160289160597_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160281160349_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd160289160597_))
                                          (let ((_e160306160544_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd160289160597_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e160306160544_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160291160610_))
                                                    (___kont162093162094_
                                                     _hd160292160607_
                                                     _hd160286160587_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl160291160610_))
                                                        (let ((_e160324160487_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl160291160610_))))
                  (let ((_tl160322160494_
                         (let () (declare (not safe)) (##cdr _e160324160487_)))
                        (_hd160323160491_
                         (let ()
                           (declare (not safe))
                           (##car _e160324160487_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl160322160494_))
                        (___kont162095162096_
                         _hd160323160491_
                         _hd160292160607_)
                        (let () (declare (not safe)) (_g160281160349_)))))
                (let () (declare (not safe)) (_g160281160349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160291160610_))
                                                    (___kont162097162098_
                                                     _hd160292160607_
                                                     _hd160289160597_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160281160349_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160291160610_))
                                              (___kont162097162098_
                                               _hd160292160607_
                                               _hd160289160597_)
                                              (let ()
                                                (declare (not safe))
                                                (_g160281160349_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd160289160597_))
                                  (let ((_e160306160544_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd160289160597_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160288160600_))
                                        (___kont162099162100_
                                         _hd160289160597_
                                         _hd160286160587_)
                                        (let ()
                                          (declare (not safe))
                                          (_g160281160349_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160288160600_))
                                      (___kont162099162100_
                                       _hd160289160597_
                                       _hd160286160587_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160281160349_)))))))
                      (let () (declare (not safe)) (_g160281160349_)))))
              (let () (declare (not safe)) (_g160281160349_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx160651_)
      (let* ((___stx162228162229_ _$stx160651_)
             (_g160656160711_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162228162229_)))))
        (let ((___kont162231162232_
               (lambda (_L160896_ _L160898_)
                 (let ((__tmp162648
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp162633
                        (let ((__tmp162644
                               (let ((__tmp162647
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162645
                                      (let ((__tmp162646
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162646 '()))))
                                 (declare (not safe))
                                 (cons __tmp162647 __tmp162645)))
                              (__tmp162634
                               (let ((__tmp162635
                                      (let ((__tmp162643
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162636
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160896_
                                                  _L160898_))
                                               (let ((__tmp162637
                                                      (lambda (_g160915160919_
                                                               _g160916160922_
                                                               _g160917160924_)
                                                        (let ((__tmp162638
                                                               (let ((__tmp162642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162639
                              (let ((__tmp162640
                                     (let ((__tmp162641
                                            (let ()
                                              (declare (not safe))
                                              (cons _g160915160919_ '()))))
                                       (declare (not safe))
                                       (cons _g160916160922_ __tmp162641))))
                                (declare (not safe))
                                (cons 'primitive: __tmp162640))))
                         (declare (not safe))
                         (cons __tmp162642 __tmp162639))))
                  (declare (not safe))
                  (cons __tmp162638 _g160917160924_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162637
                                                         '()
                                                         _L160896_
                                                         _L160898_)))))
                                        (declare (not safe))
                                        (cons __tmp162643 __tmp162636))))
                                 (declare (not safe))
                                 (cons __tmp162635 '()))))
                          (declare (not safe))
                          (cons __tmp162644 __tmp162634))))
                   (declare (not safe))
                   (cons __tmp162648 __tmp162633))))
              (___kont162235162236_
               (lambda (_L160782_ _L160784_)
                 (let ((__tmp162663
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp162649
                        (let ((__tmp162659
                               (let ((__tmp162662
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162660
                                      (let ((__tmp162661
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162661 '()))))
                                 (declare (not safe))
                                 (cons __tmp162662 __tmp162660)))
                              (__tmp162650
                               (let ((__tmp162651
                                      (let ((__tmp162658
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162652
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160782_
                                                  _L160784_))
                                               (let ((__tmp162653
                                                      (lambda (_g160799160803_
                                                               _g160800160806_
                                                               _g160801160808_)
                                                        (let ((__tmp162654
                                                               (let ((__tmp162657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162655
                              (let ((__tmp162656
                                     (let ()
                                       (declare (not safe))
                                       (cons _g160799160803_ '()))))
                                (declare (not safe))
                                (cons _g160800160806_ __tmp162656))))
                         (declare (not safe))
                         (cons __tmp162657 __tmp162655))))
                  (declare (not safe))
                  (cons __tmp162654 _g160801160808_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162653
                                                         '()
                                                         _L160782_
                                                         _L160784_)))))
                                        (declare (not safe))
                                        (cons __tmp162658 __tmp162652))))
                                 (declare (not safe))
                                 (cons __tmp162651 '()))))
                          (declare (not safe))
                          (cons __tmp162659 __tmp162650))))
                   (declare (not safe))
                   (cons __tmp162663 __tmp162649)))))
          (let* ((___match162279162280_
                  (lambda (_e160688160718_
                           _hd160687160722_
                           _tl160686160725_
                           ___splice162237162238_
                           _target160689160728_
                           _tl160691160731_)
                    (letrec ((_loop160692160734_
                              (lambda (_hd160690160738_
                                       _dispatch160696160741_
                                       _arity160697160743_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160690160738_))
                                    (let ((_e160693160746_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160690160738_))))
                                      (let ((_lp-tl160695160753_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160693160746_)))
                                            (_lp-hd160694160750_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160693160746_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160694160750_))
                                            (let ((_e160702160756_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160694160750_))))
                                              (let ((_tl160700160763_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160702160756_)))
                                                    (_hd160701160760_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160702160756_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160700160763_))
                                                    (let ((_e160705160766_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160700160763_))))
                                                      (let ((_tl160703160773_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160705160766_)))
                    (_hd160704160770_
                     (let () (declare (not safe)) (##car _e160705160766_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160703160773_))
                    (_loop160692160734_
                     _lp-tl160695160753_
                     (let ()
                       (declare (not safe))
                       (cons _hd160704160770_ _dispatch160696160741_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160701160760_ _arity160697160743_)))
                    (let () (declare (not safe)) (_g160656160711_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160656160711_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g160656160711_)))))
                                    (let ((_arity160699160779_
                                           (reverse _arity160697160743_))
                                          (_dispatch160698160776_
                                           (reverse _dispatch160696160741_)))
                                      (___kont162235162236_
                                       _dispatch160698160776_
                                       _arity160699160779_))))))
                      (_loop160692160734_ _target160689160728_ '() '()))))
                 (___match162271162272_
                  (lambda (_e160688160718_ _hd160687160722_ _tl160686160725_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl160686160725_))
                        (let ((___splice162237162238_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl160686160725_
                                  '0))))
                          (let ((_tl160691160731_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162237162238_ '1)))
                                (_target160689160728_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162237162238_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl160691160731_))
                                (___match162279162280_
                                 _e160688160718_
                                 _hd160687160722_
                                 _tl160686160725_
                                 ___splice162237162238_
                                 _target160689160728_
                                 _tl160691160731_)
                                (let ()
                                  (declare (not safe))
                                  (_g160656160711_)))))
                        (let () (declare (not safe)) (_g160656160711_)))))
                 (___match162265162266_
                  (lambda (_e160662160818_
                           _hd160661160822_
                           _tl160660160825_
                           _e160665160828_
                           _hd160664160832_
                           _tl160663160835_
                           _e160666160838_
                           ___splice162233162234_
                           _target160667160842_
                           _tl160669160845_)
                    (letrec ((_loop160670160848_
                              (lambda (_hd160668160852_
                                       _dispatch160674160855_
                                       _arity160675160857_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160668160852_))
                                    (let ((_e160671160860_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160668160852_))))
                                      (let ((_lp-tl160673160867_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160671160860_)))
                                            (_lp-hd160672160864_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160671160860_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160672160864_))
                                            (let ((_e160680160870_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160672160864_))))
                                              (let ((_tl160678160877_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160680160870_)))
                                                    (_hd160679160874_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160680160870_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160678160877_))
                                                    (let ((_e160683160880_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160678160877_))))
                                                      (let ((_tl160681160887_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160683160880_)))
                    (_hd160682160884_
                     (let () (declare (not safe)) (##car _e160683160880_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160681160887_))
                    (_loop160670160848_
                     _lp-tl160673160867_
                     (let ()
                       (declare (not safe))
                       (cons _hd160682160884_ _dispatch160674160855_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160679160874_ _arity160675160857_)))
                    (___match162271162272_
                     _e160662160818_
                     _hd160661160822_
                     _tl160660160825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match162271162272_
                                                     _e160662160818_
                                                     _hd160661160822_
                                                     _tl160660160825_))))
                                            (___match162271162272_
                                             _e160662160818_
                                             _hd160661160822_
                                             _tl160660160825_))))
                                    (let ((_arity160677160893_
                                           (reverse _arity160675160857_))
                                          (_dispatch160676160890_
                                           (reverse _dispatch160674160855_)))
                                      (___kont162231162232_
                                       _dispatch160676160890_
                                       _arity160677160893_))))))
                      (_loop160670160848_ _target160667160842_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162228162229_))
                (let ((_e160662160818_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162228162229_))))
                  (let ((_tl160660160825_
                         (let () (declare (not safe)) (##cdr _e160662160818_)))
                        (_hd160661160822_
                         (let ()
                           (declare (not safe))
                           (##car _e160662160818_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160660160825_))
                        (let ((_e160665160828_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160660160825_))))
                          (let ((_tl160663160835_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160665160828_)))
                                (_hd160664160832_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160665160828_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd160664160832_))
                                (let ((_e160666160838_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd160664160832_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e160666160838_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160663160835_))
                                          (let ((___splice162233162234_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160663160835_
                                                    '0))))
                                            (let ((_tl160669160845_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162233162234_
                                                      '1)))
                                                  (_target160667160842_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162233162234_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160669160845_))
                                                  (___match162265162266_
                                                   _e160662160818_
                                                   _hd160661160822_
                                                   _tl160660160825_
                                                   _e160665160828_
                                                   _hd160664160832_
                                                   _tl160663160835_
                                                   _e160666160838_
                                                   ___splice162233162234_
                                                   _target160667160842_
                                                   _tl160669160845_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160660160825_))
                                                      (let ((___splice162237162238_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160660160825_ '0))))
                (let ((_tl160691160731_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162237162238_ '1)))
                      (_target160689160728_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162237162238_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160691160731_))
                      (___match162279162280_
                       _e160662160818_
                       _hd160661160822_
                       _tl160660160825_
                       ___splice162237162238_
                       _target160689160728_
                       _tl160691160731_)
                      (let () (declare (not safe)) (_g160656160711_)))))
              (let () (declare (not safe)) (_g160656160711_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl160660160825_))
                                              (let ((___splice162237162238_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl160660160825_
                                                        '0))))
                                                (let ((_tl160691160731_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162237162238_
                                                          '1)))
                                                      (_target160689160728_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162237162238_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl160691160731_))
                                                      (___match162279162280_
                                                       _e160662160818_
                                                       _hd160661160822_
                                                       _tl160660160825_
                                                       ___splice162237162238_
                                                       _target160689160728_
                                                       _tl160691160731_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g160656160711_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g160656160711_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160660160825_))
                                          (let ((___splice162237162238_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160660160825_
                                                    '0))))
                                            (let ((_tl160691160731_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162237162238_
                                                      '1)))
                                                  (_target160689160728_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162237162238_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160691160731_))
                                                  (___match162279162280_
                                                   _e160662160818_
                                                   _hd160661160822_
                                                   _tl160660160825_
                                                   ___splice162237162238_
                                                   _target160689160728_
                                                   _tl160691160731_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g160656160711_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g160656160711_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160660160825_))
                                    (let ((___splice162237162238_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160660160825_
                                              '0))))
                                      (let ((_tl160691160731_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162237162238_
                                                '1)))
                                            (_target160689160728_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162237162238_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160691160731_))
                                            (___match162279162280_
                                             _e160662160818_
                                             _hd160661160822_
                                             _tl160660160825_
                                             ___splice162237162238_
                                             _target160689160728_
                                             _tl160691160731_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160656160711_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160656160711_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160660160825_))
                            (let ((___splice162237162238_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160660160825_
                                      '0))))
                              (let ((_tl160691160731_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162237162238_
                                        '1)))
                                    (_target160689160728_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162237162238_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160691160731_))
                                    (___match162279162280_
                                     _e160662160818_
                                     _hd160661160822_
                                     _tl160660160825_
                                     ___splice162237162238_
                                     _target160689160728_
                                     _tl160691160731_)
                                    (let ()
                                      (declare (not safe))
                                      (_g160656160711_)))))
                            (let () (declare (not safe)) (_g160656160711_))))))
                (let () (declare (not safe)) (_g160656160711_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx160933_)
      (let* ((_g160937160955_
              (lambda (_g160938160951_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160938160951_))))
             (_g160936161010_
              (lambda (_g160938160959_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160938160959_))
                    (let ((_e160943160962_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160938160959_))))
                      (let ((_hd160942160966_
                             (let ()
                               (declare (not safe))
                               (##car _e160943160962_)))
                            (_tl160941160969_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160943160962_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160941160969_))
                            (let ((_e160946160972_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160941160969_))))
                              (let ((_hd160945160976_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160946160972_)))
                                    (_tl160944160979_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160946160972_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160944160979_))
                                    (let ((_e160949160982_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160944160979_))))
                                      (let ((_hd160948160986_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160949160982_)))
                                            (_tl160947160989_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160949160982_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160947160989_))
                                            ((lambda (_L160992_ _L160994_)
                                               (let ((__tmp162677
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp162664
                                                      (let ((__tmp162673
                                                             (let ((__tmp162676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162674
                            (let ((__tmp162675
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp162675 '()))))
                       (declare (not safe))
                       (cons __tmp162676 __tmp162674)))
                    (__tmp162665
                     (let ((__tmp162670
                            (let ((__tmp162672
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162671
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160994_ '()))))
                              (declare (not safe))
                              (cons __tmp162672 __tmp162671)))
                           (__tmp162666
                            (let ((__tmp162667
                                   (let ((__tmp162669
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162668
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160992_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162669 __tmp162668))))
                              (declare (not safe))
                              (cons __tmp162667 '()))))
                       (declare (not safe))
                       (cons __tmp162670 __tmp162666))))
                (declare (not safe))
                (cons __tmp162673 __tmp162665))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162677
                                                       __tmp162664)))
                                             _hd160948160986_
                                             _hd160945160976_)
                                            (_g160937160955_
                                             _g160938160959_))))
                                    (_g160937160955_ _g160938160959_))))
                            (_g160937160955_ _g160938160959_))))
                    (_g160937160955_ _g160938160959_)))))
        (_g160936161010_ _$stx160933_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx161014_)
      (let* ((_g161018161036_
              (lambda (_g161019161032_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161019161032_))))
             (_g161017161091_
              (lambda (_g161019161040_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161019161040_))
                    (let ((_e161024161043_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161019161040_))))
                      (let ((_hd161023161047_
                             (let ()
                               (declare (not safe))
                               (##car _e161024161043_)))
                            (_tl161022161050_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161024161043_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161022161050_))
                            (let ((_e161027161053_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161022161050_))))
                              (let ((_hd161026161057_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161027161053_)))
                                    (_tl161025161060_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161027161053_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161025161060_))
                                    (let ((_e161030161063_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161025161060_))))
                                      (let ((_hd161029161067_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161030161063_)))
                                            (_tl161028161070_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161030161063_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161028161070_))
                                            ((lambda (_L161073_ _L161075_)
                                               (let ((__tmp162691
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp162678
                                                      (let ((__tmp162687
                                                             (let ((__tmp162690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162688
                            (let ((__tmp162689
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp162689 '()))))
                       (declare (not safe))
                       (cons __tmp162690 __tmp162688)))
                    (__tmp162679
                     (let ((__tmp162684
                            (let ((__tmp162686
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162685
                                   (let ()
                                     (declare (not safe))
                                     (cons _L161075_ '()))))
                              (declare (not safe))
                              (cons __tmp162686 __tmp162685)))
                           (__tmp162680
                            (let ((__tmp162681
                                   (let ((__tmp162683
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162682
                                          (let ()
                                            (declare (not safe))
                                            (cons _L161073_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162683 __tmp162682))))
                              (declare (not safe))
                              (cons __tmp162681 '()))))
                       (declare (not safe))
                       (cons __tmp162684 __tmp162680))))
                (declare (not safe))
                (cons __tmp162687 __tmp162679))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162691
                                                       __tmp162678)))
                                             _hd161029161067_
                                             _hd161026161057_)
                                            (_g161018161036_
                                             _g161019161040_))))
                                    (_g161018161036_ _g161019161040_))))
                            (_g161018161036_ _g161019161040_))))
                    (_g161018161036_ _g161019161040_)))))
        (_g161017161091_ _$stx161014_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx161095_)
      (let* ((___stx162282162283_ _$stx161095_)
             (_g161102161173_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162282162283_)))))
        (let ((___kont162285162286_
               (lambda (_L161464_ _L161466_)
                 (let ((__tmp162697
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162692
                        (let ((__tmp162693
                               (let ((__tmp162694
                                      (let ((__tmp162696
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162695
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161464_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162696 __tmp162695))))
                                 (declare (not safe))
                                 (cons __tmp162694 '()))))
                          (declare (not safe))
                          (cons _L161466_ __tmp162693))))
                   (declare (not safe))
                   (cons __tmp162697 __tmp162692))))
              (___kont162287162288_
               (lambda (_L161383_ _L161385_)
                 (let ((__tmp162706
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162698
                        (let ((__tmp162699
                               (let ((__tmp162700
                                      (let ((__tmp162705
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162701
                                             (let ((__tmp162702
                                                    (lambda (_g161404161407_
                                                             _g161405161410_)
                                                      (let ((__tmp162703
                                                             (let ((__tmp162704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g161404161407_ __tmp162704))))
                (declare (not safe))
                (cons __tmp162703 _g161405161410_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162702
                                                       '()
                                                       _L161383_))))
                                        (declare (not safe))
                                        (cons __tmp162705 __tmp162701))))
                                 (declare (not safe))
                                 (cons __tmp162700 '()))))
                          (declare (not safe))
                          (cons _L161385_ __tmp162699))))
                   (declare (not safe))
                   (cons __tmp162706 __tmp162698))))
              (___kont162291162292_
               (lambda (_L161295_ _L161297_)
                 (let ((__tmp162713
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162707
                        (let ((__tmp162708
                               (let ((__tmp162709
                                      (let ((__tmp162712
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162710
                                             (let ((__tmp162711
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161295_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162711))))
                                        (declare (not safe))
                                        (cons __tmp162712 __tmp162710))))
                                 (declare (not safe))
                                 (cons __tmp162709 '()))))
                          (declare (not safe))
                          (cons _L161297_ __tmp162708))))
                   (declare (not safe))
                   (cons __tmp162713 __tmp162707))))
              (___kont162293162294_
               (lambda (_L161230_ _L161232_)
                 (let ((__tmp162723
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162714
                        (let ((__tmp162715
                               (let ((__tmp162716
                                      (let ((__tmp162722
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162717
                                             (let ((__tmp162718
                                                    (let ((__tmp162719
                                                           (lambda (_g161249161252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g161250161255_)
                     (let ((__tmp162720
                            (let ((__tmp162721
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g161249161252_ __tmp162721))))
                       (declare (not safe))
                       (cons __tmp162720 _g161250161255_)))))
              (declare (not safe))
              (foldr1 __tmp162719 '() _L161230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162718))))
                                        (declare (not safe))
                                        (cons __tmp162722 __tmp162717))))
                                 (declare (not safe))
                                 (cons __tmp162716 '()))))
                          (declare (not safe))
                          (cons _L161232_ __tmp162715))))
                   (declare (not safe))
                   (cons __tmp162723 __tmp162714)))))
          (let* ((___match162401162402_
                  (lambda (_e161155161180_
                           _hd161154161184_
                           _tl161153161187_
                           _e161158161190_
                           _hd161157161194_
                           _tl161156161197_
                           ___splice162295162296_
                           _target161159161200_
                           _tl161161161203_)
                    (letrec ((_loop161162161206_
                              (lambda (_hd161160161210_ _arity161166161213_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161160161210_))
                                    (let ((_e161163161216_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161160161210_))))
                                      (let ((_lp-tl161165161223_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161163161216_)))
                                            (_lp-hd161164161220_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161163161216_))))
                                        (_loop161162161206_
                                         _lp-tl161165161223_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd161164161220_
                                                 _arity161166161213_)))))
                                    (let ((_arity161167161226_
                                           (reverse _arity161166161213_)))
                                      (___kont162293162294_
                                       _arity161167161226_
                                       _hd161157161194_))))))
                      (_loop161162161206_ _target161159161200_ '()))))
                 (___match162361162362_
                  (lambda (_e161123161319_
                           _hd161122161323_
                           _tl161121161326_
                           _e161126161329_
                           _hd161125161333_
                           _tl161124161336_
                           _e161129161339_
                           _hd161128161343_
                           _tl161127161346_
                           _e161130161349_
                           ___splice162289162290_
                           _target161131161353_
                           _tl161133161356_)
                    (letrec ((_loop161134161359_
                              (lambda (_hd161132161363_ _arity161138161366_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161132161363_))
                                    (let ((_e161135161369_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161132161363_))))
                                      (let ((_lp-tl161137161376_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161135161369_)))
                                            (_lp-hd161136161373_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161135161369_))))
                                        (_loop161134161359_
                                         _lp-tl161137161376_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd161136161373_
                                                 _arity161138161366_)))))
                                    (let ((_arity161139161379_
                                           (reverse _arity161138161366_)))
                                      (___kont162287162288_
                                       _arity161139161379_
                                       _hd161125161333_))))))
                      (_loop161134161359_ _target161131161353_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162282162283_))
                (let ((_e161108161420_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162282162283_))))
                  (let ((_tl161106161427_
                         (let () (declare (not safe)) (##cdr _e161108161420_)))
                        (_hd161107161424_
                         (let ()
                           (declare (not safe))
                           (##car _e161108161420_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161106161427_))
                        (let ((_e161111161430_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161106161427_))))
                          (let ((_tl161109161437_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161111161430_)))
                                (_hd161110161434_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161111161430_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161109161437_))
                                (let ((_e161114161440_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161109161437_))))
                                  (let ((_tl161112161447_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161114161440_)))
                                        (_hd161113161444_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161114161440_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd161113161444_))
                                        (let ((_e161115161450_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd161113161444_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e161115161450_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl161112161447_))
                                                  (let ((_e161118161454_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl161112161447_))))
                                                    (let ((_tl161116161461_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e161118161454_)))
                                                          (_hd161117161458_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e161118161454_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl161116161461_))
                                                          (___kont162285162286_
                                                           _hd161117161458_
                                                           _hd161110161434_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl161112161447_))
                      (let ((___splice162289162290_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl161112161447_ '0))))
                        (let ((_tl161133161356_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162289162290_ '1)))
                              (_target161131161353_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162289162290_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161133161356_))
                              (___match162361162362_
                               _e161108161420_
                               _hd161107161424_
                               _tl161106161427_
                               _e161111161430_
                               _hd161110161434_
                               _tl161109161437_
                               _e161114161440_
                               _hd161113161444_
                               _tl161112161447_
                               _e161115161450_
                               ___splice162289162290_
                               _target161131161353_
                               _tl161133161356_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl161109161437_))
                                  (let ((___splice162295162296_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl161109161437_
                                            '0))))
                                    (let ((_tl161161161203_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162295162296_
                                              '1)))
                                          (_target161159161200_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162295162296_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl161161161203_))
                                          (___match162401162402_
                                           _e161108161420_
                                           _hd161107161424_
                                           _tl161106161427_
                                           _e161111161430_
                                           _hd161110161434_
                                           _tl161109161437_
                                           ___splice162295162296_
                                           _target161159161200_
                                           _tl161161161203_)
                                          (let ()
                                            (declare (not safe))
                                            (_g161102161173_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g161102161173_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl161109161437_))
                          (let ((___splice162295162296_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl161109161437_
                                    '0))))
                            (let ((_tl161161161203_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice162295162296_ '1)))
                                  (_target161159161200_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice162295162296_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl161161161203_))
                                  (___match162401162402_
                                   _e161108161420_
                                   _hd161107161424_
                                   _tl161106161427_
                                   _e161111161430_
                                   _hd161110161434_
                                   _tl161109161437_
                                   ___splice162295162296_
                                   _target161159161200_
                                   _tl161161161203_)
                                  (let ()
                                    (declare (not safe))
                                    (_g161102161173_)))))
                          (let () (declare (not safe)) (_g161102161173_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161112161447_))
                                                      (let ((___splice162289162290_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161112161447_ '0))))
                (let ((_tl161133161356_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162289162290_ '1)))
                      (_target161131161353_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162289162290_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161133161356_))
                      (___match162361162362_
                       _e161108161420_
                       _hd161107161424_
                       _tl161106161427_
                       _e161111161430_
                       _hd161110161434_
                       _tl161109161437_
                       _e161114161440_
                       _hd161113161444_
                       _tl161112161447_
                       _e161115161450_
                       ___splice162289162290_
                       _target161131161353_
                       _tl161133161356_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl161112161447_))
                          (___kont162291162292_
                           _hd161113161444_
                           _hd161110161434_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161109161437_))
                              (let ((___splice162295162296_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161109161437_
                                        '0))))
                                (let ((_tl161161161203_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162295162296_
                                          '1)))
                                      (_target161159161200_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162295162296_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161161161203_))
                                      (___match162401162402_
                                       _e161108161420_
                                       _hd161107161424_
                                       _tl161106161427_
                                       _e161111161430_
                                       _hd161110161434_
                                       _tl161109161437_
                                       ___splice162295162296_
                                       _target161159161200_
                                       _tl161161161203_)
                                      (let ()
                                        (declare (not safe))
                                        (_g161102161173_)))))
                              (let ()
                                (declare (not safe))
                                (_g161102161173_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl161112161447_))
                  (___kont162291162292_ _hd161113161444_ _hd161110161434_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl161109161437_))
                      (let ((___splice162295162296_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl161109161437_ '0))))
                        (let ((_tl161161161203_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162295162296_ '1)))
                              (_target161159161200_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162295162296_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161161161203_))
                              (___match162401162402_
                               _e161108161420_
                               _hd161107161424_
                               _tl161106161427_
                               _e161111161430_
                               _hd161110161434_
                               _tl161109161437_
                               ___splice162295162296_
                               _target161159161200_
                               _tl161161161203_)
                              (let ()
                                (declare (not safe))
                                (_g161102161173_)))))
                      (let () (declare (not safe)) (_g161102161173_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl161112161447_))
                                                  (___kont162291162292_
                                                   _hd161113161444_
                                                   _hd161110161434_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161109161437_))
                                                      (let ((___splice162295162296_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161109161437_ '0))))
                (let ((_tl161161161203_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162295162296_ '1)))
                      (_target161159161200_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162295162296_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161161161203_))
                      (___match162401162402_
                       _e161108161420_
                       _hd161107161424_
                       _tl161106161427_
                       _e161111161430_
                       _hd161110161434_
                       _tl161109161437_
                       ___splice162295162296_
                       _target161159161200_
                       _tl161161161203_)
                      (let () (declare (not safe)) (_g161102161173_)))))
              (let () (declare (not safe)) (_g161102161173_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161112161447_))
                                            (___kont162291162292_
                                             _hd161113161444_
                                             _hd161110161434_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl161109161437_))
                                                (let ((___splice162295162296_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl161109161437_
                                                          '0))))
                                                  (let ((_tl161161161203_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162295162296_
                                                            '1)))
                                                        (_target161159161200_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162295162296_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl161161161203_))
                                                        (___match162401162402_
                                                         _e161108161420_
                                                         _hd161107161424_
                                                         _tl161106161427_
                                                         _e161111161430_
                                                         _hd161110161434_
                                                         _tl161109161437_
                                                         ___splice162295162296_
                                                         _target161159161200_
                                                         _tl161161161203_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g161102161173_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g161102161173_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161109161437_))
                                    (let ((___splice162295162296_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161109161437_
                                              '0))))
                                      (let ((_tl161161161203_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162295162296_
                                                '1)))
                                            (_target161159161200_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162295162296_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161161161203_))
                                            (___match162401162402_
                                             _e161108161420_
                                             _hd161107161424_
                                             _tl161106161427_
                                             _e161111161430_
                                             _hd161110161434_
                                             _tl161109161437_
                                             ___splice162295162296_
                                             _target161159161200_
                                             _tl161161161203_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161102161173_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161102161173_))))))
                        (let () (declare (not safe)) (_g161102161173_)))))
                (let () (declare (not safe)) (_g161102161173_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx161490_)
      (let* ((___stx162404162405_ _$stx161490_)
             (_g161495161530_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162404162405_)))))
        (let ((___kont162407162408_
               (lambda (_L161652_ _L161654_)
                 (let ((__tmp162729
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162724
                        (let ((__tmp162725
                               (let ((__tmp162726
                                      (let ((__tmp162728
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162727
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161652_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162728 __tmp162727))))
                                 (declare (not safe))
                                 (cons __tmp162726 '()))))
                          (declare (not safe))
                          (cons _L161654_ __tmp162725))))
                   (declare (not safe))
                   (cons __tmp162729 __tmp162724))))
              (___kont162409162410_
               (lambda (_L161587_ _L161589_)
                 (let ((__tmp162738
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162730
                        (let ((__tmp162731
                               (let ((__tmp162732
                                      (let ((__tmp162737
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162733
                                             (let ((__tmp162734
                                                    (lambda (_g161606161609_
                                                             _g161607161612_)
                                                      (let ((__tmp162735
                                                             (let ((__tmp162736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g161606161609_ __tmp162736))))
                (declare (not safe))
                (cons __tmp162735 _g161607161612_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162734
                                                       '()
                                                       _L161587_))))
                                        (declare (not safe))
                                        (cons __tmp162737 __tmp162733))))
                                 (declare (not safe))
                                 (cons __tmp162732 '()))))
                          (declare (not safe))
                          (cons _L161589_ __tmp162731))))
                   (declare (not safe))
                   (cons __tmp162738 __tmp162730)))))
          (let ((___match162453162454_
                 (lambda (_e161512161537_
                          _hd161511161541_
                          _tl161510161544_
                          _e161515161547_
                          _hd161514161551_
                          _tl161513161554_
                          ___splice162411162412_
                          _target161516161557_
                          _tl161518161560_)
                   (letrec ((_loop161519161563_
                             (lambda (_hd161517161567_ _arity161523161570_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd161517161567_))
                                   (let ((_e161520161573_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd161517161567_))))
                                     (let ((_lp-tl161522161580_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e161520161573_)))
                                           (_lp-hd161521161577_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e161520161573_))))
                                       (_loop161519161563_
                                        _lp-tl161522161580_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd161521161577_
                                                _arity161523161570_)))))
                                   (let ((_arity161524161583_
                                          (reverse _arity161523161570_)))
                                     (___kont162409162410_
                                      _arity161524161583_
                                      _hd161514161551_))))))
                     (_loop161519161563_ _target161516161557_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162404162405_))
                (let ((_e161501161622_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162404162405_))))
                  (let ((_tl161499161629_
                         (let () (declare (not safe)) (##cdr _e161501161622_)))
                        (_hd161500161626_
                         (let ()
                           (declare (not safe))
                           (##car _e161501161622_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161499161629_))
                        (let ((_e161504161632_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161499161629_))))
                          (let ((_tl161502161639_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161504161632_)))
                                (_hd161503161636_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161504161632_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161502161639_))
                                (let ((_e161507161642_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161502161639_))))
                                  (let ((_tl161505161649_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161507161642_)))
                                        (_hd161506161646_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161507161642_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161505161649_))
                                        (___kont162407162408_
                                         _hd161506161646_
                                         _hd161503161636_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl161502161639_))
                                            (let ((___splice162411162412_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl161502161639_
                                                      '0))))
                                              (let ((_tl161518161560_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice162411162412_
                                                        '1)))
                                                    (_target161516161557_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice162411162412_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161518161560_))
                                                    (___match162453162454_
                                                     _e161501161622_
                                                     _hd161500161626_
                                                     _tl161499161629_
                                                     _e161504161632_
                                                     _hd161503161636_
                                                     _tl161502161639_
                                                     ___splice162411162412_
                                                     _target161516161557_
                                                     _tl161518161560_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161495161530_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g161495161530_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161502161639_))
                                    (let ((___splice162411162412_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161502161639_
                                              '0))))
                                      (let ((_tl161518161560_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162411162412_
                                                '1)))
                                            (_target161516161557_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162411162412_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161518161560_))
                                            (___match162453162454_
                                             _e161501161622_
                                             _hd161500161626_
                                             _tl161499161629_
                                             _e161504161632_
                                             _hd161503161636_
                                             _tl161502161639_
                                             ___splice162411162412_
                                             _target161516161557_
                                             _tl161518161560_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161495161530_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161495161530_))))))
                        (let () (declare (not safe)) (_g161495161530_)))))
                (let () (declare (not safe)) (_g161495161530_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx161674_)
      (let* ((_g161678161713_
              (lambda (_g161679161709_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161679161709_))))
             (_g161677161841_
              (lambda (_g161679161717_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161679161717_))
                    (let ((_e161684161720_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161679161717_))))
                      (let ((_hd161683161724_
                             (let ()
                               (declare (not safe))
                               (##car _e161684161720_)))
                            (_tl161682161727_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161684161720_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161682161727_))
                            (let ((_g162739_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161682161727_
                                      '0))))
                              (begin
                                (let ((_g162740_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162739_)
                                             (##vector-length _g162739_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162740_ 2)))
                                      (error "Context expects 2 values"
                                             _g162740_)))
                                (let ((_target161685161730_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162739_ 0)))
                                      (_tl161687161733_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162739_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161687161733_))
                                      (letrec ((_loop161688161736_
                                                (lambda (_hd161686161740_
                                                         _arity161692161743_
                                                         _prim161693161745_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161686161740_))
                                                      (let ((_e161689161748_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161686161740_))))
                (let ((_lp-hd161690161752_
                       (let () (declare (not safe)) (##car _e161689161748_)))
                      (_lp-tl161691161755_
                       (let () (declare (not safe)) (##cdr _e161689161748_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161690161752_))
                      (let ((_e161698161758_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161690161752_))))
                        (let ((_hd161697161762_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161698161758_)))
                              (_tl161696161765_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161698161758_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161696161765_))
                              (let ((_g162749_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161696161765_
                                        '0))))
                                (begin
                                  (let ((_g162750_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162749_)
                                               (##vector-length _g162749_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162750_ 2)))
                                        (error "Context expects 2 values"
                                               _g162750_)))
                                  (let ((_target161699161768_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162749_ 0)))
                                        (_tl161701161771_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162749_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161701161771_))
                                        (letrec ((_loop161702161774_
                                                  (lambda (_hd161700161778_
                                                           _arity161706161781_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161700161778_))
                                                        (let ((_e161703161784_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161700161778_))))
                  (let ((_lp-hd161704161788_
                         (let () (declare (not safe)) (##car _e161703161784_)))
                        (_lp-tl161705161791_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161703161784_))))
                    (_loop161702161774_
                     _lp-tl161705161791_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161704161788_ _arity161706161781_)))))
                (let ((_arity161707161794_ (reverse _arity161706161781_)))
                  (_loop161688161736_
                   _lp-tl161691161755_
                   (let ()
                     (declare (not safe))
                     (cons _arity161707161794_ _arity161692161743_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161697161762_ _prim161693161745_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161702161774_
                                           _target161699161768_
                                           '()))
                                        (_g161678161713_ _g161679161717_)))))
                              (_g161678161713_ _g161679161717_))))
                      (_g161678161713_ _g161679161717_))))
              (let ((_arity161694161798_ (reverse _arity161692161743_))
                    (_prim161695161801_ (reverse _prim161693161745_)))
                ((lambda (_L161804_ _L161806_)
                   (let ((__tmp162748
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162741
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161804_
                               _L161806_))
                            (let ((__tmp162742
                                   (lambda (_g161821161827_
                                            _g161822161830_
                                            _g161823161832_)
                                     (let ((__tmp162743
                                            (let ((__tmp162747
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp162744
                                                   (let ((__tmp162745
                                                          (let ((__tmp162746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161824161835_ _g161825161838_)
                           (let ()
                             (declare (not safe))
                             (cons _g161824161835_ _g161825161838_)))))
                    (declare (not safe))
                    (foldr1 __tmp162746 '() _g161821161827_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161822161830_
                                                           __tmp162745))))
                                              (declare (not safe))
                                              (cons __tmp162747 __tmp162744))))
                                       (declare (not safe))
                                       (cons __tmp162743 _g161823161832_)))))
                              (declare (not safe))
                              (foldr2 __tmp162742 '() _L161804_ _L161806_)))))
                     (declare (not safe))
                     (cons __tmp162748 __tmp162741)))
                 _arity161694161798_
                 _prim161695161801_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161688161736_
                                         _target161685161730_
                                         '()
                                         '()))
                                      (_g161678161713_ _g161679161717_)))))
                            (_g161678161713_ _g161679161717_))))
                    (_g161678161713_ _g161679161717_)))))
        (_g161677161841_ _$stx161674_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx161847_)
      (let* ((_g161851161886_
              (lambda (_g161852161882_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161852161882_))))
             (_g161850162014_
              (lambda (_g161852161890_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161852161890_))
                    (let ((_e161857161893_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161852161890_))))
                      (let ((_hd161856161897_
                             (let ()
                               (declare (not safe))
                               (##car _e161857161893_)))
                            (_tl161855161900_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161857161893_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161855161900_))
                            (let ((_g162751_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161855161900_
                                      '0))))
                              (begin
                                (let ((_g162752_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162751_)
                                             (##vector-length _g162751_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162752_ 2)))
                                      (error "Context expects 2 values"
                                             _g162752_)))
                                (let ((_target161858161903_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162751_ 0)))
                                      (_tl161860161906_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162751_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161860161906_))
                                      (letrec ((_loop161861161909_
                                                (lambda (_hd161859161913_
                                                         _arity161865161916_
                                                         _prim161866161918_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161859161913_))
                                                      (let ((_e161862161921_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161859161913_))))
                (let ((_lp-hd161863161925_
                       (let () (declare (not safe)) (##car _e161862161921_)))
                      (_lp-tl161864161928_
                       (let () (declare (not safe)) (##cdr _e161862161921_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161863161925_))
                      (let ((_e161871161931_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161863161925_))))
                        (let ((_hd161870161935_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161871161931_)))
                              (_tl161869161938_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161871161931_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161869161938_))
                              (let ((_g162761_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161869161938_
                                        '0))))
                                (begin
                                  (let ((_g162762_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162761_)
                                               (##vector-length _g162761_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162762_ 2)))
                                        (error "Context expects 2 values"
                                               _g162762_)))
                                  (let ((_target161872161941_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162761_ 0)))
                                        (_tl161874161944_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162761_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161874161944_))
                                        (letrec ((_loop161875161947_
                                                  (lambda (_hd161873161951_
                                                           _arity161879161954_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161873161951_))
                                                        (let ((_e161876161957_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161873161951_))))
                  (let ((_lp-hd161877161961_
                         (let () (declare (not safe)) (##car _e161876161957_)))
                        (_lp-tl161878161964_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161876161957_))))
                    (_loop161875161947_
                     _lp-tl161878161964_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161877161961_ _arity161879161954_)))))
                (let ((_arity161880161967_ (reverse _arity161879161954_)))
                  (_loop161861161909_
                   _lp-tl161864161928_
                   (let ()
                     (declare (not safe))
                     (cons _arity161880161967_ _arity161865161916_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161870161935_ _prim161866161918_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161875161947_
                                           _target161872161941_
                                           '()))
                                        (_g161851161886_ _g161852161890_)))))
                              (_g161851161886_ _g161852161890_))))
                      (_g161851161886_ _g161852161890_))))
              (let ((_arity161867161971_ (reverse _arity161865161916_))
                    (_prim161868161974_ (reverse _prim161866161918_)))
                ((lambda (_L161977_ _L161979_)
                   (let ((__tmp162760
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162753
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161977_
                               _L161979_))
                            (let ((__tmp162754
                                   (lambda (_g161994162000_
                                            _g161995162003_
                                            _g161996162005_)
                                     (let ((__tmp162755
                                            (let ((__tmp162759
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp162756
                                                   (let ((__tmp162757
                                                          (let ((__tmp162758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161997162008_ _g161998162011_)
                           (let ()
                             (declare (not safe))
                             (cons _g161997162008_ _g161998162011_)))))
                    (declare (not safe))
                    (foldr1 __tmp162758 '() _g161994162000_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161995162003_
                                                           __tmp162757))))
                                              (declare (not safe))
                                              (cons __tmp162759 __tmp162756))))
                                       (declare (not safe))
                                       (cons __tmp162755 _g161996162005_)))))
                              (declare (not safe))
                              (foldr2 __tmp162754 '() _L161977_ _L161979_)))))
                     (declare (not safe))
                     (cons __tmp162760 __tmp162753)))
                 _arity161867161971_
                 _prim161868161974_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161861161909_
                                         _target161858161903_
                                         '()
                                         '()))
                                      (_g161851161886_ _g161852161890_)))))
                            (_g161851161886_ _g161852161890_))))
                    (_g161851161886_ _g161852161890_)))))
        (_g161850162014_ _$stx161847_)))))
