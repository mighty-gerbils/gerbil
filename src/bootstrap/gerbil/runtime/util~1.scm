(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g57822_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g57823_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#__lock-inline!|
      (lambda (_$stx53550_)
        (let* ((_g5355453568_
                (lambda (_g5355553564_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5355553564_)))
               (_g5355353610_
                (lambda (_g5355553572_)
                  (if (gx#stx-pair? _g5355553572_)
                      (let ((_e5355953575_ (gx#syntax-e _g5355553572_)))
                        (let ((_hd5355853579_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5355953575_)))
                              (_tl5355753582_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5355953575_))))
                          (if (gx#stx-pair? _tl5355753582_)
                              (let ((_e5356253585_
                                     (gx#syntax-e _tl5355753582_)))
                                (let ((_hd5356153589_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5356253585_)))
                                      (_tl5356053592_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5356253585_))))
                                  (if (gx#stx-null? _tl5356053592_)
                                      ((lambda (_L53595_)
                                         (let ((__tmp57527
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp57492
                                                (let ((__tmp57493
                                                       (let ((__tmp57520
                                                              (let ((__tmp57526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'declare))
                            (__tmp57521
                             (let ((__tmp57522
                                    (let ((__tmp57525
                                           (gx#datum->syntax '#f 'not))
                                          (__tmp57523
                                           (let ((__tmp57524
                                                  (gx#datum->syntax
                                                   '#f
                                                   'interrupts-enabled)))
                                             (declare (not safe))
                                             (cons __tmp57524 '()))))
                                      (declare (not safe))
                                      (cons __tmp57525 __tmp57523))))
                               (declare (not safe))
                               (cons __tmp57522 '()))))
                        (declare (not safe))
                        (cons __tmp57526 __tmp57521)))
                     (__tmp57494
                      (let ((__tmp57495
                             (let ((__tmp57519 (gx#datum->syntax '#f 'let))
                                   (__tmp57496
                                    (let ((__tmp57518
                                           (gx#datum->syntax '#f 'again))
                                          (__tmp57497
                                           (let ((__tmp57498
                                                  (let ((__tmp57499
                                                         (let ((__tmp57517
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'unless))
                       (__tmp57500
                        (let ((__tmp57507
                               (let ((__tmp57516 (gx#datum->syntax '#f '##fx=))
                                     (__tmp57508
                                      (let ((__tmp57510
                                             (let ((__tmp57515
                                                    (gx#datum->syntax
                                                     '#f
                                                     '##vector-cas!))
                                                   (__tmp57511
                                                    (let ((__tmp57512
                                                           (let ((__tmp57513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp57514
                                 (let () (declare (not safe)) (cons '0 '()))))
                            (declare (not safe))
                            (cons '1 __tmp57514))))
                     (declare (not safe))
                     (cons '0 __tmp57513))))
              (declare (not safe))
              (cons _L53595_ __tmp57512))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp57515 __tmp57511)))
                                            (__tmp57509
                                             (let ()
                                               (declare (not safe))
                                               (cons '0 '()))))
                                        (declare (not safe))
                                        (cons __tmp57510 __tmp57509))))
                                 (declare (not safe))
                                 (cons __tmp57516 __tmp57508)))
                              (__tmp57501
                               (let ((__tmp57505
                                      (let ((__tmp57506
                                             (gx#datum->syntax
                                              '#f
                                              '##thread-yield!)))
                                        (declare (not safe))
                                        (cons __tmp57506 '())))
                                     (__tmp57502
                                      (let ((__tmp57503
                                             (let ((__tmp57504
                                                    (gx#datum->syntax
                                                     '#f
                                                     'again)))
                                               (declare (not safe))
                                               (cons __tmp57504 '()))))
                                        (declare (not safe))
                                        (cons __tmp57503 '()))))
                                 (declare (not safe))
                                 (cons __tmp57505 __tmp57502))))
                          (declare (not safe))
                          (cons __tmp57507 __tmp57501))))
                   (declare (not safe))
                   (cons __tmp57517 __tmp57500))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp57499 '()))))
                                             (declare (not safe))
                                             (cons '() __tmp57498))))
                                      (declare (not safe))
                                      (cons __tmp57518 __tmp57497))))
                               (declare (not safe))
                               (cons __tmp57519 __tmp57496))))
                        (declare (not safe))
                        (cons __tmp57495 '()))))
                 (declare (not safe))
                 (cons __tmp57520 __tmp57494))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '() __tmp57493))))
                                           (declare (not safe))
                                           (cons __tmp57527 __tmp57492)))
                                       _hd5356153589_)
                                      (_g5355453568_ _g5355553572_))))
                              (_g5355453568_ _g5355553572_))))
                      (_g5355453568_ _g5355553572_)))))
          (_g5355353610_ _$stx53550_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_$stx53614_)
        (let* ((_g5361853632_
                (lambda (_g5361953628_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5361953628_)))
               (_g5361753673_
                (lambda (_g5361953636_)
                  (if (gx#stx-pair? _g5361953636_)
                      (let ((_e5362353639_ (gx#syntax-e _g5361953636_)))
                        (let ((_hd5362253643_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5362353639_)))
                              (_tl5362153646_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5362353639_))))
                          (if (gx#stx-pair? _tl5362153646_)
                              (let ((_e5362653649_
                                     (gx#syntax-e _tl5362153646_)))
                                (let ((_hd5362553653_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5362653649_)))
                                      (_tl5362453656_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5362653649_))))
                                  (if (gx#stx-null? _tl5362453656_)
                                      ((lambda (_L53659_)
                                         (let ((__tmp57532
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-cas!))
                                               (__tmp57528
                                                (let ((__tmp57529
                                                       (let ((__tmp57530
                                                              (let ((__tmp57531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons '0 __tmp57531))))
                 (declare (not safe))
                 (cons '0 __tmp57530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L53659_ __tmp57529))))
                                           (declare (not safe))
                                           (cons __tmp57532 __tmp57528)))
                                       _hd5362553653_)
                                      (_g5361853632_ _g5361953636_))))
                              (_g5361853632_ _g5361953636_))))
                      (_g5361853632_ _g5361953636_)))))
          (_g5361753673_ _$stx53614_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_$stx53677_)
        (let* ((_g5368153691_
                (lambda (_g5368253687_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5368253687_)))
               (_g5368053712_
                (lambda (_g5368253695_)
                  (if (gx#stx-pair? _g5368253695_)
                      (let ((_e5368553698_ (gx#syntax-e _g5368253695_)))
                        (let ((_hd5368453702_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5368553698_)))
                              (_tl5368353705_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5368553698_))))
                          (if (gx#stx-null? _tl5368353705_)
                              ((lambda ()
                                 (let ((__tmp57534
                                        (gx#datum->syntax '#f 'vector))
                                       (__tmp57533
                                        (let ()
                                          (declare (not safe))
                                          (cons '0 '()))))
                                   (declare (not safe))
                                   (cons __tmp57534 __tmp57533))))
                              (_g5368153691_ _g5368253695_))))
                      (_g5368153691_ _g5368253695_)))))
          (_g5368053712_ _$stx53677_))))
    (define |[:0:]#defassget|
      (lambda (_$stx53716_)
        (let* ((_g5372053738_
                (lambda (_g5372153734_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5372153734_)))
               (_g5371953793_
                (lambda (_g5372153742_)
                  (if (gx#stx-pair? _g5372153742_)
                      (let ((_e5372653745_ (gx#syntax-e _g5372153742_)))
                        (let ((_hd5372553749_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5372653745_)))
                              (_tl5372453752_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5372653745_))))
                          (if (gx#stx-pair? _tl5372453752_)
                              (let ((_e5372953755_
                                     (gx#syntax-e _tl5372453752_)))
                                (let ((_hd5372853759_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5372953755_)))
                                      (_tl5372753762_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5372953755_))))
                                  (if (gx#stx-pair? _tl5372753762_)
                                      (let ((_e5373253765_
                                             (gx#syntax-e _tl5372753762_)))
                                        (let ((_hd5373153769_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5373253765_)))
                                              (_tl5373053772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5373253765_))))
                                          (if (gx#stx-null? _tl5373053772_)
                                              ((lambda (_L53775_ _L53777_)
                                                 (let ((__tmp57583
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp57535
                                                        (let ((__tmp57574
                                                               (let ((__tmp57575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp57582 (gx#datum->syntax '#f 'key))
                                    (__tmp57576
                                     (let ((__tmp57581
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp57577
                                            (let ((__tmp57578
                                                   (let ((__tmp57580
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp57579
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp57580
                                                           __tmp57579))))
                                              (declare (not safe))
                                              (cons __tmp57578 '()))))
                                       (declare (not safe))
                                       (cons __tmp57581 __tmp57577))))
                                (declare (not safe))
                                (cons __tmp57582 __tmp57576))))
                         (declare (not safe))
                         (cons _L53777_ __tmp57575)))
                      (__tmp57536
                       (let ((__tmp57537
                              (let ((__tmp57573 (gx#datum->syntax '#f 'cond))
                                    (__tmp57538
                                     (let ((__tmp57555
                                            (let ((__tmp57560
                                                   (let ((__tmp57572
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp57561
                                                          (let ((__tmp57568
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp57571 (gx#datum->syntax '#f 'pair?))
                               (__tmp57569
                                (let ((__tmp57570 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp57570 '()))))
                           (declare (not safe))
                           (cons __tmp57571 __tmp57569)))
                        (__tmp57562
                         (let ((__tmp57563
                                (let ((__tmp57564
                                       (let ((__tmp57567
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp57565
                                              (let ((__tmp57566
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp57566 '()))))
                                         (declare (not safe))
                                         (cons __tmp57567 __tmp57565))))
                                  (declare (not safe))
                                  (cons _L53775_ __tmp57564))))
                           (declare (not safe))
                           (cons __tmp57563 '()))))
                    (declare (not safe))
                    (cons __tmp57568 __tmp57562))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57572
                                                           __tmp57561)))
                                                  (__tmp57556
                                                   (let ((__tmp57559
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp57557
                                                          (let ((__tmp57558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp57558 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57559
                                                           __tmp57557))))
                                              (declare (not safe))
                                              (cons __tmp57560 __tmp57556)))
                                           (__tmp57539
                                            (let ((__tmp57545
                                                   (let ((__tmp57551
                                                          (let ((__tmp57554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp57552
                         (let ((__tmp57553 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp57553 '()))))
                    (declare (not safe))
                    (cons __tmp57554 __tmp57552)))
                 (__tmp57546
                  (let ((__tmp57547
                         (let ((__tmp57550 (gx#datum->syntax '#f 'default))
                               (__tmp57548
                                (let ((__tmp57549 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp57549 '()))))
                           (declare (not safe))
                           (cons __tmp57550 __tmp57548))))
                    (declare (not safe))
                    (cons __tmp57547 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57551
                                                           __tmp57546)))
                                                  (__tmp57540
                                                   (let ((__tmp57541
                                                          (let ((__tmp57544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp57542
                         (let ((__tmp57543 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp57543 '()))))
                    (declare (not safe))
                    (cons __tmp57544 __tmp57542))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57541 '()))))
                                              (declare (not safe))
                                              (cons __tmp57545 __tmp57540))))
                                       (declare (not safe))
                                       (cons __tmp57555 __tmp57539))))
                                (declare (not safe))
                                (cons __tmp57573 __tmp57538))))
                         (declare (not safe))
                         (cons __tmp57537 '()))))
                  (declare (not safe))
                  (cons __tmp57574 __tmp57536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57583
                                                         __tmp57535)))
                                               _hd5373153769_
                                               _hd5372853759_)
                                              (_g5372053738_ _g5372153742_))))
                                      (_g5372053738_ _g5372153742_))))
                              (_g5372053738_ _g5372153742_))))
                      (_g5372053738_ _g5372153742_)))))
          (_g5371953793_ _$stx53716_))))
    (define |[:0:]#defpget|
      (lambda (_$stx53797_)
        (let* ((_g5380153819_
                (lambda (_g5380253815_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5380253815_)))
               (_g5380053874_
                (lambda (_g5380253823_)
                  (if (gx#stx-pair? _g5380253823_)
                      (let ((_e5380753826_ (gx#syntax-e _g5380253823_)))
                        (let ((_hd5380653830_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5380753826_)))
                              (_tl5380553833_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5380753826_))))
                          (if (gx#stx-pair? _tl5380553833_)
                              (let ((_e5381053836_
                                     (gx#syntax-e _tl5380553833_)))
                                (let ((_hd5380953840_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5381053836_)))
                                      (_tl5380853843_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5381053836_))))
                                  (if (gx#stx-pair? _tl5380853843_)
                                      (let ((_e5381353846_
                                             (gx#syntax-e _tl5380853843_)))
                                        (let ((_hd5381253850_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5381353846_)))
                                              (_tl5381153853_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5381353846_))))
                                          (if (gx#stx-null? _tl5381153853_)
                                              ((lambda (_L53856_ _L53858_)
                                                 (let ((__tmp57653
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp57584
                                                        (let ((__tmp57644
                                                               (let ((__tmp57645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp57652 (gx#datum->syntax '#f 'key))
                                    (__tmp57646
                                     (let ((__tmp57651
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp57647
                                            (let ((__tmp57648
                                                   (let ((__tmp57650
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp57649
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp57650
                                                           __tmp57649))))
                                              (declare (not safe))
                                              (cons __tmp57648 '()))))
                                       (declare (not safe))
                                       (cons __tmp57651 __tmp57647))))
                                (declare (not safe))
                                (cons __tmp57652 __tmp57646))))
                         (declare (not safe))
                         (cons _L53858_ __tmp57645)))
                      (__tmp57585
                       (let ((__tmp57586
                              (let ((__tmp57643 (gx#datum->syntax '#f 'let))
                                    (__tmp57587
                                     (let ((__tmp57642
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp57588
                                            (let ((__tmp57637
                                                   (let ((__tmp57638
                                                          (let ((__tmp57641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp57639
                         (let ((__tmp57640 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp57640 '()))))
                    (declare (not safe))
                    (cons __tmp57641 __tmp57639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57638 '())))
                                                  (__tmp57589
                                                   (let ((__tmp57590
                                                          (let ((__tmp57636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp57591
                         (let ((__tmp57635 (gx#datum->syntax '#f 'rest))
                               (__tmp57592
                                (let ((__tmp57611
                                       (let ((__tmp57628
                                              (let ((__tmp57634
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp57629
                                                     (let ((__tmp57633
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp57630
                                                            (let ((__tmp57632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp57631 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp57632 __tmp57631))))
               (declare (not safe))
               (cons __tmp57633 __tmp57630))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57634 __tmp57629)))
                                             (__tmp57612
                                              (let ((__tmp57613
                                                     (let ((__tmp57627
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp57614
                                                            (let ((__tmp57622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57623
                                  (let ((__tmp57626 (gx#datum->syntax '#f 'k))
                                        (__tmp57624
                                         (let ((__tmp57625
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp57625 '()))))
                                    (declare (not safe))
                                    (cons __tmp57626 __tmp57624))))
                             (declare (not safe))
                             (cons _L53856_ __tmp57623)))
                          (__tmp57615
                           (let ((__tmp57621 (gx#datum->syntax '#f 'v))
                                 (__tmp57616
                                  (let ((__tmp57617
                                         (let ((__tmp57620
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp57618
                                                (let ((__tmp57619
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp57619 '()))))
                                           (declare (not safe))
                                           (cons __tmp57620 __tmp57618))))
                                    (declare (not safe))
                                    (cons __tmp57617 '()))))
                             (declare (not safe))
                             (cons __tmp57621 __tmp57616))))
                      (declare (not safe))
                      (cons __tmp57622 __tmp57615))))
               (declare (not safe))
               (cons __tmp57627 __tmp57614))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57613 '()))))
                                         (declare (not safe))
                                         (cons __tmp57628 __tmp57612)))
                                      (__tmp57593
                                       (let ((__tmp57594
                                              (let ((__tmp57610
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp57595
                                                     (let ((__tmp57596
                                                            (let ((__tmp57609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp57597
                           (let ((__tmp57605
                                  (let ((__tmp57608
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp57606
                                         (let ((__tmp57607
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp57607 '()))))
                                    (declare (not safe))
                                    (cons __tmp57608 __tmp57606)))
                                 (__tmp57598
                                  (let ((__tmp57601
                                         (let ((__tmp57604
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp57602
                                                (let ((__tmp57603
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp57603 '()))))
                                           (declare (not safe))
                                           (cons __tmp57604 __tmp57602)))
                                        (__tmp57599
                                         (let ((__tmp57600
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp57600 '()))))
                                    (declare (not safe))
                                    (cons __tmp57601 __tmp57599))))
                             (declare (not safe))
                             (cons __tmp57605 __tmp57598))))
                      (declare (not safe))
                      (cons __tmp57609 __tmp57597))))
               (declare (not safe))
               (cons __tmp57596 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57610 __tmp57595))))
                                         (declare (not safe))
                                         (cons __tmp57594 '()))))
                                  (declare (not safe))
                                  (cons __tmp57611 __tmp57593))))
                           (declare (not safe))
                           (cons __tmp57635 __tmp57592))))
                    (declare (not safe))
                    (cons __tmp57636 __tmp57591))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57590 '()))))
                                              (declare (not safe))
                                              (cons __tmp57637 __tmp57589))))
                                       (declare (not safe))
                                       (cons __tmp57642 __tmp57588))))
                                (declare (not safe))
                                (cons __tmp57643 __tmp57587))))
                         (declare (not safe))
                         (cons __tmp57586 '()))))
                  (declare (not safe))
                  (cons __tmp57644 __tmp57585))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57653
                                                         __tmp57584)))
                                               _hd5381253850_
                                               _hd5380953840_)
                                              (_g5380153819_ _g5380253823_))))
                                      (_g5380153819_ _g5380253823_))))
                              (_g5380153819_ _g5380253823_))))
                      (_g5380153819_ _g5380253823_)))))
          (_g5380053874_ _$stx53797_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx53878_)
        (let* ((_g5388253900_
                (lambda (_g5388353896_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5388353896_)))
               (_g5388153955_
                (lambda (_g5388353904_)
                  (if (gx#stx-pair? _g5388353904_)
                      (let ((_e5388853907_ (gx#syntax-e _g5388353904_)))
                        (let ((_hd5388753911_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5388853907_)))
                              (_tl5388653914_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5388853907_))))
                          (if (gx#stx-pair? _tl5388653914_)
                              (let ((_e5389153917_
                                     (gx#syntax-e _tl5388653914_)))
                                (let ((_hd5389053921_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5389153917_)))
                                      (_tl5388953924_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5389153917_))))
                                  (if (gx#stx-pair? _tl5388953924_)
                                      (let ((_e5389453927_
                                             (gx#syntax-e _tl5388953924_)))
                                        (let ((_hd5389353931_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5389453927_)))
                                              (_tl5389253934_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5389453927_))))
                                          (if (gx#stx-null? _tl5389253934_)
                                              ((lambda (_L53937_ _L53939_)
                                                 (let ((__tmp57724
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp57654
                                                        (let ((__tmp57719
                                                               (let ((__tmp57720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp57723 (gx#datum->syntax '#f 'el))
                                    (__tmp57721
                                     (let ((__tmp57722
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp57722 '()))))
                                (declare (not safe))
                                (cons __tmp57723 __tmp57721))))
                         (declare (not safe))
                         (cons _L53939_ __tmp57720)))
                      (__tmp57655
                       (let ((__tmp57656
                              (let ((__tmp57718 (gx#datum->syntax '#f 'let))
                                    (__tmp57657
                                     (let ((__tmp57717
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp57658
                                            (let ((__tmp57706
                                                   (let ((__tmp57713
                                                          (let ((__tmp57716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp57714
                         (let ((__tmp57715 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp57715 '()))))
                    (declare (not safe))
                    (cons __tmp57716 __tmp57714)))
                 (__tmp57707
                  (let ((__tmp57708
                         (let ((__tmp57712 (gx#datum->syntax '#f 'r))
                               (__tmp57709
                                (let ((__tmp57710
                                       (let ((__tmp57711
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp57711 '()))))
                                  (declare (not safe))
                                  (cons __tmp57710 '()))))
                           (declare (not safe))
                           (cons __tmp57712 __tmp57709))))
                    (declare (not safe))
                    (cons __tmp57708 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57713
                                                           __tmp57707)))
                                                  (__tmp57659
                                                   (let ((__tmp57660
                                                          (let ((__tmp57705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp57661
                         (let ((__tmp57704 (gx#datum->syntax '#f 'rest))
                               (__tmp57662
                                (let ((__tmp57668
                                       (let ((__tmp57699
                                              (let ((__tmp57703
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp57700
                                                     (let ((__tmp57702
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp57701
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp57702
                                                             __tmp57701))))
                                                (declare (not safe))
                                                (cons __tmp57703 __tmp57700)))
                                             (__tmp57669
                                              (let ((__tmp57670
                                                     (let ((__tmp57698
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp57671
                                                            (let ((__tmp57693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp57694
                                  (let ((__tmp57697 (gx#datum->syntax '#f 'el))
                                        (__tmp57695
                                         (let ((__tmp57696
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp57696 '()))))
                                    (declare (not safe))
                                    (cons __tmp57697 __tmp57695))))
                             (declare (not safe))
                             (cons _L53937_ __tmp57694)))
                          (__tmp57672
                           (let ((__tmp57685
                                  (let ((__tmp57692
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp57686
                                         (let ((__tmp57691
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp57687
                                                (let ((__tmp57690
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp57688
                                                       (let ((__tmp57689
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp57689
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp57690
                                                        __tmp57688))))
                                           (declare (not safe))
                                           (cons __tmp57691 __tmp57687))))
                                    (declare (not safe))
                                    (cons __tmp57692 __tmp57686)))
                                 (__tmp57673
                                  (let ((__tmp57674
                                         (let ((__tmp57684
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp57675
                                                (let ((__tmp57683
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp57676
                                                       (let ((__tmp57677
                                                              (let ((__tmp57682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp57678
                             (let ((__tmp57681 (gx#datum->syntax '#f 'hd))
                                   (__tmp57679
                                    (let ((__tmp57680
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp57680 '()))))
                               (declare (not safe))
                               (cons __tmp57681 __tmp57679))))
                        (declare (not safe))
                        (cons __tmp57682 __tmp57678))))
                 (declare (not safe))
                 (cons __tmp57677 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp57683
                                                        __tmp57676))))
                                           (declare (not safe))
                                           (cons __tmp57684 __tmp57675))))
                                    (declare (not safe))
                                    (cons __tmp57674 '()))))
                             (declare (not safe))
                             (cons __tmp57685 __tmp57673))))
                      (declare (not safe))
                      (cons __tmp57693 __tmp57672))))
               (declare (not safe))
               (cons __tmp57698 __tmp57671))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp57670 '()))))
                                         (declare (not safe))
                                         (cons __tmp57699 __tmp57669)))
                                      (__tmp57663
                                       (let ((__tmp57664
                                              (let ((__tmp57667
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp57665
                                                     (let ((__tmp57666
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp57666 '()))))
                                                (declare (not safe))
                                                (cons __tmp57667 __tmp57665))))
                                         (declare (not safe))
                                         (cons __tmp57664 '()))))
                                  (declare (not safe))
                                  (cons __tmp57668 __tmp57663))))
                           (declare (not safe))
                           (cons __tmp57704 __tmp57662))))
                    (declare (not safe))
                    (cons __tmp57705 __tmp57661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp57660 '()))))
                                              (declare (not safe))
                                              (cons __tmp57706 __tmp57659))))
                                       (declare (not safe))
                                       (cons __tmp57717 __tmp57658))))
                                (declare (not safe))
                                (cons __tmp57718 __tmp57657))))
                         (declare (not safe))
                         (cons __tmp57656 '()))))
                  (declare (not safe))
                  (cons __tmp57719 __tmp57655))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57724
                                                         __tmp57654)))
                                               _hd5389353931_
                                               _hd5389053921_)
                                              (_g5388253900_ _g5388353904_))))
                                      (_g5388253900_ _g5388353904_))))
                              (_g5388253900_ _g5388353904_))))
                      (_g5388253900_ _g5388353904_)))))
          (_g5388153955_ _$stx53878_))))
    (define |[:0:]#DBG|
      (lambda (_$stx53959_)
        (let* ((_g5396353974_
                (lambda (_g5396453970_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5396453970_)))
               (_g5396254003_
                (lambda (_g5396453978_)
                  (if (gx#stx-pair? _g5396453978_)
                      (let ((_e5396853981_ (gx#syntax-e _g5396453978_)))
                        (let ((_hd5396753985_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5396853981_)))
                              (_tl5396653988_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5396853981_))))
                          ((lambda (_L53991_)
                             (let ((__tmp57726 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp57725
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L53991_))))
                               (declare (not safe))
                               (cons __tmp57726 __tmp57725)))
                           _tl5396653988_)))
                      (_g5396353974_ _g5396453978_)))))
          (_g5396254003_ _$stx53959_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx54007_)
        (let* ((___stx5703357034_ _$stx54007_)
               (_g5401854232_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx5703357034_))))
          (let ((___kont5703657037_
                 (lambda (_L55085_ _L55087_ _L55088_ _L55089_ _L55090_)
                   (let ((__tmp57727
                          (let ((__tmp57728
                                 (let ((__tmp57729
                                        (let ((__tmp57733
                                               (let ((__tmp57734
                                                      (lambda (_g5512055123_
                                                               _g5512155126_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5512055123_
                                                                _g5512155126_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp57734
                                                         '()
                                                         _L55088_)))
                                              (__tmp57730
                                               (let ((__tmp57731
                                                      (let ((__tmp57732
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L55085_ '()))))
                (declare (not safe))
                (cons _L55087_ __tmp57732))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L55089_ __tmp57731))))
                                          (declare (not safe))
                                          (cons __tmp57733 __tmp57730))))
                                   (declare (not safe))
                                   (cons '() __tmp57729))))
                            (declare (not safe))
                            (cons '2 __tmp57728))))
                     (declare (not safe))
                     (cons _L55090_ __tmp57727))))
                (___kont5704057041_
                 (lambda (_L54938_ _L54940_ _L54941_ _L54942_)
                   (let ((__tmp57735
                          (let ((__tmp57736
                                 (let ((__tmp57737
                                        (let ((__tmp57741
                                               (let ((__tmp57742
                                                      (lambda (_g5496554968_
                                                               _g5496654971_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5496554968_
                                                                _g5496654971_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp57742
                                                         '()
                                                         _L54940_)))
                                              (__tmp57738
                                               (let ((__tmp57739
                                                      (let ((__tmp57740
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L54938_ '()))))
                (declare (not safe))
                (cons _L54938_ __tmp57740))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L54941_ __tmp57739))))
                                          (declare (not safe))
                                          (cons __tmp57741 __tmp57738))))
                                   (declare (not safe))
                                   (cons '() __tmp57737))))
                            (declare (not safe))
                            (cons '2 __tmp57736))))
                     (declare (not safe))
                     (cons _L54942_ __tmp57735))))
                (___kont5704457045_
                 (lambda (_L54841_)
                   (let ((__tmp57754 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp57743
                          (let ((__tmp57744
                                 (let ((__tmp57751
                                        (let ((__tmp57753
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp57752
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp57753 __tmp57752)))
                                       (__tmp57745
                                        (let ((__tmp57748
                                               (let ((__tmp57750
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp57749
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp57750 __tmp57749)))
                                              (__tmp57746
                                               (let ((__tmp57747
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp57747))))
                                          (declare (not safe))
                                          (cons __tmp57748 __tmp57746))))
                                   (declare (not safe))
                                   (cons __tmp57751 __tmp57745))))
                            (declare (not safe))
                            (cons _L54841_ __tmp57744))))
                     (declare (not safe))
                     (cons __tmp57754 __tmp57743))))
                (___kont5704657047_
                 (lambda (_L54764_
                          _L54766_
                          _L54767_
                          _L54768_
                          _L54769_
                          _L54770_)
                   (let ((__tmp57755
                          (let ((__tmp57756
                                 (let ((__tmp57758
                                        (let ((__tmp57759
                                               (let ((__tmp57760
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L54767_ '()))))
                                                 (declare (not safe))
                                                 (cons _L54768_ __tmp57760))))
                                          (declare (not safe))
                                          (cons __tmp57759 _L54769_)))
                                       (__tmp57757
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54766_ _L54764_))))
                                   (declare (not safe))
                                   (cons __tmp57758 __tmp57757))))
                            (declare (not safe))
                            (cons '2 __tmp57756))))
                     (declare (not safe))
                     (cons _L54770_ __tmp57755))))
                (___kont5704857049_
                 (lambda (_L54645_ _L54647_ _L54648_ _L54649_ _L54650_)
                   (let ((__tmp57761
                          (let ((__tmp57762
                                 (let ((__tmp57764
                                        (let ((__tmp57765
                                               (let ((__tmp57766
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L54648_ '()))))
                                                 (declare (not safe))
                                                 (cons _L54648_ __tmp57766))))
                                          (declare (not safe))
                                          (cons __tmp57765 _L54649_)))
                                       (__tmp57763
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54647_ _L54645_))))
                                   (declare (not safe))
                                   (cons __tmp57764 __tmp57763))))
                            (declare (not safe))
                            (cons '2 __tmp57762))))
                     (declare (not safe))
                     (cons _L54650_ __tmp57761))))
                (___kont5705057051_
                 (lambda (_L54562_ _L54564_ _L54565_)
                   (let ((__tmp57767
                          (let ((__tmp57768
                                 (let ((__tmp57769
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54564_ _L54562_))))
                                   (declare (not safe))
                                   (cons '() __tmp57769))))
                            (declare (not safe))
                            (cons '3 __tmp57768))))
                     (declare (not safe))
                     (cons _L54565_ __tmp57767))))
                (___kont5705257053_
                 (lambda (_L54483_ _L54485_ _L54486_ _L54487_ _L54488_)
                   (let ((__tmp57770
                          (let ((__tmp57771
                                 (let ((__tmp57773
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54486_ _L54487_)))
                                       (__tmp57772
                                        (let ()
                                          (declare (not safe))
                                          (cons _L54485_ _L54483_))))
                                   (declare (not safe))
                                   (cons __tmp57773 __tmp57772))))
                            (declare (not safe))
                            (cons '3 __tmp57771))))
                     (declare (not safe))
                     (cons _L54488_ __tmp57770))))
                (___kont5705457055_
                 (lambda (_L54367_
                          _L54369_
                          _L54370_
                          _L54371_
                          _L54372_
                          _L54373_)
                   (let ((__tmp57821 (gx#datum->syntax '#f 'let))
                         (__tmp57774
                          (let ((__tmp57809
                                 (let ((__tmp57818
                                        (let ((__tmp57820
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp57819
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L54370_ '()))))
                                          (declare (not safe))
                                          (cons __tmp57820 __tmp57819)))
                                       (__tmp57810
                                        (let ((__tmp57811
                                               (let ((__tmp57817
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp57812
                                                      (let ((__tmp57813
                                                             (let ((__tmp57816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp57814
                            (let ((__tmp57815
                                   (let ()
                                     (declare (not safe))
                                     (cons _L54367_ '()))))
                              (declare (not safe))
                              (cons '() __tmp57815))))
                       (declare (not safe))
                       (cons __tmp57816 __tmp57814))))
                (declare (not safe))
                (cons __tmp57813 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57817
                                                       __tmp57812))))
                                          (declare (not safe))
                                          (cons __tmp57811 '()))))
                                   (declare (not safe))
                                   (cons __tmp57818 __tmp57810)))
                                (__tmp57775
                                 (let ((__tmp57776
                                        (let ((__tmp57808
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp57777
                                               (let ((__tmp57807
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp57778
                                                      (let ((__tmp57782
                                                             (let ((__tmp57806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp57783
                            (let ((__tmp57805 (gx#datum->syntax '#f 'tagval))
                                  (__tmp57784
                                   (let ((__tmp57800
                                          (let ((__tmp57804
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp57801
                                                 (let ((__tmp57802
                                                        (let ((__tmp57803
                                                               (lambda (_g5440754410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5440854413_)
                         (let ()
                           (declare (not safe))
                           (cons _g5440754410_ _g5440854413_)))))
                  (declare (not safe))
                  (foldr1 __tmp57803 '() _L54372_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57802 '()))))
                                            (declare (not safe))
                                            (cons __tmp57804 __tmp57801)))
                                         (__tmp57785
                                          (let ((__tmp57792
                                                 (let ((__tmp57799
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp57793
                                                        (let ((__tmp57794
                                                               (lambda (_g5440554416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5440654419_)
                         (let ((__tmp57795
                                (let ((__tmp57798
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp57796
                                       (let ((__tmp57797
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5440554416_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp57797))))
                                  (declare (not safe))
                                  (cons __tmp57798 __tmp57796))))
                           (declare (not safe))
                           (cons __tmp57795 _g5440654419_)))))
                  (declare (not safe))
                  (foldr1 __tmp57794 '() _L54371_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57799
                                                         __tmp57793)))
                                                (__tmp57786
                                                 (let ((__tmp57789
                                                        (let ((__tmp57791
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp57790
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L54369_ '()))))
                  (declare (not safe))
                  (cons __tmp57791 __tmp57790)))
               (__tmp57787
                (let ((__tmp57788 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp57788 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57789
                                                         __tmp57787))))
                                            (declare (not safe))
                                            (cons __tmp57792 __tmp57786))))
                                     (declare (not safe))
                                     (cons __tmp57800 __tmp57785))))
                              (declare (not safe))
                              (cons __tmp57805 __tmp57784))))
                       (declare (not safe))
                       (cons __tmp57806 __tmp57783)))
                    (__tmp57779
                     (let ((__tmp57780
                            (let ((__tmp57781 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp57781 '()))))
                       (declare (not safe))
                       (cons __tmp57780 '()))))
                (declare (not safe))
                (cons __tmp57782 __tmp57779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57807
                                                       __tmp57778))))
                                          (declare (not safe))
                                          (cons __tmp57808 __tmp57777))))
                                   (declare (not safe))
                                   (cons __tmp57776 '()))))
                            (declare (not safe))
                            (cons __tmp57809 __tmp57775))))
                     (declare (not safe))
                     (cons __tmp57821 __tmp57774)))))
            (let* ((___match5738457385_
                    (lambda (_e5419054239_
                             _hd5418954243_
                             _tl5418854246_
                             _e5419354249_
                             _hd5419254253_
                             _tl5419154256_
                             _e5419454259_
                             _e5419754263_
                             _hd5419654267_
                             _tl5419554270_
                             ___splice5705657057_
                             _target5419854273_
                             _tl5420054276_)
                      (letrec ((_loop5420154279_
                                (lambda (_hd5419954283_
                                         _exprs5420554286_
                                         _names5420654288_)
                                  (if (gx#stx-pair? _hd5419954283_)
                                      (let ((_e5420254291_
                                             (gx#syntax-e _hd5419954283_)))
                                        (let ((_lp-tl5420454298_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5420254291_)))
                                              (_lp-hd5420354295_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5420254291_))))
                                          (if (gx#stx-pair? _lp-hd5420354295_)
                                              (let ((_e5421154301_
                                                     (gx#syntax-e
                                                      _lp-hd5420354295_)))
                                                (let ((_tl5420954308_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5421154301_)))
                                                      (_hd5421054305_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5421154301_))))
                                                  (if (gx#stx-pair?
                                                       _tl5420954308_)
                                                      (let ((_e5421454311_
                                                             (gx#syntax-e
                                                              _tl5420954308_)))
                                                        (let ((_tl5421254318_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5421454311_)))
                      (_hd5421354315_
                       (let () (declare (not safe)) (##car _e5421454311_))))
                  (if (gx#stx-null? _tl5421254318_)
                      (_loop5420154279_
                       _lp-tl5420454298_
                       (let ()
                         (declare (not safe))
                         (cons _hd5421354315_ _exprs5420554286_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5421054305_ _names5420654288_)))
                      (let () (declare (not safe)) (_g5401854232_)))))
              (let () (declare (not safe)) (_g5401854232_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5401854232_)))))
                                      (let ((_names5420854324_
                                             (reverse _names5420654288_))
                                            (_exprs5420754321_
                                             (reverse _exprs5420554286_)))
                                        (if (gx#stx-pair? _tl5419554270_)
                                            (let ((_e5421754327_
                                                   (gx#syntax-e
                                                    _tl5419554270_)))
                                              (let ((_tl5421554334_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5421754327_)))
                                                    (_hd5421654331_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5421754327_))))
                                                (if (gx#stx-null?
                                                     _hd5421654331_)
                                                    (if (gx#stx-pair?
                                                         _tl5421554334_)
                                                        (let ((_e5422054337_
                                                               (gx#syntax-e
                                                                _tl5421554334_)))
                                                          (let ((_tl5421854344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5422054337_)))
                        (_hd5421954341_
                         (let () (declare (not safe)) (##car _e5422054337_))))
                    (if (gx#stx-pair? _tl5421854344_)
                        (let ((_e5422354347_ (gx#syntax-e _tl5421854344_)))
                          (let ((_tl5422154354_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5422354347_)))
                                (_hd5422254351_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5422354347_))))
                            (if (gx#stx-pair? _tl5422154354_)
                                (let ((_e5422654357_
                                       (gx#syntax-e _tl5422154354_)))
                                  (let ((_tl5422454364_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5422654357_)))
                                        (_hd5422554361_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5422654357_))))
                                    (if (gx#stx-null? _tl5422454364_)
                                        (___kont5705457055_
                                         _hd5422554361_
                                         _hd5422254351_
                                         _hd5421954341_
                                         _exprs5420754321_
                                         _names5420854324_
                                         _hd5418954243_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5401854232_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5401854232_)))))
                        (let () (declare (not safe)) (_g5401854232_)))))
                (let () (declare (not safe)) (_g5401854232_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5401854232_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5401854232_))))))))
                        (_loop5420154279_ _target5419854273_ '() '()))))
                   (___match5716257163_
                    (lambda (_e5406254864_
                             _hd5406154868_
                             _tl5406054871_
                             _e5406554874_
                             _hd5406454878_
                             _tl5406354881_
                             _e5406654884_
                             _e5406954888_
                             _hd5406854892_
                             _tl5406754895_
                             ___splice5704257043_
                             _target5407054898_
                             _tl5407254901_
                             _e5408154904_
                             _hd5408054908_
                             _tl5407954911_)
                      (letrec ((_loop5407354914_
                                (lambda (_hd5407154918_ _exprs5407754921_)
                                  (if (gx#stx-pair? _hd5407154918_)
                                      (let ((_e5407454924_
                                             (gx#syntax-e _hd5407154918_)))
                                        (let ((_lp-tl5407654931_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5407454924_)))
                                              (_lp-hd5407554928_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5407454924_))))
                                          (_loop5407354914_
                                           _lp-tl5407654931_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5407554928_
                                                   _exprs5407754921_)))))
                                      (let ((_exprs5407854934_
                                             (reverse _exprs5407754921_)))
                                        (___kont5704057041_
                                         _hd5408054908_
                                         _exprs5407854934_
                                         _hd5406854892_
                                         _hd5406154868_))))))
                        (_loop5407354914_ _target5407054898_ '()))))
                   (___match5712257123_
                    (lambda (_e5402754981_
                             _hd5402654985_
                             _tl5402554988_
                             _e5403054991_
                             _hd5402954995_
                             _tl5402854998_
                             _e5403155001_
                             _e5403455005_
                             _hd5403355009_
                             _tl5403255012_
                             ___splice5703857039_
                             _target5403555015_
                             _tl5403755018_
                             _e5404655021_
                             _hd5404555025_
                             _tl5404455028_
                             _e5404955031_
                             _hd5404855035_
                             _tl5404755038_
                             _e5405255041_
                             _hd5405155045_
                             _tl5405055048_
                             _e5405555051_
                             _hd5405455055_
                             _tl5405355058_)
                      (letrec ((_loop5403855061_
                                (lambda (_hd5403655065_ _exprs5404255068_)
                                  (if (gx#stx-pair? _hd5403655065_)
                                      (let ((_e5403955071_
                                             (gx#syntax-e _hd5403655065_)))
                                        (let ((_lp-tl5404155078_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5403955071_)))
                                              (_lp-hd5404055075_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5403955071_))))
                                          (_loop5403855061_
                                           _lp-tl5404155078_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5404055075_
                                                   _exprs5404255068_)))))
                                      (let ((_exprs5404355081_
                                             (reverse _exprs5404255068_)))
                                        (___kont5703657037_
                                         _hd5405455055_
                                         _hd5405155045_
                                         _exprs5404355081_
                                         _hd5403355009_
                                         _hd5402654985_))))))
                        (_loop5403855061_ _target5403555015_ '())))))
              (if (gx#stx-pair? ___stx5703357034_)
                  (let ((_e5402754981_ (gx#syntax-e ___stx5703357034_)))
                    (let ((_tl5402554988_
                           (let () (declare (not safe)) (##cdr _e5402754981_)))
                          (_hd5402654985_
                           (let ()
                             (declare (not safe))
                             (##car _e5402754981_))))
                      (if (gx#stx-pair? _tl5402554988_)
                          (let ((_e5403054991_ (gx#syntax-e _tl5402554988_)))
                            (let ((_tl5402854998_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5403054991_)))
                                  (_hd5402954995_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5403054991_))))
                              (if (gx#stx-datum? _hd5402954995_)
                                  (let ((_e5403155001_
                                         (gx#stx-e _hd5402954995_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5403155001_ '1))
                                        (if (gx#stx-pair? _tl5402854998_)
                                            (let ((_e5403455005_
                                                   (gx#syntax-e
                                                    _tl5402854998_)))
                                              (let ((_tl5403255012_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5403455005_)))
                                                    (_hd5403355009_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5403455005_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5403255012_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5403255012_)
                                                              '2)
                                                        (let ((___splice5703857039_
                                                               (gx#syntax-split-splice
                                                                _tl5403255012_
                                                                '2)))
                                                          (let ((_tl5403755018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5703857039_ '1)))
                        (_target5403555015_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5703857039_ '0))))
                    (if (gx#stx-pair? _tl5403755018_)
                        (let ((_e5404655021_ (gx#syntax-e _tl5403755018_)))
                          (let ((_tl5404455028_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5404655021_)))
                                (_hd5404555025_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5404655021_))))
                            (if (gx#stx-pair? _hd5404555025_)
                                (let ((_e5404955031_
                                       (gx#syntax-e _hd5404555025_)))
                                  (let ((_tl5404755038_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5404955031_)))
                                        (_hd5404855035_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5404955031_))))
                                    (if (gx#identifier? _hd5404855035_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g57823_|
                                             _hd5404855035_)
                                            (if (gx#stx-pair? _tl5404755038_)
                                                (let ((_e5405255041_
                                                       (gx#syntax-e
                                                        _tl5404755038_)))
                                                  (let ((_tl5405055048_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5405255041_)))
                                                        (_hd5405155045_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5405255041_))))
                                                    (if (gx#stx-null?
                                                         _tl5405055048_)
                                                        (if (gx#stx-pair?
                                                             _tl5404455028_)
                                                            (let ((_e5405555051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5404455028_)))
                      (let ((_tl5405355058_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5405555051_)))
                            (_hd5405455055_
                             (let ()
                               (declare (not safe))
                               (##car _e5405555051_))))
                        (if (gx#stx-null? _tl5405355058_)
                            (___match5712257123_
                             _e5402754981_
                             _hd5402654985_
                             _tl5402554988_
                             _e5403054991_
                             _hd5402954995_
                             _tl5402854998_
                             _e5403155001_
                             _e5403455005_
                             _hd5403355009_
                             _tl5403255012_
                             ___splice5703857039_
                             _target5403555015_
                             _tl5403755018_
                             _e5404655021_
                             _hd5404555025_
                             _tl5404455028_
                             _e5404955031_
                             _hd5404855035_
                             _tl5404755038_
                             _e5405255041_
                             _hd5405155045_
                             _tl5405055048_
                             _e5405555051_
                             _hd5405455055_
                             _tl5405355058_)
                            (if (fx>= (gx#stx-length _tl5403255012_) '1)
                                (let ((___splice5704257043_
                                       (gx#syntax-split-splice
                                        _tl5403255012_
                                        '1)))
                                  (let ((_tl5407254901_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5704257043_
                                            '1)))
                                        (_target5407054898_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5704257043_
                                            '0))))
                                    (if (gx#stx-pair? _tl5407254901_)
                                        (let ((_e5408154904_
                                               (gx#syntax-e _tl5407254901_)))
                                          (let ((_tl5407954911_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5408154904_)))
                                                (_hd5408054908_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5408154904_))))
                                            (if (gx#stx-null? _tl5407954911_)
                                                (___match5716257163_
                                                 _e5402754981_
                                                 _hd5402654985_
                                                 _tl5402554988_
                                                 _e5403054991_
                                                 _hd5402954995_
                                                 _tl5402854998_
                                                 _e5403155001_
                                                 _e5403455005_
                                                 _hd5403355009_
                                                 _tl5403255012_
                                                 ___splice5704257043_
                                                 _target5407054898_
                                                 _tl5407254901_
                                                 _e5408154904_
                                                 _hd5408054908_
                                                 _tl5407954911_)
                                                (if (gx#stx-null?
                                                     _tl5403255012_)
                                                    (___kont5704457045_
                                                     _hd5403355009_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5401854232_))))))
                                        (if (gx#stx-null? _tl5403255012_)
                                            (___kont5704457045_ _hd5403355009_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5401854232_))))))
                                (if (gx#stx-null? _tl5403255012_)
                                    (___kont5704457045_ _hd5403355009_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5401854232_)))))))
                    (if (fx>= (gx#stx-length _tl5403255012_) '1)
                        (let ((___splice5704257043_
                               (gx#syntax-split-splice _tl5403255012_ '1)))
                          (let ((_tl5407254901_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5704257043_ '1)))
                                (_target5407054898_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5704257043_ '0))))
                            (if (gx#stx-pair? _tl5407254901_)
                                (let ((_e5408154904_
                                       (gx#syntax-e _tl5407254901_)))
                                  (let ((_tl5407954911_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5408154904_)))
                                        (_hd5408054908_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5408154904_))))
                                    (if (gx#stx-null? _tl5407954911_)
                                        (___match5716257163_
                                         _e5402754981_
                                         _hd5402654985_
                                         _tl5402554988_
                                         _e5403054991_
                                         _hd5402954995_
                                         _tl5402854998_
                                         _e5403155001_
                                         _e5403455005_
                                         _hd5403355009_
                                         _tl5403255012_
                                         ___splice5704257043_
                                         _target5407054898_
                                         _tl5407254901_
                                         _e5408154904_
                                         _hd5408054908_
                                         _tl5407954911_)
                                        (if (gx#stx-null? _tl5403255012_)
                                            (___kont5704457045_ _hd5403355009_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5401854232_))))))
                                (if (gx#stx-null? _tl5403255012_)
                                    (___kont5704457045_ _hd5403355009_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5401854232_))))))
                        (if (gx#stx-null? _tl5403255012_)
                            (___kont5704457045_ _hd5403355009_)
                            (let () (declare (not safe)) (_g5401854232_)))))
                (if (fx>= (gx#stx-length _tl5403255012_) '1)
                    (let ((___splice5704257043_
                           (gx#syntax-split-splice _tl5403255012_ '1)))
                      (let ((_tl5407254901_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5704257043_ '1)))
                            (_target5407054898_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5704257043_ '0))))
                        (if (gx#stx-pair? _tl5407254901_)
                            (let ((_e5408154904_ (gx#syntax-e _tl5407254901_)))
                              (let ((_tl5407954911_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5408154904_)))
                                    (_hd5408054908_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5408154904_))))
                                (if (gx#stx-null? _tl5407954911_)
                                    (___match5716257163_
                                     _e5402754981_
                                     _hd5402654985_
                                     _tl5402554988_
                                     _e5403054991_
                                     _hd5402954995_
                                     _tl5402854998_
                                     _e5403155001_
                                     _e5403455005_
                                     _hd5403355009_
                                     _tl5403255012_
                                     ___splice5704257043_
                                     _target5407054898_
                                     _tl5407254901_
                                     _e5408154904_
                                     _hd5408054908_
                                     _tl5407954911_)
                                    (if (gx#stx-null? _tl5403255012_)
                                        (___kont5704457045_ _hd5403355009_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5401854232_))))))
                            (if (gx#stx-null? _tl5403255012_)
                                (___kont5704457045_ _hd5403355009_)
                                (let ()
                                  (declare (not safe))
                                  (_g5401854232_))))))
                    (if (gx#stx-null? _tl5403255012_)
                        (___kont5704457045_ _hd5403355009_)
                        (let () (declare (not safe)) (_g5401854232_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5403255012_)
                                                          '1)
                                                    (let ((___splice5704257043_
                                                           (gx#syntax-split-splice
                                                            _tl5403255012_
                                                            '1)))
                                                      (let ((_tl5407254901_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5704257043_ '1)))
                    (_target5407054898_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5704257043_ '0))))
                (if (gx#stx-pair? _tl5407254901_)
                    (let ((_e5408154904_ (gx#syntax-e _tl5407254901_)))
                      (let ((_tl5407954911_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5408154904_)))
                            (_hd5408054908_
                             (let ()
                               (declare (not safe))
                               (##car _e5408154904_))))
                        (if (gx#stx-null? _tl5407954911_)
                            (___match5716257163_
                             _e5402754981_
                             _hd5402654985_
                             _tl5402554988_
                             _e5403054991_
                             _hd5402954995_
                             _tl5402854998_
                             _e5403155001_
                             _e5403455005_
                             _hd5403355009_
                             _tl5403255012_
                             ___splice5704257043_
                             _target5407054898_
                             _tl5407254901_
                             _e5408154904_
                             _hd5408054908_
                             _tl5407954911_)
                            (if (gx#stx-null? _tl5403255012_)
                                (___kont5704457045_ _hd5403355009_)
                                (let ()
                                  (declare (not safe))
                                  (_g5401854232_))))))
                    (if (gx#stx-null? _tl5403255012_)
                        (___kont5704457045_ _hd5403355009_)
                        (let () (declare (not safe)) (_g5401854232_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5403255012_)
                                                        (___kont5704457045_
                                                         _hd5403355009_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5401854232_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5403255012_)
                                                      '1)
                                                (let ((___splice5704257043_
                                                       (gx#syntax-split-splice
                                                        _tl5403255012_
                                                        '1)))
                                                  (let ((_tl5407254901_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5704257043_
                                                            '1)))
                                                        (_target5407054898_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5704257043_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5407254901_)
                                                        (let ((_e5408154904_
                                                               (gx#syntax-e
                                                                _tl5407254901_)))
                                                          (let ((_tl5407954911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5408154904_)))
                        (_hd5408054908_
                         (let () (declare (not safe)) (##car _e5408154904_))))
                    (if (gx#stx-null? _tl5407954911_)
                        (___match5716257163_
                         _e5402754981_
                         _hd5402654985_
                         _tl5402554988_
                         _e5403054991_
                         _hd5402954995_
                         _tl5402854998_
                         _e5403155001_
                         _e5403455005_
                         _hd5403355009_
                         _tl5403255012_
                         ___splice5704257043_
                         _target5407054898_
                         _tl5407254901_
                         _e5408154904_
                         _hd5408054908_
                         _tl5407954911_)
                        (if (gx#stx-null? _tl5403255012_)
                            (___kont5704457045_ _hd5403355009_)
                            (let () (declare (not safe)) (_g5401854232_))))))
                (if (gx#stx-null? _tl5403255012_)
                    (___kont5704457045_ _hd5403355009_)
                    (let () (declare (not safe)) (_g5401854232_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5403255012_)
                                                    (___kont5704457045_
                                                     _hd5403355009_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5401854232_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5403255012_)
                                                  '1)
                                            (let ((___splice5704257043_
                                                   (gx#syntax-split-splice
                                                    _tl5403255012_
                                                    '1)))
                                              (let ((_tl5407254901_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5704257043_
                                                        '1)))
                                                    (_target5407054898_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5704257043_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5407254901_)
                                                    (let ((_e5408154904_
                                                           (gx#syntax-e
                                                            _tl5407254901_)))
                                                      (let ((_tl5407954911_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5408154904_)))
                    (_hd5408054908_
                     (let () (declare (not safe)) (##car _e5408154904_))))
                (if (gx#stx-null? _tl5407954911_)
                    (___match5716257163_
                     _e5402754981_
                     _hd5402654985_
                     _tl5402554988_
                     _e5403054991_
                     _hd5402954995_
                     _tl5402854998_
                     _e5403155001_
                     _e5403455005_
                     _hd5403355009_
                     _tl5403255012_
                     ___splice5704257043_
                     _target5407054898_
                     _tl5407254901_
                     _e5408154904_
                     _hd5408054908_
                     _tl5407954911_)
                    (if (gx#stx-null? _tl5403255012_)
                        (___kont5704457045_ _hd5403355009_)
                        (let () (declare (not safe)) (_g5401854232_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5403255012_)
                                                        (___kont5704457045_
                                                         _hd5403355009_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5401854232_))))))
                                            (if (gx#stx-null? _tl5403255012_)
                                                (___kont5704457045_
                                                 _hd5403355009_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5401854232_)))))))
                                (if (fx>= (gx#stx-length _tl5403255012_) '1)
                                    (let ((___splice5704257043_
                                           (gx#syntax-split-splice
                                            _tl5403255012_
                                            '1)))
                                      (let ((_tl5407254901_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5704257043_
                                                '1)))
                                            (_target5407054898_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5704257043_
                                                '0))))
                                        (if (gx#stx-pair? _tl5407254901_)
                                            (let ((_e5408154904_
                                                   (gx#syntax-e
                                                    _tl5407254901_)))
                                              (let ((_tl5407954911_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5408154904_)))
                                                    (_hd5408054908_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5408154904_))))
                                                (if (gx#stx-null?
                                                     _tl5407954911_)
                                                    (___match5716257163_
                                                     _e5402754981_
                                                     _hd5402654985_
                                                     _tl5402554988_
                                                     _e5403054991_
                                                     _hd5402954995_
                                                     _tl5402854998_
                                                     _e5403155001_
                                                     _e5403455005_
                                                     _hd5403355009_
                                                     _tl5403255012_
                                                     ___splice5704257043_
                                                     _target5407054898_
                                                     _tl5407254901_
                                                     _e5408154904_
                                                     _hd5408054908_
                                                     _tl5407954911_)
                                                    (if (gx#stx-null?
                                                         _tl5403255012_)
                                                        (___kont5704457045_
                                                         _hd5403355009_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5401854232_))))))
                                            (if (gx#stx-null? _tl5403255012_)
                                                (___kont5704457045_
                                                 _hd5403355009_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5401854232_))))))
                                    (if (gx#stx-null? _tl5403255012_)
                                        (___kont5704457045_ _hd5403355009_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5401854232_)))))))
                        (if (fx>= (gx#stx-length _tl5403255012_) '1)
                            (let ((___splice5704257043_
                                   (gx#syntax-split-splice _tl5403255012_ '1)))
                              (let ((_tl5407254901_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice5704257043_ '1)))
                                    (_target5407054898_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice5704257043_
                                        '0))))
                                (if (gx#stx-pair? _tl5407254901_)
                                    (let ((_e5408154904_
                                           (gx#syntax-e _tl5407254901_)))
                                      (let ((_tl5407954911_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5408154904_)))
                                            (_hd5408054908_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5408154904_))))
                                        (if (gx#stx-null? _tl5407954911_)
                                            (___match5716257163_
                                             _e5402754981_
                                             _hd5402654985_
                                             _tl5402554988_
                                             _e5403054991_
                                             _hd5402954995_
                                             _tl5402854998_
                                             _e5403155001_
                                             _e5403455005_
                                             _hd5403355009_
                                             _tl5403255012_
                                             ___splice5704257043_
                                             _target5407054898_
                                             _tl5407254901_
                                             _e5408154904_
                                             _hd5408054908_
                                             _tl5407954911_)
                                            (if (gx#stx-null? _tl5403255012_)
                                                (___kont5704457045_
                                                 _hd5403355009_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5401854232_))))))
                                    (if (gx#stx-null? _tl5403255012_)
                                        (___kont5704457045_ _hd5403355009_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5401854232_))))))
                            (if (gx#stx-null? _tl5403255012_)
                                (___kont5704457045_ _hd5403355009_)
                                (let ()
                                  (declare (not safe))
                                  (_g5401854232_)))))))
                (if (fx>= (gx#stx-length _tl5403255012_) '1)
                    (let ((___splice5704257043_
                           (gx#syntax-split-splice _tl5403255012_ '1)))
                      (let ((_tl5407254901_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5704257043_ '1)))
                            (_target5407054898_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5704257043_ '0))))
                        (if (gx#stx-pair? _tl5407254901_)
                            (let ((_e5408154904_ (gx#syntax-e _tl5407254901_)))
                              (let ((_tl5407954911_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5408154904_)))
                                    (_hd5408054908_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5408154904_))))
                                (if (gx#stx-null? _tl5407954911_)
                                    (___match5716257163_
                                     _e5402754981_
                                     _hd5402654985_
                                     _tl5402554988_
                                     _e5403054991_
                                     _hd5402954995_
                                     _tl5402854998_
                                     _e5403155001_
                                     _e5403455005_
                                     _hd5403355009_
                                     _tl5403255012_
                                     ___splice5704257043_
                                     _target5407054898_
                                     _tl5407254901_
                                     _e5408154904_
                                     _hd5408054908_
                                     _tl5407954911_)
                                    (if (gx#stx-null? _tl5403255012_)
                                        (___kont5704457045_ _hd5403355009_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5401854232_))))))
                            (if (gx#stx-null? _tl5403255012_)
                                (___kont5704457045_ _hd5403355009_)
                                (let ()
                                  (declare (not safe))
                                  (_g5401854232_))))))
                    (if (gx#stx-null? _tl5403255012_)
                        (___kont5704457045_ _hd5403355009_)
                        (let () (declare (not safe)) (_g5401854232_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5403255012_)
                                                        (___kont5704457045_
                                                         _hd5403355009_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5401854232_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5401854232_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5403155001_ '2))
                                            (if (gx#stx-pair? _tl5402854998_)
                                                (let ((_e5410854704_
                                                       (gx#syntax-e
                                                        _tl5402854998_)))
                                                  (let ((_tl5410654711_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5410854704_)))
                                                        (_hd5410754708_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5410854704_))))
                                                    (if (gx#stx-pair?
                                                         _tl5410654711_)
                                                        (let ((_e5411154714_
                                                               (gx#syntax-e
                                                                _tl5410654711_)))
                                                          (let ((_tl5410954721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5411154714_)))
                        (_hd5411054718_
                         (let () (declare (not safe)) (##car _e5411154714_))))
                    (if (gx#stx-pair? _hd5411054718_)
                        (let ((_e5411454724_ (gx#syntax-e _hd5411054718_)))
                          (let ((_tl5411254731_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5411454724_)))
                                (_hd5411354728_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5411454724_))))
                            (if (gx#stx-pair? _hd5411354728_)
                                (let ((_e5411754734_
                                       (gx#syntax-e _hd5411354728_)))
                                  (let ((_tl5411554741_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5411754734_)))
                                        (_hd5411654738_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5411754734_))))
                                    (if (gx#identifier? _hd5411654738_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g57822_|
                                             _hd5411654738_)
                                            (if (gx#stx-pair? _tl5411554741_)
                                                (let ((_e5412054744_
                                                       (gx#syntax-e
                                                        _tl5411554741_)))
                                                  (let ((_tl5411854751_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5412054744_)))
                                                        (_hd5411954748_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5412054744_))))
                                                    (if (gx#stx-null?
                                                         _tl5411854751_)
                                                        (if (gx#stx-pair?
                                                             _tl5411254731_)
                                                            (let ((_e5412354754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5411254731_)))
                      (let ((_tl5412154761_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5412354754_)))
                            (_hd5412254758_
                             (let ()
                               (declare (not safe))
                               (##car _e5412354754_))))
                        (___kont5704657047_
                         _tl5410954721_
                         _tl5412154761_
                         _hd5412254758_
                         _hd5411954748_
                         _hd5410754708_
                         _hd5402654985_)))
                    (___kont5704857049_
                     _tl5410954721_
                     _tl5411254731_
                     _hd5411354728_
                     _hd5410754708_
                     _hd5402654985_))
                (___kont5704857049_
                 _tl5410954721_
                 _tl5411254731_
                 _hd5411354728_
                 _hd5410754708_
                 _hd5402654985_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont5704857049_
                                                 _tl5410954721_
                                                 _tl5411254731_
                                                 _hd5411354728_
                                                 _hd5410754708_
                                                 _hd5402654985_))
                                            (___kont5704857049_
                                             _tl5410954721_
                                             _tl5411254731_
                                             _hd5411354728_
                                             _hd5410754708_
                                             _hd5402654985_))
                                        (___kont5704857049_
                                         _tl5410954721_
                                         _tl5411254731_
                                         _hd5411354728_
                                         _hd5410754708_
                                         _hd5402654985_))))
                                (___kont5704857049_
                                 _tl5410954721_
                                 _tl5411254731_
                                 _hd5411354728_
                                 _hd5410754708_
                                 _hd5402654985_))))
                        (if (gx#stx-null? _hd5411054718_)
                            (___kont5705057051_
                             _tl5410954721_
                             _hd5410754708_
                             _hd5402654985_)
                            (let () (declare (not safe)) (_g5401854232_))))))
                (let () (declare (not safe)) (_g5401854232_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5401854232_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5403155001_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5402854998_)
                                                    (let ((_e5417554453_
                                                           (gx#syntax-e
                                                            _tl5402854998_)))
                                                      (let ((_tl5417354460_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5417554453_)))
                    (_hd5417454457_
                     (let () (declare (not safe)) (##car _e5417554453_))))
                (if (gx#stx-pair? _tl5417354460_)
                    (let ((_e5417854463_ (gx#syntax-e _tl5417354460_)))
                      (let ((_tl5417654470_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5417854463_)))
                            (_hd5417754467_
                             (let ()
                               (declare (not safe))
                               (##car _e5417854463_))))
                        (if (gx#stx-pair? _hd5417754467_)
                            (let ((_e5418154473_ (gx#syntax-e _hd5417754467_)))
                              (let ((_tl5417954480_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5418154473_)))
                                    (_hd5418054477_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5418154473_))))
                                (___kont5705257053_
                                 _tl5417654470_
                                 _tl5417954480_
                                 _hd5418054477_
                                 _hd5417454457_
                                 _hd5402654985_)))
                            (if (gx#stx-pair/null? _hd5417454457_)
                                (let ((___splice5705657057_
                                       (gx#syntax-split-splice
                                        _hd5417454457_
                                        '0)))
                                  (let ((_tl5420054276_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5705657057_
                                            '1)))
                                        (_target5419854273_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5705657057_
                                            '0))))
                                    (if (gx#stx-null? _tl5420054276_)
                                        (___match5738457385_
                                         _e5402754981_
                                         _hd5402654985_
                                         _tl5402554988_
                                         _e5403054991_
                                         _hd5402954995_
                                         _tl5402854998_
                                         _e5403155001_
                                         _e5417554453_
                                         _hd5417454457_
                                         _tl5417354460_
                                         ___splice5705657057_
                                         _target5419854273_
                                         _tl5420054276_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5401854232_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5401854232_))))))
                    (if (gx#stx-pair/null? _hd5417454457_)
                        (let ((___splice5705657057_
                               (gx#syntax-split-splice _hd5417454457_ '0)))
                          (let ((_tl5420054276_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5705657057_ '1)))
                                (_target5419854273_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5705657057_ '0))))
                            (if (gx#stx-null? _tl5420054276_)
                                (___match5738457385_
                                 _e5402754981_
                                 _hd5402654985_
                                 _tl5402554988_
                                 _e5403054991_
                                 _hd5402954995_
                                 _tl5402854998_
                                 _e5403155001_
                                 _e5417554453_
                                 _hd5417454457_
                                 _tl5417354460_
                                 ___splice5705657057_
                                 _target5419854273_
                                 _tl5420054276_)
                                (let ()
                                  (declare (not safe))
                                  (_g5401854232_)))))
                        (let () (declare (not safe)) (_g5401854232_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5401854232_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5401854232_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5401854232_)))))
                          (let () (declare (not safe)) (_g5401854232_)))))
                  (let () (declare (not safe)) (_g5401854232_))))))))))
