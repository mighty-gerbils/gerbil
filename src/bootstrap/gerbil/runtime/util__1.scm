(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g63677_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g63678_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#defassget|
      (lambda (_$stx55130_)
        (let* ((_g5513455152_
                (lambda (_g5513555148_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5513555148_)))
               (_g5513355208_
                (lambda (_g5513555156_)
                  (if (gx#stx-pair? _g5513555156_)
                      (let ((_e5514055159_ (gx#syntax-e _g5513555156_)))
                        (let ((_hd5513955163_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5514055159_)))
                              (_tl5513855166_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5514055159_))))
                          (if (gx#stx-pair? _tl5513855166_)
                              (let ((_e5514355169_
                                     (gx#syntax-e _tl5513855166_)))
                                (let ((_hd5514255173_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5514355169_)))
                                      (_tl5514155176_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5514355169_))))
                                  (if (gx#stx-pair? _tl5514155176_)
                                      (let ((_e5514655179_
                                             (gx#syntax-e _tl5514155176_)))
                                        (let ((_hd5514555183_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5514655179_)))
                                              (_tl5514455186_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5514655179_))))
                                          (if (gx#stx-null? _tl5514455186_)
                                              ((lambda (_L55189_ _L55191_)
                                                 (let ((__tmp63438
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp63390
                                                        (let ((__tmp63429
                                                               (let ((__tmp63430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp63437 (gx#datum->syntax '#f 'key))
                                    (__tmp63431
                                     (let ((__tmp63436
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp63432
                                            (let ((__tmp63433
                                                   (let ((__tmp63435
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp63434
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp63435
                                                           __tmp63434))))
                                              (declare (not safe))
                                              (cons __tmp63433 '()))))
                                       (declare (not safe))
                                       (cons __tmp63436 __tmp63432))))
                                (declare (not safe))
                                (cons __tmp63437 __tmp63431))))
                         (declare (not safe))
                         (cons _L55191_ __tmp63430)))
                      (__tmp63391
                       (let ((__tmp63392
                              (let ((__tmp63428 (gx#datum->syntax '#f 'cond))
                                    (__tmp63393
                                     (let ((__tmp63410
                                            (let ((__tmp63415
                                                   (let ((__tmp63427
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp63416
                                                          (let ((__tmp63423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp63426 (gx#datum->syntax '#f 'pair?))
                               (__tmp63424
                                (let ((__tmp63425 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp63425 '()))))
                           (declare (not safe))
                           (cons __tmp63426 __tmp63424)))
                        (__tmp63417
                         (let ((__tmp63418
                                (let ((__tmp63419
                                       (let ((__tmp63422
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp63420
                                              (let ((__tmp63421
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp63421 '()))))
                                         (declare (not safe))
                                         (cons __tmp63422 __tmp63420))))
                                  (declare (not safe))
                                  (cons _L55189_ __tmp63419))))
                           (declare (not safe))
                           (cons __tmp63418 '()))))
                    (declare (not safe))
                    (cons __tmp63423 __tmp63417))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63427
                                                           __tmp63416)))
                                                  (__tmp63411
                                                   (let ((__tmp63414
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp63412
                                                          (let ((__tmp63413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp63413 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63414
                                                           __tmp63412))))
                                              (declare (not safe))
                                              (cons __tmp63415 __tmp63411)))
                                           (__tmp63394
                                            (let ((__tmp63400
                                                   (let ((__tmp63406
                                                          (let ((__tmp63409
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp63407
                         (let ((__tmp63408 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp63408 '()))))
                    (declare (not safe))
                    (cons __tmp63409 __tmp63407)))
                 (__tmp63401
                  (let ((__tmp63402
                         (let ((__tmp63405 (gx#datum->syntax '#f 'default))
                               (__tmp63403
                                (let ((__tmp63404 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp63404 '()))))
                           (declare (not safe))
                           (cons __tmp63405 __tmp63403))))
                    (declare (not safe))
                    (cons __tmp63402 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63406
                                                           __tmp63401)))
                                                  (__tmp63395
                                                   (let ((__tmp63396
                                                          (let ((__tmp63399
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp63397
                         (let ((__tmp63398 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp63398 '()))))
                    (declare (not safe))
                    (cons __tmp63399 __tmp63397))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63396 '()))))
                                              (declare (not safe))
                                              (cons __tmp63400 __tmp63395))))
                                       (declare (not safe))
                                       (cons __tmp63410 __tmp63394))))
                                (declare (not safe))
                                (cons __tmp63428 __tmp63393))))
                         (declare (not safe))
                         (cons __tmp63392 '()))))
                  (declare (not safe))
                  (cons __tmp63429 __tmp63391))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63438
                                                         __tmp63390)))
                                               _hd5514555183_
                                               _hd5514255173_)
                                              (_g5513455152_ _g5513555156_))))
                                      (_g5513455152_ _g5513555156_))))
                              (_g5513455152_ _g5513555156_))))
                      (_g5513455152_ _g5513555156_)))))
          (_g5513355208_ _$stx55130_))))
    (define |[:0:]#defpget|
      (lambda (_$stx55212_)
        (let* ((_g5521655234_
                (lambda (_g5521755230_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5521755230_)))
               (_g5521555289_
                (lambda (_g5521755238_)
                  (if (gx#stx-pair? _g5521755238_)
                      (let ((_e5522255241_ (gx#syntax-e _g5521755238_)))
                        (let ((_hd5522155245_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5522255241_)))
                              (_tl5522055248_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5522255241_))))
                          (if (gx#stx-pair? _tl5522055248_)
                              (let ((_e5522555251_
                                     (gx#syntax-e _tl5522055248_)))
                                (let ((_hd5522455255_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5522555251_)))
                                      (_tl5522355258_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5522555251_))))
                                  (if (gx#stx-pair? _tl5522355258_)
                                      (let ((_e5522855261_
                                             (gx#syntax-e _tl5522355258_)))
                                        (let ((_hd5522755265_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5522855261_)))
                                              (_tl5522655268_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5522855261_))))
                                          (if (gx#stx-null? _tl5522655268_)
                                              ((lambda (_L55271_ _L55273_)
                                                 (let ((__tmp63508
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp63439
                                                        (let ((__tmp63499
                                                               (let ((__tmp63500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp63507 (gx#datum->syntax '#f 'key))
                                    (__tmp63501
                                     (let ((__tmp63506
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp63502
                                            (let ((__tmp63503
                                                   (let ((__tmp63505
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp63504
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp63505
                                                           __tmp63504))))
                                              (declare (not safe))
                                              (cons __tmp63503 '()))))
                                       (declare (not safe))
                                       (cons __tmp63506 __tmp63502))))
                                (declare (not safe))
                                (cons __tmp63507 __tmp63501))))
                         (declare (not safe))
                         (cons _L55273_ __tmp63500)))
                      (__tmp63440
                       (let ((__tmp63441
                              (let ((__tmp63498 (gx#datum->syntax '#f 'let))
                                    (__tmp63442
                                     (let ((__tmp63497
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp63443
                                            (let ((__tmp63492
                                                   (let ((__tmp63493
                                                          (let ((__tmp63496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp63494
                         (let ((__tmp63495 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp63495 '()))))
                    (declare (not safe))
                    (cons __tmp63496 __tmp63494))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63493 '())))
                                                  (__tmp63444
                                                   (let ((__tmp63445
                                                          (let ((__tmp63491
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp63446
                         (let ((__tmp63490 (gx#datum->syntax '#f 'rest))
                               (__tmp63447
                                (let ((__tmp63466
                                       (let ((__tmp63483
                                              (let ((__tmp63489
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp63484
                                                     (let ((__tmp63488
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp63485
                                                            (let ((__tmp63487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp63486 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp63487 __tmp63486))))
               (declare (not safe))
               (cons __tmp63488 __tmp63485))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63489 __tmp63484)))
                                             (__tmp63467
                                              (let ((__tmp63468
                                                     (let ((__tmp63482
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp63469
                                                            (let ((__tmp63477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp63478
                                  (let ((__tmp63481 (gx#datum->syntax '#f 'k))
                                        (__tmp63479
                                         (let ((__tmp63480
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp63480 '()))))
                                    (declare (not safe))
                                    (cons __tmp63481 __tmp63479))))
                             (declare (not safe))
                             (cons _L55271_ __tmp63478)))
                          (__tmp63470
                           (let ((__tmp63476 (gx#datum->syntax '#f 'v))
                                 (__tmp63471
                                  (let ((__tmp63472
                                         (let ((__tmp63475
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp63473
                                                (let ((__tmp63474
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp63474 '()))))
                                           (declare (not safe))
                                           (cons __tmp63475 __tmp63473))))
                                    (declare (not safe))
                                    (cons __tmp63472 '()))))
                             (declare (not safe))
                             (cons __tmp63476 __tmp63471))))
                      (declare (not safe))
                      (cons __tmp63477 __tmp63470))))
               (declare (not safe))
               (cons __tmp63482 __tmp63469))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63468 '()))))
                                         (declare (not safe))
                                         (cons __tmp63483 __tmp63467)))
                                      (__tmp63448
                                       (let ((__tmp63449
                                              (let ((__tmp63465
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp63450
                                                     (let ((__tmp63451
                                                            (let ((__tmp63464
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp63452
                           (let ((__tmp63460
                                  (let ((__tmp63463
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp63461
                                         (let ((__tmp63462
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp63462 '()))))
                                    (declare (not safe))
                                    (cons __tmp63463 __tmp63461)))
                                 (__tmp63453
                                  (let ((__tmp63456
                                         (let ((__tmp63459
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp63457
                                                (let ((__tmp63458
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp63458 '()))))
                                           (declare (not safe))
                                           (cons __tmp63459 __tmp63457)))
                                        (__tmp63454
                                         (let ((__tmp63455
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp63455 '()))))
                                    (declare (not safe))
                                    (cons __tmp63456 __tmp63454))))
                             (declare (not safe))
                             (cons __tmp63460 __tmp63453))))
                      (declare (not safe))
                      (cons __tmp63464 __tmp63452))))
               (declare (not safe))
               (cons __tmp63451 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63465 __tmp63450))))
                                         (declare (not safe))
                                         (cons __tmp63449 '()))))
                                  (declare (not safe))
                                  (cons __tmp63466 __tmp63448))))
                           (declare (not safe))
                           (cons __tmp63490 __tmp63447))))
                    (declare (not safe))
                    (cons __tmp63491 __tmp63446))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63445 '()))))
                                              (declare (not safe))
                                              (cons __tmp63492 __tmp63444))))
                                       (declare (not safe))
                                       (cons __tmp63497 __tmp63443))))
                                (declare (not safe))
                                (cons __tmp63498 __tmp63442))))
                         (declare (not safe))
                         (cons __tmp63441 '()))))
                  (declare (not safe))
                  (cons __tmp63499 __tmp63440))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63508
                                                         __tmp63439)))
                                               _hd5522755265_
                                               _hd5522455255_)
                                              (_g5521655234_ _g5521755238_))))
                                      (_g5521655234_ _g5521755238_))))
                              (_g5521655234_ _g5521755238_))))
                      (_g5521655234_ _g5521755238_)))))
          (_g5521555289_ _$stx55212_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx55293_)
        (let* ((_g5529755315_
                (lambda (_g5529855311_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5529855311_)))
               (_g5529655370_
                (lambda (_g5529855319_)
                  (if (gx#stx-pair? _g5529855319_)
                      (let ((_e5530355322_ (gx#syntax-e _g5529855319_)))
                        (let ((_hd5530255326_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5530355322_)))
                              (_tl5530155329_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5530355322_))))
                          (if (gx#stx-pair? _tl5530155329_)
                              (let ((_e5530655332_
                                     (gx#syntax-e _tl5530155329_)))
                                (let ((_hd5530555336_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5530655332_)))
                                      (_tl5530455339_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5530655332_))))
                                  (if (gx#stx-pair? _tl5530455339_)
                                      (let ((_e5530955342_
                                             (gx#syntax-e _tl5530455339_)))
                                        (let ((_hd5530855346_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5530955342_)))
                                              (_tl5530755349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5530955342_))))
                                          (if (gx#stx-null? _tl5530755349_)
                                              ((lambda (_L55352_ _L55354_)
                                                 (let ((__tmp63579
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp63509
                                                        (let ((__tmp63574
                                                               (let ((__tmp63575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp63578 (gx#datum->syntax '#f 'el))
                                    (__tmp63576
                                     (let ((__tmp63577
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp63577 '()))))
                                (declare (not safe))
                                (cons __tmp63578 __tmp63576))))
                         (declare (not safe))
                         (cons _L55354_ __tmp63575)))
                      (__tmp63510
                       (let ((__tmp63511
                              (let ((__tmp63573 (gx#datum->syntax '#f 'let))
                                    (__tmp63512
                                     (let ((__tmp63572
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp63513
                                            (let ((__tmp63561
                                                   (let ((__tmp63568
                                                          (let ((__tmp63571
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp63569
                         (let ((__tmp63570 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp63570 '()))))
                    (declare (not safe))
                    (cons __tmp63571 __tmp63569)))
                 (__tmp63562
                  (let ((__tmp63563
                         (let ((__tmp63567 (gx#datum->syntax '#f 'r))
                               (__tmp63564
                                (let ((__tmp63565
                                       (let ((__tmp63566
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp63566 '()))))
                                  (declare (not safe))
                                  (cons __tmp63565 '()))))
                           (declare (not safe))
                           (cons __tmp63567 __tmp63564))))
                    (declare (not safe))
                    (cons __tmp63563 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63568
                                                           __tmp63562)))
                                                  (__tmp63514
                                                   (let ((__tmp63515
                                                          (let ((__tmp63560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp63516
                         (let ((__tmp63559 (gx#datum->syntax '#f 'rest))
                               (__tmp63517
                                (let ((__tmp63523
                                       (let ((__tmp63554
                                              (let ((__tmp63558
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp63555
                                                     (let ((__tmp63557
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp63556
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp63557
                                                             __tmp63556))))
                                                (declare (not safe))
                                                (cons __tmp63558 __tmp63555)))
                                             (__tmp63524
                                              (let ((__tmp63525
                                                     (let ((__tmp63553
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp63526
                                                            (let ((__tmp63548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp63549
                                  (let ((__tmp63552 (gx#datum->syntax '#f 'el))
                                        (__tmp63550
                                         (let ((__tmp63551
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp63551 '()))))
                                    (declare (not safe))
                                    (cons __tmp63552 __tmp63550))))
                             (declare (not safe))
                             (cons _L55352_ __tmp63549)))
                          (__tmp63527
                           (let ((__tmp63540
                                  (let ((__tmp63547
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp63541
                                         (let ((__tmp63546
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp63542
                                                (let ((__tmp63545
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp63543
                                                       (let ((__tmp63544
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp63544
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp63545
                                                        __tmp63543))))
                                           (declare (not safe))
                                           (cons __tmp63546 __tmp63542))))
                                    (declare (not safe))
                                    (cons __tmp63547 __tmp63541)))
                                 (__tmp63528
                                  (let ((__tmp63529
                                         (let ((__tmp63539
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp63530
                                                (let ((__tmp63538
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp63531
                                                       (let ((__tmp63532
                                                              (let ((__tmp63537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp63533
                             (let ((__tmp63536 (gx#datum->syntax '#f 'hd))
                                   (__tmp63534
                                    (let ((__tmp63535
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp63535 '()))))
                               (declare (not safe))
                               (cons __tmp63536 __tmp63534))))
                        (declare (not safe))
                        (cons __tmp63537 __tmp63533))))
                 (declare (not safe))
                 (cons __tmp63532 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp63538
                                                        __tmp63531))))
                                           (declare (not safe))
                                           (cons __tmp63539 __tmp63530))))
                                    (declare (not safe))
                                    (cons __tmp63529 '()))))
                             (declare (not safe))
                             (cons __tmp63540 __tmp63528))))
                      (declare (not safe))
                      (cons __tmp63548 __tmp63527))))
               (declare (not safe))
               (cons __tmp63553 __tmp63526))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp63525 '()))))
                                         (declare (not safe))
                                         (cons __tmp63554 __tmp63524)))
                                      (__tmp63518
                                       (let ((__tmp63519
                                              (let ((__tmp63522
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp63520
                                                     (let ((__tmp63521
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp63521 '()))))
                                                (declare (not safe))
                                                (cons __tmp63522 __tmp63520))))
                                         (declare (not safe))
                                         (cons __tmp63519 '()))))
                                  (declare (not safe))
                                  (cons __tmp63523 __tmp63518))))
                           (declare (not safe))
                           (cons __tmp63559 __tmp63517))))
                    (declare (not safe))
                    (cons __tmp63560 __tmp63516))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp63515 '()))))
                                              (declare (not safe))
                                              (cons __tmp63561 __tmp63514))))
                                       (declare (not safe))
                                       (cons __tmp63572 __tmp63513))))
                                (declare (not safe))
                                (cons __tmp63573 __tmp63512))))
                         (declare (not safe))
                         (cons __tmp63511 '()))))
                  (declare (not safe))
                  (cons __tmp63574 __tmp63510))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63579
                                                         __tmp63509)))
                                               _hd5530855346_
                                               _hd5530555336_)
                                              (_g5529755315_ _g5529855319_))))
                                      (_g5529755315_ _g5529855319_))))
                              (_g5529755315_ _g5529855319_))))
                      (_g5529755315_ _g5529855319_)))))
          (_g5529655370_ _$stx55293_))))
    (define |[:0:]#DBG|
      (lambda (_$stx55374_)
        (let* ((_g5537855389_
                (lambda (_g5537955385_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5537955385_)))
               (_g5537755418_
                (lambda (_g5537955393_)
                  (if (gx#stx-pair? _g5537955393_)
                      (let ((_e5538355396_ (gx#syntax-e _g5537955393_)))
                        (let ((_hd5538255400_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5538355396_)))
                              (_tl5538155403_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5538355396_))))
                          ((lambda (_L55406_)
                             (let ((__tmp63581 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp63580
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L55406_))))
                               (declare (not safe))
                               (cons __tmp63581 __tmp63580)))
                           _tl5538155403_)))
                      (_g5537855389_ _g5537955393_)))))
          (_g5537755418_ _$stx55374_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx55422_)
        (let* ((___stx6290562906_ _$stx55422_)
               (_g5543355647_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx6290562906_))))
          (let ((___kont6290862909_
                 (lambda (_L56500_ _L56502_ _L56503_ _L56504_ _L56505_)
                   (let ((__tmp63582
                          (let ((__tmp63583
                                 (let ((__tmp63584
                                        (let ((__tmp63588
                                               (let ((__tmp63589
                                                      (lambda (_g5653556538_
                                                               _g5653656541_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5653556538_
                                                                _g5653656541_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp63589
                                                         '()
                                                         _L56503_)))
                                              (__tmp63585
                                               (let ((__tmp63586
                                                      (let ((__tmp63587
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56500_ '()))))
                (declare (not safe))
                (cons _L56502_ __tmp63587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56504_ __tmp63586))))
                                          (declare (not safe))
                                          (cons __tmp63588 __tmp63585))))
                                   (declare (not safe))
                                   (cons '() __tmp63584))))
                            (declare (not safe))
                            (cons '2 __tmp63583))))
                     (declare (not safe))
                     (cons _L56505_ __tmp63582))))
                (___kont6291262913_
                 (lambda (_L56353_ _L56355_ _L56356_ _L56357_)
                   (let ((__tmp63590
                          (let ((__tmp63591
                                 (let ((__tmp63592
                                        (let ((__tmp63596
                                               (let ((__tmp63597
                                                      (lambda (_g5638056383_
                                                               _g5638156386_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5638056383_
                                                                _g5638156386_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp63597
                                                         '()
                                                         _L56355_)))
                                              (__tmp63593
                                               (let ((__tmp63594
                                                      (let ((__tmp63595
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56353_ '()))))
                (declare (not safe))
                (cons _L56353_ __tmp63595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56356_ __tmp63594))))
                                          (declare (not safe))
                                          (cons __tmp63596 __tmp63593))))
                                   (declare (not safe))
                                   (cons '() __tmp63592))))
                            (declare (not safe))
                            (cons '2 __tmp63591))))
                     (declare (not safe))
                     (cons _L56357_ __tmp63590))))
                (___kont6291662917_
                 (lambda (_L56256_)
                   (let ((__tmp63609 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp63598
                          (let ((__tmp63599
                                 (let ((__tmp63606
                                        (let ((__tmp63608
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp63607
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp63608 __tmp63607)))
                                       (__tmp63600
                                        (let ((__tmp63603
                                               (let ((__tmp63605
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp63604
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp63605 __tmp63604)))
                                              (__tmp63601
                                               (let ((__tmp63602
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp63602))))
                                          (declare (not safe))
                                          (cons __tmp63603 __tmp63601))))
                                   (declare (not safe))
                                   (cons __tmp63606 __tmp63600))))
                            (declare (not safe))
                            (cons _L56256_ __tmp63599))))
                     (declare (not safe))
                     (cons __tmp63609 __tmp63598))))
                (___kont6291862919_
                 (lambda (_L56179_
                          _L56181_
                          _L56182_
                          _L56183_
                          _L56184_
                          _L56185_)
                   (let ((__tmp63610
                          (let ((__tmp63611
                                 (let ((__tmp63613
                                        (let ((__tmp63614
                                               (let ((__tmp63615
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56182_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56183_ __tmp63615))))
                                          (declare (not safe))
                                          (cons __tmp63614 _L56184_)))
                                       (__tmp63612
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56181_ _L56179_))))
                                   (declare (not safe))
                                   (cons __tmp63613 __tmp63612))))
                            (declare (not safe))
                            (cons '2 __tmp63611))))
                     (declare (not safe))
                     (cons _L56185_ __tmp63610))))
                (___kont6292062921_
                 (lambda (_L56060_ _L56062_ _L56063_ _L56064_ _L56065_)
                   (let ((__tmp63616
                          (let ((__tmp63617
                                 (let ((__tmp63619
                                        (let ((__tmp63620
                                               (let ((__tmp63621
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56063_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56063_ __tmp63621))))
                                          (declare (not safe))
                                          (cons __tmp63620 _L56064_)))
                                       (__tmp63618
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56062_ _L56060_))))
                                   (declare (not safe))
                                   (cons __tmp63619 __tmp63618))))
                            (declare (not safe))
                            (cons '2 __tmp63617))))
                     (declare (not safe))
                     (cons _L56065_ __tmp63616))))
                (___kont6292262923_
                 (lambda (_L55977_ _L55979_ _L55980_)
                   (let ((__tmp63622
                          (let ((__tmp63623
                                 (let ((__tmp63624
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55979_ _L55977_))))
                                   (declare (not safe))
                                   (cons '() __tmp63624))))
                            (declare (not safe))
                            (cons '3 __tmp63623))))
                     (declare (not safe))
                     (cons _L55980_ __tmp63622))))
                (___kont6292462925_
                 (lambda (_L55898_ _L55900_ _L55901_ _L55902_ _L55903_)
                   (let ((__tmp63625
                          (let ((__tmp63626
                                 (let ((__tmp63628
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55901_ _L55902_)))
                                       (__tmp63627
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55900_ _L55898_))))
                                   (declare (not safe))
                                   (cons __tmp63628 __tmp63627))))
                            (declare (not safe))
                            (cons '3 __tmp63626))))
                     (declare (not safe))
                     (cons _L55903_ __tmp63625))))
                (___kont6292662927_
                 (lambda (_L55782_
                          _L55784_
                          _L55785_
                          _L55786_
                          _L55787_
                          _L55788_)
                   (let ((__tmp63676 (gx#datum->syntax '#f 'let))
                         (__tmp63629
                          (let ((__tmp63664
                                 (let ((__tmp63673
                                        (let ((__tmp63675
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp63674
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L55785_ '()))))
                                          (declare (not safe))
                                          (cons __tmp63675 __tmp63674)))
                                       (__tmp63665
                                        (let ((__tmp63666
                                               (let ((__tmp63672
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp63667
                                                      (let ((__tmp63668
                                                             (let ((__tmp63671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp63669
                            (let ((__tmp63670
                                   (let ()
                                     (declare (not safe))
                                     (cons _L55782_ '()))))
                              (declare (not safe))
                              (cons '() __tmp63670))))
                       (declare (not safe))
                       (cons __tmp63671 __tmp63669))))
                (declare (not safe))
                (cons __tmp63668 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp63672
                                                       __tmp63667))))
                                          (declare (not safe))
                                          (cons __tmp63666 '()))))
                                   (declare (not safe))
                                   (cons __tmp63673 __tmp63665)))
                                (__tmp63630
                                 (let ((__tmp63631
                                        (let ((__tmp63663
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp63632
                                               (let ((__tmp63662
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp63633
                                                      (let ((__tmp63637
                                                             (let ((__tmp63661
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp63638
                            (let ((__tmp63660 (gx#datum->syntax '#f 'tagval))
                                  (__tmp63639
                                   (let ((__tmp63655
                                          (let ((__tmp63659
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp63656
                                                 (let ((__tmp63657
                                                        (let ((__tmp63658
                                                               (lambda (_g5582255825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5582355828_)
                         (let ()
                           (declare (not safe))
                           (cons _g5582255825_ _g5582355828_)))))
                  (declare (not safe))
                  (foldr1 __tmp63658 '() _L55787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63657 '()))))
                                            (declare (not safe))
                                            (cons __tmp63659 __tmp63656)))
                                         (__tmp63640
                                          (let ((__tmp63647
                                                 (let ((__tmp63654
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp63648
                                                        (let ((__tmp63649
                                                               (lambda (_g5582055831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5582155834_)
                         (let ((__tmp63650
                                (let ((__tmp63653
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp63651
                                       (let ((__tmp63652
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5582055831_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp63652))))
                                  (declare (not safe))
                                  (cons __tmp63653 __tmp63651))))
                           (declare (not safe))
                           (cons __tmp63650 _g5582155834_)))))
                  (declare (not safe))
                  (foldr1 __tmp63649 '() _L55786_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63654
                                                         __tmp63648)))
                                                (__tmp63641
                                                 (let ((__tmp63644
                                                        (let ((__tmp63646
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp63645
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L55784_ '()))))
                  (declare (not safe))
                  (cons __tmp63646 __tmp63645)))
               (__tmp63642
                (let ((__tmp63643 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp63643 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63644
                                                         __tmp63642))))
                                            (declare (not safe))
                                            (cons __tmp63647 __tmp63641))))
                                     (declare (not safe))
                                     (cons __tmp63655 __tmp63640))))
                              (declare (not safe))
                              (cons __tmp63660 __tmp63639))))
                       (declare (not safe))
                       (cons __tmp63661 __tmp63638)))
                    (__tmp63634
                     (let ((__tmp63635
                            (let ((__tmp63636 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp63636 '()))))
                       (declare (not safe))
                       (cons __tmp63635 '()))))
                (declare (not safe))
                (cons __tmp63637 __tmp63634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp63662
                                                       __tmp63633))))
                                          (declare (not safe))
                                          (cons __tmp63663 __tmp63632))))
                                   (declare (not safe))
                                   (cons __tmp63631 '()))))
                            (declare (not safe))
                            (cons __tmp63664 __tmp63630))))
                     (declare (not safe))
                     (cons __tmp63676 __tmp63629)))))
            (let* ((___match6325663257_
                    (lambda (_e5560555654_
                             _hd5560455658_
                             _tl5560355661_
                             _e5560855664_
                             _hd5560755668_
                             _tl5560655671_
                             _e5560955674_
                             _e5561255678_
                             _hd5561155682_
                             _tl5561055685_
                             ___splice6292862929_
                             _target5561355688_
                             _tl5561555691_)
                      (letrec ((_loop5561655694_
                                (lambda (_hd5561455698_
                                         _exprs5562055701_
                                         _names5562155703_)
                                  (if (gx#stx-pair? _hd5561455698_)
                                      (let ((_e5561755706_
                                             (gx#syntax-e _hd5561455698_)))
                                        (let ((_lp-tl5561955713_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5561755706_)))
                                              (_lp-hd5561855710_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5561755706_))))
                                          (if (gx#stx-pair? _lp-hd5561855710_)
                                              (let ((_e5562655716_
                                                     (gx#syntax-e
                                                      _lp-hd5561855710_)))
                                                (let ((_tl5562455723_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5562655716_)))
                                                      (_hd5562555720_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5562655716_))))
                                                  (if (gx#stx-pair?
                                                       _tl5562455723_)
                                                      (let ((_e5562955726_
                                                             (gx#syntax-e
                                                              _tl5562455723_)))
                                                        (let ((_tl5562755733_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5562955726_)))
                      (_hd5562855730_
                       (let () (declare (not safe)) (##car _e5562955726_))))
                  (if (gx#stx-null? _tl5562755733_)
                      (_loop5561655694_
                       _lp-tl5561955713_
                       (let ()
                         (declare (not safe))
                         (cons _hd5562855730_ _exprs5562055701_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5562555720_ _names5562155703_)))
                      (let () (declare (not safe)) (_g5543355647_)))))
              (let () (declare (not safe)) (_g5543355647_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5543355647_)))))
                                      (let ((_names5562355739_
                                             (reverse _names5562155703_))
                                            (_exprs5562255736_
                                             (reverse _exprs5562055701_)))
                                        (if (gx#stx-pair? _tl5561055685_)
                                            (let ((_e5563255742_
                                                   (gx#syntax-e
                                                    _tl5561055685_)))
                                              (let ((_tl5563055749_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5563255742_)))
                                                    (_hd5563155746_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5563255742_))))
                                                (if (gx#stx-null?
                                                     _hd5563155746_)
                                                    (if (gx#stx-pair?
                                                         _tl5563055749_)
                                                        (let ((_e5563555752_
                                                               (gx#syntax-e
                                                                _tl5563055749_)))
                                                          (let ((_tl5563355759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5563555752_)))
                        (_hd5563455756_
                         (let () (declare (not safe)) (##car _e5563555752_))))
                    (if (gx#stx-pair? _tl5563355759_)
                        (let ((_e5563855762_ (gx#syntax-e _tl5563355759_)))
                          (let ((_tl5563655769_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5563855762_)))
                                (_hd5563755766_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5563855762_))))
                            (if (gx#stx-pair? _tl5563655769_)
                                (let ((_e5564155772_
                                       (gx#syntax-e _tl5563655769_)))
                                  (let ((_tl5563955779_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5564155772_)))
                                        (_hd5564055776_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5564155772_))))
                                    (if (gx#stx-null? _tl5563955779_)
                                        (___kont6292662927_
                                         _hd5564055776_
                                         _hd5563755766_
                                         _hd5563455756_
                                         _exprs5562255736_
                                         _names5562355739_
                                         _hd5560455658_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5543355647_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5543355647_)))))
                        (let () (declare (not safe)) (_g5543355647_)))))
                (let () (declare (not safe)) (_g5543355647_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5543355647_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5543355647_))))))))
                        (_loop5561655694_ _target5561355688_ '() '()))))
                   (___match6303463035_
                    (lambda (_e5547756279_
                             _hd5547656283_
                             _tl5547556286_
                             _e5548056289_
                             _hd5547956293_
                             _tl5547856296_
                             _e5548156299_
                             _e5548456303_
                             _hd5548356307_
                             _tl5548256310_
                             ___splice6291462915_
                             _target5548556313_
                             _tl5548756316_
                             _e5549656319_
                             _hd5549556323_
                             _tl5549456326_)
                      (letrec ((_loop5548856329_
                                (lambda (_hd5548656333_ _exprs5549256336_)
                                  (if (gx#stx-pair? _hd5548656333_)
                                      (let ((_e5548956339_
                                             (gx#syntax-e _hd5548656333_)))
                                        (let ((_lp-tl5549156346_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5548956339_)))
                                              (_lp-hd5549056343_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5548956339_))))
                                          (_loop5548856329_
                                           _lp-tl5549156346_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5549056343_
                                                   _exprs5549256336_)))))
                                      (let ((_exprs5549356349_
                                             (reverse _exprs5549256336_)))
                                        (___kont6291262913_
                                         _hd5549556323_
                                         _exprs5549356349_
                                         _hd5548356307_
                                         _hd5547656283_))))))
                        (_loop5548856329_ _target5548556313_ '()))))
                   (___match6299462995_
                    (lambda (_e5544256396_
                             _hd5544156400_
                             _tl5544056403_
                             _e5544556406_
                             _hd5544456410_
                             _tl5544356413_
                             _e5544656416_
                             _e5544956420_
                             _hd5544856424_
                             _tl5544756427_
                             ___splice6291062911_
                             _target5545056430_
                             _tl5545256433_
                             _e5546156436_
                             _hd5546056440_
                             _tl5545956443_
                             _e5546456446_
                             _hd5546356450_
                             _tl5546256453_
                             _e5546756456_
                             _hd5546656460_
                             _tl5546556463_
                             _e5547056466_
                             _hd5546956470_
                             _tl5546856473_)
                      (letrec ((_loop5545356476_
                                (lambda (_hd5545156480_ _exprs5545756483_)
                                  (if (gx#stx-pair? _hd5545156480_)
                                      (let ((_e5545456486_
                                             (gx#syntax-e _hd5545156480_)))
                                        (let ((_lp-tl5545656493_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5545456486_)))
                                              (_lp-hd5545556490_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5545456486_))))
                                          (_loop5545356476_
                                           _lp-tl5545656493_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5545556490_
                                                   _exprs5545756483_)))))
                                      (let ((_exprs5545856496_
                                             (reverse _exprs5545756483_)))
                                        (___kont6290862909_
                                         _hd5546956470_
                                         _hd5546656460_
                                         _exprs5545856496_
                                         _hd5544856424_
                                         _hd5544156400_))))))
                        (_loop5545356476_ _target5545056430_ '())))))
              (if (gx#stx-pair? ___stx6290562906_)
                  (let ((_e5544256396_ (gx#syntax-e ___stx6290562906_)))
                    (let ((_tl5544056403_
                           (let () (declare (not safe)) (##cdr _e5544256396_)))
                          (_hd5544156400_
                           (let ()
                             (declare (not safe))
                             (##car _e5544256396_))))
                      (if (gx#stx-pair? _tl5544056403_)
                          (let ((_e5544556406_ (gx#syntax-e _tl5544056403_)))
                            (let ((_tl5544356413_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5544556406_)))
                                  (_hd5544456410_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5544556406_))))
                              (if (gx#stx-datum? _hd5544456410_)
                                  (let ((_e5544656416_
                                         (gx#stx-e _hd5544456410_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5544656416_ '1))
                                        (if (gx#stx-pair? _tl5544356413_)
                                            (let ((_e5544956420_
                                                   (gx#syntax-e
                                                    _tl5544356413_)))
                                              (let ((_tl5544756427_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5544956420_)))
                                                    (_hd5544856424_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5544956420_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5544756427_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5544756427_)
                                                              '2)
                                                        (let ((___splice6291062911_
                                                               (gx#syntax-split-splice
                                                                _tl5544756427_
                                                                '2)))
                                                          (let ((_tl5545256433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6291062911_ '1)))
                        (_target5545056430_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6291062911_ '0))))
                    (if (gx#stx-pair? _tl5545256433_)
                        (let ((_e5546156436_ (gx#syntax-e _tl5545256433_)))
                          (let ((_tl5545956443_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5546156436_)))
                                (_hd5546056440_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5546156436_))))
                            (if (gx#stx-pair? _hd5546056440_)
                                (let ((_e5546456446_
                                       (gx#syntax-e _hd5546056440_)))
                                  (let ((_tl5546256453_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5546456446_)))
                                        (_hd5546356450_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5546456446_))))
                                    (if (gx#identifier? _hd5546356450_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g63678_|
                                             _hd5546356450_)
                                            (if (gx#stx-pair? _tl5546256453_)
                                                (let ((_e5546756456_
                                                       (gx#syntax-e
                                                        _tl5546256453_)))
                                                  (let ((_tl5546556463_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5546756456_)))
                                                        (_hd5546656460_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5546756456_))))
                                                    (if (gx#stx-null?
                                                         _tl5546556463_)
                                                        (if (gx#stx-pair?
                                                             _tl5545956443_)
                                                            (let ((_e5547056466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5545956443_)))
                      (let ((_tl5546856473_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5547056466_)))
                            (_hd5546956470_
                             (let ()
                               (declare (not safe))
                               (##car _e5547056466_))))
                        (if (gx#stx-null? _tl5546856473_)
                            (___match6299462995_
                             _e5544256396_
                             _hd5544156400_
                             _tl5544056403_
                             _e5544556406_
                             _hd5544456410_
                             _tl5544356413_
                             _e5544656416_
                             _e5544956420_
                             _hd5544856424_
                             _tl5544756427_
                             ___splice6291062911_
                             _target5545056430_
                             _tl5545256433_
                             _e5546156436_
                             _hd5546056440_
                             _tl5545956443_
                             _e5546456446_
                             _hd5546356450_
                             _tl5546256453_
                             _e5546756456_
                             _hd5546656460_
                             _tl5546556463_
                             _e5547056466_
                             _hd5546956470_
                             _tl5546856473_)
                            (if (fx>= (gx#stx-length _tl5544756427_) '1)
                                (let ((___splice6291462915_
                                       (gx#syntax-split-splice
                                        _tl5544756427_
                                        '1)))
                                  (let ((_tl5548756316_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6291462915_
                                            '1)))
                                        (_target5548556313_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6291462915_
                                            '0))))
                                    (if (gx#stx-pair? _tl5548756316_)
                                        (let ((_e5549656319_
                                               (gx#syntax-e _tl5548756316_)))
                                          (let ((_tl5549456326_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5549656319_)))
                                                (_hd5549556323_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5549656319_))))
                                            (if (gx#stx-null? _tl5549456326_)
                                                (___match6303463035_
                                                 _e5544256396_
                                                 _hd5544156400_
                                                 _tl5544056403_
                                                 _e5544556406_
                                                 _hd5544456410_
                                                 _tl5544356413_
                                                 _e5544656416_
                                                 _e5544956420_
                                                 _hd5544856424_
                                                 _tl5544756427_
                                                 ___splice6291462915_
                                                 _target5548556313_
                                                 _tl5548756316_
                                                 _e5549656319_
                                                 _hd5549556323_
                                                 _tl5549456326_)
                                                (if (gx#stx-null?
                                                     _tl5544756427_)
                                                    (___kont6291662917_
                                                     _hd5544856424_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5543355647_))))))
                                        (if (gx#stx-null? _tl5544756427_)
                                            (___kont6291662917_ _hd5544856424_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5543355647_))))))
                                (if (gx#stx-null? _tl5544756427_)
                                    (___kont6291662917_ _hd5544856424_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5543355647_)))))))
                    (if (fx>= (gx#stx-length _tl5544756427_) '1)
                        (let ((___splice6291462915_
                               (gx#syntax-split-splice _tl5544756427_ '1)))
                          (let ((_tl5548756316_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6291462915_ '1)))
                                (_target5548556313_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6291462915_ '0))))
                            (if (gx#stx-pair? _tl5548756316_)
                                (let ((_e5549656319_
                                       (gx#syntax-e _tl5548756316_)))
                                  (let ((_tl5549456326_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5549656319_)))
                                        (_hd5549556323_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5549656319_))))
                                    (if (gx#stx-null? _tl5549456326_)
                                        (___match6303463035_
                                         _e5544256396_
                                         _hd5544156400_
                                         _tl5544056403_
                                         _e5544556406_
                                         _hd5544456410_
                                         _tl5544356413_
                                         _e5544656416_
                                         _e5544956420_
                                         _hd5544856424_
                                         _tl5544756427_
                                         ___splice6291462915_
                                         _target5548556313_
                                         _tl5548756316_
                                         _e5549656319_
                                         _hd5549556323_
                                         _tl5549456326_)
                                        (if (gx#stx-null? _tl5544756427_)
                                            (___kont6291662917_ _hd5544856424_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5543355647_))))))
                                (if (gx#stx-null? _tl5544756427_)
                                    (___kont6291662917_ _hd5544856424_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5543355647_))))))
                        (if (gx#stx-null? _tl5544756427_)
                            (___kont6291662917_ _hd5544856424_)
                            (let () (declare (not safe)) (_g5543355647_)))))
                (if (fx>= (gx#stx-length _tl5544756427_) '1)
                    (let ((___splice6291462915_
                           (gx#syntax-split-splice _tl5544756427_ '1)))
                      (let ((_tl5548756316_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6291462915_ '1)))
                            (_target5548556313_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6291462915_ '0))))
                        (if (gx#stx-pair? _tl5548756316_)
                            (let ((_e5549656319_ (gx#syntax-e _tl5548756316_)))
                              (let ((_tl5549456326_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5549656319_)))
                                    (_hd5549556323_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5549656319_))))
                                (if (gx#stx-null? _tl5549456326_)
                                    (___match6303463035_
                                     _e5544256396_
                                     _hd5544156400_
                                     _tl5544056403_
                                     _e5544556406_
                                     _hd5544456410_
                                     _tl5544356413_
                                     _e5544656416_
                                     _e5544956420_
                                     _hd5544856424_
                                     _tl5544756427_
                                     ___splice6291462915_
                                     _target5548556313_
                                     _tl5548756316_
                                     _e5549656319_
                                     _hd5549556323_
                                     _tl5549456326_)
                                    (if (gx#stx-null? _tl5544756427_)
                                        (___kont6291662917_ _hd5544856424_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5543355647_))))))
                            (if (gx#stx-null? _tl5544756427_)
                                (___kont6291662917_ _hd5544856424_)
                                (let ()
                                  (declare (not safe))
                                  (_g5543355647_))))))
                    (if (gx#stx-null? _tl5544756427_)
                        (___kont6291662917_ _hd5544856424_)
                        (let () (declare (not safe)) (_g5543355647_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5544756427_)
                                                          '1)
                                                    (let ((___splice6291462915_
                                                           (gx#syntax-split-splice
                                                            _tl5544756427_
                                                            '1)))
                                                      (let ((_tl5548756316_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6291462915_ '1)))
                    (_target5548556313_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6291462915_ '0))))
                (if (gx#stx-pair? _tl5548756316_)
                    (let ((_e5549656319_ (gx#syntax-e _tl5548756316_)))
                      (let ((_tl5549456326_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5549656319_)))
                            (_hd5549556323_
                             (let ()
                               (declare (not safe))
                               (##car _e5549656319_))))
                        (if (gx#stx-null? _tl5549456326_)
                            (___match6303463035_
                             _e5544256396_
                             _hd5544156400_
                             _tl5544056403_
                             _e5544556406_
                             _hd5544456410_
                             _tl5544356413_
                             _e5544656416_
                             _e5544956420_
                             _hd5544856424_
                             _tl5544756427_
                             ___splice6291462915_
                             _target5548556313_
                             _tl5548756316_
                             _e5549656319_
                             _hd5549556323_
                             _tl5549456326_)
                            (if (gx#stx-null? _tl5544756427_)
                                (___kont6291662917_ _hd5544856424_)
                                (let ()
                                  (declare (not safe))
                                  (_g5543355647_))))))
                    (if (gx#stx-null? _tl5544756427_)
                        (___kont6291662917_ _hd5544856424_)
                        (let () (declare (not safe)) (_g5543355647_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5544756427_)
                                                        (___kont6291662917_
                                                         _hd5544856424_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5543355647_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5544756427_)
                                                      '1)
                                                (let ((___splice6291462915_
                                                       (gx#syntax-split-splice
                                                        _tl5544756427_
                                                        '1)))
                                                  (let ((_tl5548756316_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6291462915_
                                                            '1)))
                                                        (_target5548556313_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6291462915_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5548756316_)
                                                        (let ((_e5549656319_
                                                               (gx#syntax-e
                                                                _tl5548756316_)))
                                                          (let ((_tl5549456326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5549656319_)))
                        (_hd5549556323_
                         (let () (declare (not safe)) (##car _e5549656319_))))
                    (if (gx#stx-null? _tl5549456326_)
                        (___match6303463035_
                         _e5544256396_
                         _hd5544156400_
                         _tl5544056403_
                         _e5544556406_
                         _hd5544456410_
                         _tl5544356413_
                         _e5544656416_
                         _e5544956420_
                         _hd5544856424_
                         _tl5544756427_
                         ___splice6291462915_
                         _target5548556313_
                         _tl5548756316_
                         _e5549656319_
                         _hd5549556323_
                         _tl5549456326_)
                        (if (gx#stx-null? _tl5544756427_)
                            (___kont6291662917_ _hd5544856424_)
                            (let () (declare (not safe)) (_g5543355647_))))))
                (if (gx#stx-null? _tl5544756427_)
                    (___kont6291662917_ _hd5544856424_)
                    (let () (declare (not safe)) (_g5543355647_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5544756427_)
                                                    (___kont6291662917_
                                                     _hd5544856424_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5543355647_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5544756427_)
                                                  '1)
                                            (let ((___splice6291462915_
                                                   (gx#syntax-split-splice
                                                    _tl5544756427_
                                                    '1)))
                                              (let ((_tl5548756316_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6291462915_
                                                        '1)))
                                                    (_target5548556313_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6291462915_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5548756316_)
                                                    (let ((_e5549656319_
                                                           (gx#syntax-e
                                                            _tl5548756316_)))
                                                      (let ((_tl5549456326_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5549656319_)))
                    (_hd5549556323_
                     (let () (declare (not safe)) (##car _e5549656319_))))
                (if (gx#stx-null? _tl5549456326_)
                    (___match6303463035_
                     _e5544256396_
                     _hd5544156400_
                     _tl5544056403_
                     _e5544556406_
                     _hd5544456410_
                     _tl5544356413_
                     _e5544656416_
                     _e5544956420_
                     _hd5544856424_
                     _tl5544756427_
                     ___splice6291462915_
                     _target5548556313_
                     _tl5548756316_
                     _e5549656319_
                     _hd5549556323_
                     _tl5549456326_)
                    (if (gx#stx-null? _tl5544756427_)
                        (___kont6291662917_ _hd5544856424_)
                        (let () (declare (not safe)) (_g5543355647_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5544756427_)
                                                        (___kont6291662917_
                                                         _hd5544856424_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5543355647_))))))
                                            (if (gx#stx-null? _tl5544756427_)
                                                (___kont6291662917_
                                                 _hd5544856424_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5543355647_)))))))
                                (if (fx>= (gx#stx-length _tl5544756427_) '1)
                                    (let ((___splice6291462915_
                                           (gx#syntax-split-splice
                                            _tl5544756427_
                                            '1)))
                                      (let ((_tl5548756316_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6291462915_
                                                '1)))
                                            (_target5548556313_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6291462915_
                                                '0))))
                                        (if (gx#stx-pair? _tl5548756316_)
                                            (let ((_e5549656319_
                                                   (gx#syntax-e
                                                    _tl5548756316_)))
                                              (let ((_tl5549456326_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5549656319_)))
                                                    (_hd5549556323_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5549656319_))))
                                                (if (gx#stx-null?
                                                     _tl5549456326_)
                                                    (___match6303463035_
                                                     _e5544256396_
                                                     _hd5544156400_
                                                     _tl5544056403_
                                                     _e5544556406_
                                                     _hd5544456410_
                                                     _tl5544356413_
                                                     _e5544656416_
                                                     _e5544956420_
                                                     _hd5544856424_
                                                     _tl5544756427_
                                                     ___splice6291462915_
                                                     _target5548556313_
                                                     _tl5548756316_
                                                     _e5549656319_
                                                     _hd5549556323_
                                                     _tl5549456326_)
                                                    (if (gx#stx-null?
                                                         _tl5544756427_)
                                                        (___kont6291662917_
                                                         _hd5544856424_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5543355647_))))))
                                            (if (gx#stx-null? _tl5544756427_)
                                                (___kont6291662917_
                                                 _hd5544856424_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5543355647_))))))
                                    (if (gx#stx-null? _tl5544756427_)
                                        (___kont6291662917_ _hd5544856424_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5543355647_)))))))
                        (if (fx>= (gx#stx-length _tl5544756427_) '1)
                            (let ((___splice6291462915_
                                   (gx#syntax-split-splice _tl5544756427_ '1)))
                              (let ((_tl5548756316_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice6291462915_ '1)))
                                    (_target5548556313_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice6291462915_
                                        '0))))
                                (if (gx#stx-pair? _tl5548756316_)
                                    (let ((_e5549656319_
                                           (gx#syntax-e _tl5548756316_)))
                                      (let ((_tl5549456326_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5549656319_)))
                                            (_hd5549556323_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5549656319_))))
                                        (if (gx#stx-null? _tl5549456326_)
                                            (___match6303463035_
                                             _e5544256396_
                                             _hd5544156400_
                                             _tl5544056403_
                                             _e5544556406_
                                             _hd5544456410_
                                             _tl5544356413_
                                             _e5544656416_
                                             _e5544956420_
                                             _hd5544856424_
                                             _tl5544756427_
                                             ___splice6291462915_
                                             _target5548556313_
                                             _tl5548756316_
                                             _e5549656319_
                                             _hd5549556323_
                                             _tl5549456326_)
                                            (if (gx#stx-null? _tl5544756427_)
                                                (___kont6291662917_
                                                 _hd5544856424_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5543355647_))))))
                                    (if (gx#stx-null? _tl5544756427_)
                                        (___kont6291662917_ _hd5544856424_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5543355647_))))))
                            (if (gx#stx-null? _tl5544756427_)
                                (___kont6291662917_ _hd5544856424_)
                                (let ()
                                  (declare (not safe))
                                  (_g5543355647_)))))))
                (if (fx>= (gx#stx-length _tl5544756427_) '1)
                    (let ((___splice6291462915_
                           (gx#syntax-split-splice _tl5544756427_ '1)))
                      (let ((_tl5548756316_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6291462915_ '1)))
                            (_target5548556313_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6291462915_ '0))))
                        (if (gx#stx-pair? _tl5548756316_)
                            (let ((_e5549656319_ (gx#syntax-e _tl5548756316_)))
                              (let ((_tl5549456326_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5549656319_)))
                                    (_hd5549556323_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5549656319_))))
                                (if (gx#stx-null? _tl5549456326_)
                                    (___match6303463035_
                                     _e5544256396_
                                     _hd5544156400_
                                     _tl5544056403_
                                     _e5544556406_
                                     _hd5544456410_
                                     _tl5544356413_
                                     _e5544656416_
                                     _e5544956420_
                                     _hd5544856424_
                                     _tl5544756427_
                                     ___splice6291462915_
                                     _target5548556313_
                                     _tl5548756316_
                                     _e5549656319_
                                     _hd5549556323_
                                     _tl5549456326_)
                                    (if (gx#stx-null? _tl5544756427_)
                                        (___kont6291662917_ _hd5544856424_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5543355647_))))))
                            (if (gx#stx-null? _tl5544756427_)
                                (___kont6291662917_ _hd5544856424_)
                                (let ()
                                  (declare (not safe))
                                  (_g5543355647_))))))
                    (if (gx#stx-null? _tl5544756427_)
                        (___kont6291662917_ _hd5544856424_)
                        (let () (declare (not safe)) (_g5543355647_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5544756427_)
                                                        (___kont6291662917_
                                                         _hd5544856424_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5543355647_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5543355647_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5544656416_ '2))
                                            (if (gx#stx-pair? _tl5544356413_)
                                                (let ((_e5552356119_
                                                       (gx#syntax-e
                                                        _tl5544356413_)))
                                                  (let ((_tl5552156126_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5552356119_)))
                                                        (_hd5552256123_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5552356119_))))
                                                    (if (gx#stx-pair?
                                                         _tl5552156126_)
                                                        (let ((_e5552656129_
                                                               (gx#syntax-e
                                                                _tl5552156126_)))
                                                          (let ((_tl5552456136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5552656129_)))
                        (_hd5552556133_
                         (let () (declare (not safe)) (##car _e5552656129_))))
                    (if (gx#stx-pair? _hd5552556133_)
                        (let ((_e5552956139_ (gx#syntax-e _hd5552556133_)))
                          (let ((_tl5552756146_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5552956139_)))
                                (_hd5552856143_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5552956139_))))
                            (if (gx#stx-pair? _hd5552856143_)
                                (let ((_e5553256149_
                                       (gx#syntax-e _hd5552856143_)))
                                  (let ((_tl5553056156_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5553256149_)))
                                        (_hd5553156153_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5553256149_))))
                                    (if (gx#identifier? _hd5553156153_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g63677_|
                                             _hd5553156153_)
                                            (if (gx#stx-pair? _tl5553056156_)
                                                (let ((_e5553556159_
                                                       (gx#syntax-e
                                                        _tl5553056156_)))
                                                  (let ((_tl5553356166_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5553556159_)))
                                                        (_hd5553456163_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5553556159_))))
                                                    (if (gx#stx-null?
                                                         _tl5553356166_)
                                                        (if (gx#stx-pair?
                                                             _tl5552756146_)
                                                            (let ((_e5553856169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5552756146_)))
                      (let ((_tl5553656176_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5553856169_)))
                            (_hd5553756173_
                             (let ()
                               (declare (not safe))
                               (##car _e5553856169_))))
                        (___kont6291862919_
                         _tl5552456136_
                         _tl5553656176_
                         _hd5553756173_
                         _hd5553456163_
                         _hd5552256123_
                         _hd5544156400_)))
                    (___kont6292062921_
                     _tl5552456136_
                     _tl5552756146_
                     _hd5552856143_
                     _hd5552256123_
                     _hd5544156400_))
                (___kont6292062921_
                 _tl5552456136_
                 _tl5552756146_
                 _hd5552856143_
                 _hd5552256123_
                 _hd5544156400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont6292062921_
                                                 _tl5552456136_
                                                 _tl5552756146_
                                                 _hd5552856143_
                                                 _hd5552256123_
                                                 _hd5544156400_))
                                            (___kont6292062921_
                                             _tl5552456136_
                                             _tl5552756146_
                                             _hd5552856143_
                                             _hd5552256123_
                                             _hd5544156400_))
                                        (___kont6292062921_
                                         _tl5552456136_
                                         _tl5552756146_
                                         _hd5552856143_
                                         _hd5552256123_
                                         _hd5544156400_))))
                                (___kont6292062921_
                                 _tl5552456136_
                                 _tl5552756146_
                                 _hd5552856143_
                                 _hd5552256123_
                                 _hd5544156400_))))
                        (if (gx#stx-null? _hd5552556133_)
                            (___kont6292262923_
                             _tl5552456136_
                             _hd5552256123_
                             _hd5544156400_)
                            (let () (declare (not safe)) (_g5543355647_))))))
                (let () (declare (not safe)) (_g5543355647_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5543355647_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5544656416_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5544356413_)
                                                    (let ((_e5559055868_
                                                           (gx#syntax-e
                                                            _tl5544356413_)))
                                                      (let ((_tl5558855875_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5559055868_)))
                    (_hd5558955872_
                     (let () (declare (not safe)) (##car _e5559055868_))))
                (if (gx#stx-pair? _tl5558855875_)
                    (let ((_e5559355878_ (gx#syntax-e _tl5558855875_)))
                      (let ((_tl5559155885_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5559355878_)))
                            (_hd5559255882_
                             (let ()
                               (declare (not safe))
                               (##car _e5559355878_))))
                        (if (gx#stx-pair? _hd5559255882_)
                            (let ((_e5559655888_ (gx#syntax-e _hd5559255882_)))
                              (let ((_tl5559455895_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5559655888_)))
                                    (_hd5559555892_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5559655888_))))
                                (___kont6292462925_
                                 _tl5559155885_
                                 _tl5559455895_
                                 _hd5559555892_
                                 _hd5558955872_
                                 _hd5544156400_)))
                            (if (gx#stx-pair/null? _hd5558955872_)
                                (let ((___splice6292862929_
                                       (gx#syntax-split-splice
                                        _hd5558955872_
                                        '0)))
                                  (let ((_tl5561555691_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6292862929_
                                            '1)))
                                        (_target5561355688_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6292862929_
                                            '0))))
                                    (if (gx#stx-null? _tl5561555691_)
                                        (___match6325663257_
                                         _e5544256396_
                                         _hd5544156400_
                                         _tl5544056403_
                                         _e5544556406_
                                         _hd5544456410_
                                         _tl5544356413_
                                         _e5544656416_
                                         _e5559055868_
                                         _hd5558955872_
                                         _tl5558855875_
                                         ___splice6292862929_
                                         _target5561355688_
                                         _tl5561555691_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5543355647_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5543355647_))))))
                    (if (gx#stx-pair/null? _hd5558955872_)
                        (let ((___splice6292862929_
                               (gx#syntax-split-splice _hd5558955872_ '0)))
                          (let ((_tl5561555691_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6292862929_ '1)))
                                (_target5561355688_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6292862929_ '0))))
                            (if (gx#stx-null? _tl5561555691_)
                                (___match6325663257_
                                 _e5544256396_
                                 _hd5544156400_
                                 _tl5544056403_
                                 _e5544556406_
                                 _hd5544456410_
                                 _tl5544356413_
                                 _e5544656416_
                                 _e5559055868_
                                 _hd5558955872_
                                 _tl5558855875_
                                 ___splice6292862929_
                                 _target5561355688_
                                 _tl5561555691_)
                                (let ()
                                  (declare (not safe))
                                  (_g5543355647_)))))
                        (let () (declare (not safe)) (_g5543355647_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5543355647_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5543355647_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5543355647_)))))
                          (let () (declare (not safe)) (_g5543355647_)))))
                  (let () (declare (not safe)) (_g5543355647_))))))))))
