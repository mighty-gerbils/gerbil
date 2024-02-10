(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g63682_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g63683_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#defassget|
      (lambda (_$stx55135_)
        (let* ((_g5513955157_
                (lambda (_g5514055153_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5514055153_)))
               (_g5513855213_
                (lambda (_g5514055161_)
                  (if (gx#stx-pair? _g5514055161_)
                      (let ((_e5514555164_ (gx#syntax-e _g5514055161_)))
                        (let ((_hd5514455168_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5514555164_)))
                              (_tl5514355171_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5514555164_))))
                          (if (gx#stx-pair? _tl5514355171_)
                              (let ((_e5514855174_
                                     (gx#syntax-e _tl5514355171_)))
                                (let ((_hd5514755178_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5514855174_)))
                                      (_tl5514655181_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5514855174_))))
                                  (if (gx#stx-pair? _tl5514655181_)
                                      (let ((_e5515155184_
                                             (gx#syntax-e _tl5514655181_)))
                                        (let ((_hd5515055188_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5515155184_)))
                                              (_tl5514955191_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5515155184_))))
                                          (if (gx#stx-null? _tl5514955191_)
                                              ((lambda (_L55194_ _L55196_)
                                                 (let ((__tmp63443
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp63395
                                                        (let ((__tmp63434
                                                               (let ((__tmp63435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp63442 (gx#datum->syntax '#f 'key))
                                    (__tmp63436
                                     (let ((__tmp63441
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp63437
                                            (let ((__tmp63438
                                                   (let ((__tmp63440
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp63439
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp63440
                                                           __tmp63439))))
                                              (declare (not safe))
                                              (cons __tmp63438 '()))))
                                       (declare (not safe))
                                       (cons __tmp63441 __tmp63437))))
                                (declare (not safe))
                                (cons __tmp63442 __tmp63436))))
                         (declare (not safe))
                         (cons _L55196_ __tmp63435)))
                      (__tmp63396
                       (let ((__tmp63397
                              (let ((__tmp63433 (gx#datum->syntax '#f 'cond))
                                    (__tmp63398
                                     (let ((__tmp63415
                                            (let ((__tmp63420
                                                   (let ((__tmp63432
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp63421
                                                          (let ((__tmp63428
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63431 (gx#datum->syntax '#f 'pair?))
                               (__tmp63429
                                (let ((__tmp63430 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp63430 '()))))
                           (declare (not safe))
                           (cons __tmp63431 __tmp63429)))
                        (__tmp63422
                         (let ((__tmp63423
                                (let ((__tmp63424
                                       (let ((__tmp63427
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp63425
                                              (let ((__tmp63426
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp63426 '()))))
                                         (declare (not safe))
                                         (cons __tmp63427 __tmp63425))))
                                  (declare (not safe))
                                  (cons _L55194_ __tmp63424))))
                           (declare (not safe))
                           (cons __tmp63423 '()))))
                    (declare (not safe))
                    (cons __tmp63428 __tmp63422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63432
                                                           __tmp63421)))
                                                  (__tmp63416
                                                   (let ((__tmp63419
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp63417
                                                          (let ((__tmp63418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp63418 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63419
                                                           __tmp63417))))
                                              (declare (not safe))
                                              (cons __tmp63420 __tmp63416)))
                                           (__tmp63399
                                            (let ((__tmp63405
                                                   (let ((__tmp63411
                                                          (let ((__tmp63414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp63412
                         (let ((__tmp63413 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp63413 '()))))
                    (declare (not safe))
                    (cons __tmp63414 __tmp63412)))
                 (__tmp63406
                  (let ((__tmp63407
                         (let ((__tmp63410 (gx#datum->syntax '#f 'default))
                               (__tmp63408
                                (let ((__tmp63409 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp63409 '()))))
                           (declare (not safe))
                           (cons __tmp63410 __tmp63408))))
                    (declare (not safe))
                    (cons __tmp63407 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63411
                                                           __tmp63406)))
                                                  (__tmp63400
                                                   (let ((__tmp63401
                                                          (let ((__tmp63404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp63402
                         (let ((__tmp63403 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp63403 '()))))
                    (declare (not safe))
                    (cons __tmp63404 __tmp63402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63401 '()))))
                                              (declare (not safe))
                                              (cons __tmp63405 __tmp63400))))
                                       (declare (not safe))
                                       (cons __tmp63415 __tmp63399))))
                                (declare (not safe))
                                (cons __tmp63433 __tmp63398))))
                         (declare (not safe))
                         (cons __tmp63397 '()))))
                  (declare (not safe))
                  (cons __tmp63434 __tmp63396))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63443
                                                         __tmp63395)))
                                               _hd5515055188_
                                               _hd5514755178_)
                                              (_g5513955157_ _g5514055161_))))
                                      (_g5513955157_ _g5514055161_))))
                              (_g5513955157_ _g5514055161_))))
                      (_g5513955157_ _g5514055161_)))))
          (_g5513855213_ _$stx55135_))))
    (define |[:0:]#defpget|
      (lambda (_$stx55217_)
        (let* ((_g5522155239_
                (lambda (_g5522255235_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5522255235_)))
               (_g5522055294_
                (lambda (_g5522255243_)
                  (if (gx#stx-pair? _g5522255243_)
                      (let ((_e5522755246_ (gx#syntax-e _g5522255243_)))
                        (let ((_hd5522655250_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5522755246_)))
                              (_tl5522555253_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5522755246_))))
                          (if (gx#stx-pair? _tl5522555253_)
                              (let ((_e5523055256_
                                     (gx#syntax-e _tl5522555253_)))
                                (let ((_hd5522955260_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5523055256_)))
                                      (_tl5522855263_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5523055256_))))
                                  (if (gx#stx-pair? _tl5522855263_)
                                      (let ((_e5523355266_
                                             (gx#syntax-e _tl5522855263_)))
                                        (let ((_hd5523255270_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5523355266_)))
                                              (_tl5523155273_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5523355266_))))
                                          (if (gx#stx-null? _tl5523155273_)
                                              ((lambda (_L55276_ _L55278_)
                                                 (let ((__tmp63513
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp63444
                                                        (let ((__tmp63504
                                                               (let ((__tmp63505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp63512 (gx#datum->syntax '#f 'key))
                                    (__tmp63506
                                     (let ((__tmp63511
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp63507
                                            (let ((__tmp63508
                                                   (let ((__tmp63510
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp63509
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp63510
                                                           __tmp63509))))
                                              (declare (not safe))
                                              (cons __tmp63508 '()))))
                                       (declare (not safe))
                                       (cons __tmp63511 __tmp63507))))
                                (declare (not safe))
                                (cons __tmp63512 __tmp63506))))
                         (declare (not safe))
                         (cons _L55278_ __tmp63505)))
                      (__tmp63445
                       (let ((__tmp63446
                              (let ((__tmp63503 (gx#datum->syntax '#f 'let))
                                    (__tmp63447
                                     (let ((__tmp63502
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp63448
                                            (let ((__tmp63497
                                                   (let ((__tmp63498
                                                          (let ((__tmp63501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp63499
                         (let ((__tmp63500 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp63500 '()))))
                    (declare (not safe))
                    (cons __tmp63501 __tmp63499))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63498 '())))
                                                  (__tmp63449
                                                   (let ((__tmp63450
                                                          (let ((__tmp63496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp63451
                         (let ((__tmp63495 (gx#datum->syntax '#f 'rest))
                               (__tmp63452
                                (let ((__tmp63471
                                       (let ((__tmp63488
                                              (let ((__tmp63494
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp63489
                                                     (let ((__tmp63493
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp63490
                                                            (let ((__tmp63492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp63491 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp63492 __tmp63491))))
               (declare (not safe))
               (cons __tmp63493 __tmp63490))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63494 __tmp63489)))
                                             (__tmp63472
                                              (let ((__tmp63473
                                                     (let ((__tmp63487
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp63474
                                                            (let ((__tmp63482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp63483
                                  (let ((__tmp63486 (gx#datum->syntax '#f 'k))
                                        (__tmp63484
                                         (let ((__tmp63485
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp63485 '()))))
                                    (declare (not safe))
                                    (cons __tmp63486 __tmp63484))))
                             (declare (not safe))
                             (cons _L55276_ __tmp63483)))
                          (__tmp63475
                           (let ((__tmp63481 (gx#datum->syntax '#f 'v))
                                 (__tmp63476
                                  (let ((__tmp63477
                                         (let ((__tmp63480
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp63478
                                                (let ((__tmp63479
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp63479 '()))))
                                           (declare (not safe))
                                           (cons __tmp63480 __tmp63478))))
                                    (declare (not safe))
                                    (cons __tmp63477 '()))))
                             (declare (not safe))
                             (cons __tmp63481 __tmp63476))))
                      (declare (not safe))
                      (cons __tmp63482 __tmp63475))))
               (declare (not safe))
               (cons __tmp63487 __tmp63474))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63473 '()))))
                                         (declare (not safe))
                                         (cons __tmp63488 __tmp63472)))
                                      (__tmp63453
                                       (let ((__tmp63454
                                              (let ((__tmp63470
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp63455
                                                     (let ((__tmp63456
                                                            (let ((__tmp63469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp63457
                           (let ((__tmp63465
                                  (let ((__tmp63468
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp63466
                                         (let ((__tmp63467
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp63467 '()))))
                                    (declare (not safe))
                                    (cons __tmp63468 __tmp63466)))
                                 (__tmp63458
                                  (let ((__tmp63461
                                         (let ((__tmp63464
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp63462
                                                (let ((__tmp63463
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp63463 '()))))
                                           (declare (not safe))
                                           (cons __tmp63464 __tmp63462)))
                                        (__tmp63459
                                         (let ((__tmp63460
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp63460 '()))))
                                    (declare (not safe))
                                    (cons __tmp63461 __tmp63459))))
                             (declare (not safe))
                             (cons __tmp63465 __tmp63458))))
                      (declare (not safe))
                      (cons __tmp63469 __tmp63457))))
               (declare (not safe))
               (cons __tmp63456 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63470 __tmp63455))))
                                         (declare (not safe))
                                         (cons __tmp63454 '()))))
                                  (declare (not safe))
                                  (cons __tmp63471 __tmp63453))))
                           (declare (not safe))
                           (cons __tmp63495 __tmp63452))))
                    (declare (not safe))
                    (cons __tmp63496 __tmp63451))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63450 '()))))
                                              (declare (not safe))
                                              (cons __tmp63497 __tmp63449))))
                                       (declare (not safe))
                                       (cons __tmp63502 __tmp63448))))
                                (declare (not safe))
                                (cons __tmp63503 __tmp63447))))
                         (declare (not safe))
                         (cons __tmp63446 '()))))
                  (declare (not safe))
                  (cons __tmp63504 __tmp63445))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63513
                                                         __tmp63444)))
                                               _hd5523255270_
                                               _hd5522955260_)
                                              (_g5522155239_ _g5522255243_))))
                                      (_g5522155239_ _g5522255243_))))
                              (_g5522155239_ _g5522255243_))))
                      (_g5522155239_ _g5522255243_)))))
          (_g5522055294_ _$stx55217_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx55298_)
        (let* ((_g5530255320_
                (lambda (_g5530355316_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5530355316_)))
               (_g5530155375_
                (lambda (_g5530355324_)
                  (if (gx#stx-pair? _g5530355324_)
                      (let ((_e5530855327_ (gx#syntax-e _g5530355324_)))
                        (let ((_hd5530755331_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5530855327_)))
                              (_tl5530655334_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5530855327_))))
                          (if (gx#stx-pair? _tl5530655334_)
                              (let ((_e5531155337_
                                     (gx#syntax-e _tl5530655334_)))
                                (let ((_hd5531055341_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5531155337_)))
                                      (_tl5530955344_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5531155337_))))
                                  (if (gx#stx-pair? _tl5530955344_)
                                      (let ((_e5531455347_
                                             (gx#syntax-e _tl5530955344_)))
                                        (let ((_hd5531355351_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5531455347_)))
                                              (_tl5531255354_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5531455347_))))
                                          (if (gx#stx-null? _tl5531255354_)
                                              ((lambda (_L55357_ _L55359_)
                                                 (let ((__tmp63584
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp63514
                                                        (let ((__tmp63579
                                                               (let ((__tmp63580
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp63583 (gx#datum->syntax '#f 'el))
                                    (__tmp63581
                                     (let ((__tmp63582
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp63582 '()))))
                                (declare (not safe))
                                (cons __tmp63583 __tmp63581))))
                         (declare (not safe))
                         (cons _L55359_ __tmp63580)))
                      (__tmp63515
                       (let ((__tmp63516
                              (let ((__tmp63578 (gx#datum->syntax '#f 'let))
                                    (__tmp63517
                                     (let ((__tmp63577
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp63518
                                            (let ((__tmp63566
                                                   (let ((__tmp63573
                                                          (let ((__tmp63576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp63574
                         (let ((__tmp63575 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp63575 '()))))
                    (declare (not safe))
                    (cons __tmp63576 __tmp63574)))
                 (__tmp63567
                  (let ((__tmp63568
                         (let ((__tmp63572 (gx#datum->syntax '#f 'r))
                               (__tmp63569
                                (let ((__tmp63570
                                       (let ((__tmp63571
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp63571 '()))))
                                  (declare (not safe))
                                  (cons __tmp63570 '()))))
                           (declare (not safe))
                           (cons __tmp63572 __tmp63569))))
                    (declare (not safe))
                    (cons __tmp63568 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63573
                                                           __tmp63567)))
                                                  (__tmp63519
                                                   (let ((__tmp63520
                                                          (let ((__tmp63565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp63521
                         (let ((__tmp63564 (gx#datum->syntax '#f 'rest))
                               (__tmp63522
                                (let ((__tmp63528
                                       (let ((__tmp63559
                                              (let ((__tmp63563
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp63560
                                                     (let ((__tmp63562
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp63561
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp63562
                                                             __tmp63561))))
                                                (declare (not safe))
                                                (cons __tmp63563 __tmp63560)))
                                             (__tmp63529
                                              (let ((__tmp63530
                                                     (let ((__tmp63558
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp63531
                                                            (let ((__tmp63553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp63554
                                  (let ((__tmp63557 (gx#datum->syntax '#f 'el))
                                        (__tmp63555
                                         (let ((__tmp63556
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp63556 '()))))
                                    (declare (not safe))
                                    (cons __tmp63557 __tmp63555))))
                             (declare (not safe))
                             (cons _L55357_ __tmp63554)))
                          (__tmp63532
                           (let ((__tmp63545
                                  (let ((__tmp63552
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp63546
                                         (let ((__tmp63551
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp63547
                                                (let ((__tmp63550
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp63548
                                                       (let ((__tmp63549
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp63549
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp63550
                                                        __tmp63548))))
                                           (declare (not safe))
                                           (cons __tmp63551 __tmp63547))))
                                    (declare (not safe))
                                    (cons __tmp63552 __tmp63546)))
                                 (__tmp63533
                                  (let ((__tmp63534
                                         (let ((__tmp63544
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp63535
                                                (let ((__tmp63543
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp63536
                                                       (let ((__tmp63537
                                                              (let ((__tmp63542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp63538
                             (let ((__tmp63541 (gx#datum->syntax '#f 'hd))
                                   (__tmp63539
                                    (let ((__tmp63540
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp63540 '()))))
                               (declare (not safe))
                               (cons __tmp63541 __tmp63539))))
                        (declare (not safe))
                        (cons __tmp63542 __tmp63538))))
                 (declare (not safe))
                 (cons __tmp63537 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp63543
                                                        __tmp63536))))
                                           (declare (not safe))
                                           (cons __tmp63544 __tmp63535))))
                                    (declare (not safe))
                                    (cons __tmp63534 '()))))
                             (declare (not safe))
                             (cons __tmp63545 __tmp63533))))
                      (declare (not safe))
                      (cons __tmp63553 __tmp63532))))
               (declare (not safe))
               (cons __tmp63558 __tmp63531))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63530 '()))))
                                         (declare (not safe))
                                         (cons __tmp63559 __tmp63529)))
                                      (__tmp63523
                                       (let ((__tmp63524
                                              (let ((__tmp63527
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp63525
                                                     (let ((__tmp63526
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp63526 '()))))
                                                (declare (not safe))
                                                (cons __tmp63527 __tmp63525))))
                                         (declare (not safe))
                                         (cons __tmp63524 '()))))
                                  (declare (not safe))
                                  (cons __tmp63528 __tmp63523))))
                           (declare (not safe))
                           (cons __tmp63564 __tmp63522))))
                    (declare (not safe))
                    (cons __tmp63565 __tmp63521))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63520 '()))))
                                              (declare (not safe))
                                              (cons __tmp63566 __tmp63519))))
                                       (declare (not safe))
                                       (cons __tmp63577 __tmp63518))))
                                (declare (not safe))
                                (cons __tmp63578 __tmp63517))))
                         (declare (not safe))
                         (cons __tmp63516 '()))))
                  (declare (not safe))
                  (cons __tmp63579 __tmp63515))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63584
                                                         __tmp63514)))
                                               _hd5531355351_
                                               _hd5531055341_)
                                              (_g5530255320_ _g5530355324_))))
                                      (_g5530255320_ _g5530355324_))))
                              (_g5530255320_ _g5530355324_))))
                      (_g5530255320_ _g5530355324_)))))
          (_g5530155375_ _$stx55298_))))
    (define |[:0:]#DBG|
      (lambda (_$stx55379_)
        (let* ((_g5538355394_
                (lambda (_g5538455390_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5538455390_)))
               (_g5538255423_
                (lambda (_g5538455398_)
                  (if (gx#stx-pair? _g5538455398_)
                      (let ((_e5538855401_ (gx#syntax-e _g5538455398_)))
                        (let ((_hd5538755405_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5538855401_)))
                              (_tl5538655408_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5538855401_))))
                          ((lambda (_L55411_)
                             (let ((__tmp63586 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp63585
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L55411_))))
                               (declare (not safe))
                               (cons __tmp63586 __tmp63585)))
                           _tl5538655408_)))
                      (_g5538355394_ _g5538455398_)))))
          (_g5538255423_ _$stx55379_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx55427_)
        (let* ((___stx6291062911_ _$stx55427_)
               (_g5543855652_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx6291062911_))))
          (let ((___kont6291362914_
                 (lambda (_L56505_ _L56507_ _L56508_ _L56509_ _L56510_)
                   (let ((__tmp63587
                          (let ((__tmp63588
                                 (let ((__tmp63589
                                        (let ((__tmp63593
                                               (let ((__tmp63594
                                                      (lambda (_g5654056543_
                                                               _g5654156546_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5654056543_
                                                                _g5654156546_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp63594
                                                         '()
                                                         _L56508_)))
                                              (__tmp63590
                                               (let ((__tmp63591
                                                      (let ((__tmp63592
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56505_ '()))))
                (declare (not safe))
                (cons _L56507_ __tmp63592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56509_ __tmp63591))))
                                          (declare (not safe))
                                          (cons __tmp63593 __tmp63590))))
                                   (declare (not safe))
                                   (cons '() __tmp63589))))
                            (declare (not safe))
                            (cons '2 __tmp63588))))
                     (declare (not safe))
                     (cons _L56510_ __tmp63587))))
                (___kont6291762918_
                 (lambda (_L56358_ _L56360_ _L56361_ _L56362_)
                   (let ((__tmp63595
                          (let ((__tmp63596
                                 (let ((__tmp63597
                                        (let ((__tmp63601
                                               (let ((__tmp63602
                                                      (lambda (_g5638556388_
                                                               _g5638656391_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5638556388_
                                                                _g5638656391_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp63602
                                                         '()
                                                         _L56360_)))
                                              (__tmp63598
                                               (let ((__tmp63599
                                                      (let ((__tmp63600
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56358_ '()))))
                (declare (not safe))
                (cons _L56358_ __tmp63600))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56361_ __tmp63599))))
                                          (declare (not safe))
                                          (cons __tmp63601 __tmp63598))))
                                   (declare (not safe))
                                   (cons '() __tmp63597))))
                            (declare (not safe))
                            (cons '2 __tmp63596))))
                     (declare (not safe))
                     (cons _L56362_ __tmp63595))))
                (___kont6292162922_
                 (lambda (_L56261_)
                   (let ((__tmp63614 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp63603
                          (let ((__tmp63604
                                 (let ((__tmp63611
                                        (let ((__tmp63613
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp63612
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp63613 __tmp63612)))
                                       (__tmp63605
                                        (let ((__tmp63608
                                               (let ((__tmp63610
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp63609
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp63610 __tmp63609)))
                                              (__tmp63606
                                               (let ((__tmp63607
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp63607))))
                                          (declare (not safe))
                                          (cons __tmp63608 __tmp63606))))
                                   (declare (not safe))
                                   (cons __tmp63611 __tmp63605))))
                            (declare (not safe))
                            (cons _L56261_ __tmp63604))))
                     (declare (not safe))
                     (cons __tmp63614 __tmp63603))))
                (___kont6292362924_
                 (lambda (_L56184_
                          _L56186_
                          _L56187_
                          _L56188_
                          _L56189_
                          _L56190_)
                   (let ((__tmp63615
                          (let ((__tmp63616
                                 (let ((__tmp63618
                                        (let ((__tmp63619
                                               (let ((__tmp63620
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56187_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56188_ __tmp63620))))
                                          (declare (not safe))
                                          (cons __tmp63619 _L56189_)))
                                       (__tmp63617
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56186_ _L56184_))))
                                   (declare (not safe))
                                   (cons __tmp63618 __tmp63617))))
                            (declare (not safe))
                            (cons '2 __tmp63616))))
                     (declare (not safe))
                     (cons _L56190_ __tmp63615))))
                (___kont6292562926_
                 (lambda (_L56065_ _L56067_ _L56068_ _L56069_ _L56070_)
                   (let ((__tmp63621
                          (let ((__tmp63622
                                 (let ((__tmp63624
                                        (let ((__tmp63625
                                               (let ((__tmp63626
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56068_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56068_ __tmp63626))))
                                          (declare (not safe))
                                          (cons __tmp63625 _L56069_)))
                                       (__tmp63623
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56067_ _L56065_))))
                                   (declare (not safe))
                                   (cons __tmp63624 __tmp63623))))
                            (declare (not safe))
                            (cons '2 __tmp63622))))
                     (declare (not safe))
                     (cons _L56070_ __tmp63621))))
                (___kont6292762928_
                 (lambda (_L55982_ _L55984_ _L55985_)
                   (let ((__tmp63627
                          (let ((__tmp63628
                                 (let ((__tmp63629
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55984_ _L55982_))))
                                   (declare (not safe))
                                   (cons '() __tmp63629))))
                            (declare (not safe))
                            (cons '3 __tmp63628))))
                     (declare (not safe))
                     (cons _L55985_ __tmp63627))))
                (___kont6292962930_
                 (lambda (_L55903_ _L55905_ _L55906_ _L55907_ _L55908_)
                   (let ((__tmp63630
                          (let ((__tmp63631
                                 (let ((__tmp63633
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55906_ _L55907_)))
                                       (__tmp63632
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55905_ _L55903_))))
                                   (declare (not safe))
                                   (cons __tmp63633 __tmp63632))))
                            (declare (not safe))
                            (cons '3 __tmp63631))))
                     (declare (not safe))
                     (cons _L55908_ __tmp63630))))
                (___kont6293162932_
                 (lambda (_L55787_
                          _L55789_
                          _L55790_
                          _L55791_
                          _L55792_
                          _L55793_)
                   (let ((__tmp63681 (gx#datum->syntax '#f 'let))
                         (__tmp63634
                          (let ((__tmp63669
                                 (let ((__tmp63678
                                        (let ((__tmp63680
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp63679
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L55790_ '()))))
                                          (declare (not safe))
                                          (cons __tmp63680 __tmp63679)))
                                       (__tmp63670
                                        (let ((__tmp63671
                                               (let ((__tmp63677
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp63672
                                                      (let ((__tmp63673
                                                             (let ((__tmp63676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp63674
                            (let ((__tmp63675
                                   (let ()
                                     (declare (not safe))
                                     (cons _L55787_ '()))))
                              (declare (not safe))
                              (cons '() __tmp63675))))
                       (declare (not safe))
                       (cons __tmp63676 __tmp63674))))
                (declare (not safe))
                (cons __tmp63673 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp63677
                                                       __tmp63672))))
                                          (declare (not safe))
                                          (cons __tmp63671 '()))))
                                   (declare (not safe))
                                   (cons __tmp63678 __tmp63670)))
                                (__tmp63635
                                 (let ((__tmp63636
                                        (let ((__tmp63668
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp63637
                                               (let ((__tmp63667
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp63638
                                                      (let ((__tmp63642
                                                             (let ((__tmp63666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp63643
                            (let ((__tmp63665 (gx#datum->syntax '#f 'tagval))
                                  (__tmp63644
                                   (let ((__tmp63660
                                          (let ((__tmp63664
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp63661
                                                 (let ((__tmp63662
                                                        (let ((__tmp63663
                                                               (lambda (_g5582755830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5582855833_)
                         (let ()
                           (declare (not safe))
                           (cons _g5582755830_ _g5582855833_)))))
                  (declare (not safe))
                  (foldr1 __tmp63663 '() _L55792_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63662 '()))))
                                            (declare (not safe))
                                            (cons __tmp63664 __tmp63661)))
                                         (__tmp63645
                                          (let ((__tmp63652
                                                 (let ((__tmp63659
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp63653
                                                        (let ((__tmp63654
                                                               (lambda (_g5582555836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5582655839_)
                         (let ((__tmp63655
                                (let ((__tmp63658
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp63656
                                       (let ((__tmp63657
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5582555836_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp63657))))
                                  (declare (not safe))
                                  (cons __tmp63658 __tmp63656))))
                           (declare (not safe))
                           (cons __tmp63655 _g5582655839_)))))
                  (declare (not safe))
                  (foldr1 __tmp63654 '() _L55791_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63659
                                                         __tmp63653)))
                                                (__tmp63646
                                                 (let ((__tmp63649
                                                        (let ((__tmp63651
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp63650
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L55789_ '()))))
                  (declare (not safe))
                  (cons __tmp63651 __tmp63650)))
               (__tmp63647
                (let ((__tmp63648 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp63648 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63649
                                                         __tmp63647))))
                                            (declare (not safe))
                                            (cons __tmp63652 __tmp63646))))
                                     (declare (not safe))
                                     (cons __tmp63660 __tmp63645))))
                              (declare (not safe))
                              (cons __tmp63665 __tmp63644))))
                       (declare (not safe))
                       (cons __tmp63666 __tmp63643)))
                    (__tmp63639
                     (let ((__tmp63640
                            (let ((__tmp63641 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp63641 '()))))
                       (declare (not safe))
                       (cons __tmp63640 '()))))
                (declare (not safe))
                (cons __tmp63642 __tmp63639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp63667
                                                       __tmp63638))))
                                          (declare (not safe))
                                          (cons __tmp63668 __tmp63637))))
                                   (declare (not safe))
                                   (cons __tmp63636 '()))))
                            (declare (not safe))
                            (cons __tmp63669 __tmp63635))))
                     (declare (not safe))
                     (cons __tmp63681 __tmp63634)))))
            (let* ((___match6326163262_
                    (lambda (_e5561055659_
                             _hd5560955663_
                             _tl5560855666_
                             _e5561355669_
                             _hd5561255673_
                             _tl5561155676_
                             _e5561455679_
                             _e5561755683_
                             _hd5561655687_
                             _tl5561555690_
                             ___splice6293362934_
                             _target5561855693_
                             _tl5562055696_)
                      (letrec ((_loop5562155699_
                                (lambda (_hd5561955703_
                                         _exprs5562555706_
                                         _names5562655708_)
                                  (if (gx#stx-pair? _hd5561955703_)
                                      (let ((_e5562255711_
                                             (gx#syntax-e _hd5561955703_)))
                                        (let ((_lp-tl5562455718_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5562255711_)))
                                              (_lp-hd5562355715_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5562255711_))))
                                          (if (gx#stx-pair? _lp-hd5562355715_)
                                              (let ((_e5563155721_
                                                     (gx#syntax-e
                                                      _lp-hd5562355715_)))
                                                (let ((_tl5562955728_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5563155721_)))
                                                      (_hd5563055725_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5563155721_))))
                                                  (if (gx#stx-pair?
                                                       _tl5562955728_)
                                                      (let ((_e5563455731_
                                                             (gx#syntax-e
                                                              _tl5562955728_)))
                                                        (let ((_tl5563255738_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5563455731_)))
                      (_hd5563355735_
                       (let () (declare (not safe)) (##car _e5563455731_))))
                  (if (gx#stx-null? _tl5563255738_)
                      (_loop5562155699_
                       _lp-tl5562455718_
                       (let ()
                         (declare (not safe))
                         (cons _hd5563355735_ _exprs5562555706_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5563055725_ _names5562655708_)))
                      (let () (declare (not safe)) (_g5543855652_)))))
              (let () (declare (not safe)) (_g5543855652_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5543855652_)))))
                                      (let ((_names5562855744_
                                             (reverse _names5562655708_))
                                            (_exprs5562755741_
                                             (reverse _exprs5562555706_)))
                                        (if (gx#stx-pair? _tl5561555690_)
                                            (let ((_e5563755747_
                                                   (gx#syntax-e
                                                    _tl5561555690_)))
                                              (let ((_tl5563555754_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5563755747_)))
                                                    (_hd5563655751_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5563755747_))))
                                                (if (gx#stx-null?
                                                     _hd5563655751_)
                                                    (if (gx#stx-pair?
                                                         _tl5563555754_)
                                                        (let ((_e5564055757_
                                                               (gx#syntax-e
                                                                _tl5563555754_)))
                                                          (let ((_tl5563855764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5564055757_)))
                        (_hd5563955761_
                         (let () (declare (not safe)) (##car _e5564055757_))))
                    (if (gx#stx-pair? _tl5563855764_)
                        (let ((_e5564355767_ (gx#syntax-e _tl5563855764_)))
                          (let ((_tl5564155774_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5564355767_)))
                                (_hd5564255771_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5564355767_))))
                            (if (gx#stx-pair? _tl5564155774_)
                                (let ((_e5564655777_
                                       (gx#syntax-e _tl5564155774_)))
                                  (let ((_tl5564455784_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5564655777_)))
                                        (_hd5564555781_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5564655777_))))
                                    (if (gx#stx-null? _tl5564455784_)
                                        (___kont6293162932_
                                         _hd5564555781_
                                         _hd5564255771_
                                         _hd5563955761_
                                         _exprs5562755741_
                                         _names5562855744_
                                         _hd5560955663_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5543855652_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5543855652_)))))
                        (let () (declare (not safe)) (_g5543855652_)))))
                (let () (declare (not safe)) (_g5543855652_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5543855652_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5543855652_))))))))
                        (_loop5562155699_ _target5561855693_ '() '()))))
                   (___match6303963040_
                    (lambda (_e5548256284_
                             _hd5548156288_
                             _tl5548056291_
                             _e5548556294_
                             _hd5548456298_
                             _tl5548356301_
                             _e5548656304_
                             _e5548956308_
                             _hd5548856312_
                             _tl5548756315_
                             ___splice6291962920_
                             _target5549056318_
                             _tl5549256321_
                             _e5550156324_
                             _hd5550056328_
                             _tl5549956331_)
                      (letrec ((_loop5549356334_
                                (lambda (_hd5549156338_ _exprs5549756341_)
                                  (if (gx#stx-pair? _hd5549156338_)
                                      (let ((_e5549456344_
                                             (gx#syntax-e _hd5549156338_)))
                                        (let ((_lp-tl5549656351_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5549456344_)))
                                              (_lp-hd5549556348_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5549456344_))))
                                          (_loop5549356334_
                                           _lp-tl5549656351_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5549556348_
                                                   _exprs5549756341_)))))
                                      (let ((_exprs5549856354_
                                             (reverse _exprs5549756341_)))
                                        (___kont6291762918_
                                         _hd5550056328_
                                         _exprs5549856354_
                                         _hd5548856312_
                                         _hd5548156288_))))))
                        (_loop5549356334_ _target5549056318_ '()))))
                   (___match6299963000_
                    (lambda (_e5544756401_
                             _hd5544656405_
                             _tl5544556408_
                             _e5545056411_
                             _hd5544956415_
                             _tl5544856418_
                             _e5545156421_
                             _e5545456425_
                             _hd5545356429_
                             _tl5545256432_
                             ___splice6291562916_
                             _target5545556435_
                             _tl5545756438_
                             _e5546656441_
                             _hd5546556445_
                             _tl5546456448_
                             _e5546956451_
                             _hd5546856455_
                             _tl5546756458_
                             _e5547256461_
                             _hd5547156465_
                             _tl5547056468_
                             _e5547556471_
                             _hd5547456475_
                             _tl5547356478_)
                      (letrec ((_loop5545856481_
                                (lambda (_hd5545656485_ _exprs5546256488_)
                                  (if (gx#stx-pair? _hd5545656485_)
                                      (let ((_e5545956491_
                                             (gx#syntax-e _hd5545656485_)))
                                        (let ((_lp-tl5546156498_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5545956491_)))
                                              (_lp-hd5546056495_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5545956491_))))
                                          (_loop5545856481_
                                           _lp-tl5546156498_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5546056495_
                                                   _exprs5546256488_)))))
                                      (let ((_exprs5546356501_
                                             (reverse _exprs5546256488_)))
                                        (___kont6291362914_
                                         _hd5547456475_
                                         _hd5547156465_
                                         _exprs5546356501_
                                         _hd5545356429_
                                         _hd5544656405_))))))
                        (_loop5545856481_ _target5545556435_ '())))))
              (if (gx#stx-pair? ___stx6291062911_)
                  (let ((_e5544756401_ (gx#syntax-e ___stx6291062911_)))
                    (let ((_tl5544556408_
                           (let () (declare (not safe)) (##cdr _e5544756401_)))
                          (_hd5544656405_
                           (let ()
                             (declare (not safe))
                             (##car _e5544756401_))))
                      (if (gx#stx-pair? _tl5544556408_)
                          (let ((_e5545056411_ (gx#syntax-e _tl5544556408_)))
                            (let ((_tl5544856418_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5545056411_)))
                                  (_hd5544956415_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5545056411_))))
                              (if (gx#stx-datum? _hd5544956415_)
                                  (let ((_e5545156421_
                                         (gx#stx-e _hd5544956415_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5545156421_ '1))
                                        (if (gx#stx-pair? _tl5544856418_)
                                            (let ((_e5545456425_
                                                   (gx#syntax-e
                                                    _tl5544856418_)))
                                              (let ((_tl5545256432_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5545456425_)))
                                                    (_hd5545356429_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5545456425_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5545256432_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5545256432_)
                                                              '2)
                                                        (let ((___splice6291562916_
                                                               (gx#syntax-split-splice
                                                                _tl5545256432_
                                                                '2)))
                                                          (let ((_tl5545756438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6291562916_ '1)))
                        (_target5545556435_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6291562916_ '0))))
                    (if (gx#stx-pair? _tl5545756438_)
                        (let ((_e5546656441_ (gx#syntax-e _tl5545756438_)))
                          (let ((_tl5546456448_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5546656441_)))
                                (_hd5546556445_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5546656441_))))
                            (if (gx#stx-pair? _hd5546556445_)
                                (let ((_e5546956451_
                                       (gx#syntax-e _hd5546556445_)))
                                  (let ((_tl5546756458_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5546956451_)))
                                        (_hd5546856455_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5546956451_))))
                                    (if (gx#identifier? _hd5546856455_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g63683_|
                                             _hd5546856455_)
                                            (if (gx#stx-pair? _tl5546756458_)
                                                (let ((_e5547256461_
                                                       (gx#syntax-e
                                                        _tl5546756458_)))
                                                  (let ((_tl5547056468_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5547256461_)))
                                                        (_hd5547156465_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5547256461_))))
                                                    (if (gx#stx-null?
                                                         _tl5547056468_)
                                                        (if (gx#stx-pair?
                                                             _tl5546456448_)
                                                            (let ((_e5547556471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5546456448_)))
                      (let ((_tl5547356478_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5547556471_)))
                            (_hd5547456475_
                             (let ()
                               (declare (not safe))
                               (##car _e5547556471_))))
                        (if (gx#stx-null? _tl5547356478_)
                            (___match6299963000_
                             _e5544756401_
                             _hd5544656405_
                             _tl5544556408_
                             _e5545056411_
                             _hd5544956415_
                             _tl5544856418_
                             _e5545156421_
                             _e5545456425_
                             _hd5545356429_
                             _tl5545256432_
                             ___splice6291562916_
                             _target5545556435_
                             _tl5545756438_
                             _e5546656441_
                             _hd5546556445_
                             _tl5546456448_
                             _e5546956451_
                             _hd5546856455_
                             _tl5546756458_
                             _e5547256461_
                             _hd5547156465_
                             _tl5547056468_
                             _e5547556471_
                             _hd5547456475_
                             _tl5547356478_)
                            (if (fx>= (gx#stx-length _tl5545256432_) '1)
                                (let ((___splice6291962920_
                                       (gx#syntax-split-splice
                                        _tl5545256432_
                                        '1)))
                                  (let ((_tl5549256321_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6291962920_
                                            '1)))
                                        (_target5549056318_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6291962920_
                                            '0))))
                                    (if (gx#stx-pair? _tl5549256321_)
                                        (let ((_e5550156324_
                                               (gx#syntax-e _tl5549256321_)))
                                          (let ((_tl5549956331_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5550156324_)))
                                                (_hd5550056328_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5550156324_))))
                                            (if (gx#stx-null? _tl5549956331_)
                                                (___match6303963040_
                                                 _e5544756401_
                                                 _hd5544656405_
                                                 _tl5544556408_
                                                 _e5545056411_
                                                 _hd5544956415_
                                                 _tl5544856418_
                                                 _e5545156421_
                                                 _e5545456425_
                                                 _hd5545356429_
                                                 _tl5545256432_
                                                 ___splice6291962920_
                                                 _target5549056318_
                                                 _tl5549256321_
                                                 _e5550156324_
                                                 _hd5550056328_
                                                 _tl5549956331_)
                                                (if (gx#stx-null?
                                                     _tl5545256432_)
                                                    (___kont6292162922_
                                                     _hd5545356429_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5543855652_))))))
                                        (if (gx#stx-null? _tl5545256432_)
                                            (___kont6292162922_ _hd5545356429_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5543855652_))))))
                                (if (gx#stx-null? _tl5545256432_)
                                    (___kont6292162922_ _hd5545356429_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5543855652_)))))))
                    (if (fx>= (gx#stx-length _tl5545256432_) '1)
                        (let ((___splice6291962920_
                               (gx#syntax-split-splice _tl5545256432_ '1)))
                          (let ((_tl5549256321_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6291962920_ '1)))
                                (_target5549056318_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6291962920_ '0))))
                            (if (gx#stx-pair? _tl5549256321_)
                                (let ((_e5550156324_
                                       (gx#syntax-e _tl5549256321_)))
                                  (let ((_tl5549956331_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5550156324_)))
                                        (_hd5550056328_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5550156324_))))
                                    (if (gx#stx-null? _tl5549956331_)
                                        (___match6303963040_
                                         _e5544756401_
                                         _hd5544656405_
                                         _tl5544556408_
                                         _e5545056411_
                                         _hd5544956415_
                                         _tl5544856418_
                                         _e5545156421_
                                         _e5545456425_
                                         _hd5545356429_
                                         _tl5545256432_
                                         ___splice6291962920_
                                         _target5549056318_
                                         _tl5549256321_
                                         _e5550156324_
                                         _hd5550056328_
                                         _tl5549956331_)
                                        (if (gx#stx-null? _tl5545256432_)
                                            (___kont6292162922_ _hd5545356429_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5543855652_))))))
                                (if (gx#stx-null? _tl5545256432_)
                                    (___kont6292162922_ _hd5545356429_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5543855652_))))))
                        (if (gx#stx-null? _tl5545256432_)
                            (___kont6292162922_ _hd5545356429_)
                            (let () (declare (not safe)) (_g5543855652_)))))
                (if (fx>= (gx#stx-length _tl5545256432_) '1)
                    (let ((___splice6291962920_
                           (gx#syntax-split-splice _tl5545256432_ '1)))
                      (let ((_tl5549256321_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6291962920_ '1)))
                            (_target5549056318_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6291962920_ '0))))
                        (if (gx#stx-pair? _tl5549256321_)
                            (let ((_e5550156324_ (gx#syntax-e _tl5549256321_)))
                              (let ((_tl5549956331_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5550156324_)))
                                    (_hd5550056328_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5550156324_))))
                                (if (gx#stx-null? _tl5549956331_)
                                    (___match6303963040_
                                     _e5544756401_
                                     _hd5544656405_
                                     _tl5544556408_
                                     _e5545056411_
                                     _hd5544956415_
                                     _tl5544856418_
                                     _e5545156421_
                                     _e5545456425_
                                     _hd5545356429_
                                     _tl5545256432_
                                     ___splice6291962920_
                                     _target5549056318_
                                     _tl5549256321_
                                     _e5550156324_
                                     _hd5550056328_
                                     _tl5549956331_)
                                    (if (gx#stx-null? _tl5545256432_)
                                        (___kont6292162922_ _hd5545356429_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5543855652_))))))
                            (if (gx#stx-null? _tl5545256432_)
                                (___kont6292162922_ _hd5545356429_)
                                (let ()
                                  (declare (not safe))
                                  (_g5543855652_))))))
                    (if (gx#stx-null? _tl5545256432_)
                        (___kont6292162922_ _hd5545356429_)
                        (let () (declare (not safe)) (_g5543855652_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5545256432_)
                                                          '1)
                                                    (let ((___splice6291962920_
                                                           (gx#syntax-split-splice
                                                            _tl5545256432_
                                                            '1)))
                                                      (let ((_tl5549256321_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6291962920_ '1)))
                    (_target5549056318_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6291962920_ '0))))
                (if (gx#stx-pair? _tl5549256321_)
                    (let ((_e5550156324_ (gx#syntax-e _tl5549256321_)))
                      (let ((_tl5549956331_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5550156324_)))
                            (_hd5550056328_
                             (let ()
                               (declare (not safe))
                               (##car _e5550156324_))))
                        (if (gx#stx-null? _tl5549956331_)
                            (___match6303963040_
                             _e5544756401_
                             _hd5544656405_
                             _tl5544556408_
                             _e5545056411_
                             _hd5544956415_
                             _tl5544856418_
                             _e5545156421_
                             _e5545456425_
                             _hd5545356429_
                             _tl5545256432_
                             ___splice6291962920_
                             _target5549056318_
                             _tl5549256321_
                             _e5550156324_
                             _hd5550056328_
                             _tl5549956331_)
                            (if (gx#stx-null? _tl5545256432_)
                                (___kont6292162922_ _hd5545356429_)
                                (let ()
                                  (declare (not safe))
                                  (_g5543855652_))))))
                    (if (gx#stx-null? _tl5545256432_)
                        (___kont6292162922_ _hd5545356429_)
                        (let () (declare (not safe)) (_g5543855652_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5545256432_)
                                                        (___kont6292162922_
                                                         _hd5545356429_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5543855652_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5545256432_)
                                                      '1)
                                                (let ((___splice6291962920_
                                                       (gx#syntax-split-splice
                                                        _tl5545256432_
                                                        '1)))
                                                  (let ((_tl5549256321_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6291962920_
                                                            '1)))
                                                        (_target5549056318_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6291962920_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5549256321_)
                                                        (let ((_e5550156324_
                                                               (gx#syntax-e
                                                                _tl5549256321_)))
                                                          (let ((_tl5549956331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5550156324_)))
                        (_hd5550056328_
                         (let () (declare (not safe)) (##car _e5550156324_))))
                    (if (gx#stx-null? _tl5549956331_)
                        (___match6303963040_
                         _e5544756401_
                         _hd5544656405_
                         _tl5544556408_
                         _e5545056411_
                         _hd5544956415_
                         _tl5544856418_
                         _e5545156421_
                         _e5545456425_
                         _hd5545356429_
                         _tl5545256432_
                         ___splice6291962920_
                         _target5549056318_
                         _tl5549256321_
                         _e5550156324_
                         _hd5550056328_
                         _tl5549956331_)
                        (if (gx#stx-null? _tl5545256432_)
                            (___kont6292162922_ _hd5545356429_)
                            (let () (declare (not safe)) (_g5543855652_))))))
                (if (gx#stx-null? _tl5545256432_)
                    (___kont6292162922_ _hd5545356429_)
                    (let () (declare (not safe)) (_g5543855652_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5545256432_)
                                                    (___kont6292162922_
                                                     _hd5545356429_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5543855652_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5545256432_)
                                                  '1)
                                            (let ((___splice6291962920_
                                                   (gx#syntax-split-splice
                                                    _tl5545256432_
                                                    '1)))
                                              (let ((_tl5549256321_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6291962920_
                                                        '1)))
                                                    (_target5549056318_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6291962920_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5549256321_)
                                                    (let ((_e5550156324_
                                                           (gx#syntax-e
                                                            _tl5549256321_)))
                                                      (let ((_tl5549956331_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5550156324_)))
                    (_hd5550056328_
                     (let () (declare (not safe)) (##car _e5550156324_))))
                (if (gx#stx-null? _tl5549956331_)
                    (___match6303963040_
                     _e5544756401_
                     _hd5544656405_
                     _tl5544556408_
                     _e5545056411_
                     _hd5544956415_
                     _tl5544856418_
                     _e5545156421_
                     _e5545456425_
                     _hd5545356429_
                     _tl5545256432_
                     ___splice6291962920_
                     _target5549056318_
                     _tl5549256321_
                     _e5550156324_
                     _hd5550056328_
                     _tl5549956331_)
                    (if (gx#stx-null? _tl5545256432_)
                        (___kont6292162922_ _hd5545356429_)
                        (let () (declare (not safe)) (_g5543855652_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5545256432_)
                                                        (___kont6292162922_
                                                         _hd5545356429_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5543855652_))))))
                                            (if (gx#stx-null? _tl5545256432_)
                                                (___kont6292162922_
                                                 _hd5545356429_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5543855652_)))))))
                                (if (fx>= (gx#stx-length _tl5545256432_) '1)
                                    (let ((___splice6291962920_
                                           (gx#syntax-split-splice
                                            _tl5545256432_
                                            '1)))
                                      (let ((_tl5549256321_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6291962920_
                                                '1)))
                                            (_target5549056318_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6291962920_
                                                '0))))
                                        (if (gx#stx-pair? _tl5549256321_)
                                            (let ((_e5550156324_
                                                   (gx#syntax-e
                                                    _tl5549256321_)))
                                              (let ((_tl5549956331_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5550156324_)))
                                                    (_hd5550056328_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5550156324_))))
                                                (if (gx#stx-null?
                                                     _tl5549956331_)
                                                    (___match6303963040_
                                                     _e5544756401_
                                                     _hd5544656405_
                                                     _tl5544556408_
                                                     _e5545056411_
                                                     _hd5544956415_
                                                     _tl5544856418_
                                                     _e5545156421_
                                                     _e5545456425_
                                                     _hd5545356429_
                                                     _tl5545256432_
                                                     ___splice6291962920_
                                                     _target5549056318_
                                                     _tl5549256321_
                                                     _e5550156324_
                                                     _hd5550056328_
                                                     _tl5549956331_)
                                                    (if (gx#stx-null?
                                                         _tl5545256432_)
                                                        (___kont6292162922_
                                                         _hd5545356429_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5543855652_))))))
                                            (if (gx#stx-null? _tl5545256432_)
                                                (___kont6292162922_
                                                 _hd5545356429_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5543855652_))))))
                                    (if (gx#stx-null? _tl5545256432_)
                                        (___kont6292162922_ _hd5545356429_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5543855652_)))))))
                        (if (fx>= (gx#stx-length _tl5545256432_) '1)
                            (let ((___splice6291962920_
                                   (gx#syntax-split-splice _tl5545256432_ '1)))
                              (let ((_tl5549256321_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice6291962920_ '1)))
                                    (_target5549056318_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice6291962920_
                                        '0))))
                                (if (gx#stx-pair? _tl5549256321_)
                                    (let ((_e5550156324_
                                           (gx#syntax-e _tl5549256321_)))
                                      (let ((_tl5549956331_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5550156324_)))
                                            (_hd5550056328_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5550156324_))))
                                        (if (gx#stx-null? _tl5549956331_)
                                            (___match6303963040_
                                             _e5544756401_
                                             _hd5544656405_
                                             _tl5544556408_
                                             _e5545056411_
                                             _hd5544956415_
                                             _tl5544856418_
                                             _e5545156421_
                                             _e5545456425_
                                             _hd5545356429_
                                             _tl5545256432_
                                             ___splice6291962920_
                                             _target5549056318_
                                             _tl5549256321_
                                             _e5550156324_
                                             _hd5550056328_
                                             _tl5549956331_)
                                            (if (gx#stx-null? _tl5545256432_)
                                                (___kont6292162922_
                                                 _hd5545356429_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5543855652_))))))
                                    (if (gx#stx-null? _tl5545256432_)
                                        (___kont6292162922_ _hd5545356429_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5543855652_))))))
                            (if (gx#stx-null? _tl5545256432_)
                                (___kont6292162922_ _hd5545356429_)
                                (let ()
                                  (declare (not safe))
                                  (_g5543855652_)))))))
                (if (fx>= (gx#stx-length _tl5545256432_) '1)
                    (let ((___splice6291962920_
                           (gx#syntax-split-splice _tl5545256432_ '1)))
                      (let ((_tl5549256321_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6291962920_ '1)))
                            (_target5549056318_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6291962920_ '0))))
                        (if (gx#stx-pair? _tl5549256321_)
                            (let ((_e5550156324_ (gx#syntax-e _tl5549256321_)))
                              (let ((_tl5549956331_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5550156324_)))
                                    (_hd5550056328_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5550156324_))))
                                (if (gx#stx-null? _tl5549956331_)
                                    (___match6303963040_
                                     _e5544756401_
                                     _hd5544656405_
                                     _tl5544556408_
                                     _e5545056411_
                                     _hd5544956415_
                                     _tl5544856418_
                                     _e5545156421_
                                     _e5545456425_
                                     _hd5545356429_
                                     _tl5545256432_
                                     ___splice6291962920_
                                     _target5549056318_
                                     _tl5549256321_
                                     _e5550156324_
                                     _hd5550056328_
                                     _tl5549956331_)
                                    (if (gx#stx-null? _tl5545256432_)
                                        (___kont6292162922_ _hd5545356429_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5543855652_))))))
                            (if (gx#stx-null? _tl5545256432_)
                                (___kont6292162922_ _hd5545356429_)
                                (let ()
                                  (declare (not safe))
                                  (_g5543855652_))))))
                    (if (gx#stx-null? _tl5545256432_)
                        (___kont6292162922_ _hd5545356429_)
                        (let () (declare (not safe)) (_g5543855652_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5545256432_)
                                                        (___kont6292162922_
                                                         _hd5545356429_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5543855652_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5543855652_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5545156421_ '2))
                                            (if (gx#stx-pair? _tl5544856418_)
                                                (let ((_e5552856124_
                                                       (gx#syntax-e
                                                        _tl5544856418_)))
                                                  (let ((_tl5552656131_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5552856124_)))
                                                        (_hd5552756128_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5552856124_))))
                                                    (if (gx#stx-pair?
                                                         _tl5552656131_)
                                                        (let ((_e5553156134_
                                                               (gx#syntax-e
                                                                _tl5552656131_)))
                                                          (let ((_tl5552956141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5553156134_)))
                        (_hd5553056138_
                         (let () (declare (not safe)) (##car _e5553156134_))))
                    (if (gx#stx-pair? _hd5553056138_)
                        (let ((_e5553456144_ (gx#syntax-e _hd5553056138_)))
                          (let ((_tl5553256151_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5553456144_)))
                                (_hd5553356148_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5553456144_))))
                            (if (gx#stx-pair? _hd5553356148_)
                                (let ((_e5553756154_
                                       (gx#syntax-e _hd5553356148_)))
                                  (let ((_tl5553556161_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5553756154_)))
                                        (_hd5553656158_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5553756154_))))
                                    (if (gx#identifier? _hd5553656158_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g63682_|
                                             _hd5553656158_)
                                            (if (gx#stx-pair? _tl5553556161_)
                                                (let ((_e5554056164_
                                                       (gx#syntax-e
                                                        _tl5553556161_)))
                                                  (let ((_tl5553856171_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5554056164_)))
                                                        (_hd5553956168_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5554056164_))))
                                                    (if (gx#stx-null?
                                                         _tl5553856171_)
                                                        (if (gx#stx-pair?
                                                             _tl5553256151_)
                                                            (let ((_e5554356174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5553256151_)))
                      (let ((_tl5554156181_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5554356174_)))
                            (_hd5554256178_
                             (let ()
                               (declare (not safe))
                               (##car _e5554356174_))))
                        (___kont6292362924_
                         _tl5552956141_
                         _tl5554156181_
                         _hd5554256178_
                         _hd5553956168_
                         _hd5552756128_
                         _hd5544656405_)))
                    (___kont6292562926_
                     _tl5552956141_
                     _tl5553256151_
                     _hd5553356148_
                     _hd5552756128_
                     _hd5544656405_))
                (___kont6292562926_
                 _tl5552956141_
                 _tl5553256151_
                 _hd5553356148_
                 _hd5552756128_
                 _hd5544656405_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont6292562926_
                                                 _tl5552956141_
                                                 _tl5553256151_
                                                 _hd5553356148_
                                                 _hd5552756128_
                                                 _hd5544656405_))
                                            (___kont6292562926_
                                             _tl5552956141_
                                             _tl5553256151_
                                             _hd5553356148_
                                             _hd5552756128_
                                             _hd5544656405_))
                                        (___kont6292562926_
                                         _tl5552956141_
                                         _tl5553256151_
                                         _hd5553356148_
                                         _hd5552756128_
                                         _hd5544656405_))))
                                (___kont6292562926_
                                 _tl5552956141_
                                 _tl5553256151_
                                 _hd5553356148_
                                 _hd5552756128_
                                 _hd5544656405_))))
                        (if (gx#stx-null? _hd5553056138_)
                            (___kont6292762928_
                             _tl5552956141_
                             _hd5552756128_
                             _hd5544656405_)
                            (let () (declare (not safe)) (_g5543855652_))))))
                (let () (declare (not safe)) (_g5543855652_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5543855652_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5545156421_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5544856418_)
                                                    (let ((_e5559555873_
                                                           (gx#syntax-e
                                                            _tl5544856418_)))
                                                      (let ((_tl5559355880_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5559555873_)))
                    (_hd5559455877_
                     (let () (declare (not safe)) (##car _e5559555873_))))
                (if (gx#stx-pair? _tl5559355880_)
                    (let ((_e5559855883_ (gx#syntax-e _tl5559355880_)))
                      (let ((_tl5559655890_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5559855883_)))
                            (_hd5559755887_
                             (let ()
                               (declare (not safe))
                               (##car _e5559855883_))))
                        (if (gx#stx-pair? _hd5559755887_)
                            (let ((_e5560155893_ (gx#syntax-e _hd5559755887_)))
                              (let ((_tl5559955900_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5560155893_)))
                                    (_hd5560055897_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5560155893_))))
                                (___kont6292962930_
                                 _tl5559655890_
                                 _tl5559955900_
                                 _hd5560055897_
                                 _hd5559455877_
                                 _hd5544656405_)))
                            (if (gx#stx-pair/null? _hd5559455877_)
                                (let ((___splice6293362934_
                                       (gx#syntax-split-splice
                                        _hd5559455877_
                                        '0)))
                                  (let ((_tl5562055696_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6293362934_
                                            '1)))
                                        (_target5561855693_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6293362934_
                                            '0))))
                                    (if (gx#stx-null? _tl5562055696_)
                                        (___match6326163262_
                                         _e5544756401_
                                         _hd5544656405_
                                         _tl5544556408_
                                         _e5545056411_
                                         _hd5544956415_
                                         _tl5544856418_
                                         _e5545156421_
                                         _e5559555873_
                                         _hd5559455877_
                                         _tl5559355880_
                                         ___splice6293362934_
                                         _target5561855693_
                                         _tl5562055696_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5543855652_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5543855652_))))))
                    (if (gx#stx-pair/null? _hd5559455877_)
                        (let ((___splice6293362934_
                               (gx#syntax-split-splice _hd5559455877_ '0)))
                          (let ((_tl5562055696_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6293362934_ '1)))
                                (_target5561855693_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6293362934_ '0))))
                            (if (gx#stx-null? _tl5562055696_)
                                (___match6326163262_
                                 _e5544756401_
                                 _hd5544656405_
                                 _tl5544556408_
                                 _e5545056411_
                                 _hd5544956415_
                                 _tl5544856418_
                                 _e5545156421_
                                 _e5559555873_
                                 _hd5559455877_
                                 _tl5559355880_
                                 ___splice6293362934_
                                 _target5561855693_
                                 _tl5562055696_)
                                (let ()
                                  (declare (not safe))
                                  (_g5543855652_)))))
                        (let () (declare (not safe)) (_g5543855652_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5543855652_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5543855652_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5543855652_)))))
                          (let () (declare (not safe)) (_g5543855652_)))))
                  (let () (declare (not safe)) (_g5543855652_))))))))))
