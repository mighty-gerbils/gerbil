(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#probe-step|
    (lambda (_$stx64752_)
      (let* ((_g6475664778_
              (lambda (_g6475764774_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6475764774_)))
             (_g6475564848_
              (lambda (_g6475764782_)
                (if (gx#stx-pair? _g6475764782_)
                    (let ((_e6476364785_ (gx#syntax-e _g6475764782_)))
                      (let ((_hd6476264789_
                             (let ()
                               (declare (not safe))
                               (##car _e6476364785_)))
                            (_tl6476164792_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6476364785_))))
                        (if (gx#stx-pair? _tl6476164792_)
                            (let ((_e6476664795_ (gx#syntax-e _tl6476164792_)))
                              (let ((_hd6476564799_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6476664795_)))
                                    (_tl6476464802_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6476664795_))))
                                (if (gx#stx-pair? _tl6476464802_)
                                    (let ((_e6476964805_
                                           (gx#syntax-e _tl6476464802_)))
                                      (let ((_hd6476864809_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6476964805_)))
                                            (_tl6476764812_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6476964805_))))
                                        (if (gx#stx-pair? _tl6476764812_)
                                            (let ((_e6477264815_
                                                   (gx#syntax-e
                                                    _tl6476764812_)))
                                              (let ((_hd6477164819_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6477264815_)))
                                                    (_tl6477064822_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6477264815_))))
                                                (if (gx#stx-null?
                                                     _tl6477064822_)
                                                    ((lambda (_L64825_
                                                              _L64827_
                                                              _L64828_)
                                                       (let ((__tmp70532
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp70506
                                                              (let ((__tmp70513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp70531
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp70514
                                    (let ((__tmp70515
                                           (let ((__tmp70530
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp70516
                                                  (let ((__tmp70517
                                                         (let ((__tmp70518
                                                                (let ((__tmp70529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp70519
                               (let ((__tmp70521
                                      (let ((__tmp70528
                                             (gx#datum->syntax '#f 'fx+))
                                            (__tmp70522
                                             (let ((__tmp70523
                                                    (let ((__tmp70524
                                                           (let ((__tmp70527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx*))
                         (__tmp70525
                          (let ((__tmp70526
                                 (let ()
                                   (declare (not safe))
                                   (cons _L64827_ '()))))
                            (declare (not safe))
                            (cons _L64827_ __tmp70526))))
                     (declare (not safe))
                     (cons __tmp70527 __tmp70525))))
              (declare (not safe))
              (cons __tmp70524 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L64827_ __tmp70523))))
                                        (declare (not safe))
                                        (cons __tmp70528 __tmp70522)))
                                     (__tmp70520
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp70521 __tmp70520))))
                          (declare (not safe))
                          (cons __tmp70529 __tmp70519))))
                   (declare (not safe))
                   (cons __tmp70518 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L64828_
                                                          __tmp70517))))
                                             (declare (not safe))
                                             (cons __tmp70530 __tmp70516))))
                                      (declare (not safe))
                                      (cons __tmp70515 '()))))
                               (declare (not safe))
                               (cons __tmp70531 __tmp70514)))
                            (__tmp70507
                             (let ((__tmp70508
                                    (let ((__tmp70512
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp70509
                                           (let ((__tmp70511
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp70510
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L64825_ '()))))
                                             (declare (not safe))
                                             (cons __tmp70511 __tmp70510))))
                                      (declare (not safe))
                                      (cons __tmp70512 __tmp70509))))
                               (declare (not safe))
                               (cons __tmp70508 '()))))
                        (declare (not safe))
                        (cons __tmp70513 __tmp70507))))
                 (declare (not safe))
                 (cons __tmp70532 __tmp70506)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd6477164819_
                                                     _hd6476864809_
                                                     _hd6476564799_)
                                                    (_g6475664778_
                                                     _g6475764782_))))
                                            (_g6475664778_ _g6475764782_))))
                                    (_g6475664778_ _g6475764782_))))
                            (_g6475664778_ _g6475764782_))))
                    (_g6475664778_ _g6475764782_)))))
        (_g6475564848_ _$stx64752_))))
  (define |[:0:]#__table-ref|
    (lambda (_$stx64852_)
      (let* ((_g6485664890_
              (lambda (_g6485764886_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6485764886_)))
             (_g6485565001_
              (lambda (_g6485764894_)
                (if (gx#stx-pair? _g6485764894_)
                    (let ((_e6486664897_ (gx#syntax-e _g6485764894_)))
                      (let ((_hd6486564901_
                             (let ()
                               (declare (not safe))
                               (##car _e6486664897_)))
                            (_tl6486464904_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6486664897_))))
                        (if (gx#stx-pair? _tl6486464904_)
                            (let ((_e6486964907_ (gx#syntax-e _tl6486464904_)))
                              (let ((_hd6486864911_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6486964907_)))
                                    (_tl6486764914_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6486964907_))))
                                (if (gx#stx-pair? _tl6486764914_)
                                    (let ((_e6487264917_
                                           (gx#syntax-e _tl6486764914_)))
                                      (let ((_hd6487164921_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6487264917_)))
                                            (_tl6487064924_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6487264917_))))
                                        (if (gx#stx-pair? _tl6487064924_)
                                            (let ((_e6487564927_
                                                   (gx#syntax-e
                                                    _tl6487064924_)))
                                              (let ((_hd6487464931_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6487564927_)))
                                                    (_tl6487364934_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6487564927_))))
                                                (if (gx#stx-pair?
                                                     _tl6487364934_)
                                                    (let ((_e6487864937_
                                                           (gx#syntax-e
                                                            _tl6487364934_)))
                                                      (let ((_hd6487764941_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6487864937_)))
                    (_tl6487664944_
                     (let () (declare (not safe)) (##cdr _e6487864937_))))
                (if (gx#stx-pair? _tl6487664944_)
                    (let ((_e6488164947_ (gx#syntax-e _tl6487664944_)))
                      (let ((_hd6488064951_
                             (let ()
                               (declare (not safe))
                               (##car _e6488164947_)))
                            (_tl6487964954_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6488164947_))))
                        (if (gx#stx-pair? _tl6487964954_)
                            (let ((_e6488464957_ (gx#syntax-e _tl6487964954_)))
                              (let ((_hd6488364961_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6488464957_)))
                                    (_tl6488264964_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6488464957_))))
                                (if (gx#stx-null? _tl6488264964_)
                                    ((lambda (_L64967_
                                              _L64969_
                                              _L64970_
                                              _L64971_
                                              _L64972_
                                              _L64973_)
                                       (let ((__tmp70670
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp70533
                                              (let ((__tmp70647
                                                     (let ((__tmp70664
                                                            (let ((__tmp70669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'size))
                          (__tmp70665
                           (let ((__tmp70666
                                  (let ((__tmp70668
                                         (gx#datum->syntax '#f 'vector-length))
                                        (__tmp70667
                                         (let ()
                                           (declare (not safe))
                                           (cons _L64973_ '()))))
                                    (declare (not safe))
                                    (cons __tmp70668 __tmp70667))))
                             (declare (not safe))
                             (cons __tmp70666 '()))))
                      (declare (not safe))
                      (cons __tmp70669 __tmp70665)))
                   (__tmp70648
                    (let ((__tmp70659
                           (let ((__tmp70663 (gx#datum->syntax '#f 'h))
                                 (__tmp70660
                                  (let ((__tmp70661
                                         (let ((__tmp70662
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L64969_ '()))))
                                           (declare (not safe))
                                           (cons _L64971_ __tmp70662))))
                                    (declare (not safe))
                                    (cons __tmp70661 '()))))
                             (declare (not safe))
                             (cons __tmp70663 __tmp70660)))
                          (__tmp70649
                           (let ((__tmp70650
                                  (let ((__tmp70658
                                         (gx#datum->syntax '#f 'start))
                                        (__tmp70651
                                         (let ((__tmp70652
                                                (let ((__tmp70657
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxmodulo))
                                                      (__tmp70653
                                                       (let ((__tmp70656
                                                              (gx#datum->syntax
                                                               '#f
                                                               'h))
                                                             (__tmp70654
                                                              (let ((__tmp70655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'size)))
                        (declare (not safe))
                        (cons __tmp70655 '()))))
                 (declare (not safe))
                 (cons __tmp70656 __tmp70654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70657
                                                        __tmp70653))))
                                           (declare (not safe))
                                           (cons __tmp70652 '()))))
                                    (declare (not safe))
                                    (cons __tmp70658 __tmp70651))))
                             (declare (not safe))
                             (cons __tmp70650 '()))))
                      (declare (not safe))
                      (cons __tmp70659 __tmp70649))))
               (declare (not safe))
               (cons __tmp70664 __tmp70648)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp70534
                                                     (let ((__tmp70535
                                                            (let ((__tmp70646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp70536
                           (let ((__tmp70645 (gx#datum->syntax '#f 'loop))
                                 (__tmp70537
                                  (let ((__tmp70632
                                         (let ((__tmp70641
                                                (let ((__tmp70644
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp70642
                                                       (let ((__tmp70643
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp70643
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp70644
                                                        __tmp70642)))
                                               (__tmp70633
                                                (let ((__tmp70638
                                                       (let ((__tmp70640
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp70639
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp70640 __tmp70639)))
              (__tmp70634
               (let ((__tmp70635
                      (let ((__tmp70637 (gx#datum->syntax '#f 'deleted))
                            (__tmp70636
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp70637 __tmp70636))))
                 (declare (not safe))
                 (cons __tmp70635 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70638
                                                        __tmp70634))))
                                           (declare (not safe))
                                           (cons __tmp70641 __tmp70633)))
                                        (__tmp70538
                                         (let ((__tmp70539
                                                (let ((__tmp70631
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp70540
                                                       (let ((__tmp70623
                                                              (let ((__tmp70630
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp70624
                             (let ((__tmp70625
                                    (let ((__tmp70629
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp70626
                                           (let ((__tmp70627
                                                  (let ((__tmp70628
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp70628 '()))))
                                             (declare (not safe))
                                             (cons _L64973_ __tmp70627))))
                                      (declare (not safe))
                                      (cons __tmp70629 __tmp70626))))
                               (declare (not safe))
                               (cons __tmp70625 '()))))
                        (declare (not safe))
                        (cons __tmp70630 __tmp70624)))
                     (__tmp70541
                      (let ((__tmp70542
                             (let ((__tmp70622 (gx#datum->syntax '#f 'cond))
                                   (__tmp70543
                                    (let ((__tmp70613
                                           (let ((__tmp70615
                                                  (let ((__tmp70621
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp70616
                                                         (let ((__tmp70620
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp70617
                        (let ((__tmp70618
                               (let ((__tmp70619
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp70619 '()))))
                          (declare (not safe))
                          (cons __tmp70618 '()))))
                   (declare (not safe))
                   (cons __tmp70620 __tmp70617))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70621
                                                          __tmp70616)))
                                                 (__tmp70614
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L64967_ '()))))
                                             (declare (not safe))
                                             (cons __tmp70615 __tmp70614)))
                                          (__tmp70544
                                           (let ((__tmp70580
                                                  (let ((__tmp70606
                                                         (let ((__tmp70612
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp70607
                        (let ((__tmp70611 (gx#datum->syntax '#f 'k))
                              (__tmp70608
                               (let ((__tmp70609
                                      (let ((__tmp70610
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp70610 '()))))
                                 (declare (not safe))
                                 (cons __tmp70609 '()))))
                          (declare (not safe))
                          (cons __tmp70611 __tmp70608))))
                   (declare (not safe))
                   (cons __tmp70612 __tmp70607)))
                (__tmp70581
                 (let ((__tmp70582
                        (let ((__tmp70605 (gx#datum->syntax '#f 'loop))
                              (__tmp70583
                               (let ((__tmp70597
                                      (let ((__tmp70604
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp70598
                                             (let ((__tmp70603
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp70599
                                                    (let ((__tmp70602
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp70600
                                                           (let ((__tmp70601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp70601 '()))))
              (declare (not safe))
              (cons __tmp70602 __tmp70600))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp70603 __tmp70599))))
                                        (declare (not safe))
                                        (cons __tmp70604 __tmp70598)))
                                     (__tmp70584
                                      (let ((__tmp70592
                                             (let ((__tmp70596
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp70593
                                                    (let ((__tmp70595
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp70594
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp70595
                                                            __tmp70594))))
                                               (declare (not safe))
                                               (cons __tmp70596 __tmp70593)))
                                            (__tmp70585
                                             (let ((__tmp70586
                                                    (let ((__tmp70591
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp70587
                                                           (let ((__tmp70590
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp70588
                          (let ((__tmp70589 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp70589 '()))))
                     (declare (not safe))
                     (cons __tmp70590 __tmp70588))))
              (declare (not safe))
              (cons __tmp70591 __tmp70587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp70586 '()))))
                                        (declare (not safe))
                                        (cons __tmp70592 __tmp70585))))
                                 (declare (not safe))
                                 (cons __tmp70597 __tmp70584))))
                          (declare (not safe))
                          (cons __tmp70605 __tmp70583))))
                   (declare (not safe))
                   (cons __tmp70582 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70606
                                                          __tmp70581)))
                                                 (__tmp70545
                                                  (let ((__tmp70569
                                                         (let ((__tmp70576
                                                                (let ((__tmp70577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp70578
                                      (let ((__tmp70579
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp70579 '()))))
                                 (declare (not safe))
                                 (cons _L64969_ __tmp70578))))
                          (declare (not safe))
                          (cons _L64970_ __tmp70577)))
                       (__tmp70570
                        (let ((__tmp70571
                               (let ((__tmp70575
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp70572
                                      (let ((__tmp70573
                                             (let ((__tmp70574
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe)))
                                               (declare (not safe))
                                               (cons __tmp70574 '()))))
                                        (declare (not safe))
                                        (cons _L64972_ __tmp70573))))
                                 (declare (not safe))
                                 (cons __tmp70575 __tmp70572))))
                          (declare (not safe))
                          (cons __tmp70571 '()))))
                   (declare (not safe))
                   (cons __tmp70576 __tmp70570)))
                (__tmp70546
                 (let ((__tmp70547
                        (let ((__tmp70568 (gx#datum->syntax '#f 'else))
                              (__tmp70548
                               (let ((__tmp70549
                                      (let ((__tmp70567
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp70550
                                             (let ((__tmp70559
                                                    (let ((__tmp70566
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp70560
                                                           (let ((__tmp70565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp70561
                          (let ((__tmp70564 (gx#datum->syntax '#f 'i))
                                (__tmp70562
                                 (let ((__tmp70563
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp70563 '()))))
                            (declare (not safe))
                            (cons __tmp70564 __tmp70562))))
                     (declare (not safe))
                     (cons __tmp70565 __tmp70561))))
              (declare (not safe))
              (cons __tmp70566 __tmp70560)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp70551
                                                    (let ((__tmp70554
                                                           (let ((__tmp70558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp70555
                          (let ((__tmp70557 (gx#datum->syntax '#f 'i))
                                (__tmp70556
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp70557 __tmp70556))))
                     (declare (not safe))
                     (cons __tmp70558 __tmp70555)))
                  (__tmp70552
                   (let ((__tmp70553 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp70553 '()))))
              (declare (not safe))
              (cons __tmp70554 __tmp70552))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp70559 __tmp70551))))
                                        (declare (not safe))
                                        (cons __tmp70567 __tmp70550))))
                                 (declare (not safe))
                                 (cons __tmp70549 '()))))
                          (declare (not safe))
                          (cons __tmp70568 __tmp70548))))
                   (declare (not safe))
                   (cons __tmp70547 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70569
                                                          __tmp70546))))
                                             (declare (not safe))
                                             (cons __tmp70580 __tmp70545))))
                                      (declare (not safe))
                                      (cons __tmp70613 __tmp70544))))
                               (declare (not safe))
                               (cons __tmp70622 __tmp70543))))
                        (declare (not safe))
                        (cons __tmp70542 '()))))
                 (declare (not safe))
                 (cons __tmp70623 __tmp70541))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70631
                                                        __tmp70540))))
                                           (declare (not safe))
                                           (cons __tmp70539 '()))))
                                    (declare (not safe))
                                    (cons __tmp70632 __tmp70538))))
                             (declare (not safe))
                             (cons __tmp70645 __tmp70537))))
                      (declare (not safe))
                      (cons __tmp70646 __tmp70536))))
               (declare (not safe))
               (cons __tmp70535 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp70647 __tmp70534))))
                                         (declare (not safe))
                                         (cons __tmp70670 __tmp70533)))
                                     _hd6488364961_
                                     _hd6488064951_
                                     _hd6487764941_
                                     _hd6487464931_
                                     _hd6487164921_
                                     _hd6486864911_)
                                    (_g6485664890_ _g6485764894_))))
                            (_g6485664890_ _g6485764894_))))
                    (_g6485664890_ _g6485764894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6485664890_
                                                     _g6485764894_))))
                                            (_g6485664890_ _g6485764894_))))
                                    (_g6485664890_ _g6485764894_))))
                            (_g6485664890_ _g6485764894_))))
                    (_g6485664890_ _g6485764894_)))))
        (_g6485565001_ _$stx64852_))))
  (define |[:0:]#__table-set!|
    (lambda (_$stx65005_)
      (let* ((_g6500965051_
              (lambda (_g6501065047_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6501065047_)))
             (_g6500865190_
              (lambda (_g6501065055_)
                (if (gx#stx-pair? _g6501065055_)
                    (let ((_e6502165058_ (gx#syntax-e _g6501065055_)))
                      (let ((_hd6502065062_
                             (let ()
                               (declare (not safe))
                               (##car _e6502165058_)))
                            (_tl6501965065_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6502165058_))))
                        (if (gx#stx-pair? _tl6501965065_)
                            (let ((_e6502465068_ (gx#syntax-e _tl6501965065_)))
                              (let ((_hd6502365072_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6502465068_)))
                                    (_tl6502265075_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6502465068_))))
                                (if (gx#stx-pair? _tl6502265075_)
                                    (let ((_e6502765078_
                                           (gx#syntax-e _tl6502265075_)))
                                      (let ((_hd6502665082_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6502765078_)))
                                            (_tl6502565085_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6502765078_))))
                                        (if (gx#stx-pair? _tl6502565085_)
                                            (let ((_e6503065088_
                                                   (gx#syntax-e
                                                    _tl6502565085_)))
                                              (let ((_hd6502965092_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6503065088_)))
                                                    (_tl6502865095_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6503065088_))))
                                                (if (gx#stx-pair?
                                                     _tl6502865095_)
                                                    (let ((_e6503365098_
                                                           (gx#syntax-e
                                                            _tl6502865095_)))
                                                      (let ((_hd6503265102_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6503365098_)))
                    (_tl6503165105_
                     (let () (declare (not safe)) (##cdr _e6503365098_))))
                (if (gx#stx-pair? _tl6503165105_)
                    (let ((_e6503665108_ (gx#syntax-e _tl6503165105_)))
                      (let ((_hd6503565112_
                             (let ()
                               (declare (not safe))
                               (##car _e6503665108_)))
                            (_tl6503465115_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6503665108_))))
                        (if (gx#stx-pair? _tl6503465115_)
                            (let ((_e6503965118_ (gx#syntax-e _tl6503465115_)))
                              (let ((_hd6503865122_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6503965118_)))
                                    (_tl6503765125_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6503965118_))))
                                (if (gx#stx-pair? _tl6503765125_)
                                    (let ((_e6504265128_
                                           (gx#syntax-e _tl6503765125_)))
                                      (let ((_hd6504165132_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6504265128_)))
                                            (_tl6504065135_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6504265128_))))
                                        (if (gx#stx-pair? _tl6504065135_)
                                            (let ((_e6504565138_
                                                   (gx#syntax-e
                                                    _tl6504065135_)))
                                              (let ((_hd6504465142_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6504565138_)))
                                                    (_tl6504365145_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6504565138_))))
                                                (if (gx#stx-null?
                                                     _tl6504365145_)
                                                    ((lambda (_L65148_
                                                              _L65150_
                                                              _L65151_
                                                              _L65152_
                                                              _L65153_
                                                              _L65154_
                                                              _L65155_
                                                              _L65156_)
                                                       (let ((__tmp70858
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp70671
                                                              (let ((__tmp70835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp70852
                                    (let ((__tmp70857
                                           (gx#datum->syntax '#f 'size))
                                          (__tmp70853
                                           (let ((__tmp70854
                                                  (let ((__tmp70856
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-length))
                                                        (__tmp70855
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L65156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70856
                                                          __tmp70855))))
                                             (declare (not safe))
                                             (cons __tmp70854 '()))))
                                      (declare (not safe))
                                      (cons __tmp70857 __tmp70853)))
                                   (__tmp70836
                                    (let ((__tmp70847
                                           (let ((__tmp70851
                                                  (gx#datum->syntax '#f 'h))
                                                 (__tmp70848
                                                  (let ((__tmp70849
                                                         (let ((__tmp70850
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L65152_ '()))))
                   (declare (not safe))
                   (cons _L65154_ __tmp70850))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70849 '()))))
                                             (declare (not safe))
                                             (cons __tmp70851 __tmp70848)))
                                          (__tmp70837
                                           (let ((__tmp70838
                                                  (let ((__tmp70846
                                                         (gx#datum->syntax
                                                          '#f
                                                          'start))
                                                        (__tmp70839
                                                         (let ((__tmp70840
                                                                (let ((__tmp70845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxmodulo))
                              (__tmp70841
                               (let ((__tmp70844 (gx#datum->syntax '#f 'h))
                                     (__tmp70842
                                      (let ((__tmp70843
                                             (gx#datum->syntax '#f 'size)))
                                        (declare (not safe))
                                        (cons __tmp70843 '()))))
                                 (declare (not safe))
                                 (cons __tmp70844 __tmp70842))))
                          (declare (not safe))
                          (cons __tmp70845 __tmp70841))))
                   (declare (not safe))
                   (cons __tmp70840 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70846
                                                          __tmp70839))))
                                             (declare (not safe))
                                             (cons __tmp70838 '()))))
                                      (declare (not safe))
                                      (cons __tmp70847 __tmp70837))))
                               (declare (not safe))
                               (cons __tmp70852 __tmp70836)))
                            (__tmp70672
                             (let ((__tmp70673
                                    (let ((__tmp70834
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp70674
                                           (let ((__tmp70833
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp70675
                                                  (let ((__tmp70820
                                                         (let ((__tmp70829
                                                                (let ((__tmp70832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp70830
                               (let ((__tmp70831
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp70831 '()))))
                          (declare (not safe))
                          (cons __tmp70832 __tmp70830)))
                       (__tmp70821
                        (let ((__tmp70826
                               (let ((__tmp70828 (gx#datum->syntax '#f 'i))
                                     (__tmp70827
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp70828 __tmp70827)))
                              (__tmp70822
                               (let ((__tmp70823
                                      (let ((__tmp70825
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp70824
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp70825 __tmp70824))))
                                 (declare (not safe))
                                 (cons __tmp70823 '()))))
                          (declare (not safe))
                          (cons __tmp70826 __tmp70822))))
                   (declare (not safe))
                   (cons __tmp70829 __tmp70821)))
                (__tmp70676
                 (let ((__tmp70677
                        (let ((__tmp70819 (gx#datum->syntax '#f 'let))
                              (__tmp70678
                               (let ((__tmp70811
                                      (let ((__tmp70818
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp70812
                                             (let ((__tmp70813
                                                    (let ((__tmp70817
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp70814
                                                           (let ((__tmp70815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp70816 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp70816 '()))))
                     (declare (not safe))
                     (cons _L65156_ __tmp70815))))
              (declare (not safe))
              (cons __tmp70817 __tmp70814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp70813 '()))))
                                        (declare (not safe))
                                        (cons __tmp70818 __tmp70812)))
                                     (__tmp70679
                                      (let ((__tmp70680
                                             (let ((__tmp70810
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp70681
                                                    (let ((__tmp70759
                                                           (let ((__tmp70803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp70809 (gx#datum->syntax '#f 'eq?))
                                (__tmp70804
                                 (let ((__tmp70808 (gx#datum->syntax '#f 'k))
                                       (__tmp70805
                                        (let ((__tmp70806
                                               (let ((__tmp70807
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp70807 '()))))
                                          (declare (not safe))
                                          (cons __tmp70806 '()))))
                                   (declare (not safe))
                                   (cons __tmp70808 __tmp70805))))
                            (declare (not safe))
                            (cons __tmp70809 __tmp70804)))
                         (__tmp70760
                          (let ((__tmp70761
                                 (let ((__tmp70802 (gx#datum->syntax '#f 'if))
                                       (__tmp70762
                                        (let ((__tmp70801
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp70763
                                               (let ((__tmp70783
                                                      (let ((__tmp70800
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp70784
                                                             (let ((__tmp70794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp70799
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp70795
                                   (let ((__tmp70796
                                          (let ((__tmp70798
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp70797
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L65152_ '()))))
                                            (declare (not safe))
                                            (cons __tmp70798 __tmp70797))))
                                     (declare (not safe))
                                     (cons _L65156_ __tmp70796))))
                              (declare (not safe))
                              (cons __tmp70799 __tmp70795)))
                           (__tmp70785
                            (let ((__tmp70788
                                   (let ((__tmp70793
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp70789
                                          (let ((__tmp70790
                                                 (let ((__tmp70792
                                                        (gx#datum->syntax
                                                         '#f
                                                         'deleted))
                                                       (__tmp70791
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L65151_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp70792
                                                         __tmp70791))))
                                            (declare (not safe))
                                            (cons _L65155_ __tmp70790))))
                                     (declare (not safe))
                                     (cons __tmp70793 __tmp70789)))
                                  (__tmp70786
                                   (let ((__tmp70787
                                          (let ()
                                            (declare (not safe))
                                            (cons _L65148_ '()))))
                                     (declare (not safe))
                                     (cons __tmp70787 '()))))
                              (declare (not safe))
                              (cons __tmp70788 __tmp70786))))
                       (declare (not safe))
                       (cons __tmp70794 __tmp70785))))
                (declare (not safe))
                (cons __tmp70800 __tmp70784)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp70764
                                                      (let ((__tmp70765
                                                             (let ((__tmp70782
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp70766
                            (let ((__tmp70776
                                   (let ((__tmp70781
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp70777
                                          (let ((__tmp70778
                                                 (let ((__tmp70780
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp70779
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L65152_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp70780
                                                         __tmp70779))))
                                            (declare (not safe))
                                            (cons _L65156_ __tmp70778))))
                                     (declare (not safe))
                                     (cons __tmp70781 __tmp70777)))
                                  (__tmp70767
                                   (let ((__tmp70770
                                          (let ((__tmp70775
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp70771
                                                 (let ((__tmp70772
                                                        (let ((__tmp70774
                                                               (gx#datum->syntax
                                                                '#f
                                                                'probe))
                                                              (__tmp70773
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L65151_ '()))))
                  (declare (not safe))
                  (cons __tmp70774 __tmp70773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L65155_
                                                         __tmp70772))))
                                            (declare (not safe))
                                            (cons __tmp70775 __tmp70771)))
                                         (__tmp70768
                                          (let ((__tmp70769
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L65150_ '()))))
                                            (declare (not safe))
                                            (cons __tmp70769 '()))))
                                     (declare (not safe))
                                     (cons __tmp70770 __tmp70768))))
                              (declare (not safe))
                              (cons __tmp70776 __tmp70767))))
                       (declare (not safe))
                       (cons __tmp70782 __tmp70766))))
                (declare (not safe))
                (cons __tmp70765 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp70783
                                                       __tmp70764))))
                                          (declare (not safe))
                                          (cons __tmp70801 __tmp70763))))
                                   (declare (not safe))
                                   (cons __tmp70802 __tmp70762))))
                            (declare (not safe))
                            (cons __tmp70761 '()))))
                     (declare (not safe))
                     (cons __tmp70803 __tmp70760)))
                  (__tmp70682
                   (let ((__tmp70726
                          (let ((__tmp70752
                                 (let ((__tmp70758 (gx#datum->syntax '#f 'eq?))
                                       (__tmp70753
                                        (let ((__tmp70757
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp70754
                                               (let ((__tmp70755
                                                      (let ((__tmp70756
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp70756
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp70755 '()))))
                                          (declare (not safe))
                                          (cons __tmp70757 __tmp70754))))
                                   (declare (not safe))
                                   (cons __tmp70758 __tmp70753)))
                                (__tmp70727
                                 (let ((__tmp70728
                                        (let ((__tmp70751
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp70729
                                               (let ((__tmp70743
                                                      (let ((__tmp70750
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp70744
                                                             (let ((__tmp70749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp70745
                            (let ((__tmp70748 (gx#datum->syntax '#f 'i))
                                  (__tmp70746
                                   (let ((__tmp70747
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp70747 '()))))
                              (declare (not safe))
                              (cons __tmp70748 __tmp70746))))
                       (declare (not safe))
                       (cons __tmp70749 __tmp70745))))
                (declare (not safe))
                (cons __tmp70750 __tmp70744)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp70730
                                                      (let ((__tmp70738
                                                             (let ((__tmp70742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp70739
                            (let ((__tmp70741 (gx#datum->syntax '#f 'i))
                                  (__tmp70740
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp70741 __tmp70740))))
                       (declare (not safe))
                       (cons __tmp70742 __tmp70739)))
                    (__tmp70731
                     (let ((__tmp70732
                            (let ((__tmp70737 (gx#datum->syntax '#f 'or))
                                  (__tmp70733
                                   (let ((__tmp70736
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp70734
                                          (let ((__tmp70735
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp70735 '()))))
                                     (declare (not safe))
                                     (cons __tmp70736 __tmp70734))))
                              (declare (not safe))
                              (cons __tmp70737 __tmp70733))))
                       (declare (not safe))
                       (cons __tmp70732 '()))))
                (declare (not safe))
                (cons __tmp70738 __tmp70731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp70743
                                                       __tmp70730))))
                                          (declare (not safe))
                                          (cons __tmp70751 __tmp70729))))
                                   (declare (not safe))
                                   (cons __tmp70728 '()))))
                            (declare (not safe))
                            (cons __tmp70752 __tmp70727)))
                         (__tmp70683
                          (let ((__tmp70707
                                 (let ((__tmp70722
                                        (let ((__tmp70723
                                               (let ((__tmp70724
                                                      (let ((__tmp70725
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp70725
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L65152_ __tmp70724))))
                                          (declare (not safe))
                                          (cons _L65153_ __tmp70723)))
                                       (__tmp70708
                                        (let ((__tmp70716
                                               (let ((__tmp70721
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp70717
                                                      (let ((__tmp70718
                                                             (let ((__tmp70720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp70719
                            (let () (declare (not safe)) (cons _L65152_ '()))))
                       (declare (not safe))
                       (cons __tmp70720 __tmp70719))))
                (declare (not safe))
                (cons _L65156_ __tmp70718))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp70721 __tmp70717)))
                                              (__tmp70709
                                               (let ((__tmp70710
                                                      (let ((__tmp70715
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp70711
                                                             (let ((__tmp70712
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp70714 (gx#datum->syntax '#f 'probe))
                                  (__tmp70713
                                   (let ()
                                     (declare (not safe))
                                     (cons _L65151_ '()))))
                              (declare (not safe))
                              (cons __tmp70714 __tmp70713))))
                       (declare (not safe))
                       (cons _L65155_ __tmp70712))))
                (declare (not safe))
                (cons __tmp70715 __tmp70711))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp70710 '()))))
                                          (declare (not safe))
                                          (cons __tmp70716 __tmp70709))))
                                   (declare (not safe))
                                   (cons __tmp70722 __tmp70708)))
                                (__tmp70684
                                 (let ((__tmp70685
                                        (let ((__tmp70706
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp70686
                                               (let ((__tmp70687
                                                      (let ((__tmp70705
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp70688
                                                             (let ((__tmp70697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp70704
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp70698
                                   (let ((__tmp70703
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp70699
                                          (let ((__tmp70702
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp70700
                                                 (let ((__tmp70701
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp70701 '()))))
                                            (declare (not safe))
                                            (cons __tmp70702 __tmp70700))))
                                     (declare (not safe))
                                     (cons __tmp70703 __tmp70699))))
                              (declare (not safe))
                              (cons __tmp70704 __tmp70698)))
                           (__tmp70689
                            (let ((__tmp70692
                                   (let ((__tmp70696
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp70693
                                          (let ((__tmp70695
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp70694
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp70695 __tmp70694))))
                                     (declare (not safe))
                                     (cons __tmp70696 __tmp70693)))
                                  (__tmp70690
                                   (let ((__tmp70691
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp70691 '()))))
                              (declare (not safe))
                              (cons __tmp70692 __tmp70690))))
                       (declare (not safe))
                       (cons __tmp70697 __tmp70689))))
                (declare (not safe))
                (cons __tmp70705 __tmp70688))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp70687 '()))))
                                          (declare (not safe))
                                          (cons __tmp70706 __tmp70686))))
                                   (declare (not safe))
                                   (cons __tmp70685 '()))))
                            (declare (not safe))
                            (cons __tmp70707 __tmp70684))))
                     (declare (not safe))
                     (cons __tmp70726 __tmp70683))))
              (declare (not safe))
              (cons __tmp70759 __tmp70682))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp70810 __tmp70681))))
                                        (declare (not safe))
                                        (cons __tmp70680 '()))))
                                 (declare (not safe))
                                 (cons __tmp70811 __tmp70679))))
                          (declare (not safe))
                          (cons __tmp70819 __tmp70678))))
                   (declare (not safe))
                   (cons __tmp70677 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70820
                                                          __tmp70676))))
                                             (declare (not safe))
                                             (cons __tmp70833 __tmp70675))))
                                      (declare (not safe))
                                      (cons __tmp70834 __tmp70674))))
                               (declare (not safe))
                               (cons __tmp70673 '()))))
                        (declare (not safe))
                        (cons __tmp70835 __tmp70672))))
                 (declare (not safe))
                 (cons __tmp70858 __tmp70671)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd6504465142_
                                                     _hd6504165132_
                                                     _hd6503865122_
                                                     _hd6503565112_
                                                     _hd6503265102_
                                                     _hd6502965092_
                                                     _hd6502665082_
                                                     _hd6502365072_)
                                                    (_g6500965051_
                                                     _g6501065055_))))
                                            (_g6500965051_ _g6501065055_))))
                                    (_g6500965051_ _g6501065055_))))
                            (_g6500965051_ _g6501065055_))))
                    (_g6500965051_ _g6501065055_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6500965051_
                                                     _g6501065055_))))
                                            (_g6500965051_ _g6501065055_))))
                                    (_g6500965051_ _g6501065055_))))
                            (_g6500965051_ _g6501065055_))))
                    (_g6500965051_ _g6501065055_)))))
        (_g6500865190_ _$stx65005_))))
  (define |[:0:]#__table-del!|
    (lambda (_$stx65194_)
      (let* ((_g6519865232_
              (lambda (_g6519965228_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6519965228_)))
             (_g6519765343_
              (lambda (_g6519965236_)
                (if (gx#stx-pair? _g6519965236_)
                    (let ((_e6520865239_ (gx#syntax-e _g6519965236_)))
                      (let ((_hd6520765243_
                             (let ()
                               (declare (not safe))
                               (##car _e6520865239_)))
                            (_tl6520665246_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6520865239_))))
                        (if (gx#stx-pair? _tl6520665246_)
                            (let ((_e6521165249_ (gx#syntax-e _tl6520665246_)))
                              (let ((_hd6521065253_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6521165249_)))
                                    (_tl6520965256_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6521165249_))))
                                (if (gx#stx-pair? _tl6520965256_)
                                    (let ((_e6521465259_
                                           (gx#syntax-e _tl6520965256_)))
                                      (let ((_hd6521365263_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6521465259_)))
                                            (_tl6521265266_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6521465259_))))
                                        (if (gx#stx-pair? _tl6521265266_)
                                            (let ((_e6521765269_
                                                   (gx#syntax-e
                                                    _tl6521265266_)))
                                              (let ((_hd6521665273_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6521765269_)))
                                                    (_tl6521565276_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6521765269_))))
                                                (if (gx#stx-pair?
                                                     _tl6521565276_)
                                                    (let ((_e6522065279_
                                                           (gx#syntax-e
                                                            _tl6521565276_)))
                                                      (let ((_hd6521965283_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6522065279_)))
                    (_tl6521865286_
                     (let () (declare (not safe)) (##cdr _e6522065279_))))
                (if (gx#stx-pair? _tl6521865286_)
                    (let ((_e6522365289_ (gx#syntax-e _tl6521865286_)))
                      (let ((_hd6522265293_
                             (let ()
                               (declare (not safe))
                               (##car _e6522365289_)))
                            (_tl6522165296_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6522365289_))))
                        (if (gx#stx-pair? _tl6522165296_)
                            (let ((_e6522665299_ (gx#syntax-e _tl6522165296_)))
                              (let ((_hd6522565303_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6522665299_)))
                                    (_tl6522465306_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6522665299_))))
                                (if (gx#stx-null? _tl6522465306_)
                                    ((lambda (_L65309_
                                              _L65311_
                                              _L65312_
                                              _L65313_
                                              _L65314_
                                              _L65315_)
                                       (let ((__tmp70999
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp70859
                                              (let ((__tmp70976
                                                     (let ((__tmp70993
                                                            (let ((__tmp70998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'size))
                          (__tmp70994
                           (let ((__tmp70995
                                  (let ((__tmp70997
                                         (gx#datum->syntax '#f 'vector-length))
                                        (__tmp70996
                                         (let ()
                                           (declare (not safe))
                                           (cons _L65315_ '()))))
                                    (declare (not safe))
                                    (cons __tmp70997 __tmp70996))))
                             (declare (not safe))
                             (cons __tmp70995 '()))))
                      (declare (not safe))
                      (cons __tmp70998 __tmp70994)))
                   (__tmp70977
                    (let ((__tmp70988
                           (let ((__tmp70992 (gx#datum->syntax '#f 'h))
                                 (__tmp70989
                                  (let ((__tmp70990
                                         (let ((__tmp70991
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L65311_ '()))))
                                           (declare (not safe))
                                           (cons _L65313_ __tmp70991))))
                                    (declare (not safe))
                                    (cons __tmp70990 '()))))
                             (declare (not safe))
                             (cons __tmp70992 __tmp70989)))
                          (__tmp70978
                           (let ((__tmp70979
                                  (let ((__tmp70987
                                         (gx#datum->syntax '#f 'start))
                                        (__tmp70980
                                         (let ((__tmp70981
                                                (let ((__tmp70986
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxmodulo))
                                                      (__tmp70982
                                                       (let ((__tmp70985
                                                              (gx#datum->syntax
                                                               '#f
                                                               'h))
                                                             (__tmp70983
                                                              (let ((__tmp70984
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'size)))
                        (declare (not safe))
                        (cons __tmp70984 '()))))
                 (declare (not safe))
                 (cons __tmp70985 __tmp70983))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70986
                                                        __tmp70982))))
                                           (declare (not safe))
                                           (cons __tmp70981 '()))))
                                    (declare (not safe))
                                    (cons __tmp70987 __tmp70980))))
                             (declare (not safe))
                             (cons __tmp70979 '()))))
                      (declare (not safe))
                      (cons __tmp70988 __tmp70978))))
               (declare (not safe))
               (cons __tmp70993 __tmp70977)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp70860
                                                     (let ((__tmp70861
                                                            (let ((__tmp70975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp70862
                           (let ((__tmp70974 (gx#datum->syntax '#f 'loop))
                                 (__tmp70863
                                  (let ((__tmp70965
                                         (let ((__tmp70970
                                                (let ((__tmp70973
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp70971
                                                       (let ((__tmp70972
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp70972
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp70973
                                                        __tmp70971)))
                                               (__tmp70966
                                                (let ((__tmp70967
                                                       (let ((__tmp70969
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp70968
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp70969 __tmp70968))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70967 '()))))
                                           (declare (not safe))
                                           (cons __tmp70970 __tmp70966)))
                                        (__tmp70864
                                         (let ((__tmp70865
                                                (let ((__tmp70964
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp70866
                                                       (let ((__tmp70956
                                                              (let ((__tmp70963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp70957
                             (let ((__tmp70958
                                    (let ((__tmp70962
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp70959
                                           (let ((__tmp70960
                                                  (let ((__tmp70961
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp70961 '()))))
                                             (declare (not safe))
                                             (cons _L65315_ __tmp70960))))
                                      (declare (not safe))
                                      (cons __tmp70962 __tmp70959))))
                               (declare (not safe))
                               (cons __tmp70958 '()))))
                        (declare (not safe))
                        (cons __tmp70963 __tmp70957)))
                     (__tmp70867
                      (let ((__tmp70868
                             (let ((__tmp70955 (gx#datum->syntax '#f 'cond))
                                   (__tmp70869
                                    (let ((__tmp70944
                                           (let ((__tmp70948
                                                  (let ((__tmp70954
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp70949
                                                         (let ((__tmp70953
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp70950
                        (let ((__tmp70951
                               (let ((__tmp70952
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp70952 '()))))
                          (declare (not safe))
                          (cons __tmp70951 '()))))
                   (declare (not safe))
                   (cons __tmp70953 __tmp70950))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70954
                                                          __tmp70949)))
                                                 (__tmp70945
                                                  (let ((__tmp70946
                                                         (let ((__tmp70947
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp70947 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70946 '()))))
                                             (declare (not safe))
                                             (cons __tmp70948 __tmp70945)))
                                          (__tmp70870
                                           (let ((__tmp70918
                                                  (let ((__tmp70937
                                                         (let ((__tmp70943
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp70938
                        (let ((__tmp70942 (gx#datum->syntax '#f 'k))
                              (__tmp70939
                               (let ((__tmp70940
                                      (let ((__tmp70941
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp70941 '()))))
                                 (declare (not safe))
                                 (cons __tmp70940 '()))))
                          (declare (not safe))
                          (cons __tmp70942 __tmp70939))))
                   (declare (not safe))
                   (cons __tmp70943 __tmp70938)))
                (__tmp70919
                 (let ((__tmp70920
                        (let ((__tmp70936 (gx#datum->syntax '#f 'loop))
                              (__tmp70921
                               (let ((__tmp70928
                                      (let ((__tmp70935
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp70929
                                             (let ((__tmp70934
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp70930
                                                    (let ((__tmp70933
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp70931
                                                           (let ((__tmp70932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp70932 '()))))
              (declare (not safe))
              (cons __tmp70933 __tmp70931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp70934 __tmp70930))))
                                        (declare (not safe))
                                        (cons __tmp70935 __tmp70929)))
                                     (__tmp70922
                                      (let ((__tmp70923
                                             (let ((__tmp70927
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp70924
                                                    (let ((__tmp70926
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp70925
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp70926
                                                            __tmp70925))))
                                               (declare (not safe))
                                               (cons __tmp70927 __tmp70924))))
                                        (declare (not safe))
                                        (cons __tmp70923 '()))))
                                 (declare (not safe))
                                 (cons __tmp70928 __tmp70922))))
                          (declare (not safe))
                          (cons __tmp70936 __tmp70921))))
                   (declare (not safe))
                   (cons __tmp70920 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70937
                                                          __tmp70919)))
                                                 (__tmp70871
                                                  (let ((__tmp70893
                                                         (let ((__tmp70914
                                                                (let ((__tmp70915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp70916
                                      (let ((__tmp70917
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp70917 '()))))
                                 (declare (not safe))
                                 (cons _L65311_ __tmp70916))))
                          (declare (not safe))
                          (cons _L65312_ __tmp70915)))
                       (__tmp70894
                        (let ((__tmp70906
                               (let ((__tmp70913
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp70907
                                      (let ((__tmp70908
                                             (let ((__tmp70912
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp70909
                                                    (let ((__tmp70910
                                                           (let ((__tmp70911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp70911 '()))))
              (declare (not safe))
              (cons __tmp70910 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp70912 __tmp70909))))
                                        (declare (not safe))
                                        (cons _L65315_ __tmp70908))))
                                 (declare (not safe))
                                 (cons __tmp70913 __tmp70907)))
                              (__tmp70895
                               (let ((__tmp70898
                                      (let ((__tmp70905
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp70899
                                             (let ((__tmp70900
                                                    (let ((__tmp70904
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp70901
                                                           (let ((__tmp70902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp70903
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp70903 '()))))
                     (declare (not safe))
                     (cons __tmp70902 '()))))
              (declare (not safe))
              (cons __tmp70904 __tmp70901))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L65314_ __tmp70900))))
                                        (declare (not safe))
                                        (cons __tmp70905 __tmp70899)))
                                     (__tmp70896
                                      (let ((__tmp70897
                                             (let ()
                                               (declare (not safe))
                                               (cons _L65309_ '()))))
                                        (declare (not safe))
                                        (cons __tmp70897 '()))))
                                 (declare (not safe))
                                 (cons __tmp70898 __tmp70896))))
                          (declare (not safe))
                          (cons __tmp70906 __tmp70895))))
                   (declare (not safe))
                   (cons __tmp70914 __tmp70894)))
                (__tmp70872
                 (let ((__tmp70873
                        (let ((__tmp70892 (gx#datum->syntax '#f 'else))
                              (__tmp70874
                               (let ((__tmp70875
                                      (let ((__tmp70891
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp70876
                                             (let ((__tmp70883
                                                    (let ((__tmp70890
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp70884
                                                           (let ((__tmp70889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp70885
                          (let ((__tmp70888 (gx#datum->syntax '#f 'i))
                                (__tmp70886
                                 (let ((__tmp70887
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp70887 '()))))
                            (declare (not safe))
                            (cons __tmp70888 __tmp70886))))
                     (declare (not safe))
                     (cons __tmp70889 __tmp70885))))
              (declare (not safe))
              (cons __tmp70890 __tmp70884)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp70877
                                                    (let ((__tmp70878
                                                           (let ((__tmp70882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp70879
                          (let ((__tmp70881 (gx#datum->syntax '#f 'i))
                                (__tmp70880
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp70881 __tmp70880))))
                     (declare (not safe))
                     (cons __tmp70882 __tmp70879))))
              (declare (not safe))
              (cons __tmp70878 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp70883 __tmp70877))))
                                        (declare (not safe))
                                        (cons __tmp70891 __tmp70876))))
                                 (declare (not safe))
                                 (cons __tmp70875 '()))))
                          (declare (not safe))
                          (cons __tmp70892 __tmp70874))))
                   (declare (not safe))
                   (cons __tmp70873 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70893
                                                          __tmp70872))))
                                             (declare (not safe))
                                             (cons __tmp70918 __tmp70871))))
                                      (declare (not safe))
                                      (cons __tmp70944 __tmp70870))))
                               (declare (not safe))
                               (cons __tmp70955 __tmp70869))))
                        (declare (not safe))
                        (cons __tmp70868 '()))))
                 (declare (not safe))
                 (cons __tmp70956 __tmp70867))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70964
                                                        __tmp70866))))
                                           (declare (not safe))
                                           (cons __tmp70865 '()))))
                                    (declare (not safe))
                                    (cons __tmp70965 __tmp70864))))
                             (declare (not safe))
                             (cons __tmp70974 __tmp70863))))
                      (declare (not safe))
                      (cons __tmp70975 __tmp70862))))
               (declare (not safe))
               (cons __tmp70861 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp70976 __tmp70860))))
                                         (declare (not safe))
                                         (cons __tmp70999 __tmp70859)))
                                     _hd6522565303_
                                     _hd6522265293_
                                     _hd6521965283_
                                     _hd6521665273_
                                     _hd6521365263_
                                     _hd6521065253_)
                                    (_g6519865232_ _g6519965236_))))
                            (_g6519865232_ _g6519965236_))))
                    (_g6519865232_ _g6519965236_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6519865232_
                                                     _g6519965236_))))
                                            (_g6519865232_ _g6519965236_))))
                                    (_g6519865232_ _g6519965236_))))
                            (_g6519865232_ _g6519965236_))))
                    (_g6519865232_ _g6519965236_)))))
        (_g6519765343_ _$stx65194_)))))
