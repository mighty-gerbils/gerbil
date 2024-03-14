(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx158910_)
      (let* ((_g158914158932_
              (lambda (_g158915158928_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158915158928_))))
             (_g158913158987_
              (lambda (_g158915158936_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158915158936_))
                    (let ((_e158920158939_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158915158936_))))
                      (let ((_hd158919158943_
                             (let ()
                               (declare (not safe))
                               (##car _e158920158939_)))
                            (_tl158918158946_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158920158939_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158918158946_))
                            (let ((_e158923158949_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158918158946_))))
                              (let ((_hd158922158953_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158923158949_)))
                                    (_tl158921158956_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158923158949_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158921158956_))
                                    (let ((_e158926158959_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158921158956_))))
                                      (let ((_hd158925158963_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158926158959_)))
                                            (_tl158924158966_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158926158959_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl158924158966_))
                                            ((lambda (_L158969_ _L158971_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L158971_))
                                                   (let ((__tmp162451
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp162446
                                                          (let ((__tmp162448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp162450
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp162449
                                (let ()
                                  (declare (not safe))
                                  (cons _L158971_ '()))))
                           (declare (not safe))
                           (cons __tmp162450 __tmp162449)))
                        (__tmp162447
                         (let () (declare (not safe)) (cons _L158969_ '()))))
                    (declare (not safe))
                    (cons __tmp162448 __tmp162447))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp162451
                                                           __tmp162446))
                                                   (_g158914158932_
                                                    _g158915158936_)))
                                             _hd158925158963_
                                             _hd158922158953_)
                                            (_g158914158932_
                                             _g158915158936_))))
                                    (_g158914158932_ _g158915158936_))))
                            (_g158914158932_ _g158915158936_))))
                    (_g158914158932_ _g158915158936_)))))
        (_g158913158987_ _$stx158910_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx158991_)
      (let* ((_g158995159024_
              (lambda (_g158996159020_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158996159020_))))
             (_g158994159124_
              (lambda (_g158996159028_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158996159028_))
                    (let ((_e159001159031_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158996159028_))))
                      (let ((_hd159000159035_
                             (let ()
                               (declare (not safe))
                               (##car _e159001159031_)))
                            (_tl158999159038_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159001159031_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158999159038_))
                            (let ((_g162452_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158999159038_
                                      '0))))
                              (begin
                                (let ((_g162453_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162452_)
                                             (##vector-length _g162452_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162453_ 2)))
                                      (error "Context expects 2 values"
                                             _g162453_)))
                                (let ((_target159002159041_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162452_ 0)))
                                      (_tl159004159044_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162452_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159004159044_))
                                      (letrec ((_loop159005159047_
                                                (lambda (_hd159003159051_
                                                         _type159009159054_
                                                         _symbol159010159056_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd159003159051_))
                                                      (let ((_e159006159059_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd159003159051_))))
                (let ((_lp-hd159007159063_
                       (let () (declare (not safe)) (##car _e159006159059_)))
                      (_lp-tl159008159066_
                       (let () (declare (not safe)) (##cdr _e159006159059_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd159007159063_))
                      (let ((_e159015159069_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd159007159063_))))
                        (let ((_hd159014159073_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159015159069_)))
                              (_tl159013159076_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159015159069_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159013159076_))
                              (let ((_e159018159079_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159013159076_))))
                                (let ((_hd159017159083_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159018159079_)))
                                      (_tl159016159086_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159018159079_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159016159086_))
                                      (_loop159005159047_
                                       _lp-tl159008159066_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd159017159083_
                                               _type159009159054_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd159014159073_
                                               _symbol159010159056_)))
                                      (_g158995159024_ _g158996159028_))))
                              (_g158995159024_ _g158996159028_))))
                      (_g158995159024_ _g158996159028_))))
              (let ((_type159011159089_ (reverse _type159009159054_))
                    (_symbol159012159092_ (reverse _symbol159010159056_)))
                ((lambda (_L159095_ _L159097_)
                   (let ((__tmp162460
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162454
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L159095_
                               _L159097_))
                            (let ((__tmp162455
                                   (lambda (_g159112159116_
                                            _g159113159119_
                                            _g159114159121_)
                                     (let ((__tmp162456
                                            (let ((__tmp162459
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp162457
                                                   (let ((__tmp162458
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g159112159116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g159113159119_
                                                           __tmp162458))))
                                              (declare (not safe))
                                              (cons __tmp162459 __tmp162457))))
                                       (declare (not safe))
                                       (cons __tmp162456 _g159114159121_)))))
                              (declare (not safe))
                              (foldr2 __tmp162455 '() _L159095_ _L159097_)))))
                     (declare (not safe))
                     (cons __tmp162460 __tmp162454)))
                 _type159011159089_
                 _symbol159012159092_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop159005159047_
                                         _target159002159041_
                                         '()
                                         '()))
                                      (_g158995159024_ _g158996159028_)))))
                            (_g158995159024_ _g158996159028_))))
                    (_g158995159024_ _g158996159028_)))))
        (_g158994159124_ _$stx158991_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx159129_)
      (let* ((___stx162011162012_ _$stx159129_)
             (_g159134159176_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162011162012_)))))
        (let ((___kont162014162015_
               (lambda (_L159304_ _L159306_ _L159307_ _L159308_)
                 (let ((__tmp162474
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp162461
                        (let ((__tmp162471
                               (let ((__tmp162473
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162472
                                      (let ()
                                        (declare (not safe))
                                        (cons _L159308_ '()))))
                                 (declare (not safe))
                                 (cons __tmp162473 __tmp162472)))
                              (__tmp162462
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
                                               (cons _L159307_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162470 __tmp162469)))
                                     (__tmp162463
                                      (let ((__tmp162465
                                             (let ((__tmp162467
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162466
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159306_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162467 __tmp162466)))
                                            (__tmp162464
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159304_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162465 __tmp162464))))
                                 (declare (not safe))
                                 (cons __tmp162468 __tmp162463))))
                          (declare (not safe))
                          (cons __tmp162471 __tmp162462))))
                   (declare (not safe))
                   (cons __tmp162474 __tmp162461))))
              (___kont162016162017_
               (lambda (_L159223_ _L159225_ _L159226_ _L159227_)
                 (let ((__tmp162475
                        (let ((__tmp162476
                               (let ((__tmp162477
                                      (let ((__tmp162478
                                             (let ((__tmp162479
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp162479 '()))))
                                        (declare (not safe))
                                        (cons _L159223_ __tmp162478))))
                                 (declare (not safe))
                                 (cons _L159225_ __tmp162477))))
                          (declare (not safe))
                          (cons _L159226_ __tmp162476))))
                   (declare (not safe))
                   (cons _L159227_ __tmp162475)))))
          (let ((___match162050162051_
                 (lambda (_e159142159254_
                          _hd159141159258_
                          _tl159140159261_
                          _e159145159264_
                          _hd159144159268_
                          _tl159143159271_
                          _e159148159274_
                          _hd159147159278_
                          _tl159146159281_
                          _e159151159284_
                          _hd159150159288_
                          _tl159149159291_
                          _e159154159294_
                          _hd159153159298_
                          _tl159152159301_)
                   (let ((_L159304_ _hd159153159298_)
                         (_L159306_ _hd159150159288_)
                         (_L159307_ _hd159147159278_)
                         (_L159308_ _hd159144159268_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L159308_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159307_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159306_)))
                         (___kont162014162015_
                          _L159304_
                          _L159306_
                          _L159307_
                          _L159308_)
                         (let () (declare (not safe)) (_g159134159176_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162011162012_))
                (let ((_e159142159254_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162011162012_))))
                  (let ((_tl159140159261_
                         (let () (declare (not safe)) (##cdr _e159142159254_)))
                        (_hd159141159258_
                         (let ()
                           (declare (not safe))
                           (##car _e159142159254_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159140159261_))
                        (let ((_e159145159264_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159140159261_))))
                          (let ((_tl159143159271_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159145159264_)))
                                (_hd159144159268_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159145159264_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl159143159271_))
                                (let ((_e159148159274_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl159143159271_))))
                                  (let ((_tl159146159281_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e159148159274_)))
                                        (_hd159147159278_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e159148159274_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl159146159281_))
                                        (let ((_e159151159284_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl159146159281_))))
                                          (let ((_tl159149159291_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e159151159284_)))
                                                (_hd159150159288_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e159151159284_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159149159291_))
                                                (let ((_e159154159294_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159149159291_))))
                                                  (let ((_tl159152159301_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159154159294_)))
                                                        (_hd159153159298_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159154159294_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159152159301_))
                                                        (___match162050162051_
                                                         _e159142159254_
                                                         _hd159141159258_
                                                         _tl159140159261_
                                                         _e159145159264_
                                                         _hd159144159268_
                                                         _tl159143159271_
                                                         _e159148159274_
                                                         _hd159147159278_
                                                         _tl159146159281_
                                                         _e159151159284_
                                                         _hd159150159288_
                                                         _tl159149159291_
                                                         _e159154159294_
                                                         _hd159153159298_
                                                         _tl159152159301_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159134159176_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159149159291_))
                                                    (___kont162016162017_
                                                     _hd159150159288_
                                                     _hd159147159278_
                                                     _hd159144159268_
                                                     _hd159141159258_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159134159176_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g159134159176_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g159134159176_)))))
                        (let () (declare (not safe)) (_g159134159176_)))))
                (let () (declare (not safe)) (_g159134159176_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx159333_)
      (let* ((_g159337159372_
              (lambda (_g159338159368_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159338159368_))))
             (_g159336159491_
              (lambda (_g159338159376_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159338159376_))
                    (let ((_e159344159379_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159338159376_))))
                      (let ((_hd159343159383_
                             (let ()
                               (declare (not safe))
                               (##car _e159344159379_)))
                            (_tl159342159386_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159344159379_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159342159386_))
                            (let ((_g162480_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159342159386_
                                      '0))))
                              (begin
                                (let ((_g162481_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162480_)
                                             (##vector-length _g162480_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162481_ 2)))
                                      (error "Context expects 2 values"
                                             _g162481_)))
                                (let ((_target159345159389_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162480_ 0)))
                                      (_tl159347159392_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162480_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159347159392_))
                                      (letrec ((_loop159348159395_
                                                (lambda (_hd159346159399_
                                                         _symbol159352159402_
                                                         _method159353159404_
                                                         _type-t159354159406_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd159346159399_))
                                                      (let ((_e159349159409_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd159346159399_))))
                (let ((_lp-hd159350159413_
                       (let () (declare (not safe)) (##car _e159349159409_)))
                      (_lp-tl159351159416_
                       (let () (declare (not safe)) (##cdr _e159349159409_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd159350159413_))
                      (let ((_e159360159419_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd159350159413_))))
                        (let ((_hd159359159423_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159360159419_)))
                              (_tl159358159426_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159360159419_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159358159426_))
                              (let ((_e159363159429_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159358159426_))))
                                (let ((_hd159362159433_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159363159429_)))
                                      (_tl159361159436_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159363159429_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159361159436_))
                                      (let ((_e159366159439_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159361159436_))))
                                        (let ((_hd159365159443_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159366159439_)))
                                              (_tl159364159446_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159366159439_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159364159446_))
                                              (_loop159348159395_
                                               _lp-tl159351159416_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159365159443_
                                                       _symbol159352159402_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159362159433_
                                                       _method159353159404_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159359159423_
                                                       _type-t159354159406_)))
                                              (_g159337159372_
                                               _g159338159376_))))
                                      (_g159337159372_ _g159338159376_))))
                              (_g159337159372_ _g159338159376_))))
                      (_g159337159372_ _g159338159376_))))
              (let ((_symbol159355159449_ (reverse _symbol159352159402_))
                    (_method159356159452_ (reverse _method159353159404_))
                    (_type-t159357159454_ (reverse _type-t159354159406_)))
                ((lambda (_L159457_ _L159459_ _L159460_)
                   (let ((__tmp162489
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162482
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L159457_
                               _L159459_
                               _L159460_))
                            (let ((__tmp162483
                                   (lambda (_g159476159481_
                                            _g159477159484_
                                            _g159478159486_
                                            _g159479159488_)
                                     (let ((__tmp162484
                                            (let ((__tmp162488
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp162485
                                                   (let ((__tmp162486
                                                          (let ((__tmp162487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g159476159481_ '()))))
                    (declare (not safe))
                    (cons _g159477159484_ __tmp162487))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g159478159486_
                                                           __tmp162486))))
                                              (declare (not safe))
                                              (cons __tmp162488 __tmp162485))))
                                       (declare (not safe))
                                       (cons __tmp162484 _g159479159488_)))))
                              (declare (not safe))
                              (foldr* __tmp162483
                                      '()
                                      _L159457_
                                      _L159459_
                                      _L159460_)))))
                     (declare (not safe))
                     (cons __tmp162489 __tmp162482)))
                 _symbol159355159449_
                 _method159356159452_
                 _type-t159357159454_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop159348159395_
                                         _target159345159389_
                                         '()
                                         '()
                                         '()))
                                      (_g159337159372_ _g159338159376_)))))
                            (_g159337159372_ _g159338159376_))))
                    (_g159337159372_ _g159338159376_)))))
        (_g159336159491_ _$stx159333_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx159496_)
      (let* ((_g159500159533_
              (lambda (_g159501159529_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159501159529_))))
             (_g159499159647_
              (lambda (_g159501159537_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159501159537_))
                    (let ((_e159507159540_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159501159537_))))
                      (let ((_hd159506159544_
                             (let ()
                               (declare (not safe))
                               (##car _e159507159540_)))
                            (_tl159505159547_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159507159540_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159505159547_))
                            (let ((_e159510159550_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159505159547_))))
                              (let ((_hd159509159554_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159510159550_)))
                                    (_tl159508159557_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159510159550_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159508159557_))
                                    (let ((_g162490_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159508159557_
                                              '0))))
                                      (begin
                                        (let ((_g162491_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g162490_)
                                                     (##vector-length
                                                      _g162490_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g162491_ 2)))
                                              (error "Context expects 2 values"
                                                     _g162491_)))
                                        (let ((_target159511159560_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162490_ 0)))
                                              (_tl159513159563_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162490_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159513159563_))
                                              (letrec ((_loop159514159566_
                                                        (lambda (_hd159512159570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol159518159573_
                         _method159519159575_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd159512159570_))
                      (let ((_e159515159578_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd159512159570_))))
                        (let ((_lp-hd159516159582_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159515159578_)))
                              (_lp-tl159517159585_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159515159578_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd159516159582_))
                              (let ((_e159524159588_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd159516159582_))))
                                (let ((_hd159523159592_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159524159588_)))
                                      (_tl159522159595_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159524159588_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159522159595_))
                                      (let ((_e159527159598_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159522159595_))))
                                        (let ((_hd159526159602_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159527159598_)))
                                              (_tl159525159605_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159527159598_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159525159605_))
                                              (_loop159514159566_
                                               _lp-tl159517159585_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159526159602_
                                                       _symbol159518159573_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159523159592_
                                                       _method159519159575_)))
                                              (_g159500159533_
                                               _g159501159537_))))
                                      (_g159500159533_ _g159501159537_))))
                              (_g159500159533_ _g159501159537_))))
                      (let ((_symbol159520159608_
                             (reverse _symbol159518159573_))
                            (_method159521159611_
                             (reverse _method159519159575_)))
                        ((lambda (_L159614_ _L159616_ _L159617_)
                           (let ((__tmp162499
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp162492
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L159614_
                                       _L159616_))
                                    (let ((__tmp162493
                                           (lambda (_g159635159639_
                                                    _g159636159642_
                                                    _g159637159644_)
                                             (let ((__tmp162494
                                                    (let ((__tmp162498
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp162495
                                                           (let ((__tmp162496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp162497
                                 (let ()
                                   (declare (not safe))
                                   (cons _g159635159639_ '()))))
                            (declare (not safe))
                            (cons _g159636159642_ __tmp162497))))
                     (declare (not safe))
                     (cons _L159617_ __tmp162496))))
              (declare (not safe))
              (cons __tmp162498 __tmp162495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162494
                                                     _g159637159644_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp162493
                                              '()
                                              _L159614_
                                              _L159616_)))))
                             (declare (not safe))
                             (cons __tmp162499 __tmp162492)))
                         _symbol159520159608_
                         _method159521159611_
                         _hd159509159554_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop159514159566_
                                                 _target159511159560_
                                                 '()
                                                 '()))
                                              (_g159500159533_
                                               _g159501159537_)))))
                                    (_g159500159533_ _g159501159537_))))
                            (_g159500159533_ _g159501159537_))))
                    (_g159500159533_ _g159501159537_)))))
        (_g159499159647_ _$stx159496_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx159652_)
      (let* ((_g159656159670_
              (lambda (_g159657159666_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159657159666_))))
             (_g159655159711_
              (lambda (_g159657159674_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159657159674_))
                    (let ((_e159661159677_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159657159674_))))
                      (let ((_hd159660159681_
                             (let ()
                               (declare (not safe))
                               (##car _e159661159677_)))
                            (_tl159659159684_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159661159677_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159659159684_))
                            (let ((_e159664159687_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159659159684_))))
                              (let ((_hd159663159691_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159664159687_)))
                                    (_tl159662159694_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159664159687_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159662159694_))
                                    ((lambda (_L159697_)
                                       (let ((__tmp162504
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp162500
                                              (let ((__tmp162501
                                                     (let ((__tmp162503
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162502
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162503 __tmp162502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162501 '()))))
                                         (declare (not safe))
                                         (cons __tmp162504 __tmp162500)))
                                     _hd159663159691_)
                                    (_g159656159670_ _g159657159674_))))
                            (_g159656159670_ _g159657159674_))))
                    (_g159656159670_ _g159657159674_)))))
        (_g159655159711_ _$stx159652_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx159715_)
      (let* ((_g159719159769_
              (lambda (_g159720159765_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159720159765_))))
             (_g159718159936_
              (lambda (_g159720159773_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159720159773_))
                    (let ((_e159733159776_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159720159773_))))
                      (let ((_hd159732159780_
                             (let ()
                               (declare (not safe))
                               (##car _e159733159776_)))
                            (_tl159731159783_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159733159776_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159731159783_))
                            (let ((_e159736159786_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159731159783_))))
                              (let ((_hd159735159790_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159736159786_)))
                                    (_tl159734159793_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159736159786_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159734159793_))
                                    (let ((_e159739159796_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159734159793_))))
                                      (let ((_hd159738159800_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159739159796_)))
                                            (_tl159737159803_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159739159796_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159737159803_))
                                            (let ((_e159742159806_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159737159803_))))
                                              (let ((_hd159741159810_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159742159806_)))
                                                    (_tl159740159813_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159742159806_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159740159813_))
                                                    (let ((_e159745159816_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159740159813_))))
                                                      (let ((_hd159744159820_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159745159816_)))
                    (_tl159743159823_
                     (let () (declare (not safe)) (##cdr _e159745159816_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159743159823_))
                    (let ((_e159748159826_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159743159823_))))
                      (let ((_hd159747159830_
                             (let ()
                               (declare (not safe))
                               (##car _e159748159826_)))
                            (_tl159746159833_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159748159826_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159746159833_))
                            (let ((_e159751159836_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159746159833_))))
                              (let ((_hd159750159840_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159751159836_)))
                                    (_tl159749159843_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159751159836_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159749159843_))
                                    (let ((_e159754159846_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159749159843_))))
                                      (let ((_hd159753159850_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159754159846_)))
                                            (_tl159752159853_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159754159846_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159752159853_))
                                            (let ((_e159757159856_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159752159853_))))
                                              (let ((_hd159756159860_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159757159856_)))
                                                    (_tl159755159863_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159757159856_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159755159863_))
                                                    (let ((_e159760159866_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159755159863_))))
                                                      (let ((_hd159759159870_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159760159866_)))
                    (_tl159758159873_
                     (let () (declare (not safe)) (##cdr _e159760159866_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159758159873_))
                    (let ((_e159763159876_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159758159873_))))
                      (let ((_hd159762159880_
                             (let ()
                               (declare (not safe))
                               (##car _e159763159876_)))
                            (_tl159761159883_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159763159876_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl159761159883_))
                            ((lambda (_L159886_
                                      _L159888_
                                      _L159889_
                                      _L159890_
                                      _L159891_
                                      _L159892_
                                      _L159893_
                                      _L159894_
                                      _L159895_
                                      _L159896_)
                               (let ((__tmp162539
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp162505
                                      (let ((__tmp162536
                                             (let ((__tmp162538
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162537
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159896_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162538 __tmp162537)))
                                            (__tmp162506
                                             (let ((__tmp162533
                                                    (let ((__tmp162535
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp162534
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L159895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp162535 __tmp162534)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp162507
                                                    (let ((__tmp162530
                                                           (let ((__tmp162532
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162531
                          (let () (declare (not safe)) (cons _L159894_ '()))))
                     (declare (not safe))
                     (cons __tmp162532 __tmp162531)))
                  (__tmp162508
                   (let ((__tmp162527
                          (let ((__tmp162529
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp162528
                                 (let ()
                                   (declare (not safe))
                                   (cons _L159893_ '()))))
                            (declare (not safe))
                            (cons __tmp162529 __tmp162528)))
                         (__tmp162509
                          (let ((__tmp162524
                                 (let ((__tmp162526
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp162525
                                        (let ()
                                          (declare (not safe))
                                          (cons _L159892_ '()))))
                                   (declare (not safe))
                                   (cons __tmp162526 __tmp162525)))
                                (__tmp162510
                                 (let ((__tmp162521
                                        (let ((__tmp162523
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp162522
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L159891_ '()))))
                                          (declare (not safe))
                                          (cons __tmp162523 __tmp162522)))
                                       (__tmp162511
                                        (let ((__tmp162512
                                               (let ((__tmp162513
                                                      (let ((__tmp162518
                                                             (let ((__tmp162520
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162519
                            (let ()
                              (declare (not safe))
                              (cons _L159888_ '()))))
                       (declare (not safe))
                       (cons __tmp162520 __tmp162519)))
                    (__tmp162514
                     (let ((__tmp162515
                            (let ((__tmp162517
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162516
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159886_ '()))))
                              (declare (not safe))
                              (cons __tmp162517 __tmp162516))))
                       (declare (not safe))
                       (cons __tmp162515 '()))))
                (declare (not safe))
                (cons __tmp162518 __tmp162514))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L159889_
                                                       __tmp162513))))
                                          (declare (not safe))
                                          (cons _L159890_ __tmp162512))))
                                   (declare (not safe))
                                   (cons __tmp162521 __tmp162511))))
                            (declare (not safe))
                            (cons __tmp162524 __tmp162510))))
                     (declare (not safe))
                     (cons __tmp162527 __tmp162509))))
              (declare (not safe))
              (cons __tmp162530 __tmp162508))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162533
                                                     __tmp162507))))
                                        (declare (not safe))
                                        (cons __tmp162536 __tmp162506))))
                                 (declare (not safe))
                                 (cons __tmp162539 __tmp162505)))
                             _hd159762159880_
                             _hd159759159870_
                             _hd159756159860_
                             _hd159753159850_
                             _hd159750159840_
                             _hd159747159830_
                             _hd159744159820_
                             _hd159741159810_
                             _hd159738159800_
                             _hd159735159790_)
                            (_g159719159769_ _g159720159773_))))
                    (_g159719159769_ _g159720159773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159719159769_
                                                     _g159720159773_))))
                                            (_g159719159769_
                                             _g159720159773_))))
                                    (_g159719159769_ _g159720159773_))))
                            (_g159719159769_ _g159720159773_))))
                    (_g159719159769_ _g159720159773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159719159769_
                                                     _g159720159773_))))
                                            (_g159719159769_
                                             _g159720159773_))))
                                    (_g159719159769_ _g159720159773_))))
                            (_g159719159769_ _g159720159773_))))
                    (_g159719159769_ _g159720159773_)))))
        (_g159718159936_ _$stx159715_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx159940_)
      (let* ((_g159944159958_
              (lambda (_g159945159954_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159945159954_))))
             (_g159943159999_
              (lambda (_g159945159962_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159945159962_))
                    (let ((_e159949159965_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159945159962_))))
                      (let ((_hd159948159969_
                             (let ()
                               (declare (not safe))
                               (##car _e159949159965_)))
                            (_tl159947159972_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159949159965_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159947159972_))
                            (let ((_e159952159975_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159947159972_))))
                              (let ((_hd159951159979_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159952159975_)))
                                    (_tl159950159982_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159952159975_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159950159982_))
                                    ((lambda (_L159985_)
                                       (let ((__tmp162544
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp162540
                                              (let ((__tmp162541
                                                     (let ((__tmp162543
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162542
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162543 __tmp162542))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162541 '()))))
                                         (declare (not safe))
                                         (cons __tmp162544 __tmp162540)))
                                     _hd159951159979_)
                                    (_g159944159958_ _g159945159962_))))
                            (_g159944159958_ _g159945159962_))))
                    (_g159944159958_ _g159945159962_)))))
        (_g159943159999_ _$stx159940_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx160003_)
      (let* ((_g160007160021_
              (lambda (_g160008160017_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160008160017_))))
             (_g160006160062_
              (lambda (_g160008160025_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160008160025_))
                    (let ((_e160012160028_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160008160025_))))
                      (let ((_hd160011160032_
                             (let ()
                               (declare (not safe))
                               (##car _e160012160028_)))
                            (_tl160010160035_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160012160028_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160010160035_))
                            (let ((_e160015160038_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160010160035_))))
                              (let ((_hd160014160042_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160015160038_)))
                                    (_tl160013160045_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160015160038_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160013160045_))
                                    ((lambda (_L160048_)
                                       (let ((__tmp162549
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp162545
                                              (let ((__tmp162546
                                                     (let ((__tmp162548
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162547
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L160048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162548 __tmp162547))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162546 '()))))
                                         (declare (not safe))
                                         (cons __tmp162549 __tmp162545)))
                                     _hd160014160042_)
                                    (_g160007160021_ _g160008160025_))))
                            (_g160007160021_ _g160008160025_))))
                    (_g160007160021_ _g160008160025_)))))
        (_g160006160062_ _$stx160003_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx160066_)
      (let* ((_g160070160092_
              (lambda (_g160071160088_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160071160088_))))
             (_g160069160161_
              (lambda (_g160071160096_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160071160096_))
                    (let ((_e160077160099_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160071160096_))))
                      (let ((_hd160076160103_
                             (let ()
                               (declare (not safe))
                               (##car _e160077160099_)))
                            (_tl160075160106_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160077160099_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160075160106_))
                            (let ((_e160080160109_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160075160106_))))
                              (let ((_hd160079160113_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160080160109_)))
                                    (_tl160078160116_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160080160109_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160078160116_))
                                    (let ((_e160083160119_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160078160116_))))
                                      (let ((_hd160082160123_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160083160119_)))
                                            (_tl160081160126_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160083160119_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160081160126_))
                                            (let ((_e160086160129_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160081160126_))))
                                              (let ((_hd160085160133_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160086160129_)))
                                                    (_tl160084160136_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160086160129_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160084160136_))
                                                    ((lambda (_L160139_
                                                              _L160141_
                                                              _L160142_)
                                                       (let ((__tmp162559
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp162550
                      (let ((__tmp162556
                             (let ((__tmp162558
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162557
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160142_ '()))))
                               (declare (not safe))
                               (cons __tmp162558 __tmp162557)))
                            (__tmp162551
                             (let ((__tmp162553
                                    (let ((__tmp162555
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp162554
                                           (let ()
                                             (declare (not safe))
                                             (cons _L160141_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162555 __tmp162554)))
                                   (__tmp162552
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160139_ '()))))
                               (declare (not safe))
                               (cons __tmp162553 __tmp162552))))
                        (declare (not safe))
                        (cons __tmp162556 __tmp162551))))
                 (declare (not safe))
                 (cons __tmp162559 __tmp162550)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd160085160133_
                                                     _hd160082160123_
                                                     _hd160079160113_)
                                                    (_g160070160092_
                                                     _g160071160096_))))
                                            (_g160070160092_
                                             _g160071160096_))))
                                    (_g160070160092_ _g160071160096_))))
                            (_g160070160092_ _g160071160096_))))
                    (_g160070160092_ _g160071160096_)))))
        (_g160069160161_ _$stx160066_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx160165_)
      (let* ((_g160169160191_
              (lambda (_g160170160187_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160170160187_))))
             (_g160168160260_
              (lambda (_g160170160195_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160170160195_))
                    (let ((_e160176160198_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160170160195_))))
                      (let ((_hd160175160202_
                             (let ()
                               (declare (not safe))
                               (##car _e160176160198_)))
                            (_tl160174160205_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160176160198_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160174160205_))
                            (let ((_e160179160208_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160174160205_))))
                              (let ((_hd160178160212_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160179160208_)))
                                    (_tl160177160215_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160179160208_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160177160215_))
                                    (let ((_e160182160218_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160177160215_))))
                                      (let ((_hd160181160222_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160182160218_)))
                                            (_tl160180160225_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160182160218_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160180160225_))
                                            (let ((_e160185160228_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160180160225_))))
                                              (let ((_hd160184160232_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160185160228_)))
                                                    (_tl160183160235_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160185160228_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160183160235_))
                                                    ((lambda (_L160238_
                                                              _L160240_
                                                              _L160241_)
                                                       (let ((__tmp162569
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp162560
                      (let ((__tmp162566
                             (let ((__tmp162568
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162567
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160241_ '()))))
                               (declare (not safe))
                               (cons __tmp162568 __tmp162567)))
                            (__tmp162561
                             (let ((__tmp162563
                                    (let ((__tmp162565
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp162564
                                           (let ()
                                             (declare (not safe))
                                             (cons _L160240_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162565 __tmp162564)))
                                   (__tmp162562
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160238_ '()))))
                               (declare (not safe))
                               (cons __tmp162563 __tmp162562))))
                        (declare (not safe))
                        (cons __tmp162566 __tmp162561))))
                 (declare (not safe))
                 (cons __tmp162569 __tmp162560)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd160184160232_
                                                     _hd160181160222_
                                                     _hd160178160212_)
                                                    (_g160169160191_
                                                     _g160170160195_))))
                                            (_g160169160191_
                                             _g160170160195_))))
                                    (_g160169160191_ _g160170160195_))))
                            (_g160169160191_ _g160170160195_))))
                    (_g160169160191_ _g160170160195_)))))
        (_g160168160260_ _$stx160165_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx160264_)
      (let* ((___stx162079162080_ _$stx160264_)
             (_g160272160340_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162079162080_)))))
        (let ((___kont162082162083_
               (lambda (_L160618_ _L160620_)
                 (let ((__tmp162590
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162570
                        (let ((__tmp162586
                               (let ((__tmp162589
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162587
                                      (let ((__tmp162588
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162588 '()))))
                                 (declare (not safe))
                                 (cons __tmp162589 __tmp162587)))
                              (__tmp162571
                               (let ((__tmp162583
                                      (let ((__tmp162585
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162584
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160620_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162585 __tmp162584)))
                                     (__tmp162572
                                      (let ((__tmp162573
                                             (let ((__tmp162574
                                                    (let ((__tmp162575
                                                           (let ((__tmp162582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162576
                          (let ((__tmp162577
                                 (let ((__tmp162581
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp162578
                                        (let ((__tmp162579
                                               (let ((__tmp162580
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L160618_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp162580))))
                                          (declare (not safe))
                                          (cons _L160620_ __tmp162579))))
                                   (declare (not safe))
                                   (cons __tmp162581 __tmp162578))))
                            (declare (not safe))
                            (cons __tmp162577 '()))))
                     (declare (not safe))
                     (cons __tmp162582 __tmp162576))))
              (declare (not safe))
              (cons __tmp162575 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L160618_ __tmp162574))))
                                        (declare (not safe))
                                        (cons '#f __tmp162573))))
                                 (declare (not safe))
                                 (cons __tmp162583 __tmp162572))))
                          (declare (not safe))
                          (cons __tmp162586 __tmp162571))))
                   (declare (not safe))
                   (cons __tmp162590 __tmp162570))))
              (___kont162084162085_
               (lambda (_L160549_ _L160551_)
                 (let ((__tmp162591
                        (let ((__tmp162592
                               (let ((__tmp162593
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L160549_ __tmp162593))))
                          (declare (not safe))
                          (cons 'primitive: __tmp162592))))
                   (declare (not safe))
                   (cons _L160551_ __tmp162591))))
              (___kont162086162087_
               (lambda (_L160488_ _L160490_)
                 (let ((__tmp162607
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp162594
                        (let ((__tmp162603
                               (let ((__tmp162606
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162604
                                      (let ((__tmp162605
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162605 '()))))
                                 (declare (not safe))
                                 (cons __tmp162606 __tmp162604)))
                              (__tmp162595
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
                                               (cons _L160490_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162602 __tmp162601)))
                                     (__tmp162596
                                      (let ((__tmp162597
                                             (let ((__tmp162599
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162598
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160488_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162599
                                                     __tmp162598))))
                                        (declare (not safe))
                                        (cons __tmp162597 '()))))
                                 (declare (not safe))
                                 (cons __tmp162600 __tmp162596))))
                          (declare (not safe))
                          (cons __tmp162603 __tmp162595))))
                   (declare (not safe))
                   (cons __tmp162607 __tmp162594))))
              (___kont162088162089_
               (lambda (_L160420_ _L160422_)
                 (let ((__tmp162621
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162608
                        (let ((__tmp162617
                               (let ((__tmp162620
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162618
                                      (let ((__tmp162619
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162619 '()))))
                                 (declare (not safe))
                                 (cons __tmp162620 __tmp162618)))
                              (__tmp162609
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
                                               (cons _L160422_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162616 __tmp162615)))
                                     (__tmp162610
                                      (let ((__tmp162611
                                             (let ((__tmp162613
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162612
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160420_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162613
                                                     __tmp162612))))
                                        (declare (not safe))
                                        (cons __tmp162611 '()))))
                                 (declare (not safe))
                                 (cons __tmp162614 __tmp162610))))
                          (declare (not safe))
                          (cons __tmp162617 __tmp162609))))
                   (declare (not safe))
                   (cons __tmp162621 __tmp162608))))
              (___kont162090162091_
               (lambda (_L160367_ _L160369_)
                 (let ((__tmp162622
                        (let ((__tmp162623
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L160367_ __tmp162623))))
                   (declare (not safe))
                   (cons _L160369_ __tmp162622)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx162079162080_))
              (let ((_e160278160574_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx162079162080_))))
                (let ((_tl160276160581_
                       (let () (declare (not safe)) (##cdr _e160278160574_)))
                      (_hd160277160578_
                       (let () (declare (not safe)) (##car _e160278160574_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl160276160581_))
                      (let ((_e160281160584_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160276160581_))))
                        (let ((_tl160279160591_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160281160584_)))
                              (_hd160280160588_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160281160584_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160279160591_))
                              (let ((_e160284160594_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160279160591_))))
                                (let ((_tl160282160601_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160284160594_)))
                                      (_hd160283160598_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160284160594_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd160283160598_))
                                      (let ((_e160285160604_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd160283160598_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e160285160604_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl160282160601_))
                                                (let ((_e160288160608_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl160282160601_))))
                                                  (let ((_tl160286160615_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e160288160608_)))
                                                        (_hd160287160612_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e160288160608_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160286160615_))
                                                        (___kont162082162083_
                                                         _hd160287160612_
                                                         _hd160280160588_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd160280160588_))
                                                            (let ((_e160297160535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd160280160588_))))
                      (declare (not safe))
                      (_g160272160340_))
                    (let () (declare (not safe)) (_g160272160340_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd160280160588_))
                                                    (let ((_e160297160535_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd160280160588_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e160297160535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160282160601_))
                      (___kont162084162085_ _hd160283160598_ _hd160277160578_)
                      (let () (declare (not safe)) (_g160272160340_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160282160601_))
                      (___kont162088162089_ _hd160283160598_ _hd160280160588_)
                      (let () (declare (not safe)) (_g160272160340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160282160601_))
                                                        (___kont162088162089_
                                                         _hd160283160598_
                                                         _hd160280160588_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160272160340_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd160280160588_))
                                                (let ((_e160297160535_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd160280160588_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e160297160535_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160282160601_))
                                                          (___kont162084162085_
                                                           _hd160283160598_
                                                           _hd160277160578_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl160282160601_))
                      (let ((_e160315160478_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160282160601_))))
                        (let ((_tl160313160485_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160315160478_)))
                              (_hd160314160482_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160315160478_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160313160485_))
                              (___kont162086162087_
                               _hd160314160482_
                               _hd160283160598_)
                              (let ()
                                (declare (not safe))
                                (_g160272160340_)))))
                      (let () (declare (not safe)) (_g160272160340_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160282160601_))
                  (___kont162088162089_ _hd160283160598_ _hd160280160588_)
                  (let () (declare (not safe)) (_g160272160340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160282160601_))
                                                    (___kont162088162089_
                                                     _hd160283160598_
                                                     _hd160280160588_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160272160340_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd160280160588_))
                                          (let ((_e160297160535_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd160280160588_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e160297160535_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160282160601_))
                                                    (___kont162084162085_
                                                     _hd160283160598_
                                                     _hd160277160578_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl160282160601_))
                                                        (let ((_e160315160478_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl160282160601_))))
                  (let ((_tl160313160485_
                         (let () (declare (not safe)) (##cdr _e160315160478_)))
                        (_hd160314160482_
                         (let ()
                           (declare (not safe))
                           (##car _e160315160478_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl160313160485_))
                        (___kont162086162087_
                         _hd160314160482_
                         _hd160283160598_)
                        (let () (declare (not safe)) (_g160272160340_)))))
                (let () (declare (not safe)) (_g160272160340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160282160601_))
                                                    (___kont162088162089_
                                                     _hd160283160598_
                                                     _hd160280160588_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160272160340_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160282160601_))
                                              (___kont162088162089_
                                               _hd160283160598_
                                               _hd160280160588_)
                                              (let ()
                                                (declare (not safe))
                                                (_g160272160340_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd160280160588_))
                                  (let ((_e160297160535_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd160280160588_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160279160591_))
                                        (___kont162090162091_
                                         _hd160280160588_
                                         _hd160277160578_)
                                        (let ()
                                          (declare (not safe))
                                          (_g160272160340_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160279160591_))
                                      (___kont162090162091_
                                       _hd160280160588_
                                       _hd160277160578_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160272160340_)))))))
                      (let () (declare (not safe)) (_g160272160340_)))))
              (let () (declare (not safe)) (_g160272160340_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx160642_)
      (let* ((___stx162219162220_ _$stx160642_)
             (_g160647160702_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162219162220_)))))
        (let ((___kont162222162223_
               (lambda (_L160887_ _L160889_)
                 (let ((__tmp162639
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp162624
                        (let ((__tmp162635
                               (let ((__tmp162638
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162636
                                      (let ((__tmp162637
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162637 '()))))
                                 (declare (not safe))
                                 (cons __tmp162638 __tmp162636)))
                              (__tmp162625
                               (let ((__tmp162626
                                      (let ((__tmp162634
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162627
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160887_
                                                  _L160889_))
                                               (let ((__tmp162628
                                                      (lambda (_g160906160910_
                                                               _g160907160913_
                                                               _g160908160915_)
                                                        (let ((__tmp162629
                                                               (let ((__tmp162633
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162630
                              (let ((__tmp162631
                                     (let ((__tmp162632
                                            (let ()
                                              (declare (not safe))
                                              (cons _g160906160910_ '()))))
                                       (declare (not safe))
                                       (cons _g160907160913_ __tmp162632))))
                                (declare (not safe))
                                (cons 'primitive: __tmp162631))))
                         (declare (not safe))
                         (cons __tmp162633 __tmp162630))))
                  (declare (not safe))
                  (cons __tmp162629 _g160908160915_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162628
                                                         '()
                                                         _L160887_
                                                         _L160889_)))))
                                        (declare (not safe))
                                        (cons __tmp162634 __tmp162627))))
                                 (declare (not safe))
                                 (cons __tmp162626 '()))))
                          (declare (not safe))
                          (cons __tmp162635 __tmp162625))))
                   (declare (not safe))
                   (cons __tmp162639 __tmp162624))))
              (___kont162226162227_
               (lambda (_L160773_ _L160775_)
                 (let ((__tmp162654
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp162640
                        (let ((__tmp162650
                               (let ((__tmp162653
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162651
                                      (let ((__tmp162652
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162652 '()))))
                                 (declare (not safe))
                                 (cons __tmp162653 __tmp162651)))
                              (__tmp162641
                               (let ((__tmp162642
                                      (let ((__tmp162649
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162643
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160773_
                                                  _L160775_))
                                               (let ((__tmp162644
                                                      (lambda (_g160790160794_
                                                               _g160791160797_
                                                               _g160792160799_)
                                                        (let ((__tmp162645
                                                               (let ((__tmp162648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162646
                              (let ((__tmp162647
                                     (let ()
                                       (declare (not safe))
                                       (cons _g160790160794_ '()))))
                                (declare (not safe))
                                (cons _g160791160797_ __tmp162647))))
                         (declare (not safe))
                         (cons __tmp162648 __tmp162646))))
                  (declare (not safe))
                  (cons __tmp162645 _g160792160799_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162644
                                                         '()
                                                         _L160773_
                                                         _L160775_)))))
                                        (declare (not safe))
                                        (cons __tmp162649 __tmp162643))))
                                 (declare (not safe))
                                 (cons __tmp162642 '()))))
                          (declare (not safe))
                          (cons __tmp162650 __tmp162641))))
                   (declare (not safe))
                   (cons __tmp162654 __tmp162640)))))
          (let* ((___match162270162271_
                  (lambda (_e160679160709_
                           _hd160678160713_
                           _tl160677160716_
                           ___splice162228162229_
                           _target160680160719_
                           _tl160682160722_)
                    (letrec ((_loop160683160725_
                              (lambda (_hd160681160729_
                                       _dispatch160687160732_
                                       _arity160688160734_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160681160729_))
                                    (let ((_e160684160737_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160681160729_))))
                                      (let ((_lp-tl160686160744_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160684160737_)))
                                            (_lp-hd160685160741_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160684160737_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160685160741_))
                                            (let ((_e160693160747_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160685160741_))))
                                              (let ((_tl160691160754_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160693160747_)))
                                                    (_hd160692160751_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160693160747_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160691160754_))
                                                    (let ((_e160696160757_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160691160754_))))
                                                      (let ((_tl160694160764_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160696160757_)))
                    (_hd160695160761_
                     (let () (declare (not safe)) (##car _e160696160757_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160694160764_))
                    (_loop160683160725_
                     _lp-tl160686160744_
                     (let ()
                       (declare (not safe))
                       (cons _hd160695160761_ _dispatch160687160732_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160692160751_ _arity160688160734_)))
                    (let () (declare (not safe)) (_g160647160702_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160647160702_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g160647160702_)))))
                                    (let ((_arity160690160770_
                                           (reverse _arity160688160734_))
                                          (_dispatch160689160767_
                                           (reverse _dispatch160687160732_)))
                                      (___kont162226162227_
                                       _dispatch160689160767_
                                       _arity160690160770_))))))
                      (_loop160683160725_ _target160680160719_ '() '()))))
                 (___match162262162263_
                  (lambda (_e160679160709_ _hd160678160713_ _tl160677160716_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl160677160716_))
                        (let ((___splice162228162229_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl160677160716_
                                  '0))))
                          (let ((_tl160682160722_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162228162229_ '1)))
                                (_target160680160719_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162228162229_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl160682160722_))
                                (___match162270162271_
                                 _e160679160709_
                                 _hd160678160713_
                                 _tl160677160716_
                                 ___splice162228162229_
                                 _target160680160719_
                                 _tl160682160722_)
                                (let ()
                                  (declare (not safe))
                                  (_g160647160702_)))))
                        (let () (declare (not safe)) (_g160647160702_)))))
                 (___match162256162257_
                  (lambda (_e160653160809_
                           _hd160652160813_
                           _tl160651160816_
                           _e160656160819_
                           _hd160655160823_
                           _tl160654160826_
                           _e160657160829_
                           ___splice162224162225_
                           _target160658160833_
                           _tl160660160836_)
                    (letrec ((_loop160661160839_
                              (lambda (_hd160659160843_
                                       _dispatch160665160846_
                                       _arity160666160848_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160659160843_))
                                    (let ((_e160662160851_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160659160843_))))
                                      (let ((_lp-tl160664160858_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160662160851_)))
                                            (_lp-hd160663160855_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160662160851_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160663160855_))
                                            (let ((_e160671160861_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160663160855_))))
                                              (let ((_tl160669160868_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160671160861_)))
                                                    (_hd160670160865_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160671160861_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160669160868_))
                                                    (let ((_e160674160871_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160669160868_))))
                                                      (let ((_tl160672160878_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160674160871_)))
                    (_hd160673160875_
                     (let () (declare (not safe)) (##car _e160674160871_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160672160878_))
                    (_loop160661160839_
                     _lp-tl160664160858_
                     (let ()
                       (declare (not safe))
                       (cons _hd160673160875_ _dispatch160665160846_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160670160865_ _arity160666160848_)))
                    (___match162262162263_
                     _e160653160809_
                     _hd160652160813_
                     _tl160651160816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match162262162263_
                                                     _e160653160809_
                                                     _hd160652160813_
                                                     _tl160651160816_))))
                                            (___match162262162263_
                                             _e160653160809_
                                             _hd160652160813_
                                             _tl160651160816_))))
                                    (let ((_arity160668160884_
                                           (reverse _arity160666160848_))
                                          (_dispatch160667160881_
                                           (reverse _dispatch160665160846_)))
                                      (___kont162222162223_
                                       _dispatch160667160881_
                                       _arity160668160884_))))))
                      (_loop160661160839_ _target160658160833_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162219162220_))
                (let ((_e160653160809_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162219162220_))))
                  (let ((_tl160651160816_
                         (let () (declare (not safe)) (##cdr _e160653160809_)))
                        (_hd160652160813_
                         (let ()
                           (declare (not safe))
                           (##car _e160653160809_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160651160816_))
                        (let ((_e160656160819_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160651160816_))))
                          (let ((_tl160654160826_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160656160819_)))
                                (_hd160655160823_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160656160819_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd160655160823_))
                                (let ((_e160657160829_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd160655160823_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e160657160829_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160654160826_))
                                          (let ((___splice162224162225_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160654160826_
                                                    '0))))
                                            (let ((_tl160660160836_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162224162225_
                                                      '1)))
                                                  (_target160658160833_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162224162225_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160660160836_))
                                                  (___match162256162257_
                                                   _e160653160809_
                                                   _hd160652160813_
                                                   _tl160651160816_
                                                   _e160656160819_
                                                   _hd160655160823_
                                                   _tl160654160826_
                                                   _e160657160829_
                                                   ___splice162224162225_
                                                   _target160658160833_
                                                   _tl160660160836_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160651160816_))
                                                      (let ((___splice162228162229_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160651160816_ '0))))
                (let ((_tl160682160722_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162228162229_ '1)))
                      (_target160680160719_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162228162229_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160682160722_))
                      (___match162270162271_
                       _e160653160809_
                       _hd160652160813_
                       _tl160651160816_
                       ___splice162228162229_
                       _target160680160719_
                       _tl160682160722_)
                      (let () (declare (not safe)) (_g160647160702_)))))
              (let () (declare (not safe)) (_g160647160702_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl160651160816_))
                                              (let ((___splice162228162229_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl160651160816_
                                                        '0))))
                                                (let ((_tl160682160722_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162228162229_
                                                          '1)))
                                                      (_target160680160719_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162228162229_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl160682160722_))
                                                      (___match162270162271_
                                                       _e160653160809_
                                                       _hd160652160813_
                                                       _tl160651160816_
                                                       ___splice162228162229_
                                                       _target160680160719_
                                                       _tl160682160722_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g160647160702_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g160647160702_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160651160816_))
                                          (let ((___splice162228162229_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160651160816_
                                                    '0))))
                                            (let ((_tl160682160722_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162228162229_
                                                      '1)))
                                                  (_target160680160719_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162228162229_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160682160722_))
                                                  (___match162270162271_
                                                   _e160653160809_
                                                   _hd160652160813_
                                                   _tl160651160816_
                                                   ___splice162228162229_
                                                   _target160680160719_
                                                   _tl160682160722_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g160647160702_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g160647160702_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160651160816_))
                                    (let ((___splice162228162229_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160651160816_
                                              '0))))
                                      (let ((_tl160682160722_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162228162229_
                                                '1)))
                                            (_target160680160719_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162228162229_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160682160722_))
                                            (___match162270162271_
                                             _e160653160809_
                                             _hd160652160813_
                                             _tl160651160816_
                                             ___splice162228162229_
                                             _target160680160719_
                                             _tl160682160722_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160647160702_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160647160702_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160651160816_))
                            (let ((___splice162228162229_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160651160816_
                                      '0))))
                              (let ((_tl160682160722_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162228162229_
                                        '1)))
                                    (_target160680160719_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162228162229_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160682160722_))
                                    (___match162270162271_
                                     _e160653160809_
                                     _hd160652160813_
                                     _tl160651160816_
                                     ___splice162228162229_
                                     _target160680160719_
                                     _tl160682160722_)
                                    (let ()
                                      (declare (not safe))
                                      (_g160647160702_)))))
                            (let () (declare (not safe)) (_g160647160702_))))))
                (let () (declare (not safe)) (_g160647160702_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx160924_)
      (let* ((_g160928160946_
              (lambda (_g160929160942_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160929160942_))))
             (_g160927161001_
              (lambda (_g160929160950_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160929160950_))
                    (let ((_e160934160953_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160929160950_))))
                      (let ((_hd160933160957_
                             (let ()
                               (declare (not safe))
                               (##car _e160934160953_)))
                            (_tl160932160960_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160934160953_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160932160960_))
                            (let ((_e160937160963_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160932160960_))))
                              (let ((_hd160936160967_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160937160963_)))
                                    (_tl160935160970_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160937160963_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160935160970_))
                                    (let ((_e160940160973_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160935160970_))))
                                      (let ((_hd160939160977_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160940160973_)))
                                            (_tl160938160980_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160940160973_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160938160980_))
                                            ((lambda (_L160983_ _L160985_)
                                               (let ((__tmp162668
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp162655
                                                      (let ((__tmp162664
                                                             (let ((__tmp162667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162665
                            (let ((__tmp162666
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp162666 '()))))
                       (declare (not safe))
                       (cons __tmp162667 __tmp162665)))
                    (__tmp162656
                     (let ((__tmp162661
                            (let ((__tmp162663
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162662
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160985_ '()))))
                              (declare (not safe))
                              (cons __tmp162663 __tmp162662)))
                           (__tmp162657
                            (let ((__tmp162658
                                   (let ((__tmp162660
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162659
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160983_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162660 __tmp162659))))
                              (declare (not safe))
                              (cons __tmp162658 '()))))
                       (declare (not safe))
                       (cons __tmp162661 __tmp162657))))
                (declare (not safe))
                (cons __tmp162664 __tmp162656))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162668
                                                       __tmp162655)))
                                             _hd160939160977_
                                             _hd160936160967_)
                                            (_g160928160946_
                                             _g160929160950_))))
                                    (_g160928160946_ _g160929160950_))))
                            (_g160928160946_ _g160929160950_))))
                    (_g160928160946_ _g160929160950_)))))
        (_g160927161001_ _$stx160924_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx161005_)
      (let* ((_g161009161027_
              (lambda (_g161010161023_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161010161023_))))
             (_g161008161082_
              (lambda (_g161010161031_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161010161031_))
                    (let ((_e161015161034_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161010161031_))))
                      (let ((_hd161014161038_
                             (let ()
                               (declare (not safe))
                               (##car _e161015161034_)))
                            (_tl161013161041_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161015161034_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161013161041_))
                            (let ((_e161018161044_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161013161041_))))
                              (let ((_hd161017161048_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161018161044_)))
                                    (_tl161016161051_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161018161044_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161016161051_))
                                    (let ((_e161021161054_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161016161051_))))
                                      (let ((_hd161020161058_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161021161054_)))
                                            (_tl161019161061_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161021161054_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161019161061_))
                                            ((lambda (_L161064_ _L161066_)
                                               (let ((__tmp162682
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp162669
                                                      (let ((__tmp162678
                                                             (let ((__tmp162681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162679
                            (let ((__tmp162680
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp162680 '()))))
                       (declare (not safe))
                       (cons __tmp162681 __tmp162679)))
                    (__tmp162670
                     (let ((__tmp162675
                            (let ((__tmp162677
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162676
                                   (let ()
                                     (declare (not safe))
                                     (cons _L161066_ '()))))
                              (declare (not safe))
                              (cons __tmp162677 __tmp162676)))
                           (__tmp162671
                            (let ((__tmp162672
                                   (let ((__tmp162674
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162673
                                          (let ()
                                            (declare (not safe))
                                            (cons _L161064_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162674 __tmp162673))))
                              (declare (not safe))
                              (cons __tmp162672 '()))))
                       (declare (not safe))
                       (cons __tmp162675 __tmp162671))))
                (declare (not safe))
                (cons __tmp162678 __tmp162670))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162682
                                                       __tmp162669)))
                                             _hd161020161058_
                                             _hd161017161048_)
                                            (_g161009161027_
                                             _g161010161031_))))
                                    (_g161009161027_ _g161010161031_))))
                            (_g161009161027_ _g161010161031_))))
                    (_g161009161027_ _g161010161031_)))))
        (_g161008161082_ _$stx161005_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx161086_)
      (let* ((___stx162273162274_ _$stx161086_)
             (_g161093161164_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162273162274_)))))
        (let ((___kont162276162277_
               (lambda (_L161455_ _L161457_)
                 (let ((__tmp162688
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162683
                        (let ((__tmp162684
                               (let ((__tmp162685
                                      (let ((__tmp162687
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162686
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161455_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162687 __tmp162686))))
                                 (declare (not safe))
                                 (cons __tmp162685 '()))))
                          (declare (not safe))
                          (cons _L161457_ __tmp162684))))
                   (declare (not safe))
                   (cons __tmp162688 __tmp162683))))
              (___kont162278162279_
               (lambda (_L161374_ _L161376_)
                 (let ((__tmp162697
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162689
                        (let ((__tmp162690
                               (let ((__tmp162691
                                      (let ((__tmp162696
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162692
                                             (let ((__tmp162693
                                                    (lambda (_g161395161398_
                                                             _g161396161401_)
                                                      (let ((__tmp162694
                                                             (let ((__tmp162695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g161395161398_ __tmp162695))))
                (declare (not safe))
                (cons __tmp162694 _g161396161401_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162693
                                                       '()
                                                       _L161374_))))
                                        (declare (not safe))
                                        (cons __tmp162696 __tmp162692))))
                                 (declare (not safe))
                                 (cons __tmp162691 '()))))
                          (declare (not safe))
                          (cons _L161376_ __tmp162690))))
                   (declare (not safe))
                   (cons __tmp162697 __tmp162689))))
              (___kont162282162283_
               (lambda (_L161286_ _L161288_)
                 (let ((__tmp162704
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162698
                        (let ((__tmp162699
                               (let ((__tmp162700
                                      (let ((__tmp162703
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162701
                                             (let ((__tmp162702
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161286_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162702))))
                                        (declare (not safe))
                                        (cons __tmp162703 __tmp162701))))
                                 (declare (not safe))
                                 (cons __tmp162700 '()))))
                          (declare (not safe))
                          (cons _L161288_ __tmp162699))))
                   (declare (not safe))
                   (cons __tmp162704 __tmp162698))))
              (___kont162284162285_
               (lambda (_L161221_ _L161223_)
                 (let ((__tmp162714
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162705
                        (let ((__tmp162706
                               (let ((__tmp162707
                                      (let ((__tmp162713
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162708
                                             (let ((__tmp162709
                                                    (let ((__tmp162710
                                                           (lambda (_g161240161243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g161241161246_)
                     (let ((__tmp162711
                            (let ((__tmp162712
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g161240161243_ __tmp162712))))
                       (declare (not safe))
                       (cons __tmp162711 _g161241161246_)))))
              (declare (not safe))
              (foldr1 __tmp162710 '() _L161221_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162709))))
                                        (declare (not safe))
                                        (cons __tmp162713 __tmp162708))))
                                 (declare (not safe))
                                 (cons __tmp162707 '()))))
                          (declare (not safe))
                          (cons _L161223_ __tmp162706))))
                   (declare (not safe))
                   (cons __tmp162714 __tmp162705)))))
          (let* ((___match162392162393_
                  (lambda (_e161146161171_
                           _hd161145161175_
                           _tl161144161178_
                           _e161149161181_
                           _hd161148161185_
                           _tl161147161188_
                           ___splice162286162287_
                           _target161150161191_
                           _tl161152161194_)
                    (letrec ((_loop161153161197_
                              (lambda (_hd161151161201_ _arity161157161204_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161151161201_))
                                    (let ((_e161154161207_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161151161201_))))
                                      (let ((_lp-tl161156161214_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161154161207_)))
                                            (_lp-hd161155161211_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161154161207_))))
                                        (_loop161153161197_
                                         _lp-tl161156161214_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd161155161211_
                                                 _arity161157161204_)))))
                                    (let ((_arity161158161217_
                                           (reverse _arity161157161204_)))
                                      (___kont162284162285_
                                       _arity161158161217_
                                       _hd161148161185_))))))
                      (_loop161153161197_ _target161150161191_ '()))))
                 (___match162352162353_
                  (lambda (_e161114161310_
                           _hd161113161314_
                           _tl161112161317_
                           _e161117161320_
                           _hd161116161324_
                           _tl161115161327_
                           _e161120161330_
                           _hd161119161334_
                           _tl161118161337_
                           _e161121161340_
                           ___splice162280162281_
                           _target161122161344_
                           _tl161124161347_)
                    (letrec ((_loop161125161350_
                              (lambda (_hd161123161354_ _arity161129161357_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161123161354_))
                                    (let ((_e161126161360_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161123161354_))))
                                      (let ((_lp-tl161128161367_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161126161360_)))
                                            (_lp-hd161127161364_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161126161360_))))
                                        (_loop161125161350_
                                         _lp-tl161128161367_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd161127161364_
                                                 _arity161129161357_)))))
                                    (let ((_arity161130161370_
                                           (reverse _arity161129161357_)))
                                      (___kont162278162279_
                                       _arity161130161370_
                                       _hd161116161324_))))))
                      (_loop161125161350_ _target161122161344_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162273162274_))
                (let ((_e161099161411_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162273162274_))))
                  (let ((_tl161097161418_
                         (let () (declare (not safe)) (##cdr _e161099161411_)))
                        (_hd161098161415_
                         (let ()
                           (declare (not safe))
                           (##car _e161099161411_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161097161418_))
                        (let ((_e161102161421_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161097161418_))))
                          (let ((_tl161100161428_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161102161421_)))
                                (_hd161101161425_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161102161421_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161100161428_))
                                (let ((_e161105161431_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161100161428_))))
                                  (let ((_tl161103161438_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161105161431_)))
                                        (_hd161104161435_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161105161431_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd161104161435_))
                                        (let ((_e161106161441_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd161104161435_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e161106161441_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl161103161438_))
                                                  (let ((_e161109161445_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl161103161438_))))
                                                    (let ((_tl161107161452_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e161109161445_)))
                                                          (_hd161108161449_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e161109161445_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl161107161452_))
                                                          (___kont162276162277_
                                                           _hd161108161449_
                                                           _hd161101161425_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl161103161438_))
                      (let ((___splice162280162281_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl161103161438_ '0))))
                        (let ((_tl161124161347_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162280162281_ '1)))
                              (_target161122161344_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162280162281_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161124161347_))
                              (___match162352162353_
                               _e161099161411_
                               _hd161098161415_
                               _tl161097161418_
                               _e161102161421_
                               _hd161101161425_
                               _tl161100161428_
                               _e161105161431_
                               _hd161104161435_
                               _tl161103161438_
                               _e161106161441_
                               ___splice162280162281_
                               _target161122161344_
                               _tl161124161347_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl161100161428_))
                                  (let ((___splice162286162287_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl161100161428_
                                            '0))))
                                    (let ((_tl161152161194_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162286162287_
                                              '1)))
                                          (_target161150161191_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162286162287_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl161152161194_))
                                          (___match162392162393_
                                           _e161099161411_
                                           _hd161098161415_
                                           _tl161097161418_
                                           _e161102161421_
                                           _hd161101161425_
                                           _tl161100161428_
                                           ___splice162286162287_
                                           _target161150161191_
                                           _tl161152161194_)
                                          (let ()
                                            (declare (not safe))
                                            (_g161093161164_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g161093161164_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl161100161428_))
                          (let ((___splice162286162287_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl161100161428_
                                    '0))))
                            (let ((_tl161152161194_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice162286162287_ '1)))
                                  (_target161150161191_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice162286162287_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl161152161194_))
                                  (___match162392162393_
                                   _e161099161411_
                                   _hd161098161415_
                                   _tl161097161418_
                                   _e161102161421_
                                   _hd161101161425_
                                   _tl161100161428_
                                   ___splice162286162287_
                                   _target161150161191_
                                   _tl161152161194_)
                                  (let ()
                                    (declare (not safe))
                                    (_g161093161164_)))))
                          (let () (declare (not safe)) (_g161093161164_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161103161438_))
                                                      (let ((___splice162280162281_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161103161438_ '0))))
                (let ((_tl161124161347_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162280162281_ '1)))
                      (_target161122161344_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162280162281_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161124161347_))
                      (___match162352162353_
                       _e161099161411_
                       _hd161098161415_
                       _tl161097161418_
                       _e161102161421_
                       _hd161101161425_
                       _tl161100161428_
                       _e161105161431_
                       _hd161104161435_
                       _tl161103161438_
                       _e161106161441_
                       ___splice162280162281_
                       _target161122161344_
                       _tl161124161347_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl161103161438_))
                          (___kont162282162283_
                           _hd161104161435_
                           _hd161101161425_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161100161428_))
                              (let ((___splice162286162287_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161100161428_
                                        '0))))
                                (let ((_tl161152161194_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162286162287_
                                          '1)))
                                      (_target161150161191_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162286162287_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161152161194_))
                                      (___match162392162393_
                                       _e161099161411_
                                       _hd161098161415_
                                       _tl161097161418_
                                       _e161102161421_
                                       _hd161101161425_
                                       _tl161100161428_
                                       ___splice162286162287_
                                       _target161150161191_
                                       _tl161152161194_)
                                      (let ()
                                        (declare (not safe))
                                        (_g161093161164_)))))
                              (let ()
                                (declare (not safe))
                                (_g161093161164_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl161103161438_))
                  (___kont162282162283_ _hd161104161435_ _hd161101161425_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl161100161428_))
                      (let ((___splice162286162287_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl161100161428_ '0))))
                        (let ((_tl161152161194_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162286162287_ '1)))
                              (_target161150161191_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162286162287_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161152161194_))
                              (___match162392162393_
                               _e161099161411_
                               _hd161098161415_
                               _tl161097161418_
                               _e161102161421_
                               _hd161101161425_
                               _tl161100161428_
                               ___splice162286162287_
                               _target161150161191_
                               _tl161152161194_)
                              (let ()
                                (declare (not safe))
                                (_g161093161164_)))))
                      (let () (declare (not safe)) (_g161093161164_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl161103161438_))
                                                  (___kont162282162283_
                                                   _hd161104161435_
                                                   _hd161101161425_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161100161428_))
                                                      (let ((___splice162286162287_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161100161428_ '0))))
                (let ((_tl161152161194_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162286162287_ '1)))
                      (_target161150161191_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162286162287_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161152161194_))
                      (___match162392162393_
                       _e161099161411_
                       _hd161098161415_
                       _tl161097161418_
                       _e161102161421_
                       _hd161101161425_
                       _tl161100161428_
                       ___splice162286162287_
                       _target161150161191_
                       _tl161152161194_)
                      (let () (declare (not safe)) (_g161093161164_)))))
              (let () (declare (not safe)) (_g161093161164_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161103161438_))
                                            (___kont162282162283_
                                             _hd161104161435_
                                             _hd161101161425_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl161100161428_))
                                                (let ((___splice162286162287_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl161100161428_
                                                          '0))))
                                                  (let ((_tl161152161194_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162286162287_
                                                            '1)))
                                                        (_target161150161191_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162286162287_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl161152161194_))
                                                        (___match162392162393_
                                                         _e161099161411_
                                                         _hd161098161415_
                                                         _tl161097161418_
                                                         _e161102161421_
                                                         _hd161101161425_
                                                         _tl161100161428_
                                                         ___splice162286162287_
                                                         _target161150161191_
                                                         _tl161152161194_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g161093161164_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g161093161164_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161100161428_))
                                    (let ((___splice162286162287_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161100161428_
                                              '0))))
                                      (let ((_tl161152161194_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162286162287_
                                                '1)))
                                            (_target161150161191_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162286162287_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161152161194_))
                                            (___match162392162393_
                                             _e161099161411_
                                             _hd161098161415_
                                             _tl161097161418_
                                             _e161102161421_
                                             _hd161101161425_
                                             _tl161100161428_
                                             ___splice162286162287_
                                             _target161150161191_
                                             _tl161152161194_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161093161164_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161093161164_))))))
                        (let () (declare (not safe)) (_g161093161164_)))))
                (let () (declare (not safe)) (_g161093161164_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx161481_)
      (let* ((___stx162395162396_ _$stx161481_)
             (_g161486161521_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162395162396_)))))
        (let ((___kont162398162399_
               (lambda (_L161643_ _L161645_)
                 (let ((__tmp162720
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162715
                        (let ((__tmp162716
                               (let ((__tmp162717
                                      (let ((__tmp162719
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162718
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161643_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162719 __tmp162718))))
                                 (declare (not safe))
                                 (cons __tmp162717 '()))))
                          (declare (not safe))
                          (cons _L161645_ __tmp162716))))
                   (declare (not safe))
                   (cons __tmp162720 __tmp162715))))
              (___kont162400162401_
               (lambda (_L161578_ _L161580_)
                 (let ((__tmp162729
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162721
                        (let ((__tmp162722
                               (let ((__tmp162723
                                      (let ((__tmp162728
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162724
                                             (let ((__tmp162725
                                                    (lambda (_g161597161600_
                                                             _g161598161603_)
                                                      (let ((__tmp162726
                                                             (let ((__tmp162727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g161597161600_ __tmp162727))))
                (declare (not safe))
                (cons __tmp162726 _g161598161603_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162725
                                                       '()
                                                       _L161578_))))
                                        (declare (not safe))
                                        (cons __tmp162728 __tmp162724))))
                                 (declare (not safe))
                                 (cons __tmp162723 '()))))
                          (declare (not safe))
                          (cons _L161580_ __tmp162722))))
                   (declare (not safe))
                   (cons __tmp162729 __tmp162721)))))
          (let ((___match162444162445_
                 (lambda (_e161503161528_
                          _hd161502161532_
                          _tl161501161535_
                          _e161506161538_
                          _hd161505161542_
                          _tl161504161545_
                          ___splice162402162403_
                          _target161507161548_
                          _tl161509161551_)
                   (letrec ((_loop161510161554_
                             (lambda (_hd161508161558_ _arity161514161561_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd161508161558_))
                                   (let ((_e161511161564_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd161508161558_))))
                                     (let ((_lp-tl161513161571_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e161511161564_)))
                                           (_lp-hd161512161568_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e161511161564_))))
                                       (_loop161510161554_
                                        _lp-tl161513161571_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd161512161568_
                                                _arity161514161561_)))))
                                   (let ((_arity161515161574_
                                          (reverse _arity161514161561_)))
                                     (___kont162400162401_
                                      _arity161515161574_
                                      _hd161505161542_))))))
                     (_loop161510161554_ _target161507161548_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162395162396_))
                (let ((_e161492161613_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162395162396_))))
                  (let ((_tl161490161620_
                         (let () (declare (not safe)) (##cdr _e161492161613_)))
                        (_hd161491161617_
                         (let ()
                           (declare (not safe))
                           (##car _e161492161613_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161490161620_))
                        (let ((_e161495161623_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161490161620_))))
                          (let ((_tl161493161630_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161495161623_)))
                                (_hd161494161627_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161495161623_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161493161630_))
                                (let ((_e161498161633_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161493161630_))))
                                  (let ((_tl161496161640_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161498161633_)))
                                        (_hd161497161637_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161498161633_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161496161640_))
                                        (___kont162398162399_
                                         _hd161497161637_
                                         _hd161494161627_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl161493161630_))
                                            (let ((___splice162402162403_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl161493161630_
                                                      '0))))
                                              (let ((_tl161509161551_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice162402162403_
                                                        '1)))
                                                    (_target161507161548_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice162402162403_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161509161551_))
                                                    (___match162444162445_
                                                     _e161492161613_
                                                     _hd161491161617_
                                                     _tl161490161620_
                                                     _e161495161623_
                                                     _hd161494161627_
                                                     _tl161493161630_
                                                     ___splice162402162403_
                                                     _target161507161548_
                                                     _tl161509161551_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161486161521_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g161486161521_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161493161630_))
                                    (let ((___splice162402162403_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161493161630_
                                              '0))))
                                      (let ((_tl161509161551_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162402162403_
                                                '1)))
                                            (_target161507161548_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162402162403_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161509161551_))
                                            (___match162444162445_
                                             _e161492161613_
                                             _hd161491161617_
                                             _tl161490161620_
                                             _e161495161623_
                                             _hd161494161627_
                                             _tl161493161630_
                                             ___splice162402162403_
                                             _target161507161548_
                                             _tl161509161551_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161486161521_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161486161521_))))))
                        (let () (declare (not safe)) (_g161486161521_)))))
                (let () (declare (not safe)) (_g161486161521_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx161665_)
      (let* ((_g161669161704_
              (lambda (_g161670161700_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161670161700_))))
             (_g161668161832_
              (lambda (_g161670161708_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161670161708_))
                    (let ((_e161675161711_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161670161708_))))
                      (let ((_hd161674161715_
                             (let ()
                               (declare (not safe))
                               (##car _e161675161711_)))
                            (_tl161673161718_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161675161711_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161673161718_))
                            (let ((_g162730_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161673161718_
                                      '0))))
                              (begin
                                (let ((_g162731_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162730_)
                                             (##vector-length _g162730_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162731_ 2)))
                                      (error "Context expects 2 values"
                                             _g162731_)))
                                (let ((_target161676161721_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162730_ 0)))
                                      (_tl161678161724_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162730_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161678161724_))
                                      (letrec ((_loop161679161727_
                                                (lambda (_hd161677161731_
                                                         _arity161683161734_
                                                         _prim161684161736_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161677161731_))
                                                      (let ((_e161680161739_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161677161731_))))
                (let ((_lp-hd161681161743_
                       (let () (declare (not safe)) (##car _e161680161739_)))
                      (_lp-tl161682161746_
                       (let () (declare (not safe)) (##cdr _e161680161739_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161681161743_))
                      (let ((_e161689161749_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161681161743_))))
                        (let ((_hd161688161753_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161689161749_)))
                              (_tl161687161756_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161689161749_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161687161756_))
                              (let ((_g162740_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161687161756_
                                        '0))))
                                (begin
                                  (let ((_g162741_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162740_)
                                               (##vector-length _g162740_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162741_ 2)))
                                        (error "Context expects 2 values"
                                               _g162741_)))
                                  (let ((_target161690161759_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162740_ 0)))
                                        (_tl161692161762_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162740_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161692161762_))
                                        (letrec ((_loop161693161765_
                                                  (lambda (_hd161691161769_
                                                           _arity161697161772_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161691161769_))
                                                        (let ((_e161694161775_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161691161769_))))
                  (let ((_lp-hd161695161779_
                         (let () (declare (not safe)) (##car _e161694161775_)))
                        (_lp-tl161696161782_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161694161775_))))
                    (_loop161693161765_
                     _lp-tl161696161782_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161695161779_ _arity161697161772_)))))
                (let ((_arity161698161785_ (reverse _arity161697161772_)))
                  (_loop161679161727_
                   _lp-tl161682161746_
                   (let ()
                     (declare (not safe))
                     (cons _arity161698161785_ _arity161683161734_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161688161753_ _prim161684161736_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161693161765_
                                           _target161690161759_
                                           '()))
                                        (_g161669161704_ _g161670161708_)))))
                              (_g161669161704_ _g161670161708_))))
                      (_g161669161704_ _g161670161708_))))
              (let ((_arity161685161789_ (reverse _arity161683161734_))
                    (_prim161686161792_ (reverse _prim161684161736_)))
                ((lambda (_L161795_ _L161797_)
                   (let ((__tmp162739
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162732
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161795_
                               _L161797_))
                            (let ((__tmp162733
                                   (lambda (_g161812161818_
                                            _g161813161821_
                                            _g161814161823_)
                                     (let ((__tmp162734
                                            (let ((__tmp162738
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp162735
                                                   (let ((__tmp162736
                                                          (let ((__tmp162737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161815161826_ _g161816161829_)
                           (let ()
                             (declare (not safe))
                             (cons _g161815161826_ _g161816161829_)))))
                    (declare (not safe))
                    (foldr1 __tmp162737 '() _g161812161818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161813161821_
                                                           __tmp162736))))
                                              (declare (not safe))
                                              (cons __tmp162738 __tmp162735))))
                                       (declare (not safe))
                                       (cons __tmp162734 _g161814161823_)))))
                              (declare (not safe))
                              (foldr2 __tmp162733 '() _L161795_ _L161797_)))))
                     (declare (not safe))
                     (cons __tmp162739 __tmp162732)))
                 _arity161685161789_
                 _prim161686161792_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161679161727_
                                         _target161676161721_
                                         '()
                                         '()))
                                      (_g161669161704_ _g161670161708_)))))
                            (_g161669161704_ _g161670161708_))))
                    (_g161669161704_ _g161670161708_)))))
        (_g161668161832_ _$stx161665_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx161838_)
      (let* ((_g161842161877_
              (lambda (_g161843161873_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161843161873_))))
             (_g161841162005_
              (lambda (_g161843161881_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161843161881_))
                    (let ((_e161848161884_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161843161881_))))
                      (let ((_hd161847161888_
                             (let ()
                               (declare (not safe))
                               (##car _e161848161884_)))
                            (_tl161846161891_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161848161884_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161846161891_))
                            (let ((_g162742_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161846161891_
                                      '0))))
                              (begin
                                (let ((_g162743_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162742_)
                                             (##vector-length _g162742_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162743_ 2)))
                                      (error "Context expects 2 values"
                                             _g162743_)))
                                (let ((_target161849161894_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162742_ 0)))
                                      (_tl161851161897_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162742_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161851161897_))
                                      (letrec ((_loop161852161900_
                                                (lambda (_hd161850161904_
                                                         _arity161856161907_
                                                         _prim161857161909_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161850161904_))
                                                      (let ((_e161853161912_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161850161904_))))
                (let ((_lp-hd161854161916_
                       (let () (declare (not safe)) (##car _e161853161912_)))
                      (_lp-tl161855161919_
                       (let () (declare (not safe)) (##cdr _e161853161912_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161854161916_))
                      (let ((_e161862161922_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161854161916_))))
                        (let ((_hd161861161926_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161862161922_)))
                              (_tl161860161929_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161862161922_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161860161929_))
                              (let ((_g162752_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161860161929_
                                        '0))))
                                (begin
                                  (let ((_g162753_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162752_)
                                               (##vector-length _g162752_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162753_ 2)))
                                        (error "Context expects 2 values"
                                               _g162753_)))
                                  (let ((_target161863161932_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162752_ 0)))
                                        (_tl161865161935_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162752_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161865161935_))
                                        (letrec ((_loop161866161938_
                                                  (lambda (_hd161864161942_
                                                           _arity161870161945_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161864161942_))
                                                        (let ((_e161867161948_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161864161942_))))
                  (let ((_lp-hd161868161952_
                         (let () (declare (not safe)) (##car _e161867161948_)))
                        (_lp-tl161869161955_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161867161948_))))
                    (_loop161866161938_
                     _lp-tl161869161955_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161868161952_ _arity161870161945_)))))
                (let ((_arity161871161958_ (reverse _arity161870161945_)))
                  (_loop161852161900_
                   _lp-tl161855161919_
                   (let ()
                     (declare (not safe))
                     (cons _arity161871161958_ _arity161856161907_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161861161926_ _prim161857161909_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161866161938_
                                           _target161863161932_
                                           '()))
                                        (_g161842161877_ _g161843161881_)))))
                              (_g161842161877_ _g161843161881_))))
                      (_g161842161877_ _g161843161881_))))
              (let ((_arity161858161962_ (reverse _arity161856161907_))
                    (_prim161859161965_ (reverse _prim161857161909_)))
                ((lambda (_L161968_ _L161970_)
                   (let ((__tmp162751
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162744
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161968_
                               _L161970_))
                            (let ((__tmp162745
                                   (lambda (_g161985161991_
                                            _g161986161994_
                                            _g161987161996_)
                                     (let ((__tmp162746
                                            (let ((__tmp162750
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp162747
                                                   (let ((__tmp162748
                                                          (let ((__tmp162749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161988161999_ _g161989162002_)
                           (let ()
                             (declare (not safe))
                             (cons _g161988161999_ _g161989162002_)))))
                    (declare (not safe))
                    (foldr1 __tmp162749 '() _g161985161991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161986161994_
                                                           __tmp162748))))
                                              (declare (not safe))
                                              (cons __tmp162750 __tmp162747))))
                                       (declare (not safe))
                                       (cons __tmp162746 _g161987161996_)))))
                              (declare (not safe))
                              (foldr2 __tmp162745 '() _L161968_ _L161970_)))))
                     (declare (not safe))
                     (cons __tmp162751 __tmp162744)))
                 _arity161858161962_
                 _prim161859161965_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161852161900_
                                         _target161849161894_
                                         '()
                                         '()))
                                      (_g161842161877_ _g161843161881_)))))
                            (_g161842161877_ _g161843161881_))))
                    (_g161842161877_ _g161843161881_)))))
        (_g161841162005_ _$stx161838_)))))
