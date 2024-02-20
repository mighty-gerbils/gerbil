(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx58819_)
      (let* ((___stx6114161142_ _$stx58819_)
             (_g5882458853_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6114161142_))))
        (let ((___kont6114461145_
               (lambda (_L58946_ _L58948_)
                 (let ((__tmp61442 (gx#datum->syntax '#f '##fx=))
                       (__tmp61436
                        (let ((__tmp61438
                               (let ((__tmp61441
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp61439
                                      (let ((__tmp61440
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58946_ '()))))
                                        (declare (not safe))
                                        (cons _L58948_ __tmp61440))))
                                 (declare (not safe))
                                 (cons __tmp61441 __tmp61439)))
                              (__tmp61437
                               (let ()
                                 (declare (not safe))
                                 (cons _L58946_ '()))))
                          (declare (not safe))
                          (cons __tmp61438 __tmp61437))))
                   (declare (not safe))
                   (cons __tmp61442 __tmp61436))))
              (___kont6114661147_
               (lambda (_L58890_ _L58892_)
                 (let ((__tmp61455 (gx#datum->syntax '#f 'let))
                       (__tmp61443
                        (let ((__tmp61453
                               (let ((__tmp61454
                                      (let ()
                                        (declare (not safe))
                                        (cons _L58890_ '()))))
                                 (declare (not safe))
                                 (cons _L58890_ __tmp61454)))
                              (__tmp61444
                               (let ((__tmp61445
                                      (let ((__tmp61452
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp61446
                                             (let ((__tmp61448
                                                    (let ((__tmp61451
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp61449
                                                           (let ((__tmp61450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L58890_ '()))))
                     (declare (not safe))
                     (cons _L58892_ __tmp61450))))
              (declare (not safe))
              (cons __tmp61451 __tmp61449)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp61447
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L58890_ '()))))
                                               (declare (not safe))
                                               (cons __tmp61448 __tmp61447))))
                                        (declare (not safe))
                                        (cons __tmp61452 __tmp61446))))
                                 (declare (not safe))
                                 (cons __tmp61445 '()))))
                          (declare (not safe))
                          (cons __tmp61453 __tmp61444))))
                   (declare (not safe))
                   (cons __tmp61455 __tmp61443)))))
          (let ((___match6116861169_
                 (lambda (_e5882858916_
                          _hd5882958920_
                          _tl5883058923_
                          _e5883158926_
                          _hd5883258930_
                          _tl5883358933_
                          _e5883458936_
                          _hd5883558940_
                          _tl5883658943_)
                   (let ((_L58946_ _hd5883558940_) (_L58948_ _hd5883258930_))
                     (if (or (gx#identifier? _L58946_)
                             (gx#stx-fixnum? _L58946_))
                         (___kont6114461145_ _L58946_ _L58948_)
                         (___kont6114661147_
                          _hd5883558940_
                          _hd5883258930_))))))
            (if (gx#stx-pair? ___stx6114161142_)
                (let ((_e5882858916_ (gx#syntax-e ___stx6114161142_)))
                  (let ((_tl5883058923_
                         (let () (declare (not safe)) (##cdr _e5882858916_)))
                        (_hd5882958920_
                         (let () (declare (not safe)) (##car _e5882858916_))))
                    (if (gx#stx-pair? _tl5883058923_)
                        (let ((_e5883158926_ (gx#syntax-e _tl5883058923_)))
                          (let ((_tl5883358933_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5883158926_)))
                                (_hd5883258930_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5883158926_))))
                            (if (gx#stx-pair? _tl5883358933_)
                                (let ((_e5883458936_
                                       (gx#syntax-e _tl5883358933_)))
                                  (let ((_tl5883658943_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5883458936_)))
                                        (_hd5883558940_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5883458936_))))
                                    (if (gx#stx-null? _tl5883658943_)
                                        (___match6116861169_
                                         _e5882858916_
                                         _hd5882958920_
                                         _tl5883058923_
                                         _e5883158926_
                                         _hd5883258930_
                                         _tl5883358933_
                                         _e5883458936_
                                         _hd5883558940_
                                         _tl5883658943_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5882458853_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5882458853_)))))
                        (let () (declare (not safe)) (_g5882458853_)))))
                (let () (declare (not safe)) (_g5882458853_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx58971_)
      (let* ((___stx6119161192_ _$stx58971_)
             (_g5897659005_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6119161192_))))
        (let ((___kont6119461195_
               (lambda (_L59097_ _L59099_)
                 (let ((__tmp61462 (gx#datum->syntax '#f '##fx=))
                       (__tmp61456
                        (let ((__tmp61458
                               (let ((__tmp61461
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp61459
                                      (let ((__tmp61460
                                             (let ()
                                               (declare (not safe))
                                               (cons _L59097_ '()))))
                                        (declare (not safe))
                                        (cons _L59099_ __tmp61460))))
                                 (declare (not safe))
                                 (cons __tmp61461 __tmp61459)))
                              (__tmp61457
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp61458 __tmp61457))))
                   (declare (not safe))
                   (cons __tmp61462 __tmp61456))))
              (___kont6119661197_
               (lambda (_L59042_ _L59044_)
                 (let ((__tmp61475 (gx#datum->syntax '#f 'let))
                       (__tmp61463
                        (let ((__tmp61473
                               (let ((__tmp61474
                                      (let ()
                                        (declare (not safe))
                                        (cons _L59042_ '()))))
                                 (declare (not safe))
                                 (cons _L59042_ __tmp61474)))
                              (__tmp61464
                               (let ((__tmp61465
                                      (let ((__tmp61472
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp61466
                                             (let ((__tmp61468
                                                    (let ((__tmp61471
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp61469
                                                           (let ((__tmp61470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L59042_ '()))))
                     (declare (not safe))
                     (cons _L59044_ __tmp61470))))
              (declare (not safe))
              (cons __tmp61471 __tmp61469)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp61467
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp61468 __tmp61467))))
                                        (declare (not safe))
                                        (cons __tmp61472 __tmp61466))))
                                 (declare (not safe))
                                 (cons __tmp61465 '()))))
                          (declare (not safe))
                          (cons __tmp61473 __tmp61464))))
                   (declare (not safe))
                   (cons __tmp61475 __tmp61463)))))
          (let ((___match6121861219_
                 (lambda (_e5898059067_
                          _hd5898159071_
                          _tl5898259074_
                          _e5898359077_
                          _hd5898459081_
                          _tl5898559084_
                          _e5898659087_
                          _hd5898759091_
                          _tl5898859094_)
                   (let ((_L59097_ _hd5898759091_) (_L59099_ _hd5898459081_))
                     (if (or (gx#identifier? _L59097_)
                             (gx#stx-fixnum? _L59097_))
                         (___kont6119461195_ _L59097_ _L59099_)
                         (___kont6119661197_
                          _hd5898759091_
                          _hd5898459081_))))))
            (if (gx#stx-pair? ___stx6119161192_)
                (let ((_e5898059067_ (gx#syntax-e ___stx6119161192_)))
                  (let ((_tl5898259074_
                         (let () (declare (not safe)) (##cdr _e5898059067_)))
                        (_hd5898159071_
                         (let () (declare (not safe)) (##car _e5898059067_))))
                    (if (gx#stx-pair? _tl5898259074_)
                        (let ((_e5898359077_ (gx#syntax-e _tl5898259074_)))
                          (let ((_tl5898559084_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5898359077_)))
                                (_hd5898459081_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5898359077_))))
                            (if (gx#stx-pair? _tl5898559084_)
                                (let ((_e5898659087_
                                       (gx#syntax-e _tl5898559084_)))
                                  (let ((_tl5898859094_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5898659087_)))
                                        (_hd5898759091_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5898659087_))))
                                    (if (gx#stx-null? _tl5898859094_)
                                        (___match6121861219_
                                         _e5898059067_
                                         _hd5898159071_
                                         _tl5898259074_
                                         _e5898359077_
                                         _hd5898459081_
                                         _tl5898559084_
                                         _e5898659087_
                                         _hd5898759091_
                                         _tl5898859094_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5897659005_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5897659005_)))))
                        (let () (declare (not safe)) (_g5897659005_)))))
                (let () (declare (not safe)) (_g5897659005_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx59122_)
      (let* ((_g5912559146_
              (lambda (_g5912659142_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5912659142_)))
             (_g5912459374_
              (lambda (_g5912659150_)
                (if (gx#stx-pair? _g5912659150_)
                    (let ((_e5912959153_ (gx#syntax-e _g5912659150_)))
                      (let ((_hd5913059157_
                             (let ()
                               (declare (not safe))
                               (##car _e5912959153_)))
                            (_tl5913159160_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5912959153_))))
                        (if (gx#stx-pair? _tl5913159160_)
                            (let ((_e5913259163_ (gx#syntax-e _tl5913159160_)))
                              (let ((_hd5913359167_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5913259163_)))
                                    (_tl5913459170_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5913259163_))))
                                (if (gx#stx-pair? _hd5913359167_)
                                    (let ((_e5913559173_
                                           (gx#syntax-e _hd5913359167_)))
                                      (let ((_hd5913659177_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5913559173_)))
                                            (_tl5913759180_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5913559173_))))
                                        (if (gx#stx-pair? _tl5913759180_)
                                            (let ((_e5913859183_
                                                   (gx#syntax-e
                                                    _tl5913759180_)))
                                              (let ((_hd5913959187_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5913859183_)))
                                                    (_tl5914059190_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5913859183_))))
                                                (if (gx#stx-null?
                                                     _tl5914059190_)
                                                    (if (gx#stx-null?
                                                         _tl5913459170_)
                                                        ((lambda (_L59193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L59195_)
                   (let* ((_g5921359221_
                           (lambda (_g5921459217_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g5921459217_)))
                          (_g5921259370_
                           (lambda (_g5921459225_)
                             ((lambda (_L59228_)
                                (let ()
                                  (let* ((_g5924059248_
                                          (lambda (_g5924159244_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g5924159244_)))
                                         (_g5923959366_
                                          (lambda (_g5924159252_)
                                            ((lambda (_L59255_)
                                               (let ()
                                                 (let* ((_g5926859276_
                                                         (lambda (_g5926959272_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g5926959272_)))
                                                        (_g5926759362_
                                                         (lambda (_g5926959280_)
                                                           ((lambda (_L59283_)
                                                              (let ()
                                                                (let* ((_g5929659304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g5929759300_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g5929759300_)))
                               (_g5929559358_
                                (lambda (_g5929759308_)
                                  ((lambda (_L59311_)
                                     (let ()
                                       (let* ((_g5932459332_
                                               (lambda (_g5932559328_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g5932559328_)))
                                              (_g5932359354_
                                               (lambda (_g5932559336_)
                                                 ((lambda (_L59339_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp61608
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp61476
                                                               (let ((__tmp61578
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp61607 (gx#datum->syntax '#f 'def))
                                    (__tmp61579
                                     (let ((__tmp61580
                                            (let ((__tmp61581
                                                   (let ((__tmp61606
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp61582
                                                          (let ((__tmp61601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61605
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp61602
                                (let ((__tmp61603
                                       (let ((__tmp61604
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L59195_ __tmp61604))))
                                  (declare (not safe))
                                  (cons _L59228_ __tmp61603))))
                           (declare (not safe))
                           (cons __tmp61605 __tmp61602)))
                        (__tmp61583
                         (let ((__tmp61584
                                (let ((__tmp61600
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp61585
                                       (let ((__tmp61598
                                              (let ((__tmp61599
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp61599 '())))
                                             (__tmp61586
                                              (let ((__tmp61587
                                                     (let ((__tmp61597
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp61588
                                                            (let ((__tmp61596
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp61589
                           (let ((__tmp61590
                                  (let ((__tmp61595
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp61591
                                         (let ((__tmp61592
                                                (let ((__tmp61594
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp61593
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L59195_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp61594
                                                        __tmp61593))))
                                           (declare (not safe))
                                           (cons __tmp61592 '()))))
                                    (declare (not safe))
                                    (cons __tmp61595 __tmp61591))))
                             (declare (not safe))
                             (cons _L59193_ __tmp61590))))
                      (declare (not safe))
                      (cons __tmp61596 __tmp61589))))
               (declare (not safe))
               (cons __tmp61597 __tmp61588))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61587 '()))))
                                         (declare (not safe))
                                         (cons __tmp61598 __tmp61586))))
                                  (declare (not safe))
                                  (cons __tmp61600 __tmp61585))))
                           (declare (not safe))
                           (cons __tmp61584 '()))))
                    (declare (not safe))
                    (cons __tmp61601 __tmp61583))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61606
                                                           __tmp61582))))
                                              (declare (not safe))
                                              (cons __tmp61581 '()))))
                                       (declare (not safe))
                                       (cons _L59255_ __tmp61580))))
                                (declare (not safe))
                                (cons __tmp61607 __tmp61579)))
                             (__tmp61477
                              (let ((__tmp61548
                                     (let ((__tmp61577
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp61549
                                            (let ((__tmp61550
                                                   (let ((__tmp61551
                                                          (let ((__tmp61576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp61552
                         (let ((__tmp61571
                                (let ((__tmp61575
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp61572
                                       (let ((__tmp61573
                                              (let ((__tmp61574
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L59195_ __tmp61574))))
                                         (declare (not safe))
                                         (cons _L59228_ __tmp61573))))
                                  (declare (not safe))
                                  (cons __tmp61575 __tmp61572)))
                               (__tmp61553
                                (let ((__tmp61554
                                       (let ((__tmp61570
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp61555
                                              (let ((__tmp61568
                                                     (let ((__tmp61569
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp61569 '())))
                                                    (__tmp61556
                                                     (let ((__tmp61557
                                                            (let ((__tmp61567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp61558
                           (let ((__tmp61566 (gx#datum->syntax '#f 'klass))
                                 (__tmp61559
                                  (let ((__tmp61560
                                         (let ((__tmp61565
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp61561
                                                (let ((__tmp61562
                                                       (let ((__tmp61564
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp61563
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L59195_ '()))))
                 (declare (not safe))
                 (cons __tmp61564 __tmp61563))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61562 '()))))
                                           (declare (not safe))
                                           (cons __tmp61565 __tmp61561))))
                                    (declare (not safe))
                                    (cons _L59193_ __tmp61560))))
                             (declare (not safe))
                             (cons __tmp61566 __tmp61559))))
                      (declare (not safe))
                      (cons __tmp61567 __tmp61558))))
               (declare (not safe))
               (cons __tmp61557 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61568 __tmp61556))))
                                         (declare (not safe))
                                         (cons __tmp61570 __tmp61555))))
                                  (declare (not safe))
                                  (cons __tmp61554 '()))))
                           (declare (not safe))
                           (cons __tmp61571 __tmp61553))))
                    (declare (not safe))
                    (cons __tmp61576 __tmp61552))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61551 '()))))
                                              (declare (not safe))
                                              (cons _L59283_ __tmp61550))))
                                       (declare (not safe))
                                       (cons __tmp61577 __tmp61549)))
                                    (__tmp61478
                                     (let ((__tmp61514
                                            (let ((__tmp61547
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp61515
                                                   (let ((__tmp61516
                                                          (let ((__tmp61517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61546
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp61518
                                (let ((__tmp61541
                                       (let ((__tmp61545
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp61542
                                              (let ((__tmp61543
                                                     (let ((__tmp61544
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L59195_
                                                             __tmp61544))))
                                                (declare (not safe))
                                                (cons _L59228_ __tmp61543))))
                                         (declare (not safe))
                                         (cons __tmp61545 __tmp61542)))
                                      (__tmp61519
                                       (let ((__tmp61520
                                              (let ((__tmp61540
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp61521
                                                     (let ((__tmp61536
                                                            (let ((__tmp61539
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp61537
                           (let ((__tmp61538 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp61538 '()))))
                      (declare (not safe))
                      (cons __tmp61539 __tmp61537)))
                   (__tmp61522
                    (let ((__tmp61523
                           (let ((__tmp61535
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp61524
                                  (let ((__tmp61534
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp61525
                                         (let ((__tmp61533
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp61526
                                                (let ((__tmp61527
                                                       (let ((__tmp61532
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp61528
                                                              (let ((__tmp61529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp61531 (gx#datum->syntax '#f 'quote))
                                   (__tmp61530
                                    (let ()
                                      (declare (not safe))
                                      (cons _L59195_ '()))))
                               (declare (not safe))
                               (cons __tmp61531 __tmp61530))))
                        (declare (not safe))
                        (cons __tmp61529 '()))))
                 (declare (not safe))
                 (cons __tmp61532 __tmp61528))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L59193_ __tmp61527))))
                                           (declare (not safe))
                                           (cons __tmp61533 __tmp61526))))
                                    (declare (not safe))
                                    (cons __tmp61534 __tmp61525))))
                             (declare (not safe))
                             (cons __tmp61535 __tmp61524))))
                      (declare (not safe))
                      (cons __tmp61523 '()))))
               (declare (not safe))
               (cons __tmp61536 __tmp61522))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61540 __tmp61521))))
                                         (declare (not safe))
                                         (cons __tmp61520 '()))))
                                  (declare (not safe))
                                  (cons __tmp61541 __tmp61519))))
                           (declare (not safe))
                           (cons __tmp61546 __tmp61518))))
                    (declare (not safe))
                    (cons __tmp61517 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L59311_
                                                           __tmp61516))))
                                              (declare (not safe))
                                              (cons __tmp61547 __tmp61515)))
                                           (__tmp61479
                                            (let ((__tmp61480
                                                   (let ((__tmp61513
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp61481
                                                          (let ((__tmp61482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61483
                                (let ((__tmp61512
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp61484
                                       (let ((__tmp61507
                                              (let ((__tmp61511
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp61508
                                                     (let ((__tmp61509
                                                            (let ((__tmp61510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L59195_ __tmp61510))))
               (declare (not safe))
               (cons _L59228_ __tmp61509))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61511 __tmp61508)))
                                             (__tmp61485
                                              (let ((__tmp61486
                                                     (let ((__tmp61506
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp61487
                                                            (let ((__tmp61502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp61505 (gx#datum->syntax '#f 'klass))
                                 (__tmp61503
                                  (let ((__tmp61504
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp61504 '()))))
                             (declare (not safe))
                             (cons __tmp61505 __tmp61503)))
                          (__tmp61488
                           (let ((__tmp61489
                                  (let ((__tmp61501
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp61490
                                         (let ((__tmp61500
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp61491
                                                (let ((__tmp61499
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp61492
                                                       (let ((__tmp61493
                                                              (let ((__tmp61498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp61494
                             (let ((__tmp61495
                                    (let ((__tmp61497
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp61496
                                           (let ()
                                             (declare (not safe))
                                             (cons _L59195_ '()))))
                                      (declare (not safe))
                                      (cons __tmp61497 __tmp61496))))
                               (declare (not safe))
                               (cons __tmp61495 '()))))
                        (declare (not safe))
                        (cons __tmp61498 __tmp61494))))
                 (declare (not safe))
                 (cons _L59193_ __tmp61493))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61499
                                                        __tmp61492))))
                                           (declare (not safe))
                                           (cons __tmp61500 __tmp61491))))
                                    (declare (not safe))
                                    (cons __tmp61501 __tmp61490))))
                             (declare (not safe))
                             (cons __tmp61489 '()))))
                      (declare (not safe))
                      (cons __tmp61502 __tmp61488))))
               (declare (not safe))
               (cons __tmp61506 __tmp61487))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61486 '()))))
                                         (declare (not safe))
                                         (cons __tmp61507 __tmp61485))))
                                  (declare (not safe))
                                  (cons __tmp61512 __tmp61484))))
                           (declare (not safe))
                           (cons __tmp61483 '()))))
                    (declare (not safe))
                    (cons _L59339_ __tmp61482))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61513
                                                           __tmp61481))))
                                              (declare (not safe))
                                              (cons __tmp61480 '()))))
                                       (declare (not safe))
                                       (cons __tmp61514 __tmp61479))))
                                (declare (not safe))
                                (cons __tmp61548 __tmp61478))))
                         (declare (not safe))
                         (cons __tmp61578 __tmp61477))))
                  (declare (not safe))
                  (cons __tmp61608 __tmp61476)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g5932559336_))))
                                         (_g5932359354_
                                          (gx#stx-identifier
                                           _L59195_
                                           '"&"
                                           _L59311_)))))
                                   _g5929759308_))))
                          (_g5929559358_
                           (gx#stx-identifier _L59195_ _L59255_ '"-set!")))))
                    _g5926959280_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g5926759362_
                                                    (gx#stx-identifier
                                                     _L59195_
                                                     '"&"
                                                     _L59255_)))))
                                             _g5924159252_))))
                                    (_g5923959366_
                                     (gx#stx-identifier
                                      _L59195_
                                      '"class-type-"
                                      _L59195_)))))
                              _g5921459225_))))
                     (_g5921259370_ (gx#core-quote-syntax 'class::t))))
                 _hd5913959187_
                 _hd5913659177_)
                (_g5912559146_ _g5912659150_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5912559146_
                                                     _g5912659150_))))
                                            (_g5912559146_ _g5912659150_))))
                                    (_g5912559146_ _g5912659150_))))
                            (_g5912559146_ _g5912659150_))))
                    (_g5912559146_ _g5912659150_)))))
        (_g5912459374_ _stx59122_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx59378_)
      (let* ((_g5938259411_
              (lambda (_g5938359407_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5938359407_)))
             (_g5938159511_
              (lambda (_g5938359415_)
                (if (gx#stx-pair? _g5938359415_)
                    (let ((_e5938659418_ (gx#syntax-e _g5938359415_)))
                      (let ((_hd5938759422_
                             (let ()
                               (declare (not safe))
                               (##car _e5938659418_)))
                            (_tl5938859425_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5938659418_))))
                        (if (gx#stx-pair/null? _tl5938859425_)
                            (let ((_g61609_
                                   (gx#syntax-split-splice _tl5938859425_ '0)))
                              (begin
                                (let ((_g61610_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g61609_)
                                             (##vector-length _g61609_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g61610_ 2)))
                                      (error "Context expects 2 values"
                                             _g61610_)))
                                (let ((_target5938959428_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61609_ 0)))
                                      (_tl5939159431_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61609_ 1))))
                                  (if (gx#stx-null? _tl5939159431_)
                                      (letrec ((_loop5939259434_
                                                (lambda (_hd5939059438_
                                                         _field5939659441_
                                                         _slot5939759443_)
                                                  (if (gx#stx-pair?
                                                       _hd5939059438_)
                                                      (let ((_e5939359446_
                                                             (gx#syntax-e
                                                              _hd5939059438_)))
                                                        (let ((_lp-hd5939459450_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e5939359446_)))
                      (_lp-tl5939559453_
                       (let () (declare (not safe)) (##cdr _e5939359446_))))
                  (if (gx#stx-pair? _lp-hd5939459450_)
                      (let ((_e5940059456_ (gx#syntax-e _lp-hd5939459450_)))
                        (let ((_hd5940159460_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5940059456_)))
                              (_tl5940259463_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5940059456_))))
                          (if (gx#stx-pair? _tl5940259463_)
                              (let ((_e5940359466_
                                     (gx#syntax-e _tl5940259463_)))
                                (let ((_hd5940459470_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5940359466_)))
                                      (_tl5940559473_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5940359466_))))
                                  (if (gx#stx-null? _tl5940559473_)
                                      (_loop5939259434_
                                       _lp-tl5939559453_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd5940459470_
                                               _field5939659441_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd5940159460_
                                               _slot5939759443_)))
                                      (_g5938259411_ _g5938359415_))))
                              (_g5938259411_ _g5938359415_))))
                      (_g5938259411_ _g5938359415_))))
              (let ((_field5939859476_ (reverse _field5939659441_))
                    (_slot5939959479_ (reverse _slot5939759443_)))
                ((lambda (_L59482_ _L59484_)
                   (let ((__tmp61618 (gx#datum->syntax '#f 'begin))
                         (__tmp61611
                          (begin
                            (gx#syntax-check-splice-targets _L59482_ _L59484_)
                            (let ((__tmp61612
                                   (lambda (_g5949959503_
                                            _g5950059506_
                                            _g5950159508_)
                                     (let ((__tmp61613
                                            (let ((__tmp61617
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp61614
                                                   (let ((__tmp61615
                                                          (let ((__tmp61616
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g5949959503_ '()))))
                    (declare (not safe))
                    (cons _g5950059506_ __tmp61616))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61615 '()))))
                                              (declare (not safe))
                                              (cons __tmp61617 __tmp61614))))
                                       (declare (not safe))
                                       (cons __tmp61613 _g5950159508_)))))
                              (declare (not safe))
                              (foldr2 __tmp61612 '() _L59482_ _L59484_)))))
                     (declare (not safe))
                     (cons __tmp61618 __tmp61611)))
                 _field5939859476_
                 _slot5939959479_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5939259434_
                                         _target5938959428_
                                         '()
                                         '()))
                                      (_g5938259411_ _g5938359415_)))))
                            (_g5938259411_ _g5938359415_))))
                    (_g5938259411_ _g5938359415_)))))
        (_g5938159511_ _$stx59378_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx59516_)
      (let* ((_g5952059546_
              (lambda (_g5952159542_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5952159542_)))
             (_g5951959629_
              (lambda (_g5952159550_)
                (if (gx#stx-pair? _g5952159550_)
                    (let ((_e5952659553_ (gx#syntax-e _g5952159550_)))
                      (let ((_hd5952759557_
                             (let ()
                               (declare (not safe))
                               (##car _e5952659553_)))
                            (_tl5952859560_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5952659553_))))
                        (if (gx#stx-pair? _tl5952859560_)
                            (let ((_e5952959563_ (gx#syntax-e _tl5952859560_)))
                              (let ((_hd5953059567_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5952959563_)))
                                    (_tl5953159570_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5952959563_))))
                                (if (gx#stx-pair? _tl5953159570_)
                                    (let ((_e5953259573_
                                           (gx#syntax-e _tl5953159570_)))
                                      (let ((_hd5953359577_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5953259573_)))
                                            (_tl5953459580_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5953259573_))))
                                        (if (gx#stx-pair? _tl5953459580_)
                                            (let ((_e5953559583_
                                                   (gx#syntax-e
                                                    _tl5953459580_)))
                                              (let ((_hd5953659587_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5953559583_)))
                                                    (_tl5953759590_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5953559583_))))
                                                (if (gx#stx-pair?
                                                     _tl5953759590_)
                                                    (let ((_e5953859593_
                                                           (gx#syntax-e
                                                            _tl5953759590_)))
                                                      (let ((_hd5953959597_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5953859593_)))
                    (_tl5954059600_
                     (let () (declare (not safe)) (##cdr _e5953859593_))))
                (if (gx#stx-null? _tl5954059600_)
                    ((lambda (_L59603_ _L59605_ _L59606_ _L59607_)
                       (let ((__tmp61665 (gx#datum->syntax '#f 'if))
                             (__tmp61619
                              (let ((__tmp61662
                                     (let ((__tmp61664
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp61663
                                            (let ()
                                              (declare (not safe))
                                              (cons _L59607_ '()))))
                                       (declare (not safe))
                                       (cons __tmp61664 __tmp61663)))
                                    (__tmp61620
                                     (let ((__tmp61625
                                            (let ((__tmp61661
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp61626
                                                   (let ((__tmp61655
                                                          (let ((__tmp61660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp61656
                         (let ((__tmp61657
                                (let ((__tmp61659
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp61658
                                       (let ()
                                         (declare (not safe))
                                         (cons _L59607_ '()))))
                                  (declare (not safe))
                                  (cons __tmp61659 __tmp61658))))
                           (declare (not safe))
                           (cons __tmp61657 '()))))
                    (declare (not safe))
                    (cons __tmp61660 __tmp61656)))
                 (__tmp61627
                  (let ((__tmp61628
                         (let ((__tmp61654 (gx#datum->syntax '#f 'cond))
                               (__tmp61629
                                (let ((__tmp61637
                                       (let ((__tmp61641
                                              (let ((__tmp61653
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp61642
                                                     (let ((__tmp61649
                                                            (let ((__tmp61652
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp61650
                           (let ((__tmp61651 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp61651 '()))))
                      (declare (not safe))
                      (cons __tmp61652 __tmp61650)))
                   (__tmp61643
                    (let ((__tmp61644
                           (let ((__tmp61648
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp61645
                                  (let ((__tmp61647
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp61646
                                         (let ()
                                           (declare (not safe))
                                           (cons _L59606_ '()))))
                                    (declare (not safe))
                                    (cons __tmp61647 __tmp61646))))
                             (declare (not safe))
                             (cons __tmp61648 __tmp61645))))
                      (declare (not safe))
                      (cons __tmp61644 '()))))
               (declare (not safe))
               (cons __tmp61649 __tmp61643))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61653 __tmp61642)))
                                             (__tmp61638
                                              (let ((__tmp61640
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp61639
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L59605_ '()))))
                                                (declare (not safe))
                                                (cons __tmp61640 __tmp61639))))
                                         (declare (not safe))
                                         (cons __tmp61641 __tmp61638)))
                                      (__tmp61630
                                       (let ((__tmp61631
                                              (let ((__tmp61636
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp61632
                                                     (let ((__tmp61633
                                                            (let ((__tmp61634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp61635
                                  (let ()
                                    (declare (not safe))
                                    (cons _L59606_ '()))))
                             (declare (not safe))
                             (cons _L59607_ __tmp61635))))
                      (declare (not safe))
                      (cons _L59603_ __tmp61634))))
               (declare (not safe))
               (cons __tmp61633 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61636 __tmp61632))))
                                         (declare (not safe))
                                         (cons __tmp61631 '()))))
                                  (declare (not safe))
                                  (cons __tmp61637 __tmp61630))))
                           (declare (not safe))
                           (cons __tmp61654 __tmp61629))))
                    (declare (not safe))
                    (cons __tmp61628 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61655
                                                           __tmp61627))))
                                              (declare (not safe))
                                              (cons __tmp61661 __tmp61626)))
                                           (__tmp61621
                                            (let ((__tmp61622
                                                   (let ((__tmp61623
                                                          (let ((__tmp61624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L59606_ '()))))
                    (declare (not safe))
                    (cons _L59607_ __tmp61624))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L59603_
                                                           __tmp61623))))
                                              (declare (not safe))
                                              (cons __tmp61622 '()))))
                                       (declare (not safe))
                                       (cons __tmp61625 __tmp61621))))
                                (declare (not safe))
                                (cons __tmp61662 __tmp61620))))
                         (declare (not safe))
                         (cons __tmp61665 __tmp61619)))
                     _hd5953959597_
                     _hd5953659587_
                     _hd5953359577_
                     _hd5953059567_)
                    (_g5952059546_ _g5952159550_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5952059546_
                                                     _g5952159550_))))
                                            (_g5952059546_ _g5952159550_))))
                                    (_g5952059546_ _g5952159550_))))
                            (_g5952059546_ _g5952159550_))))
                    (_g5952059546_ _g5952159550_)))))
        (_g5951959629_ _$stx59516_)))))
