(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g57717_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g57718_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#__lock-inline!|
      (lambda (_$stx53305_)
        (let* ((_g5330953323_
                (lambda (_g5331053319_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5331053319_)))
               (_g5330853365_
                (lambda (_g5331053327_)
                  (if (gx#stx-pair? _g5331053327_)
                      (let ((_e5331453330_ (gx#syntax-e _g5331053327_)))
                        (let ((_hd5331353334_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5331453330_)))
                              (_tl5331253337_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5331453330_))))
                          (if (gx#stx-pair? _tl5331253337_)
                              (let ((_e5331753340_
                                     (gx#syntax-e _tl5331253337_)))
                                (let ((_hd5331653344_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5331753340_)))
                                      (_tl5331553347_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5331753340_))))
                                  (if (gx#stx-null? _tl5331553347_)
                                      ((lambda (_L53350_)
                                         (let ((__tmp57422
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp57387
                                                (let ((__tmp57388
                                                       (let ((__tmp57415
                                                              (let ((__tmp57421
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'declare))
                            (__tmp57416
                             (let ((__tmp57417
                                    (let ((__tmp57420
                                           (gx#datum->syntax '#f 'not))
                                          (__tmp57418
                                           (let ((__tmp57419
                                                  (gx#datum->syntax
                                                   '#f
                                                   'interrupts-enabled)))
                                             (declare (not safe))
                                             (cons __tmp57419 '()))))
                                      (declare (not safe))
                                      (cons __tmp57420 __tmp57418))))
                               (declare (not safe))
                               (cons __tmp57417 '()))))
                        (declare (not safe))
                        (cons __tmp57421 __tmp57416)))
                     (__tmp57389
                      (let ((__tmp57390
                             (let ((__tmp57414 (gx#datum->syntax '#f 'let))
                                   (__tmp57391
                                    (let ((__tmp57413
                                           (gx#datum->syntax '#f 'again))
                                          (__tmp57392
                                           (let ((__tmp57393
                                                  (let ((__tmp57394
                                                         (let ((__tmp57412
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'unless))
                       (__tmp57395
                        (let ((__tmp57402
                               (let ((__tmp57411 (gx#datum->syntax '#f '##fx=))
                                     (__tmp57403
                                      (let ((__tmp57405
                                             (let ((__tmp57410
                                                    (gx#datum->syntax
                                                     '#f
                                                     '##vector-cas!))
                                                   (__tmp57406
                                                    (let ((__tmp57407
                                                           (let ((__tmp57408
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp57409
                                 (let () (declare (not safe)) (cons '0 '()))))
                            (declare (not safe))
                            (cons '1 __tmp57409))))
                     (declare (not safe))
                     (cons '0 __tmp57408))))
              (declare (not safe))
              (cons _L53350_ __tmp57407))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57410 __tmp57406)))
                                            (__tmp57404
                                             (let ()
                                               (declare (not safe))
                                               (cons '0 '()))))
                                        (declare (not safe))
                                        (cons __tmp57405 __tmp57404))))
                                 (declare (not safe))
                                 (cons __tmp57411 __tmp57403)))
                              (__tmp57396
                               (let ((__tmp57400
                                      (let ((__tmp57401
                                             (gx#datum->syntax
                                              '#f
                                              '##thread-yield!)))
                                        (declare (not safe))
                                        (cons __tmp57401 '())))
                                     (__tmp57397
                                      (let ((__tmp57398
                                             (let ((__tmp57399
                                                    (gx#datum->syntax
                                                     '#f
                                                     'again)))
                                               (declare (not safe))
                                               (cons __tmp57399 '()))))
                                        (declare (not safe))
                                        (cons __tmp57398 '()))))
                                 (declare (not safe))
                                 (cons __tmp57400 __tmp57397))))
                          (declare (not safe))
                          (cons __tmp57402 __tmp57396))))
                   (declare (not safe))
                   (cons __tmp57412 __tmp57395))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57394 '()))))
                                             (declare (not safe))
                                             (cons '() __tmp57393))))
                                      (declare (not safe))
                                      (cons __tmp57413 __tmp57392))))
                               (declare (not safe))
                               (cons __tmp57414 __tmp57391))))
                        (declare (not safe))
                        (cons __tmp57390 '()))))
                 (declare (not safe))
                 (cons __tmp57415 __tmp57389))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '() __tmp57388))))
                                           (declare (not safe))
                                           (cons __tmp57422 __tmp57387)))
                                       _hd5331653344_)
                                      (_g5330953323_ _g5331053327_))))
                              (_g5330953323_ _g5331053327_))))
                      (_g5330953323_ _g5331053327_)))))
          (_g5330853365_ _$stx53305_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_$stx53369_)
        (let* ((_g5337353387_
                (lambda (_g5337453383_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5337453383_)))
               (_g5337253428_
                (lambda (_g5337453391_)
                  (if (gx#stx-pair? _g5337453391_)
                      (let ((_e5337853394_ (gx#syntax-e _g5337453391_)))
                        (let ((_hd5337753398_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5337853394_)))
                              (_tl5337653401_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5337853394_))))
                          (if (gx#stx-pair? _tl5337653401_)
                              (let ((_e5338153404_
                                     (gx#syntax-e _tl5337653401_)))
                                (let ((_hd5338053408_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5338153404_)))
                                      (_tl5337953411_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5338153404_))))
                                  (if (gx#stx-null? _tl5337953411_)
                                      ((lambda (_L53414_)
                                         (let ((__tmp57427
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-cas!))
                                               (__tmp57423
                                                (let ((__tmp57424
                                                       (let ((__tmp57425
                                                              (let ((__tmp57426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons '0 __tmp57426))))
                 (declare (not safe))
                 (cons '0 __tmp57425))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L53414_ __tmp57424))))
                                           (declare (not safe))
                                           (cons __tmp57427 __tmp57423)))
                                       _hd5338053408_)
                                      (_g5337353387_ _g5337453391_))))
                              (_g5337353387_ _g5337453391_))))
                      (_g5337353387_ _g5337453391_)))))
          (_g5337253428_ _$stx53369_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_$stx53432_)
        (let* ((_g5343653446_
                (lambda (_g5343753442_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5343753442_)))
               (_g5343553467_
                (lambda (_g5343753450_)
                  (if (gx#stx-pair? _g5343753450_)
                      (let ((_e5344053453_ (gx#syntax-e _g5343753450_)))
                        (let ((_hd5343953457_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5344053453_)))
                              (_tl5343853460_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5344053453_))))
                          (if (gx#stx-null? _tl5343853460_)
                              ((lambda ()
                                 (let ((__tmp57429
                                        (gx#datum->syntax '#f 'vector))
                                       (__tmp57428
                                        (let ()
                                          (declare (not safe))
                                          (cons '0 '()))))
                                   (declare (not safe))
                                   (cons __tmp57429 __tmp57428))))
                              (_g5343653446_ _g5343753450_))))
                      (_g5343653446_ _g5343753450_)))))
          (_g5343553467_ _$stx53432_))))
    (define |[:0:]#defassget|
      (lambda (_$stx53471_)
        (let* ((_g5347553493_
                (lambda (_g5347653489_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5347653489_)))
               (_g5347453548_
                (lambda (_g5347653497_)
                  (if (gx#stx-pair? _g5347653497_)
                      (let ((_e5348153500_ (gx#syntax-e _g5347653497_)))
                        (let ((_hd5348053504_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5348153500_)))
                              (_tl5347953507_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5348153500_))))
                          (if (gx#stx-pair? _tl5347953507_)
                              (let ((_e5348453510_
                                     (gx#syntax-e _tl5347953507_)))
                                (let ((_hd5348353514_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5348453510_)))
                                      (_tl5348253517_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5348453510_))))
                                  (if (gx#stx-pair? _tl5348253517_)
                                      (let ((_e5348753520_
                                             (gx#syntax-e _tl5348253517_)))
                                        (let ((_hd5348653524_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5348753520_)))
                                              (_tl5348553527_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5348753520_))))
                                          (if (gx#stx-null? _tl5348553527_)
                                              ((lambda (_L53530_ _L53532_)
                                                 (let ((__tmp57478
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp57430
                                                        (let ((__tmp57469
                                                               (let ((__tmp57470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp57477 (gx#datum->syntax '#f 'key))
                                    (__tmp57471
                                     (let ((__tmp57476
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp57472
                                            (let ((__tmp57473
                                                   (let ((__tmp57475
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp57474
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp57475
                                                           __tmp57474))))
                                              (declare (not safe))
                                              (cons __tmp57473 '()))))
                                       (declare (not safe))
                                       (cons __tmp57476 __tmp57472))))
                                (declare (not safe))
                                (cons __tmp57477 __tmp57471))))
                         (declare (not safe))
                         (cons _L53532_ __tmp57470)))
                      (__tmp57431
                       (let ((__tmp57432
                              (let ((__tmp57468 (gx#datum->syntax '#f 'cond))
                                    (__tmp57433
                                     (let ((__tmp57450
                                            (let ((__tmp57455
                                                   (let ((__tmp57467
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp57456
                                                          (let ((__tmp57463
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp57466 (gx#datum->syntax '#f 'pair?))
                               (__tmp57464
                                (let ((__tmp57465 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp57465 '()))))
                           (declare (not safe))
                           (cons __tmp57466 __tmp57464)))
                        (__tmp57457
                         (let ((__tmp57458
                                (let ((__tmp57459
                                       (let ((__tmp57462
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp57460
                                              (let ((__tmp57461
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp57461 '()))))
                                         (declare (not safe))
                                         (cons __tmp57462 __tmp57460))))
                                  (declare (not safe))
                                  (cons _L53530_ __tmp57459))))
                           (declare (not safe))
                           (cons __tmp57458 '()))))
                    (declare (not safe))
                    (cons __tmp57463 __tmp57457))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57467
                                                           __tmp57456)))
                                                  (__tmp57451
                                                   (let ((__tmp57454
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp57452
                                                          (let ((__tmp57453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp57453 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57454
                                                           __tmp57452))))
                                              (declare (not safe))
                                              (cons __tmp57455 __tmp57451)))
                                           (__tmp57434
                                            (let ((__tmp57440
                                                   (let ((__tmp57446
                                                          (let ((__tmp57449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp57447
                         (let ((__tmp57448 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp57448 '()))))
                    (declare (not safe))
                    (cons __tmp57449 __tmp57447)))
                 (__tmp57441
                  (let ((__tmp57442
                         (let ((__tmp57445 (gx#datum->syntax '#f 'default))
                               (__tmp57443
                                (let ((__tmp57444 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp57444 '()))))
                           (declare (not safe))
                           (cons __tmp57445 __tmp57443))))
                    (declare (not safe))
                    (cons __tmp57442 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57446
                                                           __tmp57441)))
                                                  (__tmp57435
                                                   (let ((__tmp57436
                                                          (let ((__tmp57439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp57437
                         (let ((__tmp57438 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp57438 '()))))
                    (declare (not safe))
                    (cons __tmp57439 __tmp57437))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57436 '()))))
                                              (declare (not safe))
                                              (cons __tmp57440 __tmp57435))))
                                       (declare (not safe))
                                       (cons __tmp57450 __tmp57434))))
                                (declare (not safe))
                                (cons __tmp57468 __tmp57433))))
                         (declare (not safe))
                         (cons __tmp57432 '()))))
                  (declare (not safe))
                  (cons __tmp57469 __tmp57431))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57478
                                                         __tmp57430)))
                                               _hd5348653524_
                                               _hd5348353514_)
                                              (_g5347553493_ _g5347653497_))))
                                      (_g5347553493_ _g5347653497_))))
                              (_g5347553493_ _g5347653497_))))
                      (_g5347553493_ _g5347653497_)))))
          (_g5347453548_ _$stx53471_))))
    (define |[:0:]#defpget|
      (lambda (_$stx53552_)
        (let* ((_g5355653574_
                (lambda (_g5355753570_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5355753570_)))
               (_g5355553629_
                (lambda (_g5355753578_)
                  (if (gx#stx-pair? _g5355753578_)
                      (let ((_e5356253581_ (gx#syntax-e _g5355753578_)))
                        (let ((_hd5356153585_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5356253581_)))
                              (_tl5356053588_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5356253581_))))
                          (if (gx#stx-pair? _tl5356053588_)
                              (let ((_e5356553591_
                                     (gx#syntax-e _tl5356053588_)))
                                (let ((_hd5356453595_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5356553591_)))
                                      (_tl5356353598_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5356553591_))))
                                  (if (gx#stx-pair? _tl5356353598_)
                                      (let ((_e5356853601_
                                             (gx#syntax-e _tl5356353598_)))
                                        (let ((_hd5356753605_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5356853601_)))
                                              (_tl5356653608_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5356853601_))))
                                          (if (gx#stx-null? _tl5356653608_)
                                              ((lambda (_L53611_ _L53613_)
                                                 (let ((__tmp57548
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp57479
                                                        (let ((__tmp57539
                                                               (let ((__tmp57540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp57547 (gx#datum->syntax '#f 'key))
                                    (__tmp57541
                                     (let ((__tmp57546
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp57542
                                            (let ((__tmp57543
                                                   (let ((__tmp57545
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp57544
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp57545
                                                           __tmp57544))))
                                              (declare (not safe))
                                              (cons __tmp57543 '()))))
                                       (declare (not safe))
                                       (cons __tmp57546 __tmp57542))))
                                (declare (not safe))
                                (cons __tmp57547 __tmp57541))))
                         (declare (not safe))
                         (cons _L53613_ __tmp57540)))
                      (__tmp57480
                       (let ((__tmp57481
                              (let ((__tmp57538 (gx#datum->syntax '#f 'let))
                                    (__tmp57482
                                     (let ((__tmp57537
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp57483
                                            (let ((__tmp57532
                                                   (let ((__tmp57533
                                                          (let ((__tmp57536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp57534
                         (let ((__tmp57535 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp57535 '()))))
                    (declare (not safe))
                    (cons __tmp57536 __tmp57534))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57533 '())))
                                                  (__tmp57484
                                                   (let ((__tmp57485
                                                          (let ((__tmp57531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp57486
                         (let ((__tmp57530 (gx#datum->syntax '#f 'rest))
                               (__tmp57487
                                (let ((__tmp57506
                                       (let ((__tmp57523
                                              (let ((__tmp57529
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp57524
                                                     (let ((__tmp57528
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp57525
                                                            (let ((__tmp57527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp57526 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp57527 __tmp57526))))
               (declare (not safe))
               (cons __tmp57528 __tmp57525))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57529 __tmp57524)))
                                             (__tmp57507
                                              (let ((__tmp57508
                                                     (let ((__tmp57522
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp57509
                                                            (let ((__tmp57517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57518
                                  (let ((__tmp57521 (gx#datum->syntax '#f 'k))
                                        (__tmp57519
                                         (let ((__tmp57520
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp57520 '()))))
                                    (declare (not safe))
                                    (cons __tmp57521 __tmp57519))))
                             (declare (not safe))
                             (cons _L53611_ __tmp57518)))
                          (__tmp57510
                           (let ((__tmp57516 (gx#datum->syntax '#f 'v))
                                 (__tmp57511
                                  (let ((__tmp57512
                                         (let ((__tmp57515
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp57513
                                                (let ((__tmp57514
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp57514 '()))))
                                           (declare (not safe))
                                           (cons __tmp57515 __tmp57513))))
                                    (declare (not safe))
                                    (cons __tmp57512 '()))))
                             (declare (not safe))
                             (cons __tmp57516 __tmp57511))))
                      (declare (not safe))
                      (cons __tmp57517 __tmp57510))))
               (declare (not safe))
               (cons __tmp57522 __tmp57509))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57508 '()))))
                                         (declare (not safe))
                                         (cons __tmp57523 __tmp57507)))
                                      (__tmp57488
                                       (let ((__tmp57489
                                              (let ((__tmp57505
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp57490
                                                     (let ((__tmp57491
                                                            (let ((__tmp57504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp57492
                           (let ((__tmp57500
                                  (let ((__tmp57503
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp57501
                                         (let ((__tmp57502
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp57502 '()))))
                                    (declare (not safe))
                                    (cons __tmp57503 __tmp57501)))
                                 (__tmp57493
                                  (let ((__tmp57496
                                         (let ((__tmp57499
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp57497
                                                (let ((__tmp57498
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp57498 '()))))
                                           (declare (not safe))
                                           (cons __tmp57499 __tmp57497)))
                                        (__tmp57494
                                         (let ((__tmp57495
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp57495 '()))))
                                    (declare (not safe))
                                    (cons __tmp57496 __tmp57494))))
                             (declare (not safe))
                             (cons __tmp57500 __tmp57493))))
                      (declare (not safe))
                      (cons __tmp57504 __tmp57492))))
               (declare (not safe))
               (cons __tmp57491 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57505 __tmp57490))))
                                         (declare (not safe))
                                         (cons __tmp57489 '()))))
                                  (declare (not safe))
                                  (cons __tmp57506 __tmp57488))))
                           (declare (not safe))
                           (cons __tmp57530 __tmp57487))))
                    (declare (not safe))
                    (cons __tmp57531 __tmp57486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57485 '()))))
                                              (declare (not safe))
                                              (cons __tmp57532 __tmp57484))))
                                       (declare (not safe))
                                       (cons __tmp57537 __tmp57483))))
                                (declare (not safe))
                                (cons __tmp57538 __tmp57482))))
                         (declare (not safe))
                         (cons __tmp57481 '()))))
                  (declare (not safe))
                  (cons __tmp57539 __tmp57480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57548
                                                         __tmp57479)))
                                               _hd5356753605_
                                               _hd5356453595_)
                                              (_g5355653574_ _g5355753578_))))
                                      (_g5355653574_ _g5355753578_))))
                              (_g5355653574_ _g5355753578_))))
                      (_g5355653574_ _g5355753578_)))))
          (_g5355553629_ _$stx53552_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx53633_)
        (let* ((_g5363753655_
                (lambda (_g5363853651_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5363853651_)))
               (_g5363653710_
                (lambda (_g5363853659_)
                  (if (gx#stx-pair? _g5363853659_)
                      (let ((_e5364353662_ (gx#syntax-e _g5363853659_)))
                        (let ((_hd5364253666_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5364353662_)))
                              (_tl5364153669_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5364353662_))))
                          (if (gx#stx-pair? _tl5364153669_)
                              (let ((_e5364653672_
                                     (gx#syntax-e _tl5364153669_)))
                                (let ((_hd5364553676_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5364653672_)))
                                      (_tl5364453679_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5364653672_))))
                                  (if (gx#stx-pair? _tl5364453679_)
                                      (let ((_e5364953682_
                                             (gx#syntax-e _tl5364453679_)))
                                        (let ((_hd5364853686_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5364953682_)))
                                              (_tl5364753689_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5364953682_))))
                                          (if (gx#stx-null? _tl5364753689_)
                                              ((lambda (_L53692_ _L53694_)
                                                 (let ((__tmp57619
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp57549
                                                        (let ((__tmp57614
                                                               (let ((__tmp57615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp57618 (gx#datum->syntax '#f 'el))
                                    (__tmp57616
                                     (let ((__tmp57617
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp57617 '()))))
                                (declare (not safe))
                                (cons __tmp57618 __tmp57616))))
                         (declare (not safe))
                         (cons _L53694_ __tmp57615)))
                      (__tmp57550
                       (let ((__tmp57551
                              (let ((__tmp57613 (gx#datum->syntax '#f 'let))
                                    (__tmp57552
                                     (let ((__tmp57612
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp57553
                                            (let ((__tmp57601
                                                   (let ((__tmp57608
                                                          (let ((__tmp57611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp57609
                         (let ((__tmp57610 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp57610 '()))))
                    (declare (not safe))
                    (cons __tmp57611 __tmp57609)))
                 (__tmp57602
                  (let ((__tmp57603
                         (let ((__tmp57607 (gx#datum->syntax '#f 'r))
                               (__tmp57604
                                (let ((__tmp57605
                                       (let ((__tmp57606
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp57606 '()))))
                                  (declare (not safe))
                                  (cons __tmp57605 '()))))
                           (declare (not safe))
                           (cons __tmp57607 __tmp57604))))
                    (declare (not safe))
                    (cons __tmp57603 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57608
                                                           __tmp57602)))
                                                  (__tmp57554
                                                   (let ((__tmp57555
                                                          (let ((__tmp57600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp57556
                         (let ((__tmp57599 (gx#datum->syntax '#f 'rest))
                               (__tmp57557
                                (let ((__tmp57563
                                       (let ((__tmp57594
                                              (let ((__tmp57598
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp57595
                                                     (let ((__tmp57597
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp57596
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp57597
                                                             __tmp57596))))
                                                (declare (not safe))
                                                (cons __tmp57598 __tmp57595)))
                                             (__tmp57564
                                              (let ((__tmp57565
                                                     (let ((__tmp57593
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp57566
                                                            (let ((__tmp57588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57589
                                  (let ((__tmp57592 (gx#datum->syntax '#f 'el))
                                        (__tmp57590
                                         (let ((__tmp57591
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp57591 '()))))
                                    (declare (not safe))
                                    (cons __tmp57592 __tmp57590))))
                             (declare (not safe))
                             (cons _L53692_ __tmp57589)))
                          (__tmp57567
                           (let ((__tmp57580
                                  (let ((__tmp57587
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp57581
                                         (let ((__tmp57586
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp57582
                                                (let ((__tmp57585
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp57583
                                                       (let ((__tmp57584
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp57584
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp57585
                                                        __tmp57583))))
                                           (declare (not safe))
                                           (cons __tmp57586 __tmp57582))))
                                    (declare (not safe))
                                    (cons __tmp57587 __tmp57581)))
                                 (__tmp57568
                                  (let ((__tmp57569
                                         (let ((__tmp57579
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp57570
                                                (let ((__tmp57578
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp57571
                                                       (let ((__tmp57572
                                                              (let ((__tmp57577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp57573
                             (let ((__tmp57576 (gx#datum->syntax '#f 'hd))
                                   (__tmp57574
                                    (let ((__tmp57575
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp57575 '()))))
                               (declare (not safe))
                               (cons __tmp57576 __tmp57574))))
                        (declare (not safe))
                        (cons __tmp57577 __tmp57573))))
                 (declare (not safe))
                 (cons __tmp57572 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57578
                                                        __tmp57571))))
                                           (declare (not safe))
                                           (cons __tmp57579 __tmp57570))))
                                    (declare (not safe))
                                    (cons __tmp57569 '()))))
                             (declare (not safe))
                             (cons __tmp57580 __tmp57568))))
                      (declare (not safe))
                      (cons __tmp57588 __tmp57567))))
               (declare (not safe))
               (cons __tmp57593 __tmp57566))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57565 '()))))
                                         (declare (not safe))
                                         (cons __tmp57594 __tmp57564)))
                                      (__tmp57558
                                       (let ((__tmp57559
                                              (let ((__tmp57562
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp57560
                                                     (let ((__tmp57561
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp57561 '()))))
                                                (declare (not safe))
                                                (cons __tmp57562 __tmp57560))))
                                         (declare (not safe))
                                         (cons __tmp57559 '()))))
                                  (declare (not safe))
                                  (cons __tmp57563 __tmp57558))))
                           (declare (not safe))
                           (cons __tmp57599 __tmp57557))))
                    (declare (not safe))
                    (cons __tmp57600 __tmp57556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57555 '()))))
                                              (declare (not safe))
                                              (cons __tmp57601 __tmp57554))))
                                       (declare (not safe))
                                       (cons __tmp57612 __tmp57553))))
                                (declare (not safe))
                                (cons __tmp57613 __tmp57552))))
                         (declare (not safe))
                         (cons __tmp57551 '()))))
                  (declare (not safe))
                  (cons __tmp57614 __tmp57550))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57619
                                                         __tmp57549)))
                                               _hd5364853686_
                                               _hd5364553676_)
                                              (_g5363753655_ _g5363853659_))))
                                      (_g5363753655_ _g5363853659_))))
                              (_g5363753655_ _g5363853659_))))
                      (_g5363753655_ _g5363853659_)))))
          (_g5363653710_ _$stx53633_))))
    (define |[:0:]#DBG|
      (lambda (_$stx53714_)
        (let* ((_g5371853729_
                (lambda (_g5371953725_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5371953725_)))
               (_g5371753758_
                (lambda (_g5371953733_)
                  (if (gx#stx-pair? _g5371953733_)
                      (let ((_e5372353736_ (gx#syntax-e _g5371953733_)))
                        (let ((_hd5372253740_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5372353736_)))
                              (_tl5372153743_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5372353736_))))
                          ((lambda (_L53746_)
                             (let ((__tmp57621 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp57620
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L53746_))))
                               (declare (not safe))
                               (cons __tmp57621 __tmp57620)))
                           _tl5372153743_)))
                      (_g5371853729_ _g5371953733_)))))
          (_g5371753758_ _$stx53714_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx53762_)
        (let* ((___stx5691856919_ _$stx53762_)
               (_g5377353987_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx5691856919_))))
          (let ((___kont5692156922_
                 (lambda (_L54840_ _L54842_ _L54843_ _L54844_ _L54845_)
                   (let ((__tmp57622
                          (let ((__tmp57623
                                 (let ((__tmp57624
                                        (let ((__tmp57628
                                               (let ((__tmp57629
                                                      (lambda (_g5487554878_
                                                               _g5487654881_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5487554878_
                                                                _g5487654881_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp57629
                                                         '()
                                                         _L54843_)))
                                              (__tmp57625
                                               (let ((__tmp57626
                                                      (let ((__tmp57627
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L54840_ '()))))
                (declare (not safe))
                (cons _L54842_ __tmp57627))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L54844_ __tmp57626))))
                                          (declare (not safe))
                                          (cons __tmp57628 __tmp57625))))
                                   (declare (not safe))
                                   (cons '() __tmp57624))))
                            (declare (not safe))
                            (cons '2 __tmp57623))))
                     (declare (not safe))
                     (cons _L54845_ __tmp57622))))
                (___kont5692556926_
                 (lambda (_L54693_ _L54695_ _L54696_ _L54697_)
                   (let ((__tmp57630
                          (let ((__tmp57631
                                 (let ((__tmp57632
                                        (let ((__tmp57636
                                               (let ((__tmp57637
                                                      (lambda (_g5472054723_
                                                               _g5472154726_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5472054723_
                                                                _g5472154726_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp57637
                                                         '()
                                                         _L54695_)))
                                              (__tmp57633
                                               (let ((__tmp57634
                                                      (let ((__tmp57635
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L54693_ '()))))
                (declare (not safe))
                (cons _L54693_ __tmp57635))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L54696_ __tmp57634))))
                                          (declare (not safe))
                                          (cons __tmp57636 __tmp57633))))
                                   (declare (not safe))
                                   (cons '() __tmp57632))))
                            (declare (not safe))
                            (cons '2 __tmp57631))))
                     (declare (not safe))
                     (cons _L54697_ __tmp57630))))
                (___kont5692956930_
                 (lambda (_L54596_)
                   (let ((__tmp57649 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp57638
                          (let ((__tmp57639
                                 (let ((__tmp57646
                                        (let ((__tmp57648
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp57647
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp57648 __tmp57647)))
                                       (__tmp57640
                                        (let ((__tmp57643
                                               (let ((__tmp57645
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp57644
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp57645 __tmp57644)))
                                              (__tmp57641
                                               (let ((__tmp57642
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp57642))))
                                          (declare (not safe))
                                          (cons __tmp57643 __tmp57641))))
                                   (declare (not safe))
                                   (cons __tmp57646 __tmp57640))))
                            (declare (not safe))
                            (cons _L54596_ __tmp57639))))
                     (declare (not safe))
                     (cons __tmp57649 __tmp57638))))
                (___kont5693156932_
                 (lambda (_L54519_
                          _L54521_
                          _L54522_
                          _L54523_
                          _L54524_
                          _L54525_)
                   (let ((__tmp57650
                          (let ((__tmp57651
                                 (let ((__tmp57653
                                        (let ((__tmp57654
                                               (let ((__tmp57655
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L54522_ '()))))
                                                 (declare (not safe))
                                                 (cons _L54523_ __tmp57655))))
                                          (declare (not safe))
                                          (cons __tmp57654 _L54524_)))
                                       (__tmp57652
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54521_ _L54519_))))
                                   (declare (not safe))
                                   (cons __tmp57653 __tmp57652))))
                            (declare (not safe))
                            (cons '2 __tmp57651))))
                     (declare (not safe))
                     (cons _L54525_ __tmp57650))))
                (___kont5693356934_
                 (lambda (_L54400_ _L54402_ _L54403_ _L54404_ _L54405_)
                   (let ((__tmp57656
                          (let ((__tmp57657
                                 (let ((__tmp57659
                                        (let ((__tmp57660
                                               (let ((__tmp57661
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L54403_ '()))))
                                                 (declare (not safe))
                                                 (cons _L54403_ __tmp57661))))
                                          (declare (not safe))
                                          (cons __tmp57660 _L54404_)))
                                       (__tmp57658
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54402_ _L54400_))))
                                   (declare (not safe))
                                   (cons __tmp57659 __tmp57658))))
                            (declare (not safe))
                            (cons '2 __tmp57657))))
                     (declare (not safe))
                     (cons _L54405_ __tmp57656))))
                (___kont5693556936_
                 (lambda (_L54317_ _L54319_ _L54320_)
                   (let ((__tmp57662
                          (let ((__tmp57663
                                 (let ((__tmp57664
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54319_ _L54317_))))
                                   (declare (not safe))
                                   (cons '() __tmp57664))))
                            (declare (not safe))
                            (cons '3 __tmp57663))))
                     (declare (not safe))
                     (cons _L54320_ __tmp57662))))
                (___kont5693756938_
                 (lambda (_L54238_ _L54240_ _L54241_ _L54242_ _L54243_)
                   (let ((__tmp57665
                          (let ((__tmp57666
                                 (let ((__tmp57668
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54241_ _L54242_)))
                                       (__tmp57667
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54240_ _L54238_))))
                                   (declare (not safe))
                                   (cons __tmp57668 __tmp57667))))
                            (declare (not safe))
                            (cons '3 __tmp57666))))
                     (declare (not safe))
                     (cons _L54243_ __tmp57665))))
                (___kont5693956940_
                 (lambda (_L54122_
                          _L54124_
                          _L54125_
                          _L54126_
                          _L54127_
                          _L54128_)
                   (let ((__tmp57716 (gx#datum->syntax '#f 'let))
                         (__tmp57669
                          (let ((__tmp57704
                                 (let ((__tmp57713
                                        (let ((__tmp57715
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp57714
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L54125_ '()))))
                                          (declare (not safe))
                                          (cons __tmp57715 __tmp57714)))
                                       (__tmp57705
                                        (let ((__tmp57706
                                               (let ((__tmp57712
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp57707
                                                      (let ((__tmp57708
                                                             (let ((__tmp57711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp57709
                            (let ((__tmp57710
                                   (let ()
                                     (declare (not safe))
                                     (cons _L54122_ '()))))
                              (declare (not safe))
                              (cons '() __tmp57710))))
                       (declare (not safe))
                       (cons __tmp57711 __tmp57709))))
                (declare (not safe))
                (cons __tmp57708 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57712
                                                       __tmp57707))))
                                          (declare (not safe))
                                          (cons __tmp57706 '()))))
                                   (declare (not safe))
                                   (cons __tmp57713 __tmp57705)))
                                (__tmp57670
                                 (let ((__tmp57671
                                        (let ((__tmp57703
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp57672
                                               (let ((__tmp57702
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp57673
                                                      (let ((__tmp57677
                                                             (let ((__tmp57701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp57678
                            (let ((__tmp57700 (gx#datum->syntax '#f 'tagval))
                                  (__tmp57679
                                   (let ((__tmp57695
                                          (let ((__tmp57699
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp57696
                                                 (let ((__tmp57697
                                                        (let ((__tmp57698
                                                               (lambda (_g5416254165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5416354168_)
                         (let ()
                           (declare (not safe))
                           (cons _g5416254165_ _g5416354168_)))))
                  (declare (not safe))
                  (foldr1 __tmp57698 '() _L54127_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57697 '()))))
                                            (declare (not safe))
                                            (cons __tmp57699 __tmp57696)))
                                         (__tmp57680
                                          (let ((__tmp57687
                                                 (let ((__tmp57694
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp57688
                                                        (let ((__tmp57689
                                                               (lambda (_g5416054171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5416154174_)
                         (let ((__tmp57690
                                (let ((__tmp57693
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp57691
                                       (let ((__tmp57692
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5416054171_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp57692))))
                                  (declare (not safe))
                                  (cons __tmp57693 __tmp57691))))
                           (declare (not safe))
                           (cons __tmp57690 _g5416154174_)))))
                  (declare (not safe))
                  (foldr1 __tmp57689 '() _L54126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57694
                                                         __tmp57688)))
                                                (__tmp57681
                                                 (let ((__tmp57684
                                                        (let ((__tmp57686
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp57685
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L54124_ '()))))
                  (declare (not safe))
                  (cons __tmp57686 __tmp57685)))
               (__tmp57682
                (let ((__tmp57683 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp57683 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57684
                                                         __tmp57682))))
                                            (declare (not safe))
                                            (cons __tmp57687 __tmp57681))))
                                     (declare (not safe))
                                     (cons __tmp57695 __tmp57680))))
                              (declare (not safe))
                              (cons __tmp57700 __tmp57679))))
                       (declare (not safe))
                       (cons __tmp57701 __tmp57678)))
                    (__tmp57674
                     (let ((__tmp57675
                            (let ((__tmp57676 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp57676 '()))))
                       (declare (not safe))
                       (cons __tmp57675 '()))))
                (declare (not safe))
                (cons __tmp57677 __tmp57674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57702
                                                       __tmp57673))))
                                          (declare (not safe))
                                          (cons __tmp57703 __tmp57672))))
                                   (declare (not safe))
                                   (cons __tmp57671 '()))))
                            (declare (not safe))
                            (cons __tmp57704 __tmp57670))))
                     (declare (not safe))
                     (cons __tmp57716 __tmp57669)))))
            (let* ((___match5726957270_
                    (lambda (_e5394553994_
                             _hd5394453998_
                             _tl5394354001_
                             _e5394854004_
                             _hd5394754008_
                             _tl5394654011_
                             _e5394954014_
                             _e5395254018_
                             _hd5395154022_
                             _tl5395054025_
                             ___splice5694156942_
                             _target5395354028_
                             _tl5395554031_)
                      (letrec ((_loop5395654034_
                                (lambda (_hd5395454038_
                                         _exprs5396054041_
                                         _names5396154043_)
                                  (if (gx#stx-pair? _hd5395454038_)
                                      (let ((_e5395754046_
                                             (gx#syntax-e _hd5395454038_)))
                                        (let ((_lp-tl5395954053_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5395754046_)))
                                              (_lp-hd5395854050_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5395754046_))))
                                          (if (gx#stx-pair? _lp-hd5395854050_)
                                              (let ((_e5396654056_
                                                     (gx#syntax-e
                                                      _lp-hd5395854050_)))
                                                (let ((_tl5396454063_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5396654056_)))
                                                      (_hd5396554060_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5396654056_))))
                                                  (if (gx#stx-pair?
                                                       _tl5396454063_)
                                                      (let ((_e5396954066_
                                                             (gx#syntax-e
                                                              _tl5396454063_)))
                                                        (let ((_tl5396754073_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5396954066_)))
                      (_hd5396854070_
                       (let () (declare (not safe)) (##car _e5396954066_))))
                  (if (gx#stx-null? _tl5396754073_)
                      (_loop5395654034_
                       _lp-tl5395954053_
                       (let ()
                         (declare (not safe))
                         (cons _hd5396854070_ _exprs5396054041_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5396554060_ _names5396154043_)))
                      (let () (declare (not safe)) (_g5377353987_)))))
              (let () (declare (not safe)) (_g5377353987_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5377353987_)))))
                                      (let ((_names5396354079_
                                             (reverse _names5396154043_))
                                            (_exprs5396254076_
                                             (reverse _exprs5396054041_)))
                                        (if (gx#stx-pair? _tl5395054025_)
                                            (let ((_e5397254082_
                                                   (gx#syntax-e
                                                    _tl5395054025_)))
                                              (let ((_tl5397054089_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5397254082_)))
                                                    (_hd5397154086_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5397254082_))))
                                                (if (gx#stx-null?
                                                     _hd5397154086_)
                                                    (if (gx#stx-pair?
                                                         _tl5397054089_)
                                                        (let ((_e5397554092_
                                                               (gx#syntax-e
                                                                _tl5397054089_)))
                                                          (let ((_tl5397354099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5397554092_)))
                        (_hd5397454096_
                         (let () (declare (not safe)) (##car _e5397554092_))))
                    (if (gx#stx-pair? _tl5397354099_)
                        (let ((_e5397854102_ (gx#syntax-e _tl5397354099_)))
                          (let ((_tl5397654109_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5397854102_)))
                                (_hd5397754106_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5397854102_))))
                            (if (gx#stx-pair? _tl5397654109_)
                                (let ((_e5398154112_
                                       (gx#syntax-e _tl5397654109_)))
                                  (let ((_tl5397954119_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5398154112_)))
                                        (_hd5398054116_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5398154112_))))
                                    (if (gx#stx-null? _tl5397954119_)
                                        (___kont5693956940_
                                         _hd5398054116_
                                         _hd5397754106_
                                         _hd5397454096_
                                         _exprs5396254076_
                                         _names5396354079_
                                         _hd5394453998_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5377353987_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5377353987_)))))
                        (let () (declare (not safe)) (_g5377353987_)))))
                (let () (declare (not safe)) (_g5377353987_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5377353987_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5377353987_))))))))
                        (_loop5395654034_ _target5395354028_ '() '()))))
                   (___match5704757048_
                    (lambda (_e5381754619_
                             _hd5381654623_
                             _tl5381554626_
                             _e5382054629_
                             _hd5381954633_
                             _tl5381854636_
                             _e5382154639_
                             _e5382454643_
                             _hd5382354647_
                             _tl5382254650_
                             ___splice5692756928_
                             _target5382554653_
                             _tl5382754656_
                             _e5383654659_
                             _hd5383554663_
                             _tl5383454666_)
                      (letrec ((_loop5382854669_
                                (lambda (_hd5382654673_ _exprs5383254676_)
                                  (if (gx#stx-pair? _hd5382654673_)
                                      (let ((_e5382954679_
                                             (gx#syntax-e _hd5382654673_)))
                                        (let ((_lp-tl5383154686_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5382954679_)))
                                              (_lp-hd5383054683_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5382954679_))))
                                          (_loop5382854669_
                                           _lp-tl5383154686_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5383054683_
                                                   _exprs5383254676_)))))
                                      (let ((_exprs5383354689_
                                             (reverse _exprs5383254676_)))
                                        (___kont5692556926_
                                         _hd5383554663_
                                         _exprs5383354689_
                                         _hd5382354647_
                                         _hd5381654623_))))))
                        (_loop5382854669_ _target5382554653_ '()))))
                   (___match5700757008_
                    (lambda (_e5378254736_
                             _hd5378154740_
                             _tl5378054743_
                             _e5378554746_
                             _hd5378454750_
                             _tl5378354753_
                             _e5378654756_
                             _e5378954760_
                             _hd5378854764_
                             _tl5378754767_
                             ___splice5692356924_
                             _target5379054770_
                             _tl5379254773_
                             _e5380154776_
                             _hd5380054780_
                             _tl5379954783_
                             _e5380454786_
                             _hd5380354790_
                             _tl5380254793_
                             _e5380754796_
                             _hd5380654800_
                             _tl5380554803_
                             _e5381054806_
                             _hd5380954810_
                             _tl5380854813_)
                      (letrec ((_loop5379354816_
                                (lambda (_hd5379154820_ _exprs5379754823_)
                                  (if (gx#stx-pair? _hd5379154820_)
                                      (let ((_e5379454826_
                                             (gx#syntax-e _hd5379154820_)))
                                        (let ((_lp-tl5379654833_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5379454826_)))
                                              (_lp-hd5379554830_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5379454826_))))
                                          (_loop5379354816_
                                           _lp-tl5379654833_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5379554830_
                                                   _exprs5379754823_)))))
                                      (let ((_exprs5379854836_
                                             (reverse _exprs5379754823_)))
                                        (___kont5692156922_
                                         _hd5380954810_
                                         _hd5380654800_
                                         _exprs5379854836_
                                         _hd5378854764_
                                         _hd5378154740_))))))
                        (_loop5379354816_ _target5379054770_ '())))))
              (if (gx#stx-pair? ___stx5691856919_)
                  (let ((_e5378254736_ (gx#syntax-e ___stx5691856919_)))
                    (let ((_tl5378054743_
                           (let () (declare (not safe)) (##cdr _e5378254736_)))
                          (_hd5378154740_
                           (let ()
                             (declare (not safe))
                             (##car _e5378254736_))))
                      (if (gx#stx-pair? _tl5378054743_)
                          (let ((_e5378554746_ (gx#syntax-e _tl5378054743_)))
                            (let ((_tl5378354753_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5378554746_)))
                                  (_hd5378454750_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5378554746_))))
                              (if (gx#stx-datum? _hd5378454750_)
                                  (let ((_e5378654756_
                                         (gx#stx-e _hd5378454750_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5378654756_ '1))
                                        (if (gx#stx-pair? _tl5378354753_)
                                            (let ((_e5378954760_
                                                   (gx#syntax-e
                                                    _tl5378354753_)))
                                              (let ((_tl5378754767_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5378954760_)))
                                                    (_hd5378854764_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5378954760_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5378754767_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5378754767_)
                                                              '2)
                                                        (let ((___splice5692356924_
                                                               (gx#syntax-split-splice
                                                                _tl5378754767_
                                                                '2)))
                                                          (let ((_tl5379254773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5692356924_ '1)))
                        (_target5379054770_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5692356924_ '0))))
                    (if (gx#stx-pair? _tl5379254773_)
                        (let ((_e5380154776_ (gx#syntax-e _tl5379254773_)))
                          (let ((_tl5379954783_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5380154776_)))
                                (_hd5380054780_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5380154776_))))
                            (if (gx#stx-pair? _hd5380054780_)
                                (let ((_e5380454786_
                                       (gx#syntax-e _hd5380054780_)))
                                  (let ((_tl5380254793_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5380454786_)))
                                        (_hd5380354790_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5380454786_))))
                                    (if (gx#identifier? _hd5380354790_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g57718_|
                                             _hd5380354790_)
                                            (if (gx#stx-pair? _tl5380254793_)
                                                (let ((_e5380754796_
                                                       (gx#syntax-e
                                                        _tl5380254793_)))
                                                  (let ((_tl5380554803_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5380754796_)))
                                                        (_hd5380654800_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5380754796_))))
                                                    (if (gx#stx-null?
                                                         _tl5380554803_)
                                                        (if (gx#stx-pair?
                                                             _tl5379954783_)
                                                            (let ((_e5381054806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5379954783_)))
                      (let ((_tl5380854813_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5381054806_)))
                            (_hd5380954810_
                             (let ()
                               (declare (not safe))
                               (##car _e5381054806_))))
                        (if (gx#stx-null? _tl5380854813_)
                            (___match5700757008_
                             _e5378254736_
                             _hd5378154740_
                             _tl5378054743_
                             _e5378554746_
                             _hd5378454750_
                             _tl5378354753_
                             _e5378654756_
                             _e5378954760_
                             _hd5378854764_
                             _tl5378754767_
                             ___splice5692356924_
                             _target5379054770_
                             _tl5379254773_
                             _e5380154776_
                             _hd5380054780_
                             _tl5379954783_
                             _e5380454786_
                             _hd5380354790_
                             _tl5380254793_
                             _e5380754796_
                             _hd5380654800_
                             _tl5380554803_
                             _e5381054806_
                             _hd5380954810_
                             _tl5380854813_)
                            (if (fx>= (gx#stx-length _tl5378754767_) '1)
                                (let ((___splice5692756928_
                                       (gx#syntax-split-splice
                                        _tl5378754767_
                                        '1)))
                                  (let ((_tl5382754656_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5692756928_
                                            '1)))
                                        (_target5382554653_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5692756928_
                                            '0))))
                                    (if (gx#stx-pair? _tl5382754656_)
                                        (let ((_e5383654659_
                                               (gx#syntax-e _tl5382754656_)))
                                          (let ((_tl5383454666_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5383654659_)))
                                                (_hd5383554663_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5383654659_))))
                                            (if (gx#stx-null? _tl5383454666_)
                                                (___match5704757048_
                                                 _e5378254736_
                                                 _hd5378154740_
                                                 _tl5378054743_
                                                 _e5378554746_
                                                 _hd5378454750_
                                                 _tl5378354753_
                                                 _e5378654756_
                                                 _e5378954760_
                                                 _hd5378854764_
                                                 _tl5378754767_
                                                 ___splice5692756928_
                                                 _target5382554653_
                                                 _tl5382754656_
                                                 _e5383654659_
                                                 _hd5383554663_
                                                 _tl5383454666_)
                                                (if (gx#stx-null?
                                                     _tl5378754767_)
                                                    (___kont5692956930_
                                                     _hd5378854764_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5377353987_))))))
                                        (if (gx#stx-null? _tl5378754767_)
                                            (___kont5692956930_ _hd5378854764_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5377353987_))))))
                                (if (gx#stx-null? _tl5378754767_)
                                    (___kont5692956930_ _hd5378854764_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5377353987_)))))))
                    (if (fx>= (gx#stx-length _tl5378754767_) '1)
                        (let ((___splice5692756928_
                               (gx#syntax-split-splice _tl5378754767_ '1)))
                          (let ((_tl5382754656_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5692756928_ '1)))
                                (_target5382554653_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5692756928_ '0))))
                            (if (gx#stx-pair? _tl5382754656_)
                                (let ((_e5383654659_
                                       (gx#syntax-e _tl5382754656_)))
                                  (let ((_tl5383454666_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5383654659_)))
                                        (_hd5383554663_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5383654659_))))
                                    (if (gx#stx-null? _tl5383454666_)
                                        (___match5704757048_
                                         _e5378254736_
                                         _hd5378154740_
                                         _tl5378054743_
                                         _e5378554746_
                                         _hd5378454750_
                                         _tl5378354753_
                                         _e5378654756_
                                         _e5378954760_
                                         _hd5378854764_
                                         _tl5378754767_
                                         ___splice5692756928_
                                         _target5382554653_
                                         _tl5382754656_
                                         _e5383654659_
                                         _hd5383554663_
                                         _tl5383454666_)
                                        (if (gx#stx-null? _tl5378754767_)
                                            (___kont5692956930_ _hd5378854764_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5377353987_))))))
                                (if (gx#stx-null? _tl5378754767_)
                                    (___kont5692956930_ _hd5378854764_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5377353987_))))))
                        (if (gx#stx-null? _tl5378754767_)
                            (___kont5692956930_ _hd5378854764_)
                            (let () (declare (not safe)) (_g5377353987_)))))
                (if (fx>= (gx#stx-length _tl5378754767_) '1)
                    (let ((___splice5692756928_
                           (gx#syntax-split-splice _tl5378754767_ '1)))
                      (let ((_tl5382754656_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5692756928_ '1)))
                            (_target5382554653_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5692756928_ '0))))
                        (if (gx#stx-pair? _tl5382754656_)
                            (let ((_e5383654659_ (gx#syntax-e _tl5382754656_)))
                              (let ((_tl5383454666_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5383654659_)))
                                    (_hd5383554663_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5383654659_))))
                                (if (gx#stx-null? _tl5383454666_)
                                    (___match5704757048_
                                     _e5378254736_
                                     _hd5378154740_
                                     _tl5378054743_
                                     _e5378554746_
                                     _hd5378454750_
                                     _tl5378354753_
                                     _e5378654756_
                                     _e5378954760_
                                     _hd5378854764_
                                     _tl5378754767_
                                     ___splice5692756928_
                                     _target5382554653_
                                     _tl5382754656_
                                     _e5383654659_
                                     _hd5383554663_
                                     _tl5383454666_)
                                    (if (gx#stx-null? _tl5378754767_)
                                        (___kont5692956930_ _hd5378854764_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5377353987_))))))
                            (if (gx#stx-null? _tl5378754767_)
                                (___kont5692956930_ _hd5378854764_)
                                (let ()
                                  (declare (not safe))
                                  (_g5377353987_))))))
                    (if (gx#stx-null? _tl5378754767_)
                        (___kont5692956930_ _hd5378854764_)
                        (let () (declare (not safe)) (_g5377353987_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5378754767_)
                                                          '1)
                                                    (let ((___splice5692756928_
                                                           (gx#syntax-split-splice
                                                            _tl5378754767_
                                                            '1)))
                                                      (let ((_tl5382754656_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5692756928_ '1)))
                    (_target5382554653_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5692756928_ '0))))
                (if (gx#stx-pair? _tl5382754656_)
                    (let ((_e5383654659_ (gx#syntax-e _tl5382754656_)))
                      (let ((_tl5383454666_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5383654659_)))
                            (_hd5383554663_
                             (let ()
                               (declare (not safe))
                               (##car _e5383654659_))))
                        (if (gx#stx-null? _tl5383454666_)
                            (___match5704757048_
                             _e5378254736_
                             _hd5378154740_
                             _tl5378054743_
                             _e5378554746_
                             _hd5378454750_
                             _tl5378354753_
                             _e5378654756_
                             _e5378954760_
                             _hd5378854764_
                             _tl5378754767_
                             ___splice5692756928_
                             _target5382554653_
                             _tl5382754656_
                             _e5383654659_
                             _hd5383554663_
                             _tl5383454666_)
                            (if (gx#stx-null? _tl5378754767_)
                                (___kont5692956930_ _hd5378854764_)
                                (let ()
                                  (declare (not safe))
                                  (_g5377353987_))))))
                    (if (gx#stx-null? _tl5378754767_)
                        (___kont5692956930_ _hd5378854764_)
                        (let () (declare (not safe)) (_g5377353987_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5378754767_)
                                                        (___kont5692956930_
                                                         _hd5378854764_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5377353987_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5378754767_)
                                                      '1)
                                                (let ((___splice5692756928_
                                                       (gx#syntax-split-splice
                                                        _tl5378754767_
                                                        '1)))
                                                  (let ((_tl5382754656_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5692756928_
                                                            '1)))
                                                        (_target5382554653_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5692756928_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5382754656_)
                                                        (let ((_e5383654659_
                                                               (gx#syntax-e
                                                                _tl5382754656_)))
                                                          (let ((_tl5383454666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5383654659_)))
                        (_hd5383554663_
                         (let () (declare (not safe)) (##car _e5383654659_))))
                    (if (gx#stx-null? _tl5383454666_)
                        (___match5704757048_
                         _e5378254736_
                         _hd5378154740_
                         _tl5378054743_
                         _e5378554746_
                         _hd5378454750_
                         _tl5378354753_
                         _e5378654756_
                         _e5378954760_
                         _hd5378854764_
                         _tl5378754767_
                         ___splice5692756928_
                         _target5382554653_
                         _tl5382754656_
                         _e5383654659_
                         _hd5383554663_
                         _tl5383454666_)
                        (if (gx#stx-null? _tl5378754767_)
                            (___kont5692956930_ _hd5378854764_)
                            (let () (declare (not safe)) (_g5377353987_))))))
                (if (gx#stx-null? _tl5378754767_)
                    (___kont5692956930_ _hd5378854764_)
                    (let () (declare (not safe)) (_g5377353987_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5378754767_)
                                                    (___kont5692956930_
                                                     _hd5378854764_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5377353987_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5378754767_)
                                                  '1)
                                            (let ((___splice5692756928_
                                                   (gx#syntax-split-splice
                                                    _tl5378754767_
                                                    '1)))
                                              (let ((_tl5382754656_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5692756928_
                                                        '1)))
                                                    (_target5382554653_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5692756928_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5382754656_)
                                                    (let ((_e5383654659_
                                                           (gx#syntax-e
                                                            _tl5382754656_)))
                                                      (let ((_tl5383454666_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5383654659_)))
                    (_hd5383554663_
                     (let () (declare (not safe)) (##car _e5383654659_))))
                (if (gx#stx-null? _tl5383454666_)
                    (___match5704757048_
                     _e5378254736_
                     _hd5378154740_
                     _tl5378054743_
                     _e5378554746_
                     _hd5378454750_
                     _tl5378354753_
                     _e5378654756_
                     _e5378954760_
                     _hd5378854764_
                     _tl5378754767_
                     ___splice5692756928_
                     _target5382554653_
                     _tl5382754656_
                     _e5383654659_
                     _hd5383554663_
                     _tl5383454666_)
                    (if (gx#stx-null? _tl5378754767_)
                        (___kont5692956930_ _hd5378854764_)
                        (let () (declare (not safe)) (_g5377353987_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5378754767_)
                                                        (___kont5692956930_
                                                         _hd5378854764_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5377353987_))))))
                                            (if (gx#stx-null? _tl5378754767_)
                                                (___kont5692956930_
                                                 _hd5378854764_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5377353987_)))))))
                                (if (fx>= (gx#stx-length _tl5378754767_) '1)
                                    (let ((___splice5692756928_
                                           (gx#syntax-split-splice
                                            _tl5378754767_
                                            '1)))
                                      (let ((_tl5382754656_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5692756928_
                                                '1)))
                                            (_target5382554653_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5692756928_
                                                '0))))
                                        (if (gx#stx-pair? _tl5382754656_)
                                            (let ((_e5383654659_
                                                   (gx#syntax-e
                                                    _tl5382754656_)))
                                              (let ((_tl5383454666_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5383654659_)))
                                                    (_hd5383554663_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5383654659_))))
                                                (if (gx#stx-null?
                                                     _tl5383454666_)
                                                    (___match5704757048_
                                                     _e5378254736_
                                                     _hd5378154740_
                                                     _tl5378054743_
                                                     _e5378554746_
                                                     _hd5378454750_
                                                     _tl5378354753_
                                                     _e5378654756_
                                                     _e5378954760_
                                                     _hd5378854764_
                                                     _tl5378754767_
                                                     ___splice5692756928_
                                                     _target5382554653_
                                                     _tl5382754656_
                                                     _e5383654659_
                                                     _hd5383554663_
                                                     _tl5383454666_)
                                                    (if (gx#stx-null?
                                                         _tl5378754767_)
                                                        (___kont5692956930_
                                                         _hd5378854764_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5377353987_))))))
                                            (if (gx#stx-null? _tl5378754767_)
                                                (___kont5692956930_
                                                 _hd5378854764_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5377353987_))))))
                                    (if (gx#stx-null? _tl5378754767_)
                                        (___kont5692956930_ _hd5378854764_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5377353987_)))))))
                        (if (fx>= (gx#stx-length _tl5378754767_) '1)
                            (let ((___splice5692756928_
                                   (gx#syntax-split-splice _tl5378754767_ '1)))
                              (let ((_tl5382754656_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice5692756928_ '1)))
                                    (_target5382554653_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice5692756928_
                                        '0))))
                                (if (gx#stx-pair? _tl5382754656_)
                                    (let ((_e5383654659_
                                           (gx#syntax-e _tl5382754656_)))
                                      (let ((_tl5383454666_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5383654659_)))
                                            (_hd5383554663_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5383654659_))))
                                        (if (gx#stx-null? _tl5383454666_)
                                            (___match5704757048_
                                             _e5378254736_
                                             _hd5378154740_
                                             _tl5378054743_
                                             _e5378554746_
                                             _hd5378454750_
                                             _tl5378354753_
                                             _e5378654756_
                                             _e5378954760_
                                             _hd5378854764_
                                             _tl5378754767_
                                             ___splice5692756928_
                                             _target5382554653_
                                             _tl5382754656_
                                             _e5383654659_
                                             _hd5383554663_
                                             _tl5383454666_)
                                            (if (gx#stx-null? _tl5378754767_)
                                                (___kont5692956930_
                                                 _hd5378854764_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5377353987_))))))
                                    (if (gx#stx-null? _tl5378754767_)
                                        (___kont5692956930_ _hd5378854764_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5377353987_))))))
                            (if (gx#stx-null? _tl5378754767_)
                                (___kont5692956930_ _hd5378854764_)
                                (let ()
                                  (declare (not safe))
                                  (_g5377353987_)))))))
                (if (fx>= (gx#stx-length _tl5378754767_) '1)
                    (let ((___splice5692756928_
                           (gx#syntax-split-splice _tl5378754767_ '1)))
                      (let ((_tl5382754656_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5692756928_ '1)))
                            (_target5382554653_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5692756928_ '0))))
                        (if (gx#stx-pair? _tl5382754656_)
                            (let ((_e5383654659_ (gx#syntax-e _tl5382754656_)))
                              (let ((_tl5383454666_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5383654659_)))
                                    (_hd5383554663_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5383654659_))))
                                (if (gx#stx-null? _tl5383454666_)
                                    (___match5704757048_
                                     _e5378254736_
                                     _hd5378154740_
                                     _tl5378054743_
                                     _e5378554746_
                                     _hd5378454750_
                                     _tl5378354753_
                                     _e5378654756_
                                     _e5378954760_
                                     _hd5378854764_
                                     _tl5378754767_
                                     ___splice5692756928_
                                     _target5382554653_
                                     _tl5382754656_
                                     _e5383654659_
                                     _hd5383554663_
                                     _tl5383454666_)
                                    (if (gx#stx-null? _tl5378754767_)
                                        (___kont5692956930_ _hd5378854764_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5377353987_))))))
                            (if (gx#stx-null? _tl5378754767_)
                                (___kont5692956930_ _hd5378854764_)
                                (let ()
                                  (declare (not safe))
                                  (_g5377353987_))))))
                    (if (gx#stx-null? _tl5378754767_)
                        (___kont5692956930_ _hd5378854764_)
                        (let () (declare (not safe)) (_g5377353987_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5378754767_)
                                                        (___kont5692956930_
                                                         _hd5378854764_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5377353987_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5377353987_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5378654756_ '2))
                                            (if (gx#stx-pair? _tl5378354753_)
                                                (let ((_e5386354459_
                                                       (gx#syntax-e
                                                        _tl5378354753_)))
                                                  (let ((_tl5386154466_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5386354459_)))
                                                        (_hd5386254463_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5386354459_))))
                                                    (if (gx#stx-pair?
                                                         _tl5386154466_)
                                                        (let ((_e5386654469_
                                                               (gx#syntax-e
                                                                _tl5386154466_)))
                                                          (let ((_tl5386454476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5386654469_)))
                        (_hd5386554473_
                         (let () (declare (not safe)) (##car _e5386654469_))))
                    (if (gx#stx-pair? _hd5386554473_)
                        (let ((_e5386954479_ (gx#syntax-e _hd5386554473_)))
                          (let ((_tl5386754486_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5386954479_)))
                                (_hd5386854483_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5386954479_))))
                            (if (gx#stx-pair? _hd5386854483_)
                                (let ((_e5387254489_
                                       (gx#syntax-e _hd5386854483_)))
                                  (let ((_tl5387054496_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5387254489_)))
                                        (_hd5387154493_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5387254489_))))
                                    (if (gx#identifier? _hd5387154493_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g57717_|
                                             _hd5387154493_)
                                            (if (gx#stx-pair? _tl5387054496_)
                                                (let ((_e5387554499_
                                                       (gx#syntax-e
                                                        _tl5387054496_)))
                                                  (let ((_tl5387354506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5387554499_)))
                                                        (_hd5387454503_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5387554499_))))
                                                    (if (gx#stx-null?
                                                         _tl5387354506_)
                                                        (if (gx#stx-pair?
                                                             _tl5386754486_)
                                                            (let ((_e5387854509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5386754486_)))
                      (let ((_tl5387654516_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5387854509_)))
                            (_hd5387754513_
                             (let ()
                               (declare (not safe))
                               (##car _e5387854509_))))
                        (___kont5693156932_
                         _tl5386454476_
                         _tl5387654516_
                         _hd5387754513_
                         _hd5387454503_
                         _hd5386254463_
                         _hd5378154740_)))
                    (___kont5693356934_
                     _tl5386454476_
                     _tl5386754486_
                     _hd5386854483_
                     _hd5386254463_
                     _hd5378154740_))
                (___kont5693356934_
                 _tl5386454476_
                 _tl5386754486_
                 _hd5386854483_
                 _hd5386254463_
                 _hd5378154740_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont5693356934_
                                                 _tl5386454476_
                                                 _tl5386754486_
                                                 _hd5386854483_
                                                 _hd5386254463_
                                                 _hd5378154740_))
                                            (___kont5693356934_
                                             _tl5386454476_
                                             _tl5386754486_
                                             _hd5386854483_
                                             _hd5386254463_
                                             _hd5378154740_))
                                        (___kont5693356934_
                                         _tl5386454476_
                                         _tl5386754486_
                                         _hd5386854483_
                                         _hd5386254463_
                                         _hd5378154740_))))
                                (___kont5693356934_
                                 _tl5386454476_
                                 _tl5386754486_
                                 _hd5386854483_
                                 _hd5386254463_
                                 _hd5378154740_))))
                        (if (gx#stx-null? _hd5386554473_)
                            (___kont5693556936_
                             _tl5386454476_
                             _hd5386254463_
                             _hd5378154740_)
                            (let () (declare (not safe)) (_g5377353987_))))))
                (let () (declare (not safe)) (_g5377353987_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5377353987_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5378654756_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5378354753_)
                                                    (let ((_e5393054208_
                                                           (gx#syntax-e
                                                            _tl5378354753_)))
                                                      (let ((_tl5392854215_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5393054208_)))
                    (_hd5392954212_
                     (let () (declare (not safe)) (##car _e5393054208_))))
                (if (gx#stx-pair? _tl5392854215_)
                    (let ((_e5393354218_ (gx#syntax-e _tl5392854215_)))
                      (let ((_tl5393154225_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5393354218_)))
                            (_hd5393254222_
                             (let ()
                               (declare (not safe))
                               (##car _e5393354218_))))
                        (if (gx#stx-pair? _hd5393254222_)
                            (let ((_e5393654228_ (gx#syntax-e _hd5393254222_)))
                              (let ((_tl5393454235_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5393654228_)))
                                    (_hd5393554232_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5393654228_))))
                                (___kont5693756938_
                                 _tl5393154225_
                                 _tl5393454235_
                                 _hd5393554232_
                                 _hd5392954212_
                                 _hd5378154740_)))
                            (if (gx#stx-pair/null? _hd5392954212_)
                                (let ((___splice5694156942_
                                       (gx#syntax-split-splice
                                        _hd5392954212_
                                        '0)))
                                  (let ((_tl5395554031_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5694156942_
                                            '1)))
                                        (_target5395354028_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5694156942_
                                            '0))))
                                    (if (gx#stx-null? _tl5395554031_)
                                        (___match5726957270_
                                         _e5378254736_
                                         _hd5378154740_
                                         _tl5378054743_
                                         _e5378554746_
                                         _hd5378454750_
                                         _tl5378354753_
                                         _e5378654756_
                                         _e5393054208_
                                         _hd5392954212_
                                         _tl5392854215_
                                         ___splice5694156942_
                                         _target5395354028_
                                         _tl5395554031_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5377353987_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5377353987_))))))
                    (if (gx#stx-pair/null? _hd5392954212_)
                        (let ((___splice5694156942_
                               (gx#syntax-split-splice _hd5392954212_ '0)))
                          (let ((_tl5395554031_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5694156942_ '1)))
                                (_target5395354028_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5694156942_ '0))))
                            (if (gx#stx-null? _tl5395554031_)
                                (___match5726957270_
                                 _e5378254736_
                                 _hd5378154740_
                                 _tl5378054743_
                                 _e5378554746_
                                 _hd5378454750_
                                 _tl5378354753_
                                 _e5378654756_
                                 _e5393054208_
                                 _hd5392954212_
                                 _tl5392854215_
                                 ___splice5694156942_
                                 _target5395354028_
                                 _tl5395554031_)
                                (let ()
                                  (declare (not safe))
                                  (_g5377353987_)))))
                        (let () (declare (not safe)) (_g5377353987_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5377353987_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5377353987_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5377353987_)))))
                          (let () (declare (not safe)) (_g5377353987_)))))
                  (let () (declare (not safe)) (_g5377353987_))))))))))
