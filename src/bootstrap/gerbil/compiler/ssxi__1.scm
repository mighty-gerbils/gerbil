(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx158913_)
      (let* ((_g158917158935_
              (lambda (_g158918158931_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158918158931_))))
             (_g158916158990_
              (lambda (_g158918158939_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158918158939_))
                    (let ((_e158923158942_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158918158939_))))
                      (let ((_hd158922158946_
                             (let ()
                               (declare (not safe))
                               (##car _e158923158942_)))
                            (_tl158921158949_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158923158942_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158921158949_))
                            (let ((_e158926158952_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158921158949_))))
                              (let ((_hd158925158956_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158926158952_)))
                                    (_tl158924158959_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158926158952_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158924158959_))
                                    (let ((_e158929158962_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158924158959_))))
                                      (let ((_hd158928158966_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158929158962_)))
                                            (_tl158927158969_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158929158962_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl158927158969_))
                                            ((lambda (_L158972_ _L158974_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L158974_))
                                                   (let ((__tmp162454
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp162449
                                                          (let ((__tmp162451
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp162453
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp162452
                                (let ()
                                  (declare (not safe))
                                  (cons _L158974_ '()))))
                           (declare (not safe))
                           (cons __tmp162453 __tmp162452)))
                        (__tmp162450
                         (let () (declare (not safe)) (cons _L158972_ '()))))
                    (declare (not safe))
                    (cons __tmp162451 __tmp162450))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp162454
                                                           __tmp162449))
                                                   (_g158917158935_
                                                    _g158918158939_)))
                                             _hd158928158966_
                                             _hd158925158956_)
                                            (_g158917158935_
                                             _g158918158939_))))
                                    (_g158917158935_ _g158918158939_))))
                            (_g158917158935_ _g158918158939_))))
                    (_g158917158935_ _g158918158939_)))))
        (_g158916158990_ _$stx158913_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx158994_)
      (let* ((_g158998159027_
              (lambda (_g158999159023_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158999159023_))))
             (_g158997159127_
              (lambda (_g158999159031_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158999159031_))
                    (let ((_e159004159034_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158999159031_))))
                      (let ((_hd159003159038_
                             (let ()
                               (declare (not safe))
                               (##car _e159004159034_)))
                            (_tl159002159041_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159004159034_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159002159041_))
                            (let ((_g162455_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159002159041_
                                      '0))))
                              (begin
                                (let ((_g162456_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162455_)
                                             (##vector-length _g162455_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162456_ 2)))
                                      (error "Context expects 2 values"
                                             _g162456_)))
                                (let ((_target159005159044_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162455_ 0)))
                                      (_tl159007159047_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162455_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159007159047_))
                                      (letrec ((_loop159008159050_
                                                (lambda (_hd159006159054_
                                                         _type159012159057_
                                                         _symbol159013159059_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd159006159054_))
                                                      (let ((_e159009159062_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd159006159054_))))
                (let ((_lp-hd159010159066_
                       (let () (declare (not safe)) (##car _e159009159062_)))
                      (_lp-tl159011159069_
                       (let () (declare (not safe)) (##cdr _e159009159062_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd159010159066_))
                      (let ((_e159018159072_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd159010159066_))))
                        (let ((_hd159017159076_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159018159072_)))
                              (_tl159016159079_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159018159072_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159016159079_))
                              (let ((_e159021159082_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159016159079_))))
                                (let ((_hd159020159086_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159021159082_)))
                                      (_tl159019159089_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159021159082_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159019159089_))
                                      (_loop159008159050_
                                       _lp-tl159011159069_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd159020159086_
                                               _type159012159057_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd159017159076_
                                               _symbol159013159059_)))
                                      (_g158998159027_ _g158999159031_))))
                              (_g158998159027_ _g158999159031_))))
                      (_g158998159027_ _g158999159031_))))
              (let ((_type159014159092_ (reverse _type159012159057_))
                    (_symbol159015159095_ (reverse _symbol159013159059_)))
                ((lambda (_L159098_ _L159100_)
                   (let ((__tmp162463
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162457
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L159098_
                               _L159100_))
                            (let ((__tmp162458
                                   (lambda (_g159115159119_
                                            _g159116159122_
                                            _g159117159124_)
                                     (let ((__tmp162459
                                            (let ((__tmp162462
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp162460
                                                   (let ((__tmp162461
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g159115159119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g159116159122_
                                                           __tmp162461))))
                                              (declare (not safe))
                                              (cons __tmp162462 __tmp162460))))
                                       (declare (not safe))
                                       (cons __tmp162459 _g159117159124_)))))
                              (declare (not safe))
                              (foldr2 __tmp162458 '() _L159098_ _L159100_)))))
                     (declare (not safe))
                     (cons __tmp162463 __tmp162457)))
                 _type159014159092_
                 _symbol159015159095_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop159008159050_
                                         _target159005159044_
                                         '()
                                         '()))
                                      (_g158998159027_ _g158999159031_)))))
                            (_g158998159027_ _g158999159031_))))
                    (_g158998159027_ _g158999159031_)))))
        (_g158997159127_ _$stx158994_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx159132_)
      (let* ((___stx162014162015_ _$stx159132_)
             (_g159137159179_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162014162015_)))))
        (let ((___kont162017162018_
               (lambda (_L159307_ _L159309_ _L159310_ _L159311_)
                 (let ((__tmp162477
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp162464
                        (let ((__tmp162474
                               (let ((__tmp162476
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162475
                                      (let ()
                                        (declare (not safe))
                                        (cons _L159311_ '()))))
                                 (declare (not safe))
                                 (cons __tmp162476 __tmp162475)))
                              (__tmp162465
                               (let ((__tmp162471
                                      (let ((__tmp162473
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162472
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159310_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162473 __tmp162472)))
                                     (__tmp162466
                                      (let ((__tmp162468
                                             (let ((__tmp162470
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162469
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159309_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162470 __tmp162469)))
                                            (__tmp162467
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159307_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162468 __tmp162467))))
                                 (declare (not safe))
                                 (cons __tmp162471 __tmp162466))))
                          (declare (not safe))
                          (cons __tmp162474 __tmp162465))))
                   (declare (not safe))
                   (cons __tmp162477 __tmp162464))))
              (___kont162019162020_
               (lambda (_L159226_ _L159228_ _L159229_ _L159230_)
                 (let ((__tmp162478
                        (let ((__tmp162479
                               (let ((__tmp162480
                                      (let ((__tmp162481
                                             (let ((__tmp162482
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp162482 '()))))
                                        (declare (not safe))
                                        (cons _L159226_ __tmp162481))))
                                 (declare (not safe))
                                 (cons _L159228_ __tmp162480))))
                          (declare (not safe))
                          (cons _L159229_ __tmp162479))))
                   (declare (not safe))
                   (cons _L159230_ __tmp162478)))))
          (let ((___match162053162054_
                 (lambda (_e159145159257_
                          _hd159144159261_
                          _tl159143159264_
                          _e159148159267_
                          _hd159147159271_
                          _tl159146159274_
                          _e159151159277_
                          _hd159150159281_
                          _tl159149159284_
                          _e159154159287_
                          _hd159153159291_
                          _tl159152159294_
                          _e159157159297_
                          _hd159156159301_
                          _tl159155159304_)
                   (let ((_L159307_ _hd159156159301_)
                         (_L159309_ _hd159153159291_)
                         (_L159310_ _hd159150159281_)
                         (_L159311_ _hd159147159271_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L159311_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159310_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159309_)))
                         (___kont162017162018_
                          _L159307_
                          _L159309_
                          _L159310_
                          _L159311_)
                         (let () (declare (not safe)) (_g159137159179_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162014162015_))
                (let ((_e159145159257_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162014162015_))))
                  (let ((_tl159143159264_
                         (let () (declare (not safe)) (##cdr _e159145159257_)))
                        (_hd159144159261_
                         (let ()
                           (declare (not safe))
                           (##car _e159145159257_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159143159264_))
                        (let ((_e159148159267_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159143159264_))))
                          (let ((_tl159146159274_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159148159267_)))
                                (_hd159147159271_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159148159267_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl159146159274_))
                                (let ((_e159151159277_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl159146159274_))))
                                  (let ((_tl159149159284_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e159151159277_)))
                                        (_hd159150159281_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e159151159277_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl159149159284_))
                                        (let ((_e159154159287_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl159149159284_))))
                                          (let ((_tl159152159294_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e159154159287_)))
                                                (_hd159153159291_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e159154159287_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159152159294_))
                                                (let ((_e159157159297_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159152159294_))))
                                                  (let ((_tl159155159304_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159157159297_)))
                                                        (_hd159156159301_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159157159297_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159155159304_))
                                                        (___match162053162054_
                                                         _e159145159257_
                                                         _hd159144159261_
                                                         _tl159143159264_
                                                         _e159148159267_
                                                         _hd159147159271_
                                                         _tl159146159274_
                                                         _e159151159277_
                                                         _hd159150159281_
                                                         _tl159149159284_
                                                         _e159154159287_
                                                         _hd159153159291_
                                                         _tl159152159294_
                                                         _e159157159297_
                                                         _hd159156159301_
                                                         _tl159155159304_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159137159179_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159152159294_))
                                                    (___kont162019162020_
                                                     _hd159153159291_
                                                     _hd159150159281_
                                                     _hd159147159271_
                                                     _hd159144159261_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159137159179_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g159137159179_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g159137159179_)))))
                        (let () (declare (not safe)) (_g159137159179_)))))
                (let () (declare (not safe)) (_g159137159179_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx159336_)
      (let* ((_g159340159375_
              (lambda (_g159341159371_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159341159371_))))
             (_g159339159494_
              (lambda (_g159341159379_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159341159379_))
                    (let ((_e159347159382_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159341159379_))))
                      (let ((_hd159346159386_
                             (let ()
                               (declare (not safe))
                               (##car _e159347159382_)))
                            (_tl159345159389_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159347159382_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159345159389_))
                            (let ((_g162483_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159345159389_
                                      '0))))
                              (begin
                                (let ((_g162484_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162483_)
                                             (##vector-length _g162483_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162484_ 2)))
                                      (error "Context expects 2 values"
                                             _g162484_)))
                                (let ((_target159348159392_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162483_ 0)))
                                      (_tl159350159395_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162483_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159350159395_))
                                      (letrec ((_loop159351159398_
                                                (lambda (_hd159349159402_
                                                         _symbol159355159405_
                                                         _method159356159407_
                                                         _type-t159357159409_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd159349159402_))
                                                      (let ((_e159352159412_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd159349159402_))))
                (let ((_lp-hd159353159416_
                       (let () (declare (not safe)) (##car _e159352159412_)))
                      (_lp-tl159354159419_
                       (let () (declare (not safe)) (##cdr _e159352159412_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd159353159416_))
                      (let ((_e159363159422_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd159353159416_))))
                        (let ((_hd159362159426_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159363159422_)))
                              (_tl159361159429_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159363159422_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159361159429_))
                              (let ((_e159366159432_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159361159429_))))
                                (let ((_hd159365159436_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159366159432_)))
                                      (_tl159364159439_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159366159432_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159364159439_))
                                      (let ((_e159369159442_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159364159439_))))
                                        (let ((_hd159368159446_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159369159442_)))
                                              (_tl159367159449_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159369159442_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159367159449_))
                                              (_loop159351159398_
                                               _lp-tl159354159419_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159368159446_
                                                       _symbol159355159405_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159365159436_
                                                       _method159356159407_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159362159426_
                                                       _type-t159357159409_)))
                                              (_g159340159375_
                                               _g159341159379_))))
                                      (_g159340159375_ _g159341159379_))))
                              (_g159340159375_ _g159341159379_))))
                      (_g159340159375_ _g159341159379_))))
              (let ((_symbol159358159452_ (reverse _symbol159355159405_))
                    (_method159359159455_ (reverse _method159356159407_))
                    (_type-t159360159457_ (reverse _type-t159357159409_)))
                ((lambda (_L159460_ _L159462_ _L159463_)
                   (let ((__tmp162492
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162485
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L159460_
                               _L159462_
                               _L159463_))
                            (let ((__tmp162486
                                   (lambda (_g159479159484_
                                            _g159480159487_
                                            _g159481159489_
                                            _g159482159491_)
                                     (let ((__tmp162487
                                            (let ((__tmp162491
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp162488
                                                   (let ((__tmp162489
                                                          (let ((__tmp162490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g159479159484_ '()))))
                    (declare (not safe))
                    (cons _g159480159487_ __tmp162490))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g159481159489_
                                                           __tmp162489))))
                                              (declare (not safe))
                                              (cons __tmp162491 __tmp162488))))
                                       (declare (not safe))
                                       (cons __tmp162487 _g159482159491_)))))
                              (declare (not safe))
                              (foldr* __tmp162486
                                      '()
                                      _L159460_
                                      _L159462_
                                      _L159463_)))))
                     (declare (not safe))
                     (cons __tmp162492 __tmp162485)))
                 _symbol159358159452_
                 _method159359159455_
                 _type-t159360159457_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop159351159398_
                                         _target159348159392_
                                         '()
                                         '()
                                         '()))
                                      (_g159340159375_ _g159341159379_)))))
                            (_g159340159375_ _g159341159379_))))
                    (_g159340159375_ _g159341159379_)))))
        (_g159339159494_ _$stx159336_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx159499_)
      (let* ((_g159503159536_
              (lambda (_g159504159532_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159504159532_))))
             (_g159502159650_
              (lambda (_g159504159540_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159504159540_))
                    (let ((_e159510159543_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159504159540_))))
                      (let ((_hd159509159547_
                             (let ()
                               (declare (not safe))
                               (##car _e159510159543_)))
                            (_tl159508159550_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159510159543_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159508159550_))
                            (let ((_e159513159553_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159508159550_))))
                              (let ((_hd159512159557_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159513159553_)))
                                    (_tl159511159560_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159513159553_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159511159560_))
                                    (let ((_g162493_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159511159560_
                                              '0))))
                                      (begin
                                        (let ((_g162494_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g162493_)
                                                     (##vector-length
                                                      _g162493_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g162494_ 2)))
                                              (error "Context expects 2 values"
                                                     _g162494_)))
                                        (let ((_target159514159563_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162493_ 0)))
                                              (_tl159516159566_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162493_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159516159566_))
                                              (letrec ((_loop159517159569_
                                                        (lambda (_hd159515159573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol159521159576_
                         _method159522159578_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd159515159573_))
                      (let ((_e159518159581_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd159515159573_))))
                        (let ((_lp-hd159519159585_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159518159581_)))
                              (_lp-tl159520159588_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159518159581_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd159519159585_))
                              (let ((_e159527159591_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd159519159585_))))
                                (let ((_hd159526159595_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159527159591_)))
                                      (_tl159525159598_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159527159591_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159525159598_))
                                      (let ((_e159530159601_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159525159598_))))
                                        (let ((_hd159529159605_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159530159601_)))
                                              (_tl159528159608_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159530159601_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159528159608_))
                                              (_loop159517159569_
                                               _lp-tl159520159588_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159529159605_
                                                       _symbol159521159576_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159526159595_
                                                       _method159522159578_)))
                                              (_g159503159536_
                                               _g159504159540_))))
                                      (_g159503159536_ _g159504159540_))))
                              (_g159503159536_ _g159504159540_))))
                      (let ((_symbol159523159611_
                             (reverse _symbol159521159576_))
                            (_method159524159614_
                             (reverse _method159522159578_)))
                        ((lambda (_L159617_ _L159619_ _L159620_)
                           (let ((__tmp162502
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp162495
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L159617_
                                       _L159619_))
                                    (let ((__tmp162496
                                           (lambda (_g159638159642_
                                                    _g159639159645_
                                                    _g159640159647_)
                                             (let ((__tmp162497
                                                    (let ((__tmp162501
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp162498
                                                           (let ((__tmp162499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp162500
                                 (let ()
                                   (declare (not safe))
                                   (cons _g159638159642_ '()))))
                            (declare (not safe))
                            (cons _g159639159645_ __tmp162500))))
                     (declare (not safe))
                     (cons _L159620_ __tmp162499))))
              (declare (not safe))
              (cons __tmp162501 __tmp162498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162497
                                                     _g159640159647_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp162496
                                              '()
                                              _L159617_
                                              _L159619_)))))
                             (declare (not safe))
                             (cons __tmp162502 __tmp162495)))
                         _symbol159523159611_
                         _method159524159614_
                         _hd159512159557_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop159517159569_
                                                 _target159514159563_
                                                 '()
                                                 '()))
                                              (_g159503159536_
                                               _g159504159540_)))))
                                    (_g159503159536_ _g159504159540_))))
                            (_g159503159536_ _g159504159540_))))
                    (_g159503159536_ _g159504159540_)))))
        (_g159502159650_ _$stx159499_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx159655_)
      (let* ((_g159659159673_
              (lambda (_g159660159669_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159660159669_))))
             (_g159658159714_
              (lambda (_g159660159677_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159660159677_))
                    (let ((_e159664159680_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159660159677_))))
                      (let ((_hd159663159684_
                             (let ()
                               (declare (not safe))
                               (##car _e159664159680_)))
                            (_tl159662159687_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159664159680_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159662159687_))
                            (let ((_e159667159690_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159662159687_))))
                              (let ((_hd159666159694_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159667159690_)))
                                    (_tl159665159697_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159667159690_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159665159697_))
                                    ((lambda (_L159700_)
                                       (let ((__tmp162507
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp162503
                                              (let ((__tmp162504
                                                     (let ((__tmp162506
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162505
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162506 __tmp162505))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162504 '()))))
                                         (declare (not safe))
                                         (cons __tmp162507 __tmp162503)))
                                     _hd159666159694_)
                                    (_g159659159673_ _g159660159677_))))
                            (_g159659159673_ _g159660159677_))))
                    (_g159659159673_ _g159660159677_)))))
        (_g159658159714_ _$stx159655_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx159718_)
      (let* ((_g159722159772_
              (lambda (_g159723159768_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159723159768_))))
             (_g159721159939_
              (lambda (_g159723159776_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159723159776_))
                    (let ((_e159736159779_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159723159776_))))
                      (let ((_hd159735159783_
                             (let ()
                               (declare (not safe))
                               (##car _e159736159779_)))
                            (_tl159734159786_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159736159779_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159734159786_))
                            (let ((_e159739159789_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159734159786_))))
                              (let ((_hd159738159793_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159739159789_)))
                                    (_tl159737159796_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159739159789_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159737159796_))
                                    (let ((_e159742159799_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159737159796_))))
                                      (let ((_hd159741159803_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159742159799_)))
                                            (_tl159740159806_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159742159799_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159740159806_))
                                            (let ((_e159745159809_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159740159806_))))
                                              (let ((_hd159744159813_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159745159809_)))
                                                    (_tl159743159816_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159745159809_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159743159816_))
                                                    (let ((_e159748159819_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159743159816_))))
                                                      (let ((_hd159747159823_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159748159819_)))
                    (_tl159746159826_
                     (let () (declare (not safe)) (##cdr _e159748159819_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159746159826_))
                    (let ((_e159751159829_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159746159826_))))
                      (let ((_hd159750159833_
                             (let ()
                               (declare (not safe))
                               (##car _e159751159829_)))
                            (_tl159749159836_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159751159829_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159749159836_))
                            (let ((_e159754159839_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159749159836_))))
                              (let ((_hd159753159843_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159754159839_)))
                                    (_tl159752159846_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159754159839_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159752159846_))
                                    (let ((_e159757159849_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159752159846_))))
                                      (let ((_hd159756159853_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159757159849_)))
                                            (_tl159755159856_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159757159849_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159755159856_))
                                            (let ((_e159760159859_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159755159856_))))
                                              (let ((_hd159759159863_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159760159859_)))
                                                    (_tl159758159866_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159760159859_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159758159866_))
                                                    (let ((_e159763159869_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159758159866_))))
                                                      (let ((_hd159762159873_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159763159869_)))
                    (_tl159761159876_
                     (let () (declare (not safe)) (##cdr _e159763159869_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159761159876_))
                    (let ((_e159766159879_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159761159876_))))
                      (let ((_hd159765159883_
                             (let ()
                               (declare (not safe))
                               (##car _e159766159879_)))
                            (_tl159764159886_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159766159879_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl159764159886_))
                            ((lambda (_L159889_
                                      _L159891_
                                      _L159892_
                                      _L159893_
                                      _L159894_
                                      _L159895_
                                      _L159896_
                                      _L159897_
                                      _L159898_
                                      _L159899_)
                               (let ((__tmp162542
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp162508
                                      (let ((__tmp162539
                                             (let ((__tmp162541
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162540
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159899_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162541 __tmp162540)))
                                            (__tmp162509
                                             (let ((__tmp162536
                                                    (let ((__tmp162538
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp162537
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L159898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp162538 __tmp162537)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp162510
                                                    (let ((__tmp162533
                                                           (let ((__tmp162535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162534
                          (let () (declare (not safe)) (cons _L159897_ '()))))
                     (declare (not safe))
                     (cons __tmp162535 __tmp162534)))
                  (__tmp162511
                   (let ((__tmp162530
                          (let ((__tmp162532
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp162531
                                 (let ()
                                   (declare (not safe))
                                   (cons _L159896_ '()))))
                            (declare (not safe))
                            (cons __tmp162532 __tmp162531)))
                         (__tmp162512
                          (let ((__tmp162527
                                 (let ((__tmp162529
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp162528
                                        (let ()
                                          (declare (not safe))
                                          (cons _L159895_ '()))))
                                   (declare (not safe))
                                   (cons __tmp162529 __tmp162528)))
                                (__tmp162513
                                 (let ((__tmp162524
                                        (let ((__tmp162526
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp162525
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L159894_ '()))))
                                          (declare (not safe))
                                          (cons __tmp162526 __tmp162525)))
                                       (__tmp162514
                                        (let ((__tmp162515
                                               (let ((__tmp162516
                                                      (let ((__tmp162521
                                                             (let ((__tmp162523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162522
                            (let ()
                              (declare (not safe))
                              (cons _L159891_ '()))))
                       (declare (not safe))
                       (cons __tmp162523 __tmp162522)))
                    (__tmp162517
                     (let ((__tmp162518
                            (let ((__tmp162520
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162519
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159889_ '()))))
                              (declare (not safe))
                              (cons __tmp162520 __tmp162519))))
                       (declare (not safe))
                       (cons __tmp162518 '()))))
                (declare (not safe))
                (cons __tmp162521 __tmp162517))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L159892_
                                                       __tmp162516))))
                                          (declare (not safe))
                                          (cons _L159893_ __tmp162515))))
                                   (declare (not safe))
                                   (cons __tmp162524 __tmp162514))))
                            (declare (not safe))
                            (cons __tmp162527 __tmp162513))))
                     (declare (not safe))
                     (cons __tmp162530 __tmp162512))))
              (declare (not safe))
              (cons __tmp162533 __tmp162511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162536
                                                     __tmp162510))))
                                        (declare (not safe))
                                        (cons __tmp162539 __tmp162509))))
                                 (declare (not safe))
                                 (cons __tmp162542 __tmp162508)))
                             _hd159765159883_
                             _hd159762159873_
                             _hd159759159863_
                             _hd159756159853_
                             _hd159753159843_
                             _hd159750159833_
                             _hd159747159823_
                             _hd159744159813_
                             _hd159741159803_
                             _hd159738159793_)
                            (_g159722159772_ _g159723159776_))))
                    (_g159722159772_ _g159723159776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159722159772_
                                                     _g159723159776_))))
                                            (_g159722159772_
                                             _g159723159776_))))
                                    (_g159722159772_ _g159723159776_))))
                            (_g159722159772_ _g159723159776_))))
                    (_g159722159772_ _g159723159776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159722159772_
                                                     _g159723159776_))))
                                            (_g159722159772_
                                             _g159723159776_))))
                                    (_g159722159772_ _g159723159776_))))
                            (_g159722159772_ _g159723159776_))))
                    (_g159722159772_ _g159723159776_)))))
        (_g159721159939_ _$stx159718_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx159943_)
      (let* ((_g159947159961_
              (lambda (_g159948159957_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159948159957_))))
             (_g159946160002_
              (lambda (_g159948159965_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159948159965_))
                    (let ((_e159952159968_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159948159965_))))
                      (let ((_hd159951159972_
                             (let ()
                               (declare (not safe))
                               (##car _e159952159968_)))
                            (_tl159950159975_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159952159968_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159950159975_))
                            (let ((_e159955159978_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159950159975_))))
                              (let ((_hd159954159982_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159955159978_)))
                                    (_tl159953159985_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159955159978_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159953159985_))
                                    ((lambda (_L159988_)
                                       (let ((__tmp162547
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp162543
                                              (let ((__tmp162544
                                                     (let ((__tmp162546
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162545
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162546 __tmp162545))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162544 '()))))
                                         (declare (not safe))
                                         (cons __tmp162547 __tmp162543)))
                                     _hd159954159982_)
                                    (_g159947159961_ _g159948159965_))))
                            (_g159947159961_ _g159948159965_))))
                    (_g159947159961_ _g159948159965_)))))
        (_g159946160002_ _$stx159943_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx160006_)
      (let* ((_g160010160024_
              (lambda (_g160011160020_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160011160020_))))
             (_g160009160065_
              (lambda (_g160011160028_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160011160028_))
                    (let ((_e160015160031_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160011160028_))))
                      (let ((_hd160014160035_
                             (let ()
                               (declare (not safe))
                               (##car _e160015160031_)))
                            (_tl160013160038_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160015160031_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160013160038_))
                            (let ((_e160018160041_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160013160038_))))
                              (let ((_hd160017160045_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160018160041_)))
                                    (_tl160016160048_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160018160041_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160016160048_))
                                    ((lambda (_L160051_)
                                       (let ((__tmp162552
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp162548
                                              (let ((__tmp162549
                                                     (let ((__tmp162551
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162550
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L160051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162551 __tmp162550))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162549 '()))))
                                         (declare (not safe))
                                         (cons __tmp162552 __tmp162548)))
                                     _hd160017160045_)
                                    (_g160010160024_ _g160011160028_))))
                            (_g160010160024_ _g160011160028_))))
                    (_g160010160024_ _g160011160028_)))))
        (_g160009160065_ _$stx160006_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx160069_)
      (let* ((_g160073160095_
              (lambda (_g160074160091_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160074160091_))))
             (_g160072160164_
              (lambda (_g160074160099_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160074160099_))
                    (let ((_e160080160102_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160074160099_))))
                      (let ((_hd160079160106_
                             (let ()
                               (declare (not safe))
                               (##car _e160080160102_)))
                            (_tl160078160109_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160080160102_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160078160109_))
                            (let ((_e160083160112_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160078160109_))))
                              (let ((_hd160082160116_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160083160112_)))
                                    (_tl160081160119_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160083160112_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160081160119_))
                                    (let ((_e160086160122_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160081160119_))))
                                      (let ((_hd160085160126_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160086160122_)))
                                            (_tl160084160129_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160086160122_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160084160129_))
                                            (let ((_e160089160132_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160084160129_))))
                                              (let ((_hd160088160136_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160089160132_)))
                                                    (_tl160087160139_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160089160132_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160087160139_))
                                                    ((lambda (_L160142_
                                                              _L160144_
                                                              _L160145_)
                                                       (let ((__tmp162562
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp162553
                      (let ((__tmp162559
                             (let ((__tmp162561
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162560
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160145_ '()))))
                               (declare (not safe))
                               (cons __tmp162561 __tmp162560)))
                            (__tmp162554
                             (let ((__tmp162556
                                    (let ((__tmp162558
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp162557
                                           (let ()
                                             (declare (not safe))
                                             (cons _L160144_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162558 __tmp162557)))
                                   (__tmp162555
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160142_ '()))))
                               (declare (not safe))
                               (cons __tmp162556 __tmp162555))))
                        (declare (not safe))
                        (cons __tmp162559 __tmp162554))))
                 (declare (not safe))
                 (cons __tmp162562 __tmp162553)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd160088160136_
                                                     _hd160085160126_
                                                     _hd160082160116_)
                                                    (_g160073160095_
                                                     _g160074160099_))))
                                            (_g160073160095_
                                             _g160074160099_))))
                                    (_g160073160095_ _g160074160099_))))
                            (_g160073160095_ _g160074160099_))))
                    (_g160073160095_ _g160074160099_)))))
        (_g160072160164_ _$stx160069_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx160168_)
      (let* ((_g160172160194_
              (lambda (_g160173160190_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160173160190_))))
             (_g160171160263_
              (lambda (_g160173160198_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160173160198_))
                    (let ((_e160179160201_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160173160198_))))
                      (let ((_hd160178160205_
                             (let ()
                               (declare (not safe))
                               (##car _e160179160201_)))
                            (_tl160177160208_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160179160201_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160177160208_))
                            (let ((_e160182160211_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160177160208_))))
                              (let ((_hd160181160215_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160182160211_)))
                                    (_tl160180160218_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160182160211_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160180160218_))
                                    (let ((_e160185160221_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160180160218_))))
                                      (let ((_hd160184160225_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160185160221_)))
                                            (_tl160183160228_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160185160221_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160183160228_))
                                            (let ((_e160188160231_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160183160228_))))
                                              (let ((_hd160187160235_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160188160231_)))
                                                    (_tl160186160238_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160188160231_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160186160238_))
                                                    ((lambda (_L160241_
                                                              _L160243_
                                                              _L160244_)
                                                       (let ((__tmp162572
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp162563
                      (let ((__tmp162569
                             (let ((__tmp162571
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162570
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160244_ '()))))
                               (declare (not safe))
                               (cons __tmp162571 __tmp162570)))
                            (__tmp162564
                             (let ((__tmp162566
                                    (let ((__tmp162568
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp162567
                                           (let ()
                                             (declare (not safe))
                                             (cons _L160243_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162568 __tmp162567)))
                                   (__tmp162565
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160241_ '()))))
                               (declare (not safe))
                               (cons __tmp162566 __tmp162565))))
                        (declare (not safe))
                        (cons __tmp162569 __tmp162564))))
                 (declare (not safe))
                 (cons __tmp162572 __tmp162563)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd160187160235_
                                                     _hd160184160225_
                                                     _hd160181160215_)
                                                    (_g160172160194_
                                                     _g160173160198_))))
                                            (_g160172160194_
                                             _g160173160198_))))
                                    (_g160172160194_ _g160173160198_))))
                            (_g160172160194_ _g160173160198_))))
                    (_g160172160194_ _g160173160198_)))))
        (_g160171160263_ _$stx160168_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx160267_)
      (let* ((___stx162082162083_ _$stx160267_)
             (_g160275160343_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162082162083_)))))
        (let ((___kont162085162086_
               (lambda (_L160621_ _L160623_)
                 (let ((__tmp162593
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162573
                        (let ((__tmp162589
                               (let ((__tmp162592
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162590
                                      (let ((__tmp162591
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162591 '()))))
                                 (declare (not safe))
                                 (cons __tmp162592 __tmp162590)))
                              (__tmp162574
                               (let ((__tmp162586
                                      (let ((__tmp162588
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162587
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160623_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162588 __tmp162587)))
                                     (__tmp162575
                                      (let ((__tmp162576
                                             (let ((__tmp162577
                                                    (let ((__tmp162578
                                                           (let ((__tmp162585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162579
                          (let ((__tmp162580
                                 (let ((__tmp162584
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp162581
                                        (let ((__tmp162582
                                               (let ((__tmp162583
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L160621_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp162583))))
                                          (declare (not safe))
                                          (cons _L160623_ __tmp162582))))
                                   (declare (not safe))
                                   (cons __tmp162584 __tmp162581))))
                            (declare (not safe))
                            (cons __tmp162580 '()))))
                     (declare (not safe))
                     (cons __tmp162585 __tmp162579))))
              (declare (not safe))
              (cons __tmp162578 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L160621_ __tmp162577))))
                                        (declare (not safe))
                                        (cons '#f __tmp162576))))
                                 (declare (not safe))
                                 (cons __tmp162586 __tmp162575))))
                          (declare (not safe))
                          (cons __tmp162589 __tmp162574))))
                   (declare (not safe))
                   (cons __tmp162593 __tmp162573))))
              (___kont162087162088_
               (lambda (_L160552_ _L160554_)
                 (let ((__tmp162594
                        (let ((__tmp162595
                               (let ((__tmp162596
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L160552_ __tmp162596))))
                          (declare (not safe))
                          (cons 'primitive: __tmp162595))))
                   (declare (not safe))
                   (cons _L160554_ __tmp162594))))
              (___kont162089162090_
               (lambda (_L160491_ _L160493_)
                 (let ((__tmp162610
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp162597
                        (let ((__tmp162606
                               (let ((__tmp162609
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162607
                                      (let ((__tmp162608
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162608 '()))))
                                 (declare (not safe))
                                 (cons __tmp162609 __tmp162607)))
                              (__tmp162598
                               (let ((__tmp162603
                                      (let ((__tmp162605
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162604
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160493_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162605 __tmp162604)))
                                     (__tmp162599
                                      (let ((__tmp162600
                                             (let ((__tmp162602
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162601
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160491_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162602
                                                     __tmp162601))))
                                        (declare (not safe))
                                        (cons __tmp162600 '()))))
                                 (declare (not safe))
                                 (cons __tmp162603 __tmp162599))))
                          (declare (not safe))
                          (cons __tmp162606 __tmp162598))))
                   (declare (not safe))
                   (cons __tmp162610 __tmp162597))))
              (___kont162091162092_
               (lambda (_L160423_ _L160425_)
                 (let ((__tmp162624
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162611
                        (let ((__tmp162620
                               (let ((__tmp162623
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162621
                                      (let ((__tmp162622
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162622 '()))))
                                 (declare (not safe))
                                 (cons __tmp162623 __tmp162621)))
                              (__tmp162612
                               (let ((__tmp162617
                                      (let ((__tmp162619
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162618
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160425_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162619 __tmp162618)))
                                     (__tmp162613
                                      (let ((__tmp162614
                                             (let ((__tmp162616
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162615
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160423_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162616
                                                     __tmp162615))))
                                        (declare (not safe))
                                        (cons __tmp162614 '()))))
                                 (declare (not safe))
                                 (cons __tmp162617 __tmp162613))))
                          (declare (not safe))
                          (cons __tmp162620 __tmp162612))))
                   (declare (not safe))
                   (cons __tmp162624 __tmp162611))))
              (___kont162093162094_
               (lambda (_L160370_ _L160372_)
                 (let ((__tmp162625
                        (let ((__tmp162626
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L160370_ __tmp162626))))
                   (declare (not safe))
                   (cons _L160372_ __tmp162625)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx162082162083_))
              (let ((_e160281160577_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx162082162083_))))
                (let ((_tl160279160584_
                       (let () (declare (not safe)) (##cdr _e160281160577_)))
                      (_hd160280160581_
                       (let () (declare (not safe)) (##car _e160281160577_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl160279160584_))
                      (let ((_e160284160587_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160279160584_))))
                        (let ((_tl160282160594_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160284160587_)))
                              (_hd160283160591_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160284160587_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160282160594_))
                              (let ((_e160287160597_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160282160594_))))
                                (let ((_tl160285160604_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160287160597_)))
                                      (_hd160286160601_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160287160597_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd160286160601_))
                                      (let ((_e160288160607_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd160286160601_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e160288160607_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl160285160604_))
                                                (let ((_e160291160611_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl160285160604_))))
                                                  (let ((_tl160289160618_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e160291160611_)))
                                                        (_hd160290160615_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e160291160611_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160289160618_))
                                                        (___kont162085162086_
                                                         _hd160290160615_
                                                         _hd160283160591_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd160283160591_))
                                                            (let ((_e160300160538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd160283160591_))))
                      (declare (not safe))
                      (_g160275160343_))
                    (let () (declare (not safe)) (_g160275160343_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd160283160591_))
                                                    (let ((_e160300160538_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd160283160591_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e160300160538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160285160604_))
                      (___kont162087162088_ _hd160286160601_ _hd160280160581_)
                      (let () (declare (not safe)) (_g160275160343_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160285160604_))
                      (___kont162091162092_ _hd160286160601_ _hd160283160591_)
                      (let () (declare (not safe)) (_g160275160343_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160285160604_))
                                                        (___kont162091162092_
                                                         _hd160286160601_
                                                         _hd160283160591_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160275160343_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd160283160591_))
                                                (let ((_e160300160538_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd160283160591_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e160300160538_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160285160604_))
                                                          (___kont162087162088_
                                                           _hd160286160601_
                                                           _hd160280160581_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl160285160604_))
                      (let ((_e160318160481_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160285160604_))))
                        (let ((_tl160316160488_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160318160481_)))
                              (_hd160317160485_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160318160481_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160316160488_))
                              (___kont162089162090_
                               _hd160317160485_
                               _hd160286160601_)
                              (let ()
                                (declare (not safe))
                                (_g160275160343_)))))
                      (let () (declare (not safe)) (_g160275160343_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160285160604_))
                  (___kont162091162092_ _hd160286160601_ _hd160283160591_)
                  (let () (declare (not safe)) (_g160275160343_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160285160604_))
                                                    (___kont162091162092_
                                                     _hd160286160601_
                                                     _hd160283160591_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160275160343_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd160283160591_))
                                          (let ((_e160300160538_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd160283160591_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e160300160538_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160285160604_))
                                                    (___kont162087162088_
                                                     _hd160286160601_
                                                     _hd160280160581_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl160285160604_))
                                                        (let ((_e160318160481_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl160285160604_))))
                  (let ((_tl160316160488_
                         (let () (declare (not safe)) (##cdr _e160318160481_)))
                        (_hd160317160485_
                         (let ()
                           (declare (not safe))
                           (##car _e160318160481_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl160316160488_))
                        (___kont162089162090_
                         _hd160317160485_
                         _hd160286160601_)
                        (let () (declare (not safe)) (_g160275160343_)))))
                (let () (declare (not safe)) (_g160275160343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160285160604_))
                                                    (___kont162091162092_
                                                     _hd160286160601_
                                                     _hd160283160591_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160275160343_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160285160604_))
                                              (___kont162091162092_
                                               _hd160286160601_
                                               _hd160283160591_)
                                              (let ()
                                                (declare (not safe))
                                                (_g160275160343_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd160283160591_))
                                  (let ((_e160300160538_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd160283160591_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160282160594_))
                                        (___kont162093162094_
                                         _hd160283160591_
                                         _hd160280160581_)
                                        (let ()
                                          (declare (not safe))
                                          (_g160275160343_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160282160594_))
                                      (___kont162093162094_
                                       _hd160283160591_
                                       _hd160280160581_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160275160343_)))))))
                      (let () (declare (not safe)) (_g160275160343_)))))
              (let () (declare (not safe)) (_g160275160343_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx160645_)
      (let* ((___stx162222162223_ _$stx160645_)
             (_g160650160705_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162222162223_)))))
        (let ((___kont162225162226_
               (lambda (_L160890_ _L160892_)
                 (let ((__tmp162642
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp162627
                        (let ((__tmp162638
                               (let ((__tmp162641
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162639
                                      (let ((__tmp162640
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162640 '()))))
                                 (declare (not safe))
                                 (cons __tmp162641 __tmp162639)))
                              (__tmp162628
                               (let ((__tmp162629
                                      (let ((__tmp162637
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162630
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160890_
                                                  _L160892_))
                                               (let ((__tmp162631
                                                      (lambda (_g160909160913_
                                                               _g160910160916_
                                                               _g160911160918_)
                                                        (let ((__tmp162632
                                                               (let ((__tmp162636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162633
                              (let ((__tmp162634
                                     (let ((__tmp162635
                                            (let ()
                                              (declare (not safe))
                                              (cons _g160909160913_ '()))))
                                       (declare (not safe))
                                       (cons _g160910160916_ __tmp162635))))
                                (declare (not safe))
                                (cons 'primitive: __tmp162634))))
                         (declare (not safe))
                         (cons __tmp162636 __tmp162633))))
                  (declare (not safe))
                  (cons __tmp162632 _g160911160918_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162631
                                                         '()
                                                         _L160890_
                                                         _L160892_)))))
                                        (declare (not safe))
                                        (cons __tmp162637 __tmp162630))))
                                 (declare (not safe))
                                 (cons __tmp162629 '()))))
                          (declare (not safe))
                          (cons __tmp162638 __tmp162628))))
                   (declare (not safe))
                   (cons __tmp162642 __tmp162627))))
              (___kont162229162230_
               (lambda (_L160776_ _L160778_)
                 (let ((__tmp162657
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp162643
                        (let ((__tmp162653
                               (let ((__tmp162656
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162654
                                      (let ((__tmp162655
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162655 '()))))
                                 (declare (not safe))
                                 (cons __tmp162656 __tmp162654)))
                              (__tmp162644
                               (let ((__tmp162645
                                      (let ((__tmp162652
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162646
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160776_
                                                  _L160778_))
                                               (let ((__tmp162647
                                                      (lambda (_g160793160797_
                                                               _g160794160800_
                                                               _g160795160802_)
                                                        (let ((__tmp162648
                                                               (let ((__tmp162651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162649
                              (let ((__tmp162650
                                     (let ()
                                       (declare (not safe))
                                       (cons _g160793160797_ '()))))
                                (declare (not safe))
                                (cons _g160794160800_ __tmp162650))))
                         (declare (not safe))
                         (cons __tmp162651 __tmp162649))))
                  (declare (not safe))
                  (cons __tmp162648 _g160795160802_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162647
                                                         '()
                                                         _L160776_
                                                         _L160778_)))))
                                        (declare (not safe))
                                        (cons __tmp162652 __tmp162646))))
                                 (declare (not safe))
                                 (cons __tmp162645 '()))))
                          (declare (not safe))
                          (cons __tmp162653 __tmp162644))))
                   (declare (not safe))
                   (cons __tmp162657 __tmp162643)))))
          (let* ((___match162273162274_
                  (lambda (_e160682160712_
                           _hd160681160716_
                           _tl160680160719_
                           ___splice162231162232_
                           _target160683160722_
                           _tl160685160725_)
                    (letrec ((_loop160686160728_
                              (lambda (_hd160684160732_
                                       _dispatch160690160735_
                                       _arity160691160737_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160684160732_))
                                    (let ((_e160687160740_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160684160732_))))
                                      (let ((_lp-tl160689160747_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160687160740_)))
                                            (_lp-hd160688160744_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160687160740_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160688160744_))
                                            (let ((_e160696160750_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160688160744_))))
                                              (let ((_tl160694160757_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160696160750_)))
                                                    (_hd160695160754_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160696160750_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160694160757_))
                                                    (let ((_e160699160760_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160694160757_))))
                                                      (let ((_tl160697160767_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160699160760_)))
                    (_hd160698160764_
                     (let () (declare (not safe)) (##car _e160699160760_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160697160767_))
                    (_loop160686160728_
                     _lp-tl160689160747_
                     (let ()
                       (declare (not safe))
                       (cons _hd160698160764_ _dispatch160690160735_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160695160754_ _arity160691160737_)))
                    (let () (declare (not safe)) (_g160650160705_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160650160705_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g160650160705_)))))
                                    (let ((_arity160693160773_
                                           (reverse _arity160691160737_))
                                          (_dispatch160692160770_
                                           (reverse _dispatch160690160735_)))
                                      (___kont162229162230_
                                       _dispatch160692160770_
                                       _arity160693160773_))))))
                      (_loop160686160728_ _target160683160722_ '() '()))))
                 (___match162265162266_
                  (lambda (_e160682160712_ _hd160681160716_ _tl160680160719_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl160680160719_))
                        (let ((___splice162231162232_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl160680160719_
                                  '0))))
                          (let ((_tl160685160725_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162231162232_ '1)))
                                (_target160683160722_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162231162232_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl160685160725_))
                                (___match162273162274_
                                 _e160682160712_
                                 _hd160681160716_
                                 _tl160680160719_
                                 ___splice162231162232_
                                 _target160683160722_
                                 _tl160685160725_)
                                (let ()
                                  (declare (not safe))
                                  (_g160650160705_)))))
                        (let () (declare (not safe)) (_g160650160705_)))))
                 (___match162259162260_
                  (lambda (_e160656160812_
                           _hd160655160816_
                           _tl160654160819_
                           _e160659160822_
                           _hd160658160826_
                           _tl160657160829_
                           _e160660160832_
                           ___splice162227162228_
                           _target160661160836_
                           _tl160663160839_)
                    (letrec ((_loop160664160842_
                              (lambda (_hd160662160846_
                                       _dispatch160668160849_
                                       _arity160669160851_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160662160846_))
                                    (let ((_e160665160854_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160662160846_))))
                                      (let ((_lp-tl160667160861_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160665160854_)))
                                            (_lp-hd160666160858_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160665160854_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160666160858_))
                                            (let ((_e160674160864_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160666160858_))))
                                              (let ((_tl160672160871_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160674160864_)))
                                                    (_hd160673160868_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160674160864_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160672160871_))
                                                    (let ((_e160677160874_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160672160871_))))
                                                      (let ((_tl160675160881_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160677160874_)))
                    (_hd160676160878_
                     (let () (declare (not safe)) (##car _e160677160874_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160675160881_))
                    (_loop160664160842_
                     _lp-tl160667160861_
                     (let ()
                       (declare (not safe))
                       (cons _hd160676160878_ _dispatch160668160849_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160673160868_ _arity160669160851_)))
                    (___match162265162266_
                     _e160656160812_
                     _hd160655160816_
                     _tl160654160819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match162265162266_
                                                     _e160656160812_
                                                     _hd160655160816_
                                                     _tl160654160819_))))
                                            (___match162265162266_
                                             _e160656160812_
                                             _hd160655160816_
                                             _tl160654160819_))))
                                    (let ((_arity160671160887_
                                           (reverse _arity160669160851_))
                                          (_dispatch160670160884_
                                           (reverse _dispatch160668160849_)))
                                      (___kont162225162226_
                                       _dispatch160670160884_
                                       _arity160671160887_))))))
                      (_loop160664160842_ _target160661160836_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162222162223_))
                (let ((_e160656160812_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162222162223_))))
                  (let ((_tl160654160819_
                         (let () (declare (not safe)) (##cdr _e160656160812_)))
                        (_hd160655160816_
                         (let ()
                           (declare (not safe))
                           (##car _e160656160812_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160654160819_))
                        (let ((_e160659160822_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160654160819_))))
                          (let ((_tl160657160829_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160659160822_)))
                                (_hd160658160826_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160659160822_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd160658160826_))
                                (let ((_e160660160832_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd160658160826_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e160660160832_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160657160829_))
                                          (let ((___splice162227162228_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160657160829_
                                                    '0))))
                                            (let ((_tl160663160839_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162227162228_
                                                      '1)))
                                                  (_target160661160836_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162227162228_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160663160839_))
                                                  (___match162259162260_
                                                   _e160656160812_
                                                   _hd160655160816_
                                                   _tl160654160819_
                                                   _e160659160822_
                                                   _hd160658160826_
                                                   _tl160657160829_
                                                   _e160660160832_
                                                   ___splice162227162228_
                                                   _target160661160836_
                                                   _tl160663160839_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160654160819_))
                                                      (let ((___splice162231162232_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160654160819_ '0))))
                (let ((_tl160685160725_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162231162232_ '1)))
                      (_target160683160722_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162231162232_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160685160725_))
                      (___match162273162274_
                       _e160656160812_
                       _hd160655160816_
                       _tl160654160819_
                       ___splice162231162232_
                       _target160683160722_
                       _tl160685160725_)
                      (let () (declare (not safe)) (_g160650160705_)))))
              (let () (declare (not safe)) (_g160650160705_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl160654160819_))
                                              (let ((___splice162231162232_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl160654160819_
                                                        '0))))
                                                (let ((_tl160685160725_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162231162232_
                                                          '1)))
                                                      (_target160683160722_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162231162232_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl160685160725_))
                                                      (___match162273162274_
                                                       _e160656160812_
                                                       _hd160655160816_
                                                       _tl160654160819_
                                                       ___splice162231162232_
                                                       _target160683160722_
                                                       _tl160685160725_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g160650160705_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g160650160705_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160654160819_))
                                          (let ((___splice162231162232_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160654160819_
                                                    '0))))
                                            (let ((_tl160685160725_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162231162232_
                                                      '1)))
                                                  (_target160683160722_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162231162232_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160685160725_))
                                                  (___match162273162274_
                                                   _e160656160812_
                                                   _hd160655160816_
                                                   _tl160654160819_
                                                   ___splice162231162232_
                                                   _target160683160722_
                                                   _tl160685160725_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g160650160705_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g160650160705_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160654160819_))
                                    (let ((___splice162231162232_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160654160819_
                                              '0))))
                                      (let ((_tl160685160725_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162231162232_
                                                '1)))
                                            (_target160683160722_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162231162232_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160685160725_))
                                            (___match162273162274_
                                             _e160656160812_
                                             _hd160655160816_
                                             _tl160654160819_
                                             ___splice162231162232_
                                             _target160683160722_
                                             _tl160685160725_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160650160705_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160650160705_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160654160819_))
                            (let ((___splice162231162232_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160654160819_
                                      '0))))
                              (let ((_tl160685160725_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162231162232_
                                        '1)))
                                    (_target160683160722_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162231162232_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160685160725_))
                                    (___match162273162274_
                                     _e160656160812_
                                     _hd160655160816_
                                     _tl160654160819_
                                     ___splice162231162232_
                                     _target160683160722_
                                     _tl160685160725_)
                                    (let ()
                                      (declare (not safe))
                                      (_g160650160705_)))))
                            (let () (declare (not safe)) (_g160650160705_))))))
                (let () (declare (not safe)) (_g160650160705_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx160927_)
      (let* ((_g160931160949_
              (lambda (_g160932160945_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160932160945_))))
             (_g160930161004_
              (lambda (_g160932160953_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160932160953_))
                    (let ((_e160937160956_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160932160953_))))
                      (let ((_hd160936160960_
                             (let ()
                               (declare (not safe))
                               (##car _e160937160956_)))
                            (_tl160935160963_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160937160956_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160935160963_))
                            (let ((_e160940160966_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160935160963_))))
                              (let ((_hd160939160970_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160940160966_)))
                                    (_tl160938160973_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160940160966_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160938160973_))
                                    (let ((_e160943160976_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160938160973_))))
                                      (let ((_hd160942160980_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160943160976_)))
                                            (_tl160941160983_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160943160976_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160941160983_))
                                            ((lambda (_L160986_ _L160988_)
                                               (let ((__tmp162671
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp162658
                                                      (let ((__tmp162667
                                                             (let ((__tmp162670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162668
                            (let ((__tmp162669
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp162669 '()))))
                       (declare (not safe))
                       (cons __tmp162670 __tmp162668)))
                    (__tmp162659
                     (let ((__tmp162664
                            (let ((__tmp162666
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162665
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160988_ '()))))
                              (declare (not safe))
                              (cons __tmp162666 __tmp162665)))
                           (__tmp162660
                            (let ((__tmp162661
                                   (let ((__tmp162663
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162662
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160986_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162663 __tmp162662))))
                              (declare (not safe))
                              (cons __tmp162661 '()))))
                       (declare (not safe))
                       (cons __tmp162664 __tmp162660))))
                (declare (not safe))
                (cons __tmp162667 __tmp162659))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162671
                                                       __tmp162658)))
                                             _hd160942160980_
                                             _hd160939160970_)
                                            (_g160931160949_
                                             _g160932160953_))))
                                    (_g160931160949_ _g160932160953_))))
                            (_g160931160949_ _g160932160953_))))
                    (_g160931160949_ _g160932160953_)))))
        (_g160930161004_ _$stx160927_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx161008_)
      (let* ((_g161012161030_
              (lambda (_g161013161026_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161013161026_))))
             (_g161011161085_
              (lambda (_g161013161034_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161013161034_))
                    (let ((_e161018161037_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161013161034_))))
                      (let ((_hd161017161041_
                             (let ()
                               (declare (not safe))
                               (##car _e161018161037_)))
                            (_tl161016161044_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161018161037_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161016161044_))
                            (let ((_e161021161047_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161016161044_))))
                              (let ((_hd161020161051_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161021161047_)))
                                    (_tl161019161054_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161021161047_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161019161054_))
                                    (let ((_e161024161057_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161019161054_))))
                                      (let ((_hd161023161061_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161024161057_)))
                                            (_tl161022161064_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161024161057_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161022161064_))
                                            ((lambda (_L161067_ _L161069_)
                                               (let ((__tmp162685
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp162672
                                                      (let ((__tmp162681
                                                             (let ((__tmp162684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162682
                            (let ((__tmp162683
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp162683 '()))))
                       (declare (not safe))
                       (cons __tmp162684 __tmp162682)))
                    (__tmp162673
                     (let ((__tmp162678
                            (let ((__tmp162680
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162679
                                   (let ()
                                     (declare (not safe))
                                     (cons _L161069_ '()))))
                              (declare (not safe))
                              (cons __tmp162680 __tmp162679)))
                           (__tmp162674
                            (let ((__tmp162675
                                   (let ((__tmp162677
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162676
                                          (let ()
                                            (declare (not safe))
                                            (cons _L161067_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162677 __tmp162676))))
                              (declare (not safe))
                              (cons __tmp162675 '()))))
                       (declare (not safe))
                       (cons __tmp162678 __tmp162674))))
                (declare (not safe))
                (cons __tmp162681 __tmp162673))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162685
                                                       __tmp162672)))
                                             _hd161023161061_
                                             _hd161020161051_)
                                            (_g161012161030_
                                             _g161013161034_))))
                                    (_g161012161030_ _g161013161034_))))
                            (_g161012161030_ _g161013161034_))))
                    (_g161012161030_ _g161013161034_)))))
        (_g161011161085_ _$stx161008_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx161089_)
      (let* ((___stx162276162277_ _$stx161089_)
             (_g161096161167_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162276162277_)))))
        (let ((___kont162279162280_
               (lambda (_L161458_ _L161460_)
                 (let ((__tmp162691
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162686
                        (let ((__tmp162687
                               (let ((__tmp162688
                                      (let ((__tmp162690
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162689
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161458_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162690 __tmp162689))))
                                 (declare (not safe))
                                 (cons __tmp162688 '()))))
                          (declare (not safe))
                          (cons _L161460_ __tmp162687))))
                   (declare (not safe))
                   (cons __tmp162691 __tmp162686))))
              (___kont162281162282_
               (lambda (_L161377_ _L161379_)
                 (let ((__tmp162700
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162692
                        (let ((__tmp162693
                               (let ((__tmp162694
                                      (let ((__tmp162699
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162695
                                             (let ((__tmp162696
                                                    (lambda (_g161398161401_
                                                             _g161399161404_)
                                                      (let ((__tmp162697
                                                             (let ((__tmp162698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g161398161401_ __tmp162698))))
                (declare (not safe))
                (cons __tmp162697 _g161399161404_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162696
                                                       '()
                                                       _L161377_))))
                                        (declare (not safe))
                                        (cons __tmp162699 __tmp162695))))
                                 (declare (not safe))
                                 (cons __tmp162694 '()))))
                          (declare (not safe))
                          (cons _L161379_ __tmp162693))))
                   (declare (not safe))
                   (cons __tmp162700 __tmp162692))))
              (___kont162285162286_
               (lambda (_L161289_ _L161291_)
                 (let ((__tmp162707
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162701
                        (let ((__tmp162702
                               (let ((__tmp162703
                                      (let ((__tmp162706
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162704
                                             (let ((__tmp162705
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161289_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162705))))
                                        (declare (not safe))
                                        (cons __tmp162706 __tmp162704))))
                                 (declare (not safe))
                                 (cons __tmp162703 '()))))
                          (declare (not safe))
                          (cons _L161291_ __tmp162702))))
                   (declare (not safe))
                   (cons __tmp162707 __tmp162701))))
              (___kont162287162288_
               (lambda (_L161224_ _L161226_)
                 (let ((__tmp162717
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162708
                        (let ((__tmp162709
                               (let ((__tmp162710
                                      (let ((__tmp162716
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162711
                                             (let ((__tmp162712
                                                    (let ((__tmp162713
                                                           (lambda (_g161243161246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g161244161249_)
                     (let ((__tmp162714
                            (let ((__tmp162715
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g161243161246_ __tmp162715))))
                       (declare (not safe))
                       (cons __tmp162714 _g161244161249_)))))
              (declare (not safe))
              (foldr1 __tmp162713 '() _L161224_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162712))))
                                        (declare (not safe))
                                        (cons __tmp162716 __tmp162711))))
                                 (declare (not safe))
                                 (cons __tmp162710 '()))))
                          (declare (not safe))
                          (cons _L161226_ __tmp162709))))
                   (declare (not safe))
                   (cons __tmp162717 __tmp162708)))))
          (let* ((___match162395162396_
                  (lambda (_e161149161174_
                           _hd161148161178_
                           _tl161147161181_
                           _e161152161184_
                           _hd161151161188_
                           _tl161150161191_
                           ___splice162289162290_
                           _target161153161194_
                           _tl161155161197_)
                    (letrec ((_loop161156161200_
                              (lambda (_hd161154161204_ _arity161160161207_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161154161204_))
                                    (let ((_e161157161210_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161154161204_))))
                                      (let ((_lp-tl161159161217_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161157161210_)))
                                            (_lp-hd161158161214_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161157161210_))))
                                        (_loop161156161200_
                                         _lp-tl161159161217_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd161158161214_
                                                 _arity161160161207_)))))
                                    (let ((_arity161161161220_
                                           (reverse _arity161160161207_)))
                                      (___kont162287162288_
                                       _arity161161161220_
                                       _hd161151161188_))))))
                      (_loop161156161200_ _target161153161194_ '()))))
                 (___match162355162356_
                  (lambda (_e161117161313_
                           _hd161116161317_
                           _tl161115161320_
                           _e161120161323_
                           _hd161119161327_
                           _tl161118161330_
                           _e161123161333_
                           _hd161122161337_
                           _tl161121161340_
                           _e161124161343_
                           ___splice162283162284_
                           _target161125161347_
                           _tl161127161350_)
                    (letrec ((_loop161128161353_
                              (lambda (_hd161126161357_ _arity161132161360_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161126161357_))
                                    (let ((_e161129161363_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161126161357_))))
                                      (let ((_lp-tl161131161370_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161129161363_)))
                                            (_lp-hd161130161367_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161129161363_))))
                                        (_loop161128161353_
                                         _lp-tl161131161370_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd161130161367_
                                                 _arity161132161360_)))))
                                    (let ((_arity161133161373_
                                           (reverse _arity161132161360_)))
                                      (___kont162281162282_
                                       _arity161133161373_
                                       _hd161119161327_))))))
                      (_loop161128161353_ _target161125161347_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162276162277_))
                (let ((_e161102161414_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162276162277_))))
                  (let ((_tl161100161421_
                         (let () (declare (not safe)) (##cdr _e161102161414_)))
                        (_hd161101161418_
                         (let ()
                           (declare (not safe))
                           (##car _e161102161414_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161100161421_))
                        (let ((_e161105161424_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161100161421_))))
                          (let ((_tl161103161431_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161105161424_)))
                                (_hd161104161428_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161105161424_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161103161431_))
                                (let ((_e161108161434_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161103161431_))))
                                  (let ((_tl161106161441_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161108161434_)))
                                        (_hd161107161438_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161108161434_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd161107161438_))
                                        (let ((_e161109161444_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd161107161438_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e161109161444_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl161106161441_))
                                                  (let ((_e161112161448_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl161106161441_))))
                                                    (let ((_tl161110161455_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e161112161448_)))
                                                          (_hd161111161452_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e161112161448_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl161110161455_))
                                                          (___kont162279162280_
                                                           _hd161111161452_
                                                           _hd161104161428_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl161106161441_))
                      (let ((___splice162283162284_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl161106161441_ '0))))
                        (let ((_tl161127161350_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162283162284_ '1)))
                              (_target161125161347_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162283162284_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161127161350_))
                              (___match162355162356_
                               _e161102161414_
                               _hd161101161418_
                               _tl161100161421_
                               _e161105161424_
                               _hd161104161428_
                               _tl161103161431_
                               _e161108161434_
                               _hd161107161438_
                               _tl161106161441_
                               _e161109161444_
                               ___splice162283162284_
                               _target161125161347_
                               _tl161127161350_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl161103161431_))
                                  (let ((___splice162289162290_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl161103161431_
                                            '0))))
                                    (let ((_tl161155161197_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162289162290_
                                              '1)))
                                          (_target161153161194_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162289162290_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl161155161197_))
                                          (___match162395162396_
                                           _e161102161414_
                                           _hd161101161418_
                                           _tl161100161421_
                                           _e161105161424_
                                           _hd161104161428_
                                           _tl161103161431_
                                           ___splice162289162290_
                                           _target161153161194_
                                           _tl161155161197_)
                                          (let ()
                                            (declare (not safe))
                                            (_g161096161167_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g161096161167_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl161103161431_))
                          (let ((___splice162289162290_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl161103161431_
                                    '0))))
                            (let ((_tl161155161197_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice162289162290_ '1)))
                                  (_target161153161194_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice162289162290_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl161155161197_))
                                  (___match162395162396_
                                   _e161102161414_
                                   _hd161101161418_
                                   _tl161100161421_
                                   _e161105161424_
                                   _hd161104161428_
                                   _tl161103161431_
                                   ___splice162289162290_
                                   _target161153161194_
                                   _tl161155161197_)
                                  (let ()
                                    (declare (not safe))
                                    (_g161096161167_)))))
                          (let () (declare (not safe)) (_g161096161167_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161106161441_))
                                                      (let ((___splice162283162284_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161106161441_ '0))))
                (let ((_tl161127161350_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162283162284_ '1)))
                      (_target161125161347_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162283162284_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161127161350_))
                      (___match162355162356_
                       _e161102161414_
                       _hd161101161418_
                       _tl161100161421_
                       _e161105161424_
                       _hd161104161428_
                       _tl161103161431_
                       _e161108161434_
                       _hd161107161438_
                       _tl161106161441_
                       _e161109161444_
                       ___splice162283162284_
                       _target161125161347_
                       _tl161127161350_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl161106161441_))
                          (___kont162285162286_
                           _hd161107161438_
                           _hd161104161428_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161103161431_))
                              (let ((___splice162289162290_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161103161431_
                                        '0))))
                                (let ((_tl161155161197_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162289162290_
                                          '1)))
                                      (_target161153161194_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162289162290_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161155161197_))
                                      (___match162395162396_
                                       _e161102161414_
                                       _hd161101161418_
                                       _tl161100161421_
                                       _e161105161424_
                                       _hd161104161428_
                                       _tl161103161431_
                                       ___splice162289162290_
                                       _target161153161194_
                                       _tl161155161197_)
                                      (let ()
                                        (declare (not safe))
                                        (_g161096161167_)))))
                              (let ()
                                (declare (not safe))
                                (_g161096161167_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl161106161441_))
                  (___kont162285162286_ _hd161107161438_ _hd161104161428_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl161103161431_))
                      (let ((___splice162289162290_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl161103161431_ '0))))
                        (let ((_tl161155161197_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162289162290_ '1)))
                              (_target161153161194_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162289162290_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161155161197_))
                              (___match162395162396_
                               _e161102161414_
                               _hd161101161418_
                               _tl161100161421_
                               _e161105161424_
                               _hd161104161428_
                               _tl161103161431_
                               ___splice162289162290_
                               _target161153161194_
                               _tl161155161197_)
                              (let ()
                                (declare (not safe))
                                (_g161096161167_)))))
                      (let () (declare (not safe)) (_g161096161167_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl161106161441_))
                                                  (___kont162285162286_
                                                   _hd161107161438_
                                                   _hd161104161428_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161103161431_))
                                                      (let ((___splice162289162290_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161103161431_ '0))))
                (let ((_tl161155161197_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162289162290_ '1)))
                      (_target161153161194_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162289162290_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161155161197_))
                      (___match162395162396_
                       _e161102161414_
                       _hd161101161418_
                       _tl161100161421_
                       _e161105161424_
                       _hd161104161428_
                       _tl161103161431_
                       ___splice162289162290_
                       _target161153161194_
                       _tl161155161197_)
                      (let () (declare (not safe)) (_g161096161167_)))))
              (let () (declare (not safe)) (_g161096161167_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161106161441_))
                                            (___kont162285162286_
                                             _hd161107161438_
                                             _hd161104161428_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl161103161431_))
                                                (let ((___splice162289162290_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl161103161431_
                                                          '0))))
                                                  (let ((_tl161155161197_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162289162290_
                                                            '1)))
                                                        (_target161153161194_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162289162290_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl161155161197_))
                                                        (___match162395162396_
                                                         _e161102161414_
                                                         _hd161101161418_
                                                         _tl161100161421_
                                                         _e161105161424_
                                                         _hd161104161428_
                                                         _tl161103161431_
                                                         ___splice162289162290_
                                                         _target161153161194_
                                                         _tl161155161197_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g161096161167_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g161096161167_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161103161431_))
                                    (let ((___splice162289162290_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161103161431_
                                              '0))))
                                      (let ((_tl161155161197_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162289162290_
                                                '1)))
                                            (_target161153161194_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162289162290_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161155161197_))
                                            (___match162395162396_
                                             _e161102161414_
                                             _hd161101161418_
                                             _tl161100161421_
                                             _e161105161424_
                                             _hd161104161428_
                                             _tl161103161431_
                                             ___splice162289162290_
                                             _target161153161194_
                                             _tl161155161197_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161096161167_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161096161167_))))))
                        (let () (declare (not safe)) (_g161096161167_)))))
                (let () (declare (not safe)) (_g161096161167_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx161484_)
      (let* ((___stx162398162399_ _$stx161484_)
             (_g161489161524_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162398162399_)))))
        (let ((___kont162401162402_
               (lambda (_L161646_ _L161648_)
                 (let ((__tmp162723
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162718
                        (let ((__tmp162719
                               (let ((__tmp162720
                                      (let ((__tmp162722
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162721
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161646_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162722 __tmp162721))))
                                 (declare (not safe))
                                 (cons __tmp162720 '()))))
                          (declare (not safe))
                          (cons _L161648_ __tmp162719))))
                   (declare (not safe))
                   (cons __tmp162723 __tmp162718))))
              (___kont162403162404_
               (lambda (_L161581_ _L161583_)
                 (let ((__tmp162732
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162724
                        (let ((__tmp162725
                               (let ((__tmp162726
                                      (let ((__tmp162731
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162727
                                             (let ((__tmp162728
                                                    (lambda (_g161600161603_
                                                             _g161601161606_)
                                                      (let ((__tmp162729
                                                             (let ((__tmp162730
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g161600161603_ __tmp162730))))
                (declare (not safe))
                (cons __tmp162729 _g161601161606_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162728
                                                       '()
                                                       _L161581_))))
                                        (declare (not safe))
                                        (cons __tmp162731 __tmp162727))))
                                 (declare (not safe))
                                 (cons __tmp162726 '()))))
                          (declare (not safe))
                          (cons _L161583_ __tmp162725))))
                   (declare (not safe))
                   (cons __tmp162732 __tmp162724)))))
          (let ((___match162447162448_
                 (lambda (_e161506161531_
                          _hd161505161535_
                          _tl161504161538_
                          _e161509161541_
                          _hd161508161545_
                          _tl161507161548_
                          ___splice162405162406_
                          _target161510161551_
                          _tl161512161554_)
                   (letrec ((_loop161513161557_
                             (lambda (_hd161511161561_ _arity161517161564_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd161511161561_))
                                   (let ((_e161514161567_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd161511161561_))))
                                     (let ((_lp-tl161516161574_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e161514161567_)))
                                           (_lp-hd161515161571_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e161514161567_))))
                                       (_loop161513161557_
                                        _lp-tl161516161574_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd161515161571_
                                                _arity161517161564_)))))
                                   (let ((_arity161518161577_
                                          (reverse _arity161517161564_)))
                                     (___kont162403162404_
                                      _arity161518161577_
                                      _hd161508161545_))))))
                     (_loop161513161557_ _target161510161551_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162398162399_))
                (let ((_e161495161616_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162398162399_))))
                  (let ((_tl161493161623_
                         (let () (declare (not safe)) (##cdr _e161495161616_)))
                        (_hd161494161620_
                         (let ()
                           (declare (not safe))
                           (##car _e161495161616_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161493161623_))
                        (let ((_e161498161626_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161493161623_))))
                          (let ((_tl161496161633_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161498161626_)))
                                (_hd161497161630_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161498161626_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161496161633_))
                                (let ((_e161501161636_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161496161633_))))
                                  (let ((_tl161499161643_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161501161636_)))
                                        (_hd161500161640_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161501161636_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161499161643_))
                                        (___kont162401162402_
                                         _hd161500161640_
                                         _hd161497161630_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl161496161633_))
                                            (let ((___splice162405162406_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl161496161633_
                                                      '0))))
                                              (let ((_tl161512161554_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice162405162406_
                                                        '1)))
                                                    (_target161510161551_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice162405162406_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161512161554_))
                                                    (___match162447162448_
                                                     _e161495161616_
                                                     _hd161494161620_
                                                     _tl161493161623_
                                                     _e161498161626_
                                                     _hd161497161630_
                                                     _tl161496161633_
                                                     ___splice162405162406_
                                                     _target161510161551_
                                                     _tl161512161554_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161489161524_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g161489161524_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161496161633_))
                                    (let ((___splice162405162406_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161496161633_
                                              '0))))
                                      (let ((_tl161512161554_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162405162406_
                                                '1)))
                                            (_target161510161551_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162405162406_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161512161554_))
                                            (___match162447162448_
                                             _e161495161616_
                                             _hd161494161620_
                                             _tl161493161623_
                                             _e161498161626_
                                             _hd161497161630_
                                             _tl161496161633_
                                             ___splice162405162406_
                                             _target161510161551_
                                             _tl161512161554_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161489161524_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161489161524_))))))
                        (let () (declare (not safe)) (_g161489161524_)))))
                (let () (declare (not safe)) (_g161489161524_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx161668_)
      (let* ((_g161672161707_
              (lambda (_g161673161703_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161673161703_))))
             (_g161671161835_
              (lambda (_g161673161711_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161673161711_))
                    (let ((_e161678161714_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161673161711_))))
                      (let ((_hd161677161718_
                             (let ()
                               (declare (not safe))
                               (##car _e161678161714_)))
                            (_tl161676161721_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161678161714_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161676161721_))
                            (let ((_g162733_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161676161721_
                                      '0))))
                              (begin
                                (let ((_g162734_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162733_)
                                             (##vector-length _g162733_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162734_ 2)))
                                      (error "Context expects 2 values"
                                             _g162734_)))
                                (let ((_target161679161724_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162733_ 0)))
                                      (_tl161681161727_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162733_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161681161727_))
                                      (letrec ((_loop161682161730_
                                                (lambda (_hd161680161734_
                                                         _arity161686161737_
                                                         _prim161687161739_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161680161734_))
                                                      (let ((_e161683161742_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161680161734_))))
                (let ((_lp-hd161684161746_
                       (let () (declare (not safe)) (##car _e161683161742_)))
                      (_lp-tl161685161749_
                       (let () (declare (not safe)) (##cdr _e161683161742_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161684161746_))
                      (let ((_e161692161752_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161684161746_))))
                        (let ((_hd161691161756_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161692161752_)))
                              (_tl161690161759_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161692161752_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161690161759_))
                              (let ((_g162743_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161690161759_
                                        '0))))
                                (begin
                                  (let ((_g162744_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162743_)
                                               (##vector-length _g162743_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162744_ 2)))
                                        (error "Context expects 2 values"
                                               _g162744_)))
                                  (let ((_target161693161762_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162743_ 0)))
                                        (_tl161695161765_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162743_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161695161765_))
                                        (letrec ((_loop161696161768_
                                                  (lambda (_hd161694161772_
                                                           _arity161700161775_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161694161772_))
                                                        (let ((_e161697161778_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161694161772_))))
                  (let ((_lp-hd161698161782_
                         (let () (declare (not safe)) (##car _e161697161778_)))
                        (_lp-tl161699161785_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161697161778_))))
                    (_loop161696161768_
                     _lp-tl161699161785_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161698161782_ _arity161700161775_)))))
                (let ((_arity161701161788_ (reverse _arity161700161775_)))
                  (_loop161682161730_
                   _lp-tl161685161749_
                   (let ()
                     (declare (not safe))
                     (cons _arity161701161788_ _arity161686161737_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161691161756_ _prim161687161739_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161696161768_
                                           _target161693161762_
                                           '()))
                                        (_g161672161707_ _g161673161711_)))))
                              (_g161672161707_ _g161673161711_))))
                      (_g161672161707_ _g161673161711_))))
              (let ((_arity161688161792_ (reverse _arity161686161737_))
                    (_prim161689161795_ (reverse _prim161687161739_)))
                ((lambda (_L161798_ _L161800_)
                   (let ((__tmp162742
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162735
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161798_
                               _L161800_))
                            (let ((__tmp162736
                                   (lambda (_g161815161821_
                                            _g161816161824_
                                            _g161817161826_)
                                     (let ((__tmp162737
                                            (let ((__tmp162741
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp162738
                                                   (let ((__tmp162739
                                                          (let ((__tmp162740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161818161829_ _g161819161832_)
                           (let ()
                             (declare (not safe))
                             (cons _g161818161829_ _g161819161832_)))))
                    (declare (not safe))
                    (foldr1 __tmp162740 '() _g161815161821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161816161824_
                                                           __tmp162739))))
                                              (declare (not safe))
                                              (cons __tmp162741 __tmp162738))))
                                       (declare (not safe))
                                       (cons __tmp162737 _g161817161826_)))))
                              (declare (not safe))
                              (foldr2 __tmp162736 '() _L161798_ _L161800_)))))
                     (declare (not safe))
                     (cons __tmp162742 __tmp162735)))
                 _arity161688161792_
                 _prim161689161795_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161682161730_
                                         _target161679161724_
                                         '()
                                         '()))
                                      (_g161672161707_ _g161673161711_)))))
                            (_g161672161707_ _g161673161711_))))
                    (_g161672161707_ _g161673161711_)))))
        (_g161671161835_ _$stx161668_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx161841_)
      (let* ((_g161845161880_
              (lambda (_g161846161876_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161846161876_))))
             (_g161844162008_
              (lambda (_g161846161884_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161846161884_))
                    (let ((_e161851161887_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161846161884_))))
                      (let ((_hd161850161891_
                             (let ()
                               (declare (not safe))
                               (##car _e161851161887_)))
                            (_tl161849161894_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161851161887_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161849161894_))
                            (let ((_g162745_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161849161894_
                                      '0))))
                              (begin
                                (let ((_g162746_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162745_)
                                             (##vector-length _g162745_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162746_ 2)))
                                      (error "Context expects 2 values"
                                             _g162746_)))
                                (let ((_target161852161897_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162745_ 0)))
                                      (_tl161854161900_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162745_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161854161900_))
                                      (letrec ((_loop161855161903_
                                                (lambda (_hd161853161907_
                                                         _arity161859161910_
                                                         _prim161860161912_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161853161907_))
                                                      (let ((_e161856161915_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161853161907_))))
                (let ((_lp-hd161857161919_
                       (let () (declare (not safe)) (##car _e161856161915_)))
                      (_lp-tl161858161922_
                       (let () (declare (not safe)) (##cdr _e161856161915_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161857161919_))
                      (let ((_e161865161925_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161857161919_))))
                        (let ((_hd161864161929_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161865161925_)))
                              (_tl161863161932_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161865161925_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161863161932_))
                              (let ((_g162755_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161863161932_
                                        '0))))
                                (begin
                                  (let ((_g162756_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162755_)
                                               (##vector-length _g162755_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162756_ 2)))
                                        (error "Context expects 2 values"
                                               _g162756_)))
                                  (let ((_target161866161935_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162755_ 0)))
                                        (_tl161868161938_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162755_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161868161938_))
                                        (letrec ((_loop161869161941_
                                                  (lambda (_hd161867161945_
                                                           _arity161873161948_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161867161945_))
                                                        (let ((_e161870161951_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161867161945_))))
                  (let ((_lp-hd161871161955_
                         (let () (declare (not safe)) (##car _e161870161951_)))
                        (_lp-tl161872161958_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161870161951_))))
                    (_loop161869161941_
                     _lp-tl161872161958_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161871161955_ _arity161873161948_)))))
                (let ((_arity161874161961_ (reverse _arity161873161948_)))
                  (_loop161855161903_
                   _lp-tl161858161922_
                   (let ()
                     (declare (not safe))
                     (cons _arity161874161961_ _arity161859161910_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161864161929_ _prim161860161912_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161869161941_
                                           _target161866161935_
                                           '()))
                                        (_g161845161880_ _g161846161884_)))))
                              (_g161845161880_ _g161846161884_))))
                      (_g161845161880_ _g161846161884_))))
              (let ((_arity161861161965_ (reverse _arity161859161910_))
                    (_prim161862161968_ (reverse _prim161860161912_)))
                ((lambda (_L161971_ _L161973_)
                   (let ((__tmp162754
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162747
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161971_
                               _L161973_))
                            (let ((__tmp162748
                                   (lambda (_g161988161994_
                                            _g161989161997_
                                            _g161990161999_)
                                     (let ((__tmp162749
                                            (let ((__tmp162753
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp162750
                                                   (let ((__tmp162751
                                                          (let ((__tmp162752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161991162002_ _g161992162005_)
                           (let ()
                             (declare (not safe))
                             (cons _g161991162002_ _g161992162005_)))))
                    (declare (not safe))
                    (foldr1 __tmp162752 '() _g161988161994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161989161997_
                                                           __tmp162751))))
                                              (declare (not safe))
                                              (cons __tmp162753 __tmp162750))))
                                       (declare (not safe))
                                       (cons __tmp162749 _g161990161999_)))))
                              (declare (not safe))
                              (foldr2 __tmp162748 '() _L161971_ _L161973_)))))
                     (declare (not safe))
                     (cons __tmp162754 __tmp162747)))
                 _arity161861161965_
                 _prim161862161968_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161855161903_
                                         _target161852161897_
                                         '()
                                         '()))
                                      (_g161845161880_ _g161846161884_)))))
                            (_g161845161880_ _g161846161884_))))
                    (_g161845161880_ _g161846161884_)))))
        (_g161844162008_ _$stx161841_)))))
