(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g57815_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g57816_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#__lock-inline!|
      (lambda (_$stx53543_)
        (let* ((_g5354753561_
                (lambda (_g5354853557_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5354853557_)))
               (_g5354653603_
                (lambda (_g5354853565_)
                  (if (gx#stx-pair? _g5354853565_)
                      (let ((_e5355253568_ (gx#syntax-e _g5354853565_)))
                        (let ((_hd5355153572_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5355253568_)))
                              (_tl5355053575_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5355253568_))))
                          (if (gx#stx-pair? _tl5355053575_)
                              (let ((_e5355553578_
                                     (gx#syntax-e _tl5355053575_)))
                                (let ((_hd5355453582_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5355553578_)))
                                      (_tl5355353585_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5355553578_))))
                                  (if (gx#stx-null? _tl5355353585_)
                                      ((lambda (_L53588_)
                                         (let ((__tmp57520
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp57485
                                                (let ((__tmp57486
                                                       (let ((__tmp57513
                                                              (let ((__tmp57519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'declare))
                            (__tmp57514
                             (let ((__tmp57515
                                    (let ((__tmp57518
                                           (gx#datum->syntax '#f 'not))
                                          (__tmp57516
                                           (let ((__tmp57517
                                                  (gx#datum->syntax
                                                   '#f
                                                   'interrupts-enabled)))
                                             (declare (not safe))
                                             (cons __tmp57517 '()))))
                                      (declare (not safe))
                                      (cons __tmp57518 __tmp57516))))
                               (declare (not safe))
                               (cons __tmp57515 '()))))
                        (declare (not safe))
                        (cons __tmp57519 __tmp57514)))
                     (__tmp57487
                      (let ((__tmp57488
                             (let ((__tmp57512 (gx#datum->syntax '#f 'let))
                                   (__tmp57489
                                    (let ((__tmp57511
                                           (gx#datum->syntax '#f 'again))
                                          (__tmp57490
                                           (let ((__tmp57491
                                                  (let ((__tmp57492
                                                         (let ((__tmp57510
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'unless))
                       (__tmp57493
                        (let ((__tmp57500
                               (let ((__tmp57509 (gx#datum->syntax '#f '##fx=))
                                     (__tmp57501
                                      (let ((__tmp57503
                                             (let ((__tmp57508
                                                    (gx#datum->syntax
                                                     '#f
                                                     '##vector-cas!))
                                                   (__tmp57504
                                                    (let ((__tmp57505
                                                           (let ((__tmp57506
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp57507
                                 (let () (declare (not safe)) (cons '0 '()))))
                            (declare (not safe))
                            (cons '1 __tmp57507))))
                     (declare (not safe))
                     (cons '0 __tmp57506))))
              (declare (not safe))
              (cons _L53588_ __tmp57505))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57508 __tmp57504)))
                                            (__tmp57502
                                             (let ()
                                               (declare (not safe))
                                               (cons '0 '()))))
                                        (declare (not safe))
                                        (cons __tmp57503 __tmp57502))))
                                 (declare (not safe))
                                 (cons __tmp57509 __tmp57501)))
                              (__tmp57494
                               (let ((__tmp57498
                                      (let ((__tmp57499
                                             (gx#datum->syntax
                                              '#f
                                              '##thread-yield!)))
                                        (declare (not safe))
                                        (cons __tmp57499 '())))
                                     (__tmp57495
                                      (let ((__tmp57496
                                             (let ((__tmp57497
                                                    (gx#datum->syntax
                                                     '#f
                                                     'again)))
                                               (declare (not safe))
                                               (cons __tmp57497 '()))))
                                        (declare (not safe))
                                        (cons __tmp57496 '()))))
                                 (declare (not safe))
                                 (cons __tmp57498 __tmp57495))))
                          (declare (not safe))
                          (cons __tmp57500 __tmp57494))))
                   (declare (not safe))
                   (cons __tmp57510 __tmp57493))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57492 '()))))
                                             (declare (not safe))
                                             (cons '() __tmp57491))))
                                      (declare (not safe))
                                      (cons __tmp57511 __tmp57490))))
                               (declare (not safe))
                               (cons __tmp57512 __tmp57489))))
                        (declare (not safe))
                        (cons __tmp57488 '()))))
                 (declare (not safe))
                 (cons __tmp57513 __tmp57487))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '() __tmp57486))))
                                           (declare (not safe))
                                           (cons __tmp57520 __tmp57485)))
                                       _hd5355453582_)
                                      (_g5354753561_ _g5354853565_))))
                              (_g5354753561_ _g5354853565_))))
                      (_g5354753561_ _g5354853565_)))))
          (_g5354653603_ _$stx53543_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_$stx53607_)
        (let* ((_g5361153625_
                (lambda (_g5361253621_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5361253621_)))
               (_g5361053666_
                (lambda (_g5361253629_)
                  (if (gx#stx-pair? _g5361253629_)
                      (let ((_e5361653632_ (gx#syntax-e _g5361253629_)))
                        (let ((_hd5361553636_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5361653632_)))
                              (_tl5361453639_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5361653632_))))
                          (if (gx#stx-pair? _tl5361453639_)
                              (let ((_e5361953642_
                                     (gx#syntax-e _tl5361453639_)))
                                (let ((_hd5361853646_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5361953642_)))
                                      (_tl5361753649_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5361953642_))))
                                  (if (gx#stx-null? _tl5361753649_)
                                      ((lambda (_L53652_)
                                         (let ((__tmp57525
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-cas!))
                                               (__tmp57521
                                                (let ((__tmp57522
                                                       (let ((__tmp57523
                                                              (let ((__tmp57524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons '0 __tmp57524))))
                 (declare (not safe))
                 (cons '0 __tmp57523))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L53652_ __tmp57522))))
                                           (declare (not safe))
                                           (cons __tmp57525 __tmp57521)))
                                       _hd5361853646_)
                                      (_g5361153625_ _g5361253629_))))
                              (_g5361153625_ _g5361253629_))))
                      (_g5361153625_ _g5361253629_)))))
          (_g5361053666_ _$stx53607_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_$stx53670_)
        (let* ((_g5367453684_
                (lambda (_g5367553680_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5367553680_)))
               (_g5367353705_
                (lambda (_g5367553688_)
                  (if (gx#stx-pair? _g5367553688_)
                      (let ((_e5367853691_ (gx#syntax-e _g5367553688_)))
                        (let ((_hd5367753695_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5367853691_)))
                              (_tl5367653698_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5367853691_))))
                          (if (gx#stx-null? _tl5367653698_)
                              ((lambda ()
                                 (let ((__tmp57527
                                        (gx#datum->syntax '#f 'vector))
                                       (__tmp57526
                                        (let ()
                                          (declare (not safe))
                                          (cons '0 '()))))
                                   (declare (not safe))
                                   (cons __tmp57527 __tmp57526))))
                              (_g5367453684_ _g5367553688_))))
                      (_g5367453684_ _g5367553688_)))))
          (_g5367353705_ _$stx53670_))))
    (define |[:0:]#defassget|
      (lambda (_$stx53709_)
        (let* ((_g5371353731_
                (lambda (_g5371453727_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5371453727_)))
               (_g5371253786_
                (lambda (_g5371453735_)
                  (if (gx#stx-pair? _g5371453735_)
                      (let ((_e5371953738_ (gx#syntax-e _g5371453735_)))
                        (let ((_hd5371853742_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5371953738_)))
                              (_tl5371753745_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5371953738_))))
                          (if (gx#stx-pair? _tl5371753745_)
                              (let ((_e5372253748_
                                     (gx#syntax-e _tl5371753745_)))
                                (let ((_hd5372153752_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5372253748_)))
                                      (_tl5372053755_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5372253748_))))
                                  (if (gx#stx-pair? _tl5372053755_)
                                      (let ((_e5372553758_
                                             (gx#syntax-e _tl5372053755_)))
                                        (let ((_hd5372453762_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5372553758_)))
                                              (_tl5372353765_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5372553758_))))
                                          (if (gx#stx-null? _tl5372353765_)
                                              ((lambda (_L53768_ _L53770_)
                                                 (let ((__tmp57576
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp57528
                                                        (let ((__tmp57567
                                                               (let ((__tmp57568
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp57575 (gx#datum->syntax '#f 'key))
                                    (__tmp57569
                                     (let ((__tmp57574
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp57570
                                            (let ((__tmp57571
                                                   (let ((__tmp57573
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp57572
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp57573
                                                           __tmp57572))))
                                              (declare (not safe))
                                              (cons __tmp57571 '()))))
                                       (declare (not safe))
                                       (cons __tmp57574 __tmp57570))))
                                (declare (not safe))
                                (cons __tmp57575 __tmp57569))))
                         (declare (not safe))
                         (cons _L53770_ __tmp57568)))
                      (__tmp57529
                       (let ((__tmp57530
                              (let ((__tmp57566 (gx#datum->syntax '#f 'cond))
                                    (__tmp57531
                                     (let ((__tmp57548
                                            (let ((__tmp57553
                                                   (let ((__tmp57565
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp57554
                                                          (let ((__tmp57561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp57564 (gx#datum->syntax '#f 'pair?))
                               (__tmp57562
                                (let ((__tmp57563 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp57563 '()))))
                           (declare (not safe))
                           (cons __tmp57564 __tmp57562)))
                        (__tmp57555
                         (let ((__tmp57556
                                (let ((__tmp57557
                                       (let ((__tmp57560
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp57558
                                              (let ((__tmp57559
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp57559 '()))))
                                         (declare (not safe))
                                         (cons __tmp57560 __tmp57558))))
                                  (declare (not safe))
                                  (cons _L53768_ __tmp57557))))
                           (declare (not safe))
                           (cons __tmp57556 '()))))
                    (declare (not safe))
                    (cons __tmp57561 __tmp57555))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57565
                                                           __tmp57554)))
                                                  (__tmp57549
                                                   (let ((__tmp57552
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp57550
                                                          (let ((__tmp57551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp57551 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57552
                                                           __tmp57550))))
                                              (declare (not safe))
                                              (cons __tmp57553 __tmp57549)))
                                           (__tmp57532
                                            (let ((__tmp57538
                                                   (let ((__tmp57544
                                                          (let ((__tmp57547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp57545
                         (let ((__tmp57546 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp57546 '()))))
                    (declare (not safe))
                    (cons __tmp57547 __tmp57545)))
                 (__tmp57539
                  (let ((__tmp57540
                         (let ((__tmp57543 (gx#datum->syntax '#f 'default))
                               (__tmp57541
                                (let ((__tmp57542 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp57542 '()))))
                           (declare (not safe))
                           (cons __tmp57543 __tmp57541))))
                    (declare (not safe))
                    (cons __tmp57540 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57544
                                                           __tmp57539)))
                                                  (__tmp57533
                                                   (let ((__tmp57534
                                                          (let ((__tmp57537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp57535
                         (let ((__tmp57536 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp57536 '()))))
                    (declare (not safe))
                    (cons __tmp57537 __tmp57535))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57534 '()))))
                                              (declare (not safe))
                                              (cons __tmp57538 __tmp57533))))
                                       (declare (not safe))
                                       (cons __tmp57548 __tmp57532))))
                                (declare (not safe))
                                (cons __tmp57566 __tmp57531))))
                         (declare (not safe))
                         (cons __tmp57530 '()))))
                  (declare (not safe))
                  (cons __tmp57567 __tmp57529))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57576
                                                         __tmp57528)))
                                               _hd5372453762_
                                               _hd5372153752_)
                                              (_g5371353731_ _g5371453735_))))
                                      (_g5371353731_ _g5371453735_))))
                              (_g5371353731_ _g5371453735_))))
                      (_g5371353731_ _g5371453735_)))))
          (_g5371253786_ _$stx53709_))))
    (define |[:0:]#defpget|
      (lambda (_$stx53790_)
        (let* ((_g5379453812_
                (lambda (_g5379553808_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5379553808_)))
               (_g5379353867_
                (lambda (_g5379553816_)
                  (if (gx#stx-pair? _g5379553816_)
                      (let ((_e5380053819_ (gx#syntax-e _g5379553816_)))
                        (let ((_hd5379953823_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5380053819_)))
                              (_tl5379853826_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5380053819_))))
                          (if (gx#stx-pair? _tl5379853826_)
                              (let ((_e5380353829_
                                     (gx#syntax-e _tl5379853826_)))
                                (let ((_hd5380253833_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5380353829_)))
                                      (_tl5380153836_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5380353829_))))
                                  (if (gx#stx-pair? _tl5380153836_)
                                      (let ((_e5380653839_
                                             (gx#syntax-e _tl5380153836_)))
                                        (let ((_hd5380553843_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5380653839_)))
                                              (_tl5380453846_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5380653839_))))
                                          (if (gx#stx-null? _tl5380453846_)
                                              ((lambda (_L53849_ _L53851_)
                                                 (let ((__tmp57646
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp57577
                                                        (let ((__tmp57637
                                                               (let ((__tmp57638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp57645 (gx#datum->syntax '#f 'key))
                                    (__tmp57639
                                     (let ((__tmp57644
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp57640
                                            (let ((__tmp57641
                                                   (let ((__tmp57643
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp57642
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp57643
                                                           __tmp57642))))
                                              (declare (not safe))
                                              (cons __tmp57641 '()))))
                                       (declare (not safe))
                                       (cons __tmp57644 __tmp57640))))
                                (declare (not safe))
                                (cons __tmp57645 __tmp57639))))
                         (declare (not safe))
                         (cons _L53851_ __tmp57638)))
                      (__tmp57578
                       (let ((__tmp57579
                              (let ((__tmp57636 (gx#datum->syntax '#f 'let))
                                    (__tmp57580
                                     (let ((__tmp57635
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp57581
                                            (let ((__tmp57630
                                                   (let ((__tmp57631
                                                          (let ((__tmp57634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp57632
                         (let ((__tmp57633 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp57633 '()))))
                    (declare (not safe))
                    (cons __tmp57634 __tmp57632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57631 '())))
                                                  (__tmp57582
                                                   (let ((__tmp57583
                                                          (let ((__tmp57629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp57584
                         (let ((__tmp57628 (gx#datum->syntax '#f 'rest))
                               (__tmp57585
                                (let ((__tmp57604
                                       (let ((__tmp57621
                                              (let ((__tmp57627
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp57622
                                                     (let ((__tmp57626
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp57623
                                                            (let ((__tmp57625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp57624 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp57625 __tmp57624))))
               (declare (not safe))
               (cons __tmp57626 __tmp57623))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57627 __tmp57622)))
                                             (__tmp57605
                                              (let ((__tmp57606
                                                     (let ((__tmp57620
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp57607
                                                            (let ((__tmp57615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57616
                                  (let ((__tmp57619 (gx#datum->syntax '#f 'k))
                                        (__tmp57617
                                         (let ((__tmp57618
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp57618 '()))))
                                    (declare (not safe))
                                    (cons __tmp57619 __tmp57617))))
                             (declare (not safe))
                             (cons _L53849_ __tmp57616)))
                          (__tmp57608
                           (let ((__tmp57614 (gx#datum->syntax '#f 'v))
                                 (__tmp57609
                                  (let ((__tmp57610
                                         (let ((__tmp57613
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp57611
                                                (let ((__tmp57612
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp57612 '()))))
                                           (declare (not safe))
                                           (cons __tmp57613 __tmp57611))))
                                    (declare (not safe))
                                    (cons __tmp57610 '()))))
                             (declare (not safe))
                             (cons __tmp57614 __tmp57609))))
                      (declare (not safe))
                      (cons __tmp57615 __tmp57608))))
               (declare (not safe))
               (cons __tmp57620 __tmp57607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57606 '()))))
                                         (declare (not safe))
                                         (cons __tmp57621 __tmp57605)))
                                      (__tmp57586
                                       (let ((__tmp57587
                                              (let ((__tmp57603
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp57588
                                                     (let ((__tmp57589
                                                            (let ((__tmp57602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp57590
                           (let ((__tmp57598
                                  (let ((__tmp57601
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp57599
                                         (let ((__tmp57600
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp57600 '()))))
                                    (declare (not safe))
                                    (cons __tmp57601 __tmp57599)))
                                 (__tmp57591
                                  (let ((__tmp57594
                                         (let ((__tmp57597
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp57595
                                                (let ((__tmp57596
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp57596 '()))))
                                           (declare (not safe))
                                           (cons __tmp57597 __tmp57595)))
                                        (__tmp57592
                                         (let ((__tmp57593
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp57593 '()))))
                                    (declare (not safe))
                                    (cons __tmp57594 __tmp57592))))
                             (declare (not safe))
                             (cons __tmp57598 __tmp57591))))
                      (declare (not safe))
                      (cons __tmp57602 __tmp57590))))
               (declare (not safe))
               (cons __tmp57589 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57603 __tmp57588))))
                                         (declare (not safe))
                                         (cons __tmp57587 '()))))
                                  (declare (not safe))
                                  (cons __tmp57604 __tmp57586))))
                           (declare (not safe))
                           (cons __tmp57628 __tmp57585))))
                    (declare (not safe))
                    (cons __tmp57629 __tmp57584))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57583 '()))))
                                              (declare (not safe))
                                              (cons __tmp57630 __tmp57582))))
                                       (declare (not safe))
                                       (cons __tmp57635 __tmp57581))))
                                (declare (not safe))
                                (cons __tmp57636 __tmp57580))))
                         (declare (not safe))
                         (cons __tmp57579 '()))))
                  (declare (not safe))
                  (cons __tmp57637 __tmp57578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57646
                                                         __tmp57577)))
                                               _hd5380553843_
                                               _hd5380253833_)
                                              (_g5379453812_ _g5379553816_))))
                                      (_g5379453812_ _g5379553816_))))
                              (_g5379453812_ _g5379553816_))))
                      (_g5379453812_ _g5379553816_)))))
          (_g5379353867_ _$stx53790_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx53871_)
        (let* ((_g5387553893_
                (lambda (_g5387653889_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5387653889_)))
               (_g5387453948_
                (lambda (_g5387653897_)
                  (if (gx#stx-pair? _g5387653897_)
                      (let ((_e5388153900_ (gx#syntax-e _g5387653897_)))
                        (let ((_hd5388053904_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5388153900_)))
                              (_tl5387953907_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5388153900_))))
                          (if (gx#stx-pair? _tl5387953907_)
                              (let ((_e5388453910_
                                     (gx#syntax-e _tl5387953907_)))
                                (let ((_hd5388353914_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5388453910_)))
                                      (_tl5388253917_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5388453910_))))
                                  (if (gx#stx-pair? _tl5388253917_)
                                      (let ((_e5388753920_
                                             (gx#syntax-e _tl5388253917_)))
                                        (let ((_hd5388653924_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5388753920_)))
                                              (_tl5388553927_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5388753920_))))
                                          (if (gx#stx-null? _tl5388553927_)
                                              ((lambda (_L53930_ _L53932_)
                                                 (let ((__tmp57717
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp57647
                                                        (let ((__tmp57712
                                                               (let ((__tmp57713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp57716 (gx#datum->syntax '#f 'el))
                                    (__tmp57714
                                     (let ((__tmp57715
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp57715 '()))))
                                (declare (not safe))
                                (cons __tmp57716 __tmp57714))))
                         (declare (not safe))
                         (cons _L53932_ __tmp57713)))
                      (__tmp57648
                       (let ((__tmp57649
                              (let ((__tmp57711 (gx#datum->syntax '#f 'let))
                                    (__tmp57650
                                     (let ((__tmp57710
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp57651
                                            (let ((__tmp57699
                                                   (let ((__tmp57706
                                                          (let ((__tmp57709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp57707
                         (let ((__tmp57708 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp57708 '()))))
                    (declare (not safe))
                    (cons __tmp57709 __tmp57707)))
                 (__tmp57700
                  (let ((__tmp57701
                         (let ((__tmp57705 (gx#datum->syntax '#f 'r))
                               (__tmp57702
                                (let ((__tmp57703
                                       (let ((__tmp57704
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp57704 '()))))
                                  (declare (not safe))
                                  (cons __tmp57703 '()))))
                           (declare (not safe))
                           (cons __tmp57705 __tmp57702))))
                    (declare (not safe))
                    (cons __tmp57701 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57706
                                                           __tmp57700)))
                                                  (__tmp57652
                                                   (let ((__tmp57653
                                                          (let ((__tmp57698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp57654
                         (let ((__tmp57697 (gx#datum->syntax '#f 'rest))
                               (__tmp57655
                                (let ((__tmp57661
                                       (let ((__tmp57692
                                              (let ((__tmp57696
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp57693
                                                     (let ((__tmp57695
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp57694
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp57695
                                                             __tmp57694))))
                                                (declare (not safe))
                                                (cons __tmp57696 __tmp57693)))
                                             (__tmp57662
                                              (let ((__tmp57663
                                                     (let ((__tmp57691
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp57664
                                                            (let ((__tmp57686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57687
                                  (let ((__tmp57690 (gx#datum->syntax '#f 'el))
                                        (__tmp57688
                                         (let ((__tmp57689
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp57689 '()))))
                                    (declare (not safe))
                                    (cons __tmp57690 __tmp57688))))
                             (declare (not safe))
                             (cons _L53930_ __tmp57687)))
                          (__tmp57665
                           (let ((__tmp57678
                                  (let ((__tmp57685
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp57679
                                         (let ((__tmp57684
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp57680
                                                (let ((__tmp57683
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp57681
                                                       (let ((__tmp57682
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp57682
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp57683
                                                        __tmp57681))))
                                           (declare (not safe))
                                           (cons __tmp57684 __tmp57680))))
                                    (declare (not safe))
                                    (cons __tmp57685 __tmp57679)))
                                 (__tmp57666
                                  (let ((__tmp57667
                                         (let ((__tmp57677
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp57668
                                                (let ((__tmp57676
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp57669
                                                       (let ((__tmp57670
                                                              (let ((__tmp57675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp57671
                             (let ((__tmp57674 (gx#datum->syntax '#f 'hd))
                                   (__tmp57672
                                    (let ((__tmp57673
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp57673 '()))))
                               (declare (not safe))
                               (cons __tmp57674 __tmp57672))))
                        (declare (not safe))
                        (cons __tmp57675 __tmp57671))))
                 (declare (not safe))
                 (cons __tmp57670 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57676
                                                        __tmp57669))))
                                           (declare (not safe))
                                           (cons __tmp57677 __tmp57668))))
                                    (declare (not safe))
                                    (cons __tmp57667 '()))))
                             (declare (not safe))
                             (cons __tmp57678 __tmp57666))))
                      (declare (not safe))
                      (cons __tmp57686 __tmp57665))))
               (declare (not safe))
               (cons __tmp57691 __tmp57664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57663 '()))))
                                         (declare (not safe))
                                         (cons __tmp57692 __tmp57662)))
                                      (__tmp57656
                                       (let ((__tmp57657
                                              (let ((__tmp57660
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp57658
                                                     (let ((__tmp57659
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp57659 '()))))
                                                (declare (not safe))
                                                (cons __tmp57660 __tmp57658))))
                                         (declare (not safe))
                                         (cons __tmp57657 '()))))
                                  (declare (not safe))
                                  (cons __tmp57661 __tmp57656))))
                           (declare (not safe))
                           (cons __tmp57697 __tmp57655))))
                    (declare (not safe))
                    (cons __tmp57698 __tmp57654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57653 '()))))
                                              (declare (not safe))
                                              (cons __tmp57699 __tmp57652))))
                                       (declare (not safe))
                                       (cons __tmp57710 __tmp57651))))
                                (declare (not safe))
                                (cons __tmp57711 __tmp57650))))
                         (declare (not safe))
                         (cons __tmp57649 '()))))
                  (declare (not safe))
                  (cons __tmp57712 __tmp57648))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57717
                                                         __tmp57647)))
                                               _hd5388653924_
                                               _hd5388353914_)
                                              (_g5387553893_ _g5387653897_))))
                                      (_g5387553893_ _g5387653897_))))
                              (_g5387553893_ _g5387653897_))))
                      (_g5387553893_ _g5387653897_)))))
          (_g5387453948_ _$stx53871_))))
    (define |[:0:]#DBG|
      (lambda (_$stx53952_)
        (let* ((_g5395653967_
                (lambda (_g5395753963_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5395753963_)))
               (_g5395553996_
                (lambda (_g5395753971_)
                  (if (gx#stx-pair? _g5395753971_)
                      (let ((_e5396153974_ (gx#syntax-e _g5395753971_)))
                        (let ((_hd5396053978_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5396153974_)))
                              (_tl5395953981_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5396153974_))))
                          ((lambda (_L53984_)
                             (let ((__tmp57719 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp57718
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L53984_))))
                               (declare (not safe))
                               (cons __tmp57719 __tmp57718)))
                           _tl5395953981_)))
                      (_g5395653967_ _g5395753971_)))))
          (_g5395553996_ _$stx53952_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx54000_)
        (let* ((___stx5702657027_ _$stx54000_)
               (_g5401154225_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx5702657027_))))
          (let ((___kont5702957030_
                 (lambda (_L55078_ _L55080_ _L55081_ _L55082_ _L55083_)
                   (let ((__tmp57720
                          (let ((__tmp57721
                                 (let ((__tmp57722
                                        (let ((__tmp57726
                                               (let ((__tmp57727
                                                      (lambda (_g5511355116_
                                                               _g5511455119_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5511355116_
                                                                _g5511455119_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp57727
                                                         '()
                                                         _L55081_)))
                                              (__tmp57723
                                               (let ((__tmp57724
                                                      (let ((__tmp57725
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L55078_ '()))))
                (declare (not safe))
                (cons _L55080_ __tmp57725))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L55082_ __tmp57724))))
                                          (declare (not safe))
                                          (cons __tmp57726 __tmp57723))))
                                   (declare (not safe))
                                   (cons '() __tmp57722))))
                            (declare (not safe))
                            (cons '2 __tmp57721))))
                     (declare (not safe))
                     (cons _L55083_ __tmp57720))))
                (___kont5703357034_
                 (lambda (_L54931_ _L54933_ _L54934_ _L54935_)
                   (let ((__tmp57728
                          (let ((__tmp57729
                                 (let ((__tmp57730
                                        (let ((__tmp57734
                                               (let ((__tmp57735
                                                      (lambda (_g5495854961_
                                                               _g5495954964_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5495854961_
                                                                _g5495954964_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp57735
                                                         '()
                                                         _L54933_)))
                                              (__tmp57731
                                               (let ((__tmp57732
                                                      (let ((__tmp57733
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L54931_ '()))))
                (declare (not safe))
                (cons _L54931_ __tmp57733))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L54934_ __tmp57732))))
                                          (declare (not safe))
                                          (cons __tmp57734 __tmp57731))))
                                   (declare (not safe))
                                   (cons '() __tmp57730))))
                            (declare (not safe))
                            (cons '2 __tmp57729))))
                     (declare (not safe))
                     (cons _L54935_ __tmp57728))))
                (___kont5703757038_
                 (lambda (_L54834_)
                   (let ((__tmp57747 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp57736
                          (let ((__tmp57737
                                 (let ((__tmp57744
                                        (let ((__tmp57746
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp57745
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp57746 __tmp57745)))
                                       (__tmp57738
                                        (let ((__tmp57741
                                               (let ((__tmp57743
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp57742
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp57743 __tmp57742)))
                                              (__tmp57739
                                               (let ((__tmp57740
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp57740))))
                                          (declare (not safe))
                                          (cons __tmp57741 __tmp57739))))
                                   (declare (not safe))
                                   (cons __tmp57744 __tmp57738))))
                            (declare (not safe))
                            (cons _L54834_ __tmp57737))))
                     (declare (not safe))
                     (cons __tmp57747 __tmp57736))))
                (___kont5703957040_
                 (lambda (_L54757_
                          _L54759_
                          _L54760_
                          _L54761_
                          _L54762_
                          _L54763_)
                   (let ((__tmp57748
                          (let ((__tmp57749
                                 (let ((__tmp57751
                                        (let ((__tmp57752
                                               (let ((__tmp57753
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L54760_ '()))))
                                                 (declare (not safe))
                                                 (cons _L54761_ __tmp57753))))
                                          (declare (not safe))
                                          (cons __tmp57752 _L54762_)))
                                       (__tmp57750
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54759_ _L54757_))))
                                   (declare (not safe))
                                   (cons __tmp57751 __tmp57750))))
                            (declare (not safe))
                            (cons '2 __tmp57749))))
                     (declare (not safe))
                     (cons _L54763_ __tmp57748))))
                (___kont5704157042_
                 (lambda (_L54638_ _L54640_ _L54641_ _L54642_ _L54643_)
                   (let ((__tmp57754
                          (let ((__tmp57755
                                 (let ((__tmp57757
                                        (let ((__tmp57758
                                               (let ((__tmp57759
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L54641_ '()))))
                                                 (declare (not safe))
                                                 (cons _L54641_ __tmp57759))))
                                          (declare (not safe))
                                          (cons __tmp57758 _L54642_)))
                                       (__tmp57756
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54640_ _L54638_))))
                                   (declare (not safe))
                                   (cons __tmp57757 __tmp57756))))
                            (declare (not safe))
                            (cons '2 __tmp57755))))
                     (declare (not safe))
                     (cons _L54643_ __tmp57754))))
                (___kont5704357044_
                 (lambda (_L54555_ _L54557_ _L54558_)
                   (let ((__tmp57760
                          (let ((__tmp57761
                                 (let ((__tmp57762
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54557_ _L54555_))))
                                   (declare (not safe))
                                   (cons '() __tmp57762))))
                            (declare (not safe))
                            (cons '3 __tmp57761))))
                     (declare (not safe))
                     (cons _L54558_ __tmp57760))))
                (___kont5704557046_
                 (lambda (_L54476_ _L54478_ _L54479_ _L54480_ _L54481_)
                   (let ((__tmp57763
                          (let ((__tmp57764
                                 (let ((__tmp57766
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54479_ _L54480_)))
                                       (__tmp57765
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54478_ _L54476_))))
                                   (declare (not safe))
                                   (cons __tmp57766 __tmp57765))))
                            (declare (not safe))
                            (cons '3 __tmp57764))))
                     (declare (not safe))
                     (cons _L54481_ __tmp57763))))
                (___kont5704757048_
                 (lambda (_L54360_
                          _L54362_
                          _L54363_
                          _L54364_
                          _L54365_
                          _L54366_)
                   (let ((__tmp57814 (gx#datum->syntax '#f 'let))
                         (__tmp57767
                          (let ((__tmp57802
                                 (let ((__tmp57811
                                        (let ((__tmp57813
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp57812
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L54363_ '()))))
                                          (declare (not safe))
                                          (cons __tmp57813 __tmp57812)))
                                       (__tmp57803
                                        (let ((__tmp57804
                                               (let ((__tmp57810
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp57805
                                                      (let ((__tmp57806
                                                             (let ((__tmp57809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp57807
                            (let ((__tmp57808
                                   (let ()
                                     (declare (not safe))
                                     (cons _L54360_ '()))))
                              (declare (not safe))
                              (cons '() __tmp57808))))
                       (declare (not safe))
                       (cons __tmp57809 __tmp57807))))
                (declare (not safe))
                (cons __tmp57806 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57810
                                                       __tmp57805))))
                                          (declare (not safe))
                                          (cons __tmp57804 '()))))
                                   (declare (not safe))
                                   (cons __tmp57811 __tmp57803)))
                                (__tmp57768
                                 (let ((__tmp57769
                                        (let ((__tmp57801
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp57770
                                               (let ((__tmp57800
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp57771
                                                      (let ((__tmp57775
                                                             (let ((__tmp57799
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp57776
                            (let ((__tmp57798 (gx#datum->syntax '#f 'tagval))
                                  (__tmp57777
                                   (let ((__tmp57793
                                          (let ((__tmp57797
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp57794
                                                 (let ((__tmp57795
                                                        (let ((__tmp57796
                                                               (lambda (_g5440054403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5440154406_)
                         (let ()
                           (declare (not safe))
                           (cons _g5440054403_ _g5440154406_)))))
                  (declare (not safe))
                  (foldr1 __tmp57796 '() _L54365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57795 '()))))
                                            (declare (not safe))
                                            (cons __tmp57797 __tmp57794)))
                                         (__tmp57778
                                          (let ((__tmp57785
                                                 (let ((__tmp57792
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp57786
                                                        (let ((__tmp57787
                                                               (lambda (_g5439854409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5439954412_)
                         (let ((__tmp57788
                                (let ((__tmp57791
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp57789
                                       (let ((__tmp57790
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5439854409_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp57790))))
                                  (declare (not safe))
                                  (cons __tmp57791 __tmp57789))))
                           (declare (not safe))
                           (cons __tmp57788 _g5439954412_)))))
                  (declare (not safe))
                  (foldr1 __tmp57787 '() _L54364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57792
                                                         __tmp57786)))
                                                (__tmp57779
                                                 (let ((__tmp57782
                                                        (let ((__tmp57784
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp57783
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L54362_ '()))))
                  (declare (not safe))
                  (cons __tmp57784 __tmp57783)))
               (__tmp57780
                (let ((__tmp57781 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp57781 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57782
                                                         __tmp57780))))
                                            (declare (not safe))
                                            (cons __tmp57785 __tmp57779))))
                                     (declare (not safe))
                                     (cons __tmp57793 __tmp57778))))
                              (declare (not safe))
                              (cons __tmp57798 __tmp57777))))
                       (declare (not safe))
                       (cons __tmp57799 __tmp57776)))
                    (__tmp57772
                     (let ((__tmp57773
                            (let ((__tmp57774 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp57774 '()))))
                       (declare (not safe))
                       (cons __tmp57773 '()))))
                (declare (not safe))
                (cons __tmp57775 __tmp57772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57800
                                                       __tmp57771))))
                                          (declare (not safe))
                                          (cons __tmp57801 __tmp57770))))
                                   (declare (not safe))
                                   (cons __tmp57769 '()))))
                            (declare (not safe))
                            (cons __tmp57802 __tmp57768))))
                     (declare (not safe))
                     (cons __tmp57814 __tmp57767)))))
            (let* ((___match5737757378_
                    (lambda (_e5418354232_
                             _hd5418254236_
                             _tl5418154239_
                             _e5418654242_
                             _hd5418554246_
                             _tl5418454249_
                             _e5418754252_
                             _e5419054256_
                             _hd5418954260_
                             _tl5418854263_
                             ___splice5704957050_
                             _target5419154266_
                             _tl5419354269_)
                      (letrec ((_loop5419454272_
                                (lambda (_hd5419254276_
                                         _exprs5419854279_
                                         _names5419954281_)
                                  (if (gx#stx-pair? _hd5419254276_)
                                      (let ((_e5419554284_
                                             (gx#syntax-e _hd5419254276_)))
                                        (let ((_lp-tl5419754291_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5419554284_)))
                                              (_lp-hd5419654288_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5419554284_))))
                                          (if (gx#stx-pair? _lp-hd5419654288_)
                                              (let ((_e5420454294_
                                                     (gx#syntax-e
                                                      _lp-hd5419654288_)))
                                                (let ((_tl5420254301_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5420454294_)))
                                                      (_hd5420354298_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5420454294_))))
                                                  (if (gx#stx-pair?
                                                       _tl5420254301_)
                                                      (let ((_e5420754304_
                                                             (gx#syntax-e
                                                              _tl5420254301_)))
                                                        (let ((_tl5420554311_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5420754304_)))
                      (_hd5420654308_
                       (let () (declare (not safe)) (##car _e5420754304_))))
                  (if (gx#stx-null? _tl5420554311_)
                      (_loop5419454272_
                       _lp-tl5419754291_
                       (let ()
                         (declare (not safe))
                         (cons _hd5420654308_ _exprs5419854279_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5420354298_ _names5419954281_)))
                      (let () (declare (not safe)) (_g5401154225_)))))
              (let () (declare (not safe)) (_g5401154225_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5401154225_)))))
                                      (let ((_names5420154317_
                                             (reverse _names5419954281_))
                                            (_exprs5420054314_
                                             (reverse _exprs5419854279_)))
                                        (if (gx#stx-pair? _tl5418854263_)
                                            (let ((_e5421054320_
                                                   (gx#syntax-e
                                                    _tl5418854263_)))
                                              (let ((_tl5420854327_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5421054320_)))
                                                    (_hd5420954324_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5421054320_))))
                                                (if (gx#stx-null?
                                                     _hd5420954324_)
                                                    (if (gx#stx-pair?
                                                         _tl5420854327_)
                                                        (let ((_e5421354330_
                                                               (gx#syntax-e
                                                                _tl5420854327_)))
                                                          (let ((_tl5421154337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5421354330_)))
                        (_hd5421254334_
                         (let () (declare (not safe)) (##car _e5421354330_))))
                    (if (gx#stx-pair? _tl5421154337_)
                        (let ((_e5421654340_ (gx#syntax-e _tl5421154337_)))
                          (let ((_tl5421454347_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5421654340_)))
                                (_hd5421554344_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5421654340_))))
                            (if (gx#stx-pair? _tl5421454347_)
                                (let ((_e5421954350_
                                       (gx#syntax-e _tl5421454347_)))
                                  (let ((_tl5421754357_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5421954350_)))
                                        (_hd5421854354_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5421954350_))))
                                    (if (gx#stx-null? _tl5421754357_)
                                        (___kont5704757048_
                                         _hd5421854354_
                                         _hd5421554344_
                                         _hd5421254334_
                                         _exprs5420054314_
                                         _names5420154317_
                                         _hd5418254236_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5401154225_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5401154225_)))))
                        (let () (declare (not safe)) (_g5401154225_)))))
                (let () (declare (not safe)) (_g5401154225_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5401154225_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5401154225_))))))))
                        (_loop5419454272_ _target5419154266_ '() '()))))
                   (___match5715557156_
                    (lambda (_e5405554857_
                             _hd5405454861_
                             _tl5405354864_
                             _e5405854867_
                             _hd5405754871_
                             _tl5405654874_
                             _e5405954877_
                             _e5406254881_
                             _hd5406154885_
                             _tl5406054888_
                             ___splice5703557036_
                             _target5406354891_
                             _tl5406554894_
                             _e5407454897_
                             _hd5407354901_
                             _tl5407254904_)
                      (letrec ((_loop5406654907_
                                (lambda (_hd5406454911_ _exprs5407054914_)
                                  (if (gx#stx-pair? _hd5406454911_)
                                      (let ((_e5406754917_
                                             (gx#syntax-e _hd5406454911_)))
                                        (let ((_lp-tl5406954924_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5406754917_)))
                                              (_lp-hd5406854921_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5406754917_))))
                                          (_loop5406654907_
                                           _lp-tl5406954924_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5406854921_
                                                   _exprs5407054914_)))))
                                      (let ((_exprs5407154927_
                                             (reverse _exprs5407054914_)))
                                        (___kont5703357034_
                                         _hd5407354901_
                                         _exprs5407154927_
                                         _hd5406154885_
                                         _hd5405454861_))))))
                        (_loop5406654907_ _target5406354891_ '()))))
                   (___match5711557116_
                    (lambda (_e5402054974_
                             _hd5401954978_
                             _tl5401854981_
                             _e5402354984_
                             _hd5402254988_
                             _tl5402154991_
                             _e5402454994_
                             _e5402754998_
                             _hd5402655002_
                             _tl5402555005_
                             ___splice5703157032_
                             _target5402855008_
                             _tl5403055011_
                             _e5403955014_
                             _hd5403855018_
                             _tl5403755021_
                             _e5404255024_
                             _hd5404155028_
                             _tl5404055031_
                             _e5404555034_
                             _hd5404455038_
                             _tl5404355041_
                             _e5404855044_
                             _hd5404755048_
                             _tl5404655051_)
                      (letrec ((_loop5403155054_
                                (lambda (_hd5402955058_ _exprs5403555061_)
                                  (if (gx#stx-pair? _hd5402955058_)
                                      (let ((_e5403255064_
                                             (gx#syntax-e _hd5402955058_)))
                                        (let ((_lp-tl5403455071_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5403255064_)))
                                              (_lp-hd5403355068_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5403255064_))))
                                          (_loop5403155054_
                                           _lp-tl5403455071_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5403355068_
                                                   _exprs5403555061_)))))
                                      (let ((_exprs5403655074_
                                             (reverse _exprs5403555061_)))
                                        (___kont5702957030_
                                         _hd5404755048_
                                         _hd5404455038_
                                         _exprs5403655074_
                                         _hd5402655002_
                                         _hd5401954978_))))))
                        (_loop5403155054_ _target5402855008_ '())))))
              (if (gx#stx-pair? ___stx5702657027_)
                  (let ((_e5402054974_ (gx#syntax-e ___stx5702657027_)))
                    (let ((_tl5401854981_
                           (let () (declare (not safe)) (##cdr _e5402054974_)))
                          (_hd5401954978_
                           (let ()
                             (declare (not safe))
                             (##car _e5402054974_))))
                      (if (gx#stx-pair? _tl5401854981_)
                          (let ((_e5402354984_ (gx#syntax-e _tl5401854981_)))
                            (let ((_tl5402154991_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5402354984_)))
                                  (_hd5402254988_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5402354984_))))
                              (if (gx#stx-datum? _hd5402254988_)
                                  (let ((_e5402454994_
                                         (gx#stx-e _hd5402254988_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5402454994_ '1))
                                        (if (gx#stx-pair? _tl5402154991_)
                                            (let ((_e5402754998_
                                                   (gx#syntax-e
                                                    _tl5402154991_)))
                                              (let ((_tl5402555005_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5402754998_)))
                                                    (_hd5402655002_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5402754998_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5402555005_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5402555005_)
                                                              '2)
                                                        (let ((___splice5703157032_
                                                               (gx#syntax-split-splice
                                                                _tl5402555005_
                                                                '2)))
                                                          (let ((_tl5403055011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5703157032_ '1)))
                        (_target5402855008_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5703157032_ '0))))
                    (if (gx#stx-pair? _tl5403055011_)
                        (let ((_e5403955014_ (gx#syntax-e _tl5403055011_)))
                          (let ((_tl5403755021_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5403955014_)))
                                (_hd5403855018_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5403955014_))))
                            (if (gx#stx-pair? _hd5403855018_)
                                (let ((_e5404255024_
                                       (gx#syntax-e _hd5403855018_)))
                                  (let ((_tl5404055031_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5404255024_)))
                                        (_hd5404155028_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5404255024_))))
                                    (if (gx#identifier? _hd5404155028_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g57816_|
                                             _hd5404155028_)
                                            (if (gx#stx-pair? _tl5404055031_)
                                                (let ((_e5404555034_
                                                       (gx#syntax-e
                                                        _tl5404055031_)))
                                                  (let ((_tl5404355041_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5404555034_)))
                                                        (_hd5404455038_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5404555034_))))
                                                    (if (gx#stx-null?
                                                         _tl5404355041_)
                                                        (if (gx#stx-pair?
                                                             _tl5403755021_)
                                                            (let ((_e5404855044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5403755021_)))
                      (let ((_tl5404655051_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5404855044_)))
                            (_hd5404755048_
                             (let ()
                               (declare (not safe))
                               (##car _e5404855044_))))
                        (if (gx#stx-null? _tl5404655051_)
                            (___match5711557116_
                             _e5402054974_
                             _hd5401954978_
                             _tl5401854981_
                             _e5402354984_
                             _hd5402254988_
                             _tl5402154991_
                             _e5402454994_
                             _e5402754998_
                             _hd5402655002_
                             _tl5402555005_
                             ___splice5703157032_
                             _target5402855008_
                             _tl5403055011_
                             _e5403955014_
                             _hd5403855018_
                             _tl5403755021_
                             _e5404255024_
                             _hd5404155028_
                             _tl5404055031_
                             _e5404555034_
                             _hd5404455038_
                             _tl5404355041_
                             _e5404855044_
                             _hd5404755048_
                             _tl5404655051_)
                            (if (fx>= (gx#stx-length _tl5402555005_) '1)
                                (let ((___splice5703557036_
                                       (gx#syntax-split-splice
                                        _tl5402555005_
                                        '1)))
                                  (let ((_tl5406554894_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5703557036_
                                            '1)))
                                        (_target5406354891_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5703557036_
                                            '0))))
                                    (if (gx#stx-pair? _tl5406554894_)
                                        (let ((_e5407454897_
                                               (gx#syntax-e _tl5406554894_)))
                                          (let ((_tl5407254904_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5407454897_)))
                                                (_hd5407354901_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5407454897_))))
                                            (if (gx#stx-null? _tl5407254904_)
                                                (___match5715557156_
                                                 _e5402054974_
                                                 _hd5401954978_
                                                 _tl5401854981_
                                                 _e5402354984_
                                                 _hd5402254988_
                                                 _tl5402154991_
                                                 _e5402454994_
                                                 _e5402754998_
                                                 _hd5402655002_
                                                 _tl5402555005_
                                                 ___splice5703557036_
                                                 _target5406354891_
                                                 _tl5406554894_
                                                 _e5407454897_
                                                 _hd5407354901_
                                                 _tl5407254904_)
                                                (if (gx#stx-null?
                                                     _tl5402555005_)
                                                    (___kont5703757038_
                                                     _hd5402655002_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5401154225_))))))
                                        (if (gx#stx-null? _tl5402555005_)
                                            (___kont5703757038_ _hd5402655002_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5401154225_))))))
                                (if (gx#stx-null? _tl5402555005_)
                                    (___kont5703757038_ _hd5402655002_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5401154225_)))))))
                    (if (fx>= (gx#stx-length _tl5402555005_) '1)
                        (let ((___splice5703557036_
                               (gx#syntax-split-splice _tl5402555005_ '1)))
                          (let ((_tl5406554894_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5703557036_ '1)))
                                (_target5406354891_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5703557036_ '0))))
                            (if (gx#stx-pair? _tl5406554894_)
                                (let ((_e5407454897_
                                       (gx#syntax-e _tl5406554894_)))
                                  (let ((_tl5407254904_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5407454897_)))
                                        (_hd5407354901_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5407454897_))))
                                    (if (gx#stx-null? _tl5407254904_)
                                        (___match5715557156_
                                         _e5402054974_
                                         _hd5401954978_
                                         _tl5401854981_
                                         _e5402354984_
                                         _hd5402254988_
                                         _tl5402154991_
                                         _e5402454994_
                                         _e5402754998_
                                         _hd5402655002_
                                         _tl5402555005_
                                         ___splice5703557036_
                                         _target5406354891_
                                         _tl5406554894_
                                         _e5407454897_
                                         _hd5407354901_
                                         _tl5407254904_)
                                        (if (gx#stx-null? _tl5402555005_)
                                            (___kont5703757038_ _hd5402655002_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5401154225_))))))
                                (if (gx#stx-null? _tl5402555005_)
                                    (___kont5703757038_ _hd5402655002_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5401154225_))))))
                        (if (gx#stx-null? _tl5402555005_)
                            (___kont5703757038_ _hd5402655002_)
                            (let () (declare (not safe)) (_g5401154225_)))))
                (if (fx>= (gx#stx-length _tl5402555005_) '1)
                    (let ((___splice5703557036_
                           (gx#syntax-split-splice _tl5402555005_ '1)))
                      (let ((_tl5406554894_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5703557036_ '1)))
                            (_target5406354891_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5703557036_ '0))))
                        (if (gx#stx-pair? _tl5406554894_)
                            (let ((_e5407454897_ (gx#syntax-e _tl5406554894_)))
                              (let ((_tl5407254904_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5407454897_)))
                                    (_hd5407354901_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5407454897_))))
                                (if (gx#stx-null? _tl5407254904_)
                                    (___match5715557156_
                                     _e5402054974_
                                     _hd5401954978_
                                     _tl5401854981_
                                     _e5402354984_
                                     _hd5402254988_
                                     _tl5402154991_
                                     _e5402454994_
                                     _e5402754998_
                                     _hd5402655002_
                                     _tl5402555005_
                                     ___splice5703557036_
                                     _target5406354891_
                                     _tl5406554894_
                                     _e5407454897_
                                     _hd5407354901_
                                     _tl5407254904_)
                                    (if (gx#stx-null? _tl5402555005_)
                                        (___kont5703757038_ _hd5402655002_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5401154225_))))))
                            (if (gx#stx-null? _tl5402555005_)
                                (___kont5703757038_ _hd5402655002_)
                                (let ()
                                  (declare (not safe))
                                  (_g5401154225_))))))
                    (if (gx#stx-null? _tl5402555005_)
                        (___kont5703757038_ _hd5402655002_)
                        (let () (declare (not safe)) (_g5401154225_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5402555005_)
                                                          '1)
                                                    (let ((___splice5703557036_
                                                           (gx#syntax-split-splice
                                                            _tl5402555005_
                                                            '1)))
                                                      (let ((_tl5406554894_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5703557036_ '1)))
                    (_target5406354891_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5703557036_ '0))))
                (if (gx#stx-pair? _tl5406554894_)
                    (let ((_e5407454897_ (gx#syntax-e _tl5406554894_)))
                      (let ((_tl5407254904_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5407454897_)))
                            (_hd5407354901_
                             (let ()
                               (declare (not safe))
                               (##car _e5407454897_))))
                        (if (gx#stx-null? _tl5407254904_)
                            (___match5715557156_
                             _e5402054974_
                             _hd5401954978_
                             _tl5401854981_
                             _e5402354984_
                             _hd5402254988_
                             _tl5402154991_
                             _e5402454994_
                             _e5402754998_
                             _hd5402655002_
                             _tl5402555005_
                             ___splice5703557036_
                             _target5406354891_
                             _tl5406554894_
                             _e5407454897_
                             _hd5407354901_
                             _tl5407254904_)
                            (if (gx#stx-null? _tl5402555005_)
                                (___kont5703757038_ _hd5402655002_)
                                (let ()
                                  (declare (not safe))
                                  (_g5401154225_))))))
                    (if (gx#stx-null? _tl5402555005_)
                        (___kont5703757038_ _hd5402655002_)
                        (let () (declare (not safe)) (_g5401154225_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5402555005_)
                                                        (___kont5703757038_
                                                         _hd5402655002_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5401154225_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5402555005_)
                                                      '1)
                                                (let ((___splice5703557036_
                                                       (gx#syntax-split-splice
                                                        _tl5402555005_
                                                        '1)))
                                                  (let ((_tl5406554894_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5703557036_
                                                            '1)))
                                                        (_target5406354891_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5703557036_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5406554894_)
                                                        (let ((_e5407454897_
                                                               (gx#syntax-e
                                                                _tl5406554894_)))
                                                          (let ((_tl5407254904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5407454897_)))
                        (_hd5407354901_
                         (let () (declare (not safe)) (##car _e5407454897_))))
                    (if (gx#stx-null? _tl5407254904_)
                        (___match5715557156_
                         _e5402054974_
                         _hd5401954978_
                         _tl5401854981_
                         _e5402354984_
                         _hd5402254988_
                         _tl5402154991_
                         _e5402454994_
                         _e5402754998_
                         _hd5402655002_
                         _tl5402555005_
                         ___splice5703557036_
                         _target5406354891_
                         _tl5406554894_
                         _e5407454897_
                         _hd5407354901_
                         _tl5407254904_)
                        (if (gx#stx-null? _tl5402555005_)
                            (___kont5703757038_ _hd5402655002_)
                            (let () (declare (not safe)) (_g5401154225_))))))
                (if (gx#stx-null? _tl5402555005_)
                    (___kont5703757038_ _hd5402655002_)
                    (let () (declare (not safe)) (_g5401154225_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5402555005_)
                                                    (___kont5703757038_
                                                     _hd5402655002_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5401154225_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5402555005_)
                                                  '1)
                                            (let ((___splice5703557036_
                                                   (gx#syntax-split-splice
                                                    _tl5402555005_
                                                    '1)))
                                              (let ((_tl5406554894_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5703557036_
                                                        '1)))
                                                    (_target5406354891_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5703557036_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5406554894_)
                                                    (let ((_e5407454897_
                                                           (gx#syntax-e
                                                            _tl5406554894_)))
                                                      (let ((_tl5407254904_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5407454897_)))
                    (_hd5407354901_
                     (let () (declare (not safe)) (##car _e5407454897_))))
                (if (gx#stx-null? _tl5407254904_)
                    (___match5715557156_
                     _e5402054974_
                     _hd5401954978_
                     _tl5401854981_
                     _e5402354984_
                     _hd5402254988_
                     _tl5402154991_
                     _e5402454994_
                     _e5402754998_
                     _hd5402655002_
                     _tl5402555005_
                     ___splice5703557036_
                     _target5406354891_
                     _tl5406554894_
                     _e5407454897_
                     _hd5407354901_
                     _tl5407254904_)
                    (if (gx#stx-null? _tl5402555005_)
                        (___kont5703757038_ _hd5402655002_)
                        (let () (declare (not safe)) (_g5401154225_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5402555005_)
                                                        (___kont5703757038_
                                                         _hd5402655002_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5401154225_))))))
                                            (if (gx#stx-null? _tl5402555005_)
                                                (___kont5703757038_
                                                 _hd5402655002_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5401154225_)))))))
                                (if (fx>= (gx#stx-length _tl5402555005_) '1)
                                    (let ((___splice5703557036_
                                           (gx#syntax-split-splice
                                            _tl5402555005_
                                            '1)))
                                      (let ((_tl5406554894_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5703557036_
                                                '1)))
                                            (_target5406354891_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5703557036_
                                                '0))))
                                        (if (gx#stx-pair? _tl5406554894_)
                                            (let ((_e5407454897_
                                                   (gx#syntax-e
                                                    _tl5406554894_)))
                                              (let ((_tl5407254904_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5407454897_)))
                                                    (_hd5407354901_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5407454897_))))
                                                (if (gx#stx-null?
                                                     _tl5407254904_)
                                                    (___match5715557156_
                                                     _e5402054974_
                                                     _hd5401954978_
                                                     _tl5401854981_
                                                     _e5402354984_
                                                     _hd5402254988_
                                                     _tl5402154991_
                                                     _e5402454994_
                                                     _e5402754998_
                                                     _hd5402655002_
                                                     _tl5402555005_
                                                     ___splice5703557036_
                                                     _target5406354891_
                                                     _tl5406554894_
                                                     _e5407454897_
                                                     _hd5407354901_
                                                     _tl5407254904_)
                                                    (if (gx#stx-null?
                                                         _tl5402555005_)
                                                        (___kont5703757038_
                                                         _hd5402655002_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5401154225_))))))
                                            (if (gx#stx-null? _tl5402555005_)
                                                (___kont5703757038_
                                                 _hd5402655002_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5401154225_))))))
                                    (if (gx#stx-null? _tl5402555005_)
                                        (___kont5703757038_ _hd5402655002_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5401154225_)))))))
                        (if (fx>= (gx#stx-length _tl5402555005_) '1)
                            (let ((___splice5703557036_
                                   (gx#syntax-split-splice _tl5402555005_ '1)))
                              (let ((_tl5406554894_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice5703557036_ '1)))
                                    (_target5406354891_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice5703557036_
                                        '0))))
                                (if (gx#stx-pair? _tl5406554894_)
                                    (let ((_e5407454897_
                                           (gx#syntax-e _tl5406554894_)))
                                      (let ((_tl5407254904_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5407454897_)))
                                            (_hd5407354901_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5407454897_))))
                                        (if (gx#stx-null? _tl5407254904_)
                                            (___match5715557156_
                                             _e5402054974_
                                             _hd5401954978_
                                             _tl5401854981_
                                             _e5402354984_
                                             _hd5402254988_
                                             _tl5402154991_
                                             _e5402454994_
                                             _e5402754998_
                                             _hd5402655002_
                                             _tl5402555005_
                                             ___splice5703557036_
                                             _target5406354891_
                                             _tl5406554894_
                                             _e5407454897_
                                             _hd5407354901_
                                             _tl5407254904_)
                                            (if (gx#stx-null? _tl5402555005_)
                                                (___kont5703757038_
                                                 _hd5402655002_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5401154225_))))))
                                    (if (gx#stx-null? _tl5402555005_)
                                        (___kont5703757038_ _hd5402655002_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5401154225_))))))
                            (if (gx#stx-null? _tl5402555005_)
                                (___kont5703757038_ _hd5402655002_)
                                (let ()
                                  (declare (not safe))
                                  (_g5401154225_)))))))
                (if (fx>= (gx#stx-length _tl5402555005_) '1)
                    (let ((___splice5703557036_
                           (gx#syntax-split-splice _tl5402555005_ '1)))
                      (let ((_tl5406554894_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5703557036_ '1)))
                            (_target5406354891_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5703557036_ '0))))
                        (if (gx#stx-pair? _tl5406554894_)
                            (let ((_e5407454897_ (gx#syntax-e _tl5406554894_)))
                              (let ((_tl5407254904_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5407454897_)))
                                    (_hd5407354901_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5407454897_))))
                                (if (gx#stx-null? _tl5407254904_)
                                    (___match5715557156_
                                     _e5402054974_
                                     _hd5401954978_
                                     _tl5401854981_
                                     _e5402354984_
                                     _hd5402254988_
                                     _tl5402154991_
                                     _e5402454994_
                                     _e5402754998_
                                     _hd5402655002_
                                     _tl5402555005_
                                     ___splice5703557036_
                                     _target5406354891_
                                     _tl5406554894_
                                     _e5407454897_
                                     _hd5407354901_
                                     _tl5407254904_)
                                    (if (gx#stx-null? _tl5402555005_)
                                        (___kont5703757038_ _hd5402655002_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5401154225_))))))
                            (if (gx#stx-null? _tl5402555005_)
                                (___kont5703757038_ _hd5402655002_)
                                (let ()
                                  (declare (not safe))
                                  (_g5401154225_))))))
                    (if (gx#stx-null? _tl5402555005_)
                        (___kont5703757038_ _hd5402655002_)
                        (let () (declare (not safe)) (_g5401154225_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5402555005_)
                                                        (___kont5703757038_
                                                         _hd5402655002_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5401154225_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5401154225_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5402454994_ '2))
                                            (if (gx#stx-pair? _tl5402154991_)
                                                (let ((_e5410154697_
                                                       (gx#syntax-e
                                                        _tl5402154991_)))
                                                  (let ((_tl5409954704_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5410154697_)))
                                                        (_hd5410054701_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5410154697_))))
                                                    (if (gx#stx-pair?
                                                         _tl5409954704_)
                                                        (let ((_e5410454707_
                                                               (gx#syntax-e
                                                                _tl5409954704_)))
                                                          (let ((_tl5410254714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5410454707_)))
                        (_hd5410354711_
                         (let () (declare (not safe)) (##car _e5410454707_))))
                    (if (gx#stx-pair? _hd5410354711_)
                        (let ((_e5410754717_ (gx#syntax-e _hd5410354711_)))
                          (let ((_tl5410554724_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5410754717_)))
                                (_hd5410654721_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5410754717_))))
                            (if (gx#stx-pair? _hd5410654721_)
                                (let ((_e5411054727_
                                       (gx#syntax-e _hd5410654721_)))
                                  (let ((_tl5410854734_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5411054727_)))
                                        (_hd5410954731_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5411054727_))))
                                    (if (gx#identifier? _hd5410954731_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g57815_|
                                             _hd5410954731_)
                                            (if (gx#stx-pair? _tl5410854734_)
                                                (let ((_e5411354737_
                                                       (gx#syntax-e
                                                        _tl5410854734_)))
                                                  (let ((_tl5411154744_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5411354737_)))
                                                        (_hd5411254741_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5411354737_))))
                                                    (if (gx#stx-null?
                                                         _tl5411154744_)
                                                        (if (gx#stx-pair?
                                                             _tl5410554724_)
                                                            (let ((_e5411654747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5410554724_)))
                      (let ((_tl5411454754_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5411654747_)))
                            (_hd5411554751_
                             (let ()
                               (declare (not safe))
                               (##car _e5411654747_))))
                        (___kont5703957040_
                         _tl5410254714_
                         _tl5411454754_
                         _hd5411554751_
                         _hd5411254741_
                         _hd5410054701_
                         _hd5401954978_)))
                    (___kont5704157042_
                     _tl5410254714_
                     _tl5410554724_
                     _hd5410654721_
                     _hd5410054701_
                     _hd5401954978_))
                (___kont5704157042_
                 _tl5410254714_
                 _tl5410554724_
                 _hd5410654721_
                 _hd5410054701_
                 _hd5401954978_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont5704157042_
                                                 _tl5410254714_
                                                 _tl5410554724_
                                                 _hd5410654721_
                                                 _hd5410054701_
                                                 _hd5401954978_))
                                            (___kont5704157042_
                                             _tl5410254714_
                                             _tl5410554724_
                                             _hd5410654721_
                                             _hd5410054701_
                                             _hd5401954978_))
                                        (___kont5704157042_
                                         _tl5410254714_
                                         _tl5410554724_
                                         _hd5410654721_
                                         _hd5410054701_
                                         _hd5401954978_))))
                                (___kont5704157042_
                                 _tl5410254714_
                                 _tl5410554724_
                                 _hd5410654721_
                                 _hd5410054701_
                                 _hd5401954978_))))
                        (if (gx#stx-null? _hd5410354711_)
                            (___kont5704357044_
                             _tl5410254714_
                             _hd5410054701_
                             _hd5401954978_)
                            (let () (declare (not safe)) (_g5401154225_))))))
                (let () (declare (not safe)) (_g5401154225_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5401154225_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5402454994_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5402154991_)
                                                    (let ((_e5416854446_
                                                           (gx#syntax-e
                                                            _tl5402154991_)))
                                                      (let ((_tl5416654453_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5416854446_)))
                    (_hd5416754450_
                     (let () (declare (not safe)) (##car _e5416854446_))))
                (if (gx#stx-pair? _tl5416654453_)
                    (let ((_e5417154456_ (gx#syntax-e _tl5416654453_)))
                      (let ((_tl5416954463_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5417154456_)))
                            (_hd5417054460_
                             (let ()
                               (declare (not safe))
                               (##car _e5417154456_))))
                        (if (gx#stx-pair? _hd5417054460_)
                            (let ((_e5417454466_ (gx#syntax-e _hd5417054460_)))
                              (let ((_tl5417254473_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5417454466_)))
                                    (_hd5417354470_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5417454466_))))
                                (___kont5704557046_
                                 _tl5416954463_
                                 _tl5417254473_
                                 _hd5417354470_
                                 _hd5416754450_
                                 _hd5401954978_)))
                            (if (gx#stx-pair/null? _hd5416754450_)
                                (let ((___splice5704957050_
                                       (gx#syntax-split-splice
                                        _hd5416754450_
                                        '0)))
                                  (let ((_tl5419354269_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5704957050_
                                            '1)))
                                        (_target5419154266_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5704957050_
                                            '0))))
                                    (if (gx#stx-null? _tl5419354269_)
                                        (___match5737757378_
                                         _e5402054974_
                                         _hd5401954978_
                                         _tl5401854981_
                                         _e5402354984_
                                         _hd5402254988_
                                         _tl5402154991_
                                         _e5402454994_
                                         _e5416854446_
                                         _hd5416754450_
                                         _tl5416654453_
                                         ___splice5704957050_
                                         _target5419154266_
                                         _tl5419354269_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5401154225_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5401154225_))))))
                    (if (gx#stx-pair/null? _hd5416754450_)
                        (let ((___splice5704957050_
                               (gx#syntax-split-splice _hd5416754450_ '0)))
                          (let ((_tl5419354269_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5704957050_ '1)))
                                (_target5419154266_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5704957050_ '0))))
                            (if (gx#stx-null? _tl5419354269_)
                                (___match5737757378_
                                 _e5402054974_
                                 _hd5401954978_
                                 _tl5401854981_
                                 _e5402354984_
                                 _hd5402254988_
                                 _tl5402154991_
                                 _e5402454994_
                                 _e5416854446_
                                 _hd5416754450_
                                 _tl5416654453_
                                 ___splice5704957050_
                                 _target5419154266_
                                 _tl5419354269_)
                                (let ()
                                  (declare (not safe))
                                  (_g5401154225_)))))
                        (let () (declare (not safe)) (_g5401154225_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5401154225_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5401154225_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5401154225_)))))
                          (let () (declare (not safe)) (_g5401154225_)))))
                  (let () (declare (not safe)) (_g5401154225_))))))))))
