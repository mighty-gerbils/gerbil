(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g64748_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g64749_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#defassget|
      (lambda (_$stx55765_)
        (let* ((_g5576955787_
                (lambda (_g5577055783_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5577055783_)))
               (_g5576855843_
                (lambda (_g5577055791_)
                  (if (gx#stx-pair? _g5577055791_)
                      (let ((_e5577355794_ (gx#syntax-e _g5577055791_)))
                        (let ((_hd5577455798_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5577355794_)))
                              (_tl5577555801_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5577355794_))))
                          (if (gx#stx-pair? _tl5577555801_)
                              (let ((_e5577655804_
                                     (gx#syntax-e _tl5577555801_)))
                                (let ((_hd5577755808_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5577655804_)))
                                      (_tl5577855811_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5577655804_))))
                                  (if (gx#stx-pair? _tl5577855811_)
                                      (let ((_e5577955814_
                                             (gx#syntax-e _tl5577855811_)))
                                        (let ((_hd5578055818_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5577955814_)))
                                              (_tl5578155821_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5577955814_))))
                                          (if (gx#stx-null? _tl5578155821_)
                                              ((lambda (_L55824_ _L55826_)
                                                 (let ((__tmp64509
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64461
                                                        (let ((__tmp64500
                                                               (let ((__tmp64501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64508 (gx#datum->syntax '#f 'key))
                                    (__tmp64502
                                     (let ((__tmp64507
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp64503
                                            (let ((__tmp64504
                                                   (let ((__tmp64506
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp64505
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp64506
                                                           __tmp64505))))
                                              (declare (not safe))
                                              (cons __tmp64504 '()))))
                                       (declare (not safe))
                                       (cons __tmp64507 __tmp64503))))
                                (declare (not safe))
                                (cons __tmp64508 __tmp64502))))
                         (declare (not safe))
                         (cons _L55826_ __tmp64501)))
                      (__tmp64462
                       (let ((__tmp64463
                              (let ((__tmp64499 (gx#datum->syntax '#f 'cond))
                                    (__tmp64464
                                     (let ((__tmp64481
                                            (let ((__tmp64486
                                                   (let ((__tmp64498
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp64487
                                                          (let ((__tmp64494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64497 (gx#datum->syntax '#f 'pair?))
                               (__tmp64495
                                (let ((__tmp64496 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp64496 '()))))
                           (declare (not safe))
                           (cons __tmp64497 __tmp64495)))
                        (__tmp64488
                         (let ((__tmp64489
                                (let ((__tmp64490
                                       (let ((__tmp64493
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp64491
                                              (let ((__tmp64492
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp64492 '()))))
                                         (declare (not safe))
                                         (cons __tmp64493 __tmp64491))))
                                  (declare (not safe))
                                  (cons _L55824_ __tmp64490))))
                           (declare (not safe))
                           (cons __tmp64489 '()))))
                    (declare (not safe))
                    (cons __tmp64494 __tmp64488))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64498
                                                           __tmp64487)))
                                                  (__tmp64482
                                                   (let ((__tmp64485
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp64483
                                                          (let ((__tmp64484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp64484 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64485
                                                           __tmp64483))))
                                              (declare (not safe))
                                              (cons __tmp64486 __tmp64482)))
                                           (__tmp64465
                                            (let ((__tmp64471
                                                   (let ((__tmp64477
                                                          (let ((__tmp64480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp64478
                         (let ((__tmp64479 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp64479 '()))))
                    (declare (not safe))
                    (cons __tmp64480 __tmp64478)))
                 (__tmp64472
                  (let ((__tmp64473
                         (let ((__tmp64476 (gx#datum->syntax '#f 'default))
                               (__tmp64474
                                (let ((__tmp64475 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp64475 '()))))
                           (declare (not safe))
                           (cons __tmp64476 __tmp64474))))
                    (declare (not safe))
                    (cons __tmp64473 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64477
                                                           __tmp64472)))
                                                  (__tmp64466
                                                   (let ((__tmp64467
                                                          (let ((__tmp64470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp64468
                         (let ((__tmp64469 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp64469 '()))))
                    (declare (not safe))
                    (cons __tmp64470 __tmp64468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64467 '()))))
                                              (declare (not safe))
                                              (cons __tmp64471 __tmp64466))))
                                       (declare (not safe))
                                       (cons __tmp64481 __tmp64465))))
                                (declare (not safe))
                                (cons __tmp64499 __tmp64464))))
                         (declare (not safe))
                         (cons __tmp64463 '()))))
                  (declare (not safe))
                  (cons __tmp64500 __tmp64462))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64509
                                                         __tmp64461)))
                                               _hd5578055818_
                                               _hd5577755808_)
                                              (_g5576955787_ _g5577055791_))))
                                      (_g5576955787_ _g5577055791_))))
                              (_g5576955787_ _g5577055791_))))
                      (_g5576955787_ _g5577055791_)))))
          (_g5576855843_ _$stx55765_))))
    (define |[:0:]#defpget|
      (lambda (_$stx55847_)
        (let* ((_g5585155869_
                (lambda (_g5585255865_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5585255865_)))
               (_g5585055924_
                (lambda (_g5585255873_)
                  (if (gx#stx-pair? _g5585255873_)
                      (let ((_e5585555876_ (gx#syntax-e _g5585255873_)))
                        (let ((_hd5585655880_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5585555876_)))
                              (_tl5585755883_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5585555876_))))
                          (if (gx#stx-pair? _tl5585755883_)
                              (let ((_e5585855886_
                                     (gx#syntax-e _tl5585755883_)))
                                (let ((_hd5585955890_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5585855886_)))
                                      (_tl5586055893_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5585855886_))))
                                  (if (gx#stx-pair? _tl5586055893_)
                                      (let ((_e5586155896_
                                             (gx#syntax-e _tl5586055893_)))
                                        (let ((_hd5586255900_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5586155896_)))
                                              (_tl5586355903_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5586155896_))))
                                          (if (gx#stx-null? _tl5586355903_)
                                              ((lambda (_L55906_ _L55908_)
                                                 (let ((__tmp64579
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64510
                                                        (let ((__tmp64570
                                                               (let ((__tmp64571
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64578 (gx#datum->syntax '#f 'key))
                                    (__tmp64572
                                     (let ((__tmp64577
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp64573
                                            (let ((__tmp64574
                                                   (let ((__tmp64576
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp64575
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp64576
                                                           __tmp64575))))
                                              (declare (not safe))
                                              (cons __tmp64574 '()))))
                                       (declare (not safe))
                                       (cons __tmp64577 __tmp64573))))
                                (declare (not safe))
                                (cons __tmp64578 __tmp64572))))
                         (declare (not safe))
                         (cons _L55908_ __tmp64571)))
                      (__tmp64511
                       (let ((__tmp64512
                              (let ((__tmp64569 (gx#datum->syntax '#f 'let))
                                    (__tmp64513
                                     (let ((__tmp64568
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp64514
                                            (let ((__tmp64563
                                                   (let ((__tmp64564
                                                          (let ((__tmp64567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp64565
                         (let ((__tmp64566 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp64566 '()))))
                    (declare (not safe))
                    (cons __tmp64567 __tmp64565))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64564 '())))
                                                  (__tmp64515
                                                   (let ((__tmp64516
                                                          (let ((__tmp64562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp64517
                         (let ((__tmp64561 (gx#datum->syntax '#f 'rest))
                               (__tmp64518
                                (let ((__tmp64537
                                       (let ((__tmp64554
                                              (let ((__tmp64560
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp64555
                                                     (let ((__tmp64559
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp64556
                                                            (let ((__tmp64558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp64557 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp64558 __tmp64557))))
               (declare (not safe))
               (cons __tmp64559 __tmp64556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64560 __tmp64555)))
                                             (__tmp64538
                                              (let ((__tmp64539
                                                     (let ((__tmp64553
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp64540
                                                            (let ((__tmp64548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64549
                                  (let ((__tmp64552 (gx#datum->syntax '#f 'k))
                                        (__tmp64550
                                         (let ((__tmp64551
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp64551 '()))))
                                    (declare (not safe))
                                    (cons __tmp64552 __tmp64550))))
                             (declare (not safe))
                             (cons _L55906_ __tmp64549)))
                          (__tmp64541
                           (let ((__tmp64547 (gx#datum->syntax '#f 'v))
                                 (__tmp64542
                                  (let ((__tmp64543
                                         (let ((__tmp64546
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp64544
                                                (let ((__tmp64545
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp64545 '()))))
                                           (declare (not safe))
                                           (cons __tmp64546 __tmp64544))))
                                    (declare (not safe))
                                    (cons __tmp64543 '()))))
                             (declare (not safe))
                             (cons __tmp64547 __tmp64542))))
                      (declare (not safe))
                      (cons __tmp64548 __tmp64541))))
               (declare (not safe))
               (cons __tmp64553 __tmp64540))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64539 '()))))
                                         (declare (not safe))
                                         (cons __tmp64554 __tmp64538)))
                                      (__tmp64519
                                       (let ((__tmp64520
                                              (let ((__tmp64536
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64521
                                                     (let ((__tmp64522
                                                            (let ((__tmp64535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp64523
                           (let ((__tmp64531
                                  (let ((__tmp64534
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp64532
                                         (let ((__tmp64533
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp64533 '()))))
                                    (declare (not safe))
                                    (cons __tmp64534 __tmp64532)))
                                 (__tmp64524
                                  (let ((__tmp64527
                                         (let ((__tmp64530
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp64528
                                                (let ((__tmp64529
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp64529 '()))))
                                           (declare (not safe))
                                           (cons __tmp64530 __tmp64528)))
                                        (__tmp64525
                                         (let ((__tmp64526
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp64526 '()))))
                                    (declare (not safe))
                                    (cons __tmp64527 __tmp64525))))
                             (declare (not safe))
                             (cons __tmp64531 __tmp64524))))
                      (declare (not safe))
                      (cons __tmp64535 __tmp64523))))
               (declare (not safe))
               (cons __tmp64522 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64536 __tmp64521))))
                                         (declare (not safe))
                                         (cons __tmp64520 '()))))
                                  (declare (not safe))
                                  (cons __tmp64537 __tmp64519))))
                           (declare (not safe))
                           (cons __tmp64561 __tmp64518))))
                    (declare (not safe))
                    (cons __tmp64562 __tmp64517))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64516 '()))))
                                              (declare (not safe))
                                              (cons __tmp64563 __tmp64515))))
                                       (declare (not safe))
                                       (cons __tmp64568 __tmp64514))))
                                (declare (not safe))
                                (cons __tmp64569 __tmp64513))))
                         (declare (not safe))
                         (cons __tmp64512 '()))))
                  (declare (not safe))
                  (cons __tmp64570 __tmp64511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64579
                                                         __tmp64510)))
                                               _hd5586255900_
                                               _hd5585955890_)
                                              (_g5585155869_ _g5585255873_))))
                                      (_g5585155869_ _g5585255873_))))
                              (_g5585155869_ _g5585255873_))))
                      (_g5585155869_ _g5585255873_)))))
          (_g5585055924_ _$stx55847_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx55928_)
        (let* ((_g5593255950_
                (lambda (_g5593355946_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5593355946_)))
               (_g5593156005_
                (lambda (_g5593355954_)
                  (if (gx#stx-pair? _g5593355954_)
                      (let ((_e5593655957_ (gx#syntax-e _g5593355954_)))
                        (let ((_hd5593755961_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5593655957_)))
                              (_tl5593855964_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5593655957_))))
                          (if (gx#stx-pair? _tl5593855964_)
                              (let ((_e5593955967_
                                     (gx#syntax-e _tl5593855964_)))
                                (let ((_hd5594055971_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5593955967_)))
                                      (_tl5594155974_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5593955967_))))
                                  (if (gx#stx-pair? _tl5594155974_)
                                      (let ((_e5594255977_
                                             (gx#syntax-e _tl5594155974_)))
                                        (let ((_hd5594355981_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5594255977_)))
                                              (_tl5594455984_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5594255977_))))
                                          (if (gx#stx-null? _tl5594455984_)
                                              ((lambda (_L55987_ _L55989_)
                                                 (let ((__tmp64650
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp64580
                                                        (let ((__tmp64645
                                                               (let ((__tmp64646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64649 (gx#datum->syntax '#f 'el))
                                    (__tmp64647
                                     (let ((__tmp64648
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp64648 '()))))
                                (declare (not safe))
                                (cons __tmp64649 __tmp64647))))
                         (declare (not safe))
                         (cons _L55989_ __tmp64646)))
                      (__tmp64581
                       (let ((__tmp64582
                              (let ((__tmp64644 (gx#datum->syntax '#f 'let))
                                    (__tmp64583
                                     (let ((__tmp64643
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp64584
                                            (let ((__tmp64632
                                                   (let ((__tmp64639
                                                          (let ((__tmp64642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp64640
                         (let ((__tmp64641 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp64641 '()))))
                    (declare (not safe))
                    (cons __tmp64642 __tmp64640)))
                 (__tmp64633
                  (let ((__tmp64634
                         (let ((__tmp64638 (gx#datum->syntax '#f 'r))
                               (__tmp64635
                                (let ((__tmp64636
                                       (let ((__tmp64637
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp64637 '()))))
                                  (declare (not safe))
                                  (cons __tmp64636 '()))))
                           (declare (not safe))
                           (cons __tmp64638 __tmp64635))))
                    (declare (not safe))
                    (cons __tmp64634 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64639
                                                           __tmp64633)))
                                                  (__tmp64585
                                                   (let ((__tmp64586
                                                          (let ((__tmp64631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp64587
                         (let ((__tmp64630 (gx#datum->syntax '#f 'rest))
                               (__tmp64588
                                (let ((__tmp64594
                                       (let ((__tmp64625
                                              (let ((__tmp64629
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp64626
                                                     (let ((__tmp64628
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp64627
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp64628
                                                             __tmp64627))))
                                                (declare (not safe))
                                                (cons __tmp64629 __tmp64626)))
                                             (__tmp64595
                                              (let ((__tmp64596
                                                     (let ((__tmp64624
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp64597
                                                            (let ((__tmp64619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64620
                                  (let ((__tmp64623 (gx#datum->syntax '#f 'el))
                                        (__tmp64621
                                         (let ((__tmp64622
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp64622 '()))))
                                    (declare (not safe))
                                    (cons __tmp64623 __tmp64621))))
                             (declare (not safe))
                             (cons _L55987_ __tmp64620)))
                          (__tmp64598
                           (let ((__tmp64611
                                  (let ((__tmp64618
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp64612
                                         (let ((__tmp64617
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp64613
                                                (let ((__tmp64616
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp64614
                                                       (let ((__tmp64615
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp64615
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp64616
                                                        __tmp64614))))
                                           (declare (not safe))
                                           (cons __tmp64617 __tmp64613))))
                                    (declare (not safe))
                                    (cons __tmp64618 __tmp64612)))
                                 (__tmp64599
                                  (let ((__tmp64600
                                         (let ((__tmp64610
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp64601
                                                (let ((__tmp64609
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp64602
                                                       (let ((__tmp64603
                                                              (let ((__tmp64608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp64604
                             (let ((__tmp64607 (gx#datum->syntax '#f 'hd))
                                   (__tmp64605
                                    (let ((__tmp64606
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp64606 '()))))
                               (declare (not safe))
                               (cons __tmp64607 __tmp64605))))
                        (declare (not safe))
                        (cons __tmp64608 __tmp64604))))
                 (declare (not safe))
                 (cons __tmp64603 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64609
                                                        __tmp64602))))
                                           (declare (not safe))
                                           (cons __tmp64610 __tmp64601))))
                                    (declare (not safe))
                                    (cons __tmp64600 '()))))
                             (declare (not safe))
                             (cons __tmp64611 __tmp64599))))
                      (declare (not safe))
                      (cons __tmp64619 __tmp64598))))
               (declare (not safe))
               (cons __tmp64624 __tmp64597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp64596 '()))))
                                         (declare (not safe))
                                         (cons __tmp64625 __tmp64595)))
                                      (__tmp64589
                                       (let ((__tmp64590
                                              (let ((__tmp64593
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp64591
                                                     (let ((__tmp64592
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp64592 '()))))
                                                (declare (not safe))
                                                (cons __tmp64593 __tmp64591))))
                                         (declare (not safe))
                                         (cons __tmp64590 '()))))
                                  (declare (not safe))
                                  (cons __tmp64594 __tmp64589))))
                           (declare (not safe))
                           (cons __tmp64630 __tmp64588))))
                    (declare (not safe))
                    (cons __tmp64631 __tmp64587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64586 '()))))
                                              (declare (not safe))
                                              (cons __tmp64632 __tmp64585))))
                                       (declare (not safe))
                                       (cons __tmp64643 __tmp64584))))
                                (declare (not safe))
                                (cons __tmp64644 __tmp64583))))
                         (declare (not safe))
                         (cons __tmp64582 '()))))
                  (declare (not safe))
                  (cons __tmp64645 __tmp64581))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64650
                                                         __tmp64580)))
                                               _hd5594355981_
                                               _hd5594055971_)
                                              (_g5593255950_ _g5593355954_))))
                                      (_g5593255950_ _g5593355954_))))
                              (_g5593255950_ _g5593355954_))))
                      (_g5593255950_ _g5593355954_)))))
          (_g5593156005_ _$stx55928_))))
    (define |[:0:]#DBG|
      (lambda (_$stx56009_)
        (let* ((_g5601356024_
                (lambda (_g5601456020_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5601456020_)))
               (_g5601256053_
                (lambda (_g5601456028_)
                  (if (gx#stx-pair? _g5601456028_)
                      (let ((_e5601656031_ (gx#syntax-e _g5601456028_)))
                        (let ((_hd5601756035_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5601656031_)))
                              (_tl5601856038_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5601656031_))))
                          ((lambda (_L56041_)
                             (let ((__tmp64652 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp64651
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L56041_))))
                               (declare (not safe))
                               (cons __tmp64652 __tmp64651)))
                           _tl5601856038_)))
                      (_g5601356024_ _g5601456028_)))))
          (_g5601256053_ _$stx56009_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx56057_)
        (let* ((___stx6397363974_ _$stx56057_)
               (_g5606856282_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx6397363974_))))
          (let ((___kont6397663977_
                 (lambda (_L57135_ _L57137_ _L57138_ _L57139_ _L57140_)
                   (let ((__tmp64653
                          (let ((__tmp64654
                                 (let ((__tmp64655
                                        (let ((__tmp64659
                                               (let ((__tmp64660
                                                      (lambda (_g5717057173_
                                                               _g5717157176_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5717057173_
                                                                _g5717157176_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp64660
                                                         '()
                                                         _L57138_)))
                                              (__tmp64656
                                               (let ((__tmp64657
                                                      (let ((__tmp64658
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L57135_ '()))))
                (declare (not safe))
                (cons _L57137_ __tmp64658))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L57139_ __tmp64657))))
                                          (declare (not safe))
                                          (cons __tmp64659 __tmp64656))))
                                   (declare (not safe))
                                   (cons '() __tmp64655))))
                            (declare (not safe))
                            (cons '2 __tmp64654))))
                     (declare (not safe))
                     (cons _L57140_ __tmp64653))))
                (___kont6398063981_
                 (lambda (_L56988_ _L56990_ _L56991_ _L56992_)
                   (let ((__tmp64661
                          (let ((__tmp64662
                                 (let ((__tmp64663
                                        (let ((__tmp64667
                                               (let ((__tmp64668
                                                      (lambda (_g5701557018_
                                                               _g5701657021_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5701557018_
                                                                _g5701657021_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp64668
                                                         '()
                                                         _L56990_)))
                                              (__tmp64664
                                               (let ((__tmp64665
                                                      (let ((__tmp64666
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56988_ '()))))
                (declare (not safe))
                (cons _L56988_ __tmp64666))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56991_ __tmp64665))))
                                          (declare (not safe))
                                          (cons __tmp64667 __tmp64664))))
                                   (declare (not safe))
                                   (cons '() __tmp64663))))
                            (declare (not safe))
                            (cons '2 __tmp64662))))
                     (declare (not safe))
                     (cons _L56992_ __tmp64661))))
                (___kont6398463985_
                 (lambda (_L56891_)
                   (let ((__tmp64680 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp64669
                          (let ((__tmp64670
                                 (let ((__tmp64677
                                        (let ((__tmp64679
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp64678
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp64679 __tmp64678)))
                                       (__tmp64671
                                        (let ((__tmp64674
                                               (let ((__tmp64676
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp64675
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp64676 __tmp64675)))
                                              (__tmp64672
                                               (let ((__tmp64673
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp64673))))
                                          (declare (not safe))
                                          (cons __tmp64674 __tmp64672))))
                                   (declare (not safe))
                                   (cons __tmp64677 __tmp64671))))
                            (declare (not safe))
                            (cons _L56891_ __tmp64670))))
                     (declare (not safe))
                     (cons __tmp64680 __tmp64669))))
                (___kont6398663987_
                 (lambda (_L56814_
                          _L56816_
                          _L56817_
                          _L56818_
                          _L56819_
                          _L56820_)
                   (let ((__tmp64681
                          (let ((__tmp64682
                                 (let ((__tmp64684
                                        (let ((__tmp64685
                                               (let ((__tmp64686
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56817_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56818_ __tmp64686))))
                                          (declare (not safe))
                                          (cons __tmp64685 _L56819_)))
                                       (__tmp64683
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56816_ _L56814_))))
                                   (declare (not safe))
                                   (cons __tmp64684 __tmp64683))))
                            (declare (not safe))
                            (cons '2 __tmp64682))))
                     (declare (not safe))
                     (cons _L56820_ __tmp64681))))
                (___kont6398863989_
                 (lambda (_L56695_ _L56697_ _L56698_ _L56699_ _L56700_)
                   (let ((__tmp64687
                          (let ((__tmp64688
                                 (let ((__tmp64690
                                        (let ((__tmp64691
                                               (let ((__tmp64692
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L56698_ '()))))
                                                 (declare (not safe))
                                                 (cons _L56698_ __tmp64692))))
                                          (declare (not safe))
                                          (cons __tmp64691 _L56699_)))
                                       (__tmp64689
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56697_ _L56695_))))
                                   (declare (not safe))
                                   (cons __tmp64690 __tmp64689))))
                            (declare (not safe))
                            (cons '2 __tmp64688))))
                     (declare (not safe))
                     (cons _L56700_ __tmp64687))))
                (___kont6399063991_
                 (lambda (_L56612_ _L56614_ _L56615_)
                   (let ((__tmp64693
                          (let ((__tmp64694
                                 (let ((__tmp64695
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56614_ _L56612_))))
                                   (declare (not safe))
                                   (cons '() __tmp64695))))
                            (declare (not safe))
                            (cons '3 __tmp64694))))
                     (declare (not safe))
                     (cons _L56615_ __tmp64693))))
                (___kont6399263993_
                 (lambda (_L56533_ _L56535_ _L56536_ _L56537_ _L56538_)
                   (let ((__tmp64696
                          (let ((__tmp64697
                                 (let ((__tmp64699
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56536_ _L56537_)))
                                       (__tmp64698
                                        (let ()
                                          (declare (not safe))
                                          (cons _L56535_ _L56533_))))
                                   (declare (not safe))
                                   (cons __tmp64699 __tmp64698))))
                            (declare (not safe))
                            (cons '3 __tmp64697))))
                     (declare (not safe))
                     (cons _L56538_ __tmp64696))))
                (___kont6399463995_
                 (lambda (_L56417_
                          _L56419_
                          _L56420_
                          _L56421_
                          _L56422_
                          _L56423_)
                   (let ((__tmp64747 (gx#datum->syntax '#f 'let))
                         (__tmp64700
                          (let ((__tmp64735
                                 (let ((__tmp64744
                                        (let ((__tmp64746
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp64745
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L56420_ '()))))
                                          (declare (not safe))
                                          (cons __tmp64746 __tmp64745)))
                                       (__tmp64736
                                        (let ((__tmp64737
                                               (let ((__tmp64743
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp64738
                                                      (let ((__tmp64739
                                                             (let ((__tmp64742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp64740
                            (let ((__tmp64741
                                   (let ()
                                     (declare (not safe))
                                     (cons _L56417_ '()))))
                              (declare (not safe))
                              (cons '() __tmp64741))))
                       (declare (not safe))
                       (cons __tmp64742 __tmp64740))))
                (declare (not safe))
                (cons __tmp64739 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp64743
                                                       __tmp64738))))
                                          (declare (not safe))
                                          (cons __tmp64737 '()))))
                                   (declare (not safe))
                                   (cons __tmp64744 __tmp64736)))
                                (__tmp64701
                                 (let ((__tmp64702
                                        (let ((__tmp64734
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp64703
                                               (let ((__tmp64733
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp64704
                                                      (let ((__tmp64708
                                                             (let ((__tmp64732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp64709
                            (let ((__tmp64731 (gx#datum->syntax '#f 'tagval))
                                  (__tmp64710
                                   (let ((__tmp64726
                                          (let ((__tmp64730
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp64727
                                                 (let ((__tmp64728
                                                        (let ((__tmp64729
                                                               (lambda (_g5645556460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5645656463_)
                         (let ()
                           (declare (not safe))
                           (cons _g5645556460_ _g5645656463_)))))
                  (declare (not safe))
                  (foldr1 __tmp64729 '() _L56422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64728 '()))))
                                            (declare (not safe))
                                            (cons __tmp64730 __tmp64727)))
                                         (__tmp64711
                                          (let ((__tmp64718
                                                 (let ((__tmp64725
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp64719
                                                        (let ((__tmp64720
                                                               (lambda (_g5645756466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5645856469_)
                         (let ((__tmp64721
                                (let ((__tmp64724
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp64722
                                       (let ((__tmp64723
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5645756466_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp64723))))
                                  (declare (not safe))
                                  (cons __tmp64724 __tmp64722))))
                           (declare (not safe))
                           (cons __tmp64721 _g5645856469_)))))
                  (declare (not safe))
                  (foldr1 __tmp64720 '() _L56421_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64725
                                                         __tmp64719)))
                                                (__tmp64712
                                                 (let ((__tmp64715
                                                        (let ((__tmp64717
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp64716
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L56419_ '()))))
                  (declare (not safe))
                  (cons __tmp64717 __tmp64716)))
               (__tmp64713
                (let ((__tmp64714 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp64714 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64715
                                                         __tmp64713))))
                                            (declare (not safe))
                                            (cons __tmp64718 __tmp64712))))
                                     (declare (not safe))
                                     (cons __tmp64726 __tmp64711))))
                              (declare (not safe))
                              (cons __tmp64731 __tmp64710))))
                       (declare (not safe))
                       (cons __tmp64732 __tmp64709)))
                    (__tmp64705
                     (let ((__tmp64706
                            (let ((__tmp64707 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp64707 '()))))
                       (declare (not safe))
                       (cons __tmp64706 '()))))
                (declare (not safe))
                (cons __tmp64708 __tmp64705))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp64733
                                                       __tmp64704))))
                                          (declare (not safe))
                                          (cons __tmp64734 __tmp64703))))
                                   (declare (not safe))
                                   (cons __tmp64702 '()))))
                            (declare (not safe))
                            (cons __tmp64735 __tmp64701))))
                     (declare (not safe))
                     (cons __tmp64747 __tmp64700)))))
            (let* ((___match6432464325_
                    (lambda (_e5623856289_
                             _hd5623956293_
                             _tl5624056296_
                             _e5624156299_
                             _hd5624256303_
                             _tl5624356306_
                             _e5624456309_
                             _e5624556313_
                             _hd5624656317_
                             _tl5624756320_
                             ___splice6399663997_
                             _target5624856323_
                             _tl5625056326_)
                      (letrec ((_loop5625156329_
                                (lambda (_hd5624956333_
                                         _exprs5625556336_
                                         _names5625656338_)
                                  (if (gx#stx-pair? _hd5624956333_)
                                      (let ((_e5625256341_
                                             (gx#syntax-e _hd5624956333_)))
                                        (let ((_lp-tl5625456348_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5625256341_)))
                                              (_lp-hd5625356345_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5625256341_))))
                                          (if (gx#stx-pair? _lp-hd5625356345_)
                                              (let ((_e5625956351_
                                                     (gx#syntax-e
                                                      _lp-hd5625356345_)))
                                                (let ((_tl5626156358_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5625956351_)))
                                                      (_hd5626056355_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5625956351_))))
                                                  (if (gx#stx-pair?
                                                       _tl5626156358_)
                                                      (let ((_e5626256361_
                                                             (gx#syntax-e
                                                              _tl5626156358_)))
                                                        (let ((_tl5626456368_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5626256361_)))
                      (_hd5626356365_
                       (let () (declare (not safe)) (##car _e5626256361_))))
                  (if (gx#stx-null? _tl5626456368_)
                      (_loop5625156329_
                       _lp-tl5625456348_
                       (let ()
                         (declare (not safe))
                         (cons _hd5626356365_ _exprs5625556336_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5626056355_ _names5625656338_)))
                      (let () (declare (not safe)) (_g5606856282_)))))
              (let () (declare (not safe)) (_g5606856282_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5606856282_)))))
                                      (let ((_names5625856374_
                                             (reverse _names5625656338_))
                                            (_exprs5625756371_
                                             (reverse _exprs5625556336_)))
                                        (if (gx#stx-pair? _tl5624756320_)
                                            (let ((_e5626556377_
                                                   (gx#syntax-e
                                                    _tl5624756320_)))
                                              (let ((_tl5626756384_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5626556377_)))
                                                    (_hd5626656381_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5626556377_))))
                                                (if (gx#stx-null?
                                                     _hd5626656381_)
                                                    (if (gx#stx-pair?
                                                         _tl5626756384_)
                                                        (let ((_e5626856387_
                                                               (gx#syntax-e
                                                                _tl5626756384_)))
                                                          (let ((_tl5627056394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5626856387_)))
                        (_hd5626956391_
                         (let () (declare (not safe)) (##car _e5626856387_))))
                    (if (gx#stx-pair? _tl5627056394_)
                        (let ((_e5627156397_ (gx#syntax-e _tl5627056394_)))
                          (let ((_tl5627356404_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5627156397_)))
                                (_hd5627256401_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5627156397_))))
                            (if (gx#stx-pair? _tl5627356404_)
                                (let ((_e5627456407_
                                       (gx#syntax-e _tl5627356404_)))
                                  (let ((_tl5627656414_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5627456407_)))
                                        (_hd5627556411_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5627456407_))))
                                    (if (gx#stx-null? _tl5627656414_)
                                        (___kont6399463995_
                                         _hd5627556411_
                                         _hd5627256401_
                                         _hd5626956391_
                                         _exprs5625756371_
                                         _names5625856374_
                                         _hd5623956293_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5606856282_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5606856282_)))))
                        (let () (declare (not safe)) (_g5606856282_)))))
                (let () (declare (not safe)) (_g5606856282_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5606856282_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5606856282_))))))))
                        (_loop5625156329_ _target5624856323_ '() '()))))
                   (___match6410264103_
                    (lambda (_e5611056914_
                             _hd5611156918_
                             _tl5611256921_
                             _e5611356924_
                             _hd5611456928_
                             _tl5611556931_
                             _e5611656934_
                             _e5611756938_
                             _hd5611856942_
                             _tl5611956945_
                             ___splice6398263983_
                             _target5612056948_
                             _tl5612256951_
                             _e5612956954_
                             _hd5613056958_
                             _tl5613156961_)
                      (letrec ((_loop5612356964_
                                (lambda (_hd5612156968_ _exprs5612756971_)
                                  (if (gx#stx-pair? _hd5612156968_)
                                      (let ((_e5612456974_
                                             (gx#syntax-e _hd5612156968_)))
                                        (let ((_lp-tl5612656981_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5612456974_)))
                                              (_lp-hd5612556978_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5612456974_))))
                                          (_loop5612356964_
                                           _lp-tl5612656981_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5612556978_
                                                   _exprs5612756971_)))))
                                      (let ((_exprs5612856984_
                                             (reverse _exprs5612756971_)))
                                        (___kont6398063981_
                                         _hd5613056958_
                                         _exprs5612856984_
                                         _hd5611856942_
                                         _hd5611156918_))))))
                        (_loop5612356964_ _target5612056948_ '()))))
                   (___match6406264063_
                    (lambda (_e5607557031_
                             _hd5607657035_
                             _tl5607757038_
                             _e5607857041_
                             _hd5607957045_
                             _tl5608057048_
                             _e5608157051_
                             _e5608257055_
                             _hd5608357059_
                             _tl5608457062_
                             ___splice6397863979_
                             _target5608557065_
                             _tl5608757068_
                             _e5609457071_
                             _hd5609557075_
                             _tl5609657078_
                             _e5609757081_
                             _hd5609857085_
                             _tl5609957088_
                             _e5610057091_
                             _hd5610157095_
                             _tl5610257098_
                             _e5610357101_
                             _hd5610457105_
                             _tl5610557108_)
                      (letrec ((_loop5608857111_
                                (lambda (_hd5608657115_ _exprs5609257118_)
                                  (if (gx#stx-pair? _hd5608657115_)
                                      (let ((_e5608957121_
                                             (gx#syntax-e _hd5608657115_)))
                                        (let ((_lp-tl5609157128_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5608957121_)))
                                              (_lp-hd5609057125_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5608957121_))))
                                          (_loop5608857111_
                                           _lp-tl5609157128_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5609057125_
                                                   _exprs5609257118_)))))
                                      (let ((_exprs5609357131_
                                             (reverse _exprs5609257118_)))
                                        (___kont6397663977_
                                         _hd5610457105_
                                         _hd5610157095_
                                         _exprs5609357131_
                                         _hd5608357059_
                                         _hd5607657035_))))))
                        (_loop5608857111_ _target5608557065_ '())))))
              (if (gx#stx-pair? ___stx6397363974_)
                  (let ((_e5607557031_ (gx#syntax-e ___stx6397363974_)))
                    (let ((_tl5607757038_
                           (let () (declare (not safe)) (##cdr _e5607557031_)))
                          (_hd5607657035_
                           (let ()
                             (declare (not safe))
                             (##car _e5607557031_))))
                      (if (gx#stx-pair? _tl5607757038_)
                          (let ((_e5607857041_ (gx#syntax-e _tl5607757038_)))
                            (let ((_tl5608057048_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5607857041_)))
                                  (_hd5607957045_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5607857041_))))
                              (if (gx#stx-datum? _hd5607957045_)
                                  (let ((_e5608157051_
                                         (gx#stx-e _hd5607957045_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5608157051_ '1))
                                        (if (gx#stx-pair? _tl5608057048_)
                                            (let ((_e5608257055_
                                                   (gx#syntax-e
                                                    _tl5608057048_)))
                                              (let ((_tl5608457062_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5608257055_)))
                                                    (_hd5608357059_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5608257055_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5608457062_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5608457062_)
                                                              '2)
                                                        (let ((___splice6397863979_
                                                               (gx#syntax-split-splice
                                                                _tl5608457062_
                                                                '2)))
                                                          (let ((_tl5608757068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6397863979_ '1)))
                        (_target5608557065_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6397863979_ '0))))
                    (if (gx#stx-pair? _tl5608757068_)
                        (let ((_e5609457071_ (gx#syntax-e _tl5608757068_)))
                          (let ((_tl5609657078_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5609457071_)))
                                (_hd5609557075_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5609457071_))))
                            (if (gx#stx-pair? _hd5609557075_)
                                (let ((_e5609757081_
                                       (gx#syntax-e _hd5609557075_)))
                                  (let ((_tl5609957088_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5609757081_)))
                                        (_hd5609857085_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5609757081_))))
                                    (if (gx#identifier? _hd5609857085_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g64748_|
                                             _hd5609857085_)
                                            (if (gx#stx-pair? _tl5609957088_)
                                                (let ((_e5610057091_
                                                       (gx#syntax-e
                                                        _tl5609957088_)))
                                                  (let ((_tl5610257098_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5610057091_)))
                                                        (_hd5610157095_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5610057091_))))
                                                    (if (gx#stx-null?
                                                         _tl5610257098_)
                                                        (if (gx#stx-pair?
                                                             _tl5609657078_)
                                                            (let ((_e5610357101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5609657078_)))
                      (let ((_tl5610557108_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5610357101_)))
                            (_hd5610457105_
                             (let ()
                               (declare (not safe))
                               (##car _e5610357101_))))
                        (if (gx#stx-null? _tl5610557108_)
                            (___match6406264063_
                             _e5607557031_
                             _hd5607657035_
                             _tl5607757038_
                             _e5607857041_
                             _hd5607957045_
                             _tl5608057048_
                             _e5608157051_
                             _e5608257055_
                             _hd5608357059_
                             _tl5608457062_
                             ___splice6397863979_
                             _target5608557065_
                             _tl5608757068_
                             _e5609457071_
                             _hd5609557075_
                             _tl5609657078_
                             _e5609757081_
                             _hd5609857085_
                             _tl5609957088_
                             _e5610057091_
                             _hd5610157095_
                             _tl5610257098_
                             _e5610357101_
                             _hd5610457105_
                             _tl5610557108_)
                            (if (fx>= (gx#stx-length _tl5608457062_) '1)
                                (let ((___splice6398263983_
                                       (gx#syntax-split-splice
                                        _tl5608457062_
                                        '1)))
                                  (let ((_tl5612256951_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6398263983_
                                            '1)))
                                        (_target5612056948_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6398263983_
                                            '0))))
                                    (if (gx#stx-pair? _tl5612256951_)
                                        (let ((_e5612956954_
                                               (gx#syntax-e _tl5612256951_)))
                                          (let ((_tl5613156961_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5612956954_)))
                                                (_hd5613056958_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5612956954_))))
                                            (if (gx#stx-null? _tl5613156961_)
                                                (___match6410264103_
                                                 _e5607557031_
                                                 _hd5607657035_
                                                 _tl5607757038_
                                                 _e5607857041_
                                                 _hd5607957045_
                                                 _tl5608057048_
                                                 _e5608157051_
                                                 _e5608257055_
                                                 _hd5608357059_
                                                 _tl5608457062_
                                                 ___splice6398263983_
                                                 _target5612056948_
                                                 _tl5612256951_
                                                 _e5612956954_
                                                 _hd5613056958_
                                                 _tl5613156961_)
                                                (if (gx#stx-null?
                                                     _tl5608457062_)
                                                    (___kont6398463985_
                                                     _hd5608357059_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5606856282_))))))
                                        (if (gx#stx-null? _tl5608457062_)
                                            (___kont6398463985_ _hd5608357059_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5606856282_))))))
                                (if (gx#stx-null? _tl5608457062_)
                                    (___kont6398463985_ _hd5608357059_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5606856282_)))))))
                    (if (fx>= (gx#stx-length _tl5608457062_) '1)
                        (let ((___splice6398263983_
                               (gx#syntax-split-splice _tl5608457062_ '1)))
                          (let ((_tl5612256951_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6398263983_ '1)))
                                (_target5612056948_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6398263983_ '0))))
                            (if (gx#stx-pair? _tl5612256951_)
                                (let ((_e5612956954_
                                       (gx#syntax-e _tl5612256951_)))
                                  (let ((_tl5613156961_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5612956954_)))
                                        (_hd5613056958_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5612956954_))))
                                    (if (gx#stx-null? _tl5613156961_)
                                        (___match6410264103_
                                         _e5607557031_
                                         _hd5607657035_
                                         _tl5607757038_
                                         _e5607857041_
                                         _hd5607957045_
                                         _tl5608057048_
                                         _e5608157051_
                                         _e5608257055_
                                         _hd5608357059_
                                         _tl5608457062_
                                         ___splice6398263983_
                                         _target5612056948_
                                         _tl5612256951_
                                         _e5612956954_
                                         _hd5613056958_
                                         _tl5613156961_)
                                        (if (gx#stx-null? _tl5608457062_)
                                            (___kont6398463985_ _hd5608357059_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5606856282_))))))
                                (if (gx#stx-null? _tl5608457062_)
                                    (___kont6398463985_ _hd5608357059_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5606856282_))))))
                        (if (gx#stx-null? _tl5608457062_)
                            (___kont6398463985_ _hd5608357059_)
                            (let () (declare (not safe)) (_g5606856282_)))))
                (if (fx>= (gx#stx-length _tl5608457062_) '1)
                    (let ((___splice6398263983_
                           (gx#syntax-split-splice _tl5608457062_ '1)))
                      (let ((_tl5612256951_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6398263983_ '1)))
                            (_target5612056948_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6398263983_ '0))))
                        (if (gx#stx-pair? _tl5612256951_)
                            (let ((_e5612956954_ (gx#syntax-e _tl5612256951_)))
                              (let ((_tl5613156961_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5612956954_)))
                                    (_hd5613056958_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5612956954_))))
                                (if (gx#stx-null? _tl5613156961_)
                                    (___match6410264103_
                                     _e5607557031_
                                     _hd5607657035_
                                     _tl5607757038_
                                     _e5607857041_
                                     _hd5607957045_
                                     _tl5608057048_
                                     _e5608157051_
                                     _e5608257055_
                                     _hd5608357059_
                                     _tl5608457062_
                                     ___splice6398263983_
                                     _target5612056948_
                                     _tl5612256951_
                                     _e5612956954_
                                     _hd5613056958_
                                     _tl5613156961_)
                                    (if (gx#stx-null? _tl5608457062_)
                                        (___kont6398463985_ _hd5608357059_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5606856282_))))))
                            (if (gx#stx-null? _tl5608457062_)
                                (___kont6398463985_ _hd5608357059_)
                                (let ()
                                  (declare (not safe))
                                  (_g5606856282_))))))
                    (if (gx#stx-null? _tl5608457062_)
                        (___kont6398463985_ _hd5608357059_)
                        (let () (declare (not safe)) (_g5606856282_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5608457062_)
                                                          '1)
                                                    (let ((___splice6398263983_
                                                           (gx#syntax-split-splice
                                                            _tl5608457062_
                                                            '1)))
                                                      (let ((_tl5612256951_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6398263983_ '1)))
                    (_target5612056948_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6398263983_ '0))))
                (if (gx#stx-pair? _tl5612256951_)
                    (let ((_e5612956954_ (gx#syntax-e _tl5612256951_)))
                      (let ((_tl5613156961_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5612956954_)))
                            (_hd5613056958_
                             (let ()
                               (declare (not safe))
                               (##car _e5612956954_))))
                        (if (gx#stx-null? _tl5613156961_)
                            (___match6410264103_
                             _e5607557031_
                             _hd5607657035_
                             _tl5607757038_
                             _e5607857041_
                             _hd5607957045_
                             _tl5608057048_
                             _e5608157051_
                             _e5608257055_
                             _hd5608357059_
                             _tl5608457062_
                             ___splice6398263983_
                             _target5612056948_
                             _tl5612256951_
                             _e5612956954_
                             _hd5613056958_
                             _tl5613156961_)
                            (if (gx#stx-null? _tl5608457062_)
                                (___kont6398463985_ _hd5608357059_)
                                (let ()
                                  (declare (not safe))
                                  (_g5606856282_))))))
                    (if (gx#stx-null? _tl5608457062_)
                        (___kont6398463985_ _hd5608357059_)
                        (let () (declare (not safe)) (_g5606856282_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5608457062_)
                                                        (___kont6398463985_
                                                         _hd5608357059_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5606856282_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5608457062_)
                                                      '1)
                                                (let ((___splice6398263983_
                                                       (gx#syntax-split-splice
                                                        _tl5608457062_
                                                        '1)))
                                                  (let ((_tl5612256951_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6398263983_
                                                            '1)))
                                                        (_target5612056948_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6398263983_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5612256951_)
                                                        (let ((_e5612956954_
                                                               (gx#syntax-e
                                                                _tl5612256951_)))
                                                          (let ((_tl5613156961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5612956954_)))
                        (_hd5613056958_
                         (let () (declare (not safe)) (##car _e5612956954_))))
                    (if (gx#stx-null? _tl5613156961_)
                        (___match6410264103_
                         _e5607557031_
                         _hd5607657035_
                         _tl5607757038_
                         _e5607857041_
                         _hd5607957045_
                         _tl5608057048_
                         _e5608157051_
                         _e5608257055_
                         _hd5608357059_
                         _tl5608457062_
                         ___splice6398263983_
                         _target5612056948_
                         _tl5612256951_
                         _e5612956954_
                         _hd5613056958_
                         _tl5613156961_)
                        (if (gx#stx-null? _tl5608457062_)
                            (___kont6398463985_ _hd5608357059_)
                            (let () (declare (not safe)) (_g5606856282_))))))
                (if (gx#stx-null? _tl5608457062_)
                    (___kont6398463985_ _hd5608357059_)
                    (let () (declare (not safe)) (_g5606856282_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5608457062_)
                                                    (___kont6398463985_
                                                     _hd5608357059_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5606856282_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5608457062_)
                                                  '1)
                                            (let ((___splice6398263983_
                                                   (gx#syntax-split-splice
                                                    _tl5608457062_
                                                    '1)))
                                              (let ((_tl5612256951_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6398263983_
                                                        '1)))
                                                    (_target5612056948_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6398263983_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5612256951_)
                                                    (let ((_e5612956954_
                                                           (gx#syntax-e
                                                            _tl5612256951_)))
                                                      (let ((_tl5613156961_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5612956954_)))
                    (_hd5613056958_
                     (let () (declare (not safe)) (##car _e5612956954_))))
                (if (gx#stx-null? _tl5613156961_)
                    (___match6410264103_
                     _e5607557031_
                     _hd5607657035_
                     _tl5607757038_
                     _e5607857041_
                     _hd5607957045_
                     _tl5608057048_
                     _e5608157051_
                     _e5608257055_
                     _hd5608357059_
                     _tl5608457062_
                     ___splice6398263983_
                     _target5612056948_
                     _tl5612256951_
                     _e5612956954_
                     _hd5613056958_
                     _tl5613156961_)
                    (if (gx#stx-null? _tl5608457062_)
                        (___kont6398463985_ _hd5608357059_)
                        (let () (declare (not safe)) (_g5606856282_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5608457062_)
                                                        (___kont6398463985_
                                                         _hd5608357059_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5606856282_))))))
                                            (if (gx#stx-null? _tl5608457062_)
                                                (___kont6398463985_
                                                 _hd5608357059_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5606856282_)))))))
                                (if (fx>= (gx#stx-length _tl5608457062_) '1)
                                    (let ((___splice6398263983_
                                           (gx#syntax-split-splice
                                            _tl5608457062_
                                            '1)))
                                      (let ((_tl5612256951_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6398263983_
                                                '1)))
                                            (_target5612056948_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6398263983_
                                                '0))))
                                        (if (gx#stx-pair? _tl5612256951_)
                                            (let ((_e5612956954_
                                                   (gx#syntax-e
                                                    _tl5612256951_)))
                                              (let ((_tl5613156961_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5612956954_)))
                                                    (_hd5613056958_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5612956954_))))
                                                (if (gx#stx-null?
                                                     _tl5613156961_)
                                                    (___match6410264103_
                                                     _e5607557031_
                                                     _hd5607657035_
                                                     _tl5607757038_
                                                     _e5607857041_
                                                     _hd5607957045_
                                                     _tl5608057048_
                                                     _e5608157051_
                                                     _e5608257055_
                                                     _hd5608357059_
                                                     _tl5608457062_
                                                     ___splice6398263983_
                                                     _target5612056948_
                                                     _tl5612256951_
                                                     _e5612956954_
                                                     _hd5613056958_
                                                     _tl5613156961_)
                                                    (if (gx#stx-null?
                                                         _tl5608457062_)
                                                        (___kont6398463985_
                                                         _hd5608357059_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5606856282_))))))
                                            (if (gx#stx-null? _tl5608457062_)
                                                (___kont6398463985_
                                                 _hd5608357059_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5606856282_))))))
                                    (if (gx#stx-null? _tl5608457062_)
                                        (___kont6398463985_ _hd5608357059_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5606856282_)))))))
                        (if (fx>= (gx#stx-length _tl5608457062_) '1)
                            (let ((___splice6398263983_
                                   (gx#syntax-split-splice _tl5608457062_ '1)))
                              (let ((_tl5612256951_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice6398263983_ '1)))
                                    (_target5612056948_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice6398263983_
                                        '0))))
                                (if (gx#stx-pair? _tl5612256951_)
                                    (let ((_e5612956954_
                                           (gx#syntax-e _tl5612256951_)))
                                      (let ((_tl5613156961_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5612956954_)))
                                            (_hd5613056958_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5612956954_))))
                                        (if (gx#stx-null? _tl5613156961_)
                                            (___match6410264103_
                                             _e5607557031_
                                             _hd5607657035_
                                             _tl5607757038_
                                             _e5607857041_
                                             _hd5607957045_
                                             _tl5608057048_
                                             _e5608157051_
                                             _e5608257055_
                                             _hd5608357059_
                                             _tl5608457062_
                                             ___splice6398263983_
                                             _target5612056948_
                                             _tl5612256951_
                                             _e5612956954_
                                             _hd5613056958_
                                             _tl5613156961_)
                                            (if (gx#stx-null? _tl5608457062_)
                                                (___kont6398463985_
                                                 _hd5608357059_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5606856282_))))))
                                    (if (gx#stx-null? _tl5608457062_)
                                        (___kont6398463985_ _hd5608357059_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5606856282_))))))
                            (if (gx#stx-null? _tl5608457062_)
                                (___kont6398463985_ _hd5608357059_)
                                (let ()
                                  (declare (not safe))
                                  (_g5606856282_)))))))
                (if (fx>= (gx#stx-length _tl5608457062_) '1)
                    (let ((___splice6398263983_
                           (gx#syntax-split-splice _tl5608457062_ '1)))
                      (let ((_tl5612256951_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6398263983_ '1)))
                            (_target5612056948_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6398263983_ '0))))
                        (if (gx#stx-pair? _tl5612256951_)
                            (let ((_e5612956954_ (gx#syntax-e _tl5612256951_)))
                              (let ((_tl5613156961_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5612956954_)))
                                    (_hd5613056958_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5612956954_))))
                                (if (gx#stx-null? _tl5613156961_)
                                    (___match6410264103_
                                     _e5607557031_
                                     _hd5607657035_
                                     _tl5607757038_
                                     _e5607857041_
                                     _hd5607957045_
                                     _tl5608057048_
                                     _e5608157051_
                                     _e5608257055_
                                     _hd5608357059_
                                     _tl5608457062_
                                     ___splice6398263983_
                                     _target5612056948_
                                     _tl5612256951_
                                     _e5612956954_
                                     _hd5613056958_
                                     _tl5613156961_)
                                    (if (gx#stx-null? _tl5608457062_)
                                        (___kont6398463985_ _hd5608357059_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5606856282_))))))
                            (if (gx#stx-null? _tl5608457062_)
                                (___kont6398463985_ _hd5608357059_)
                                (let ()
                                  (declare (not safe))
                                  (_g5606856282_))))))
                    (if (gx#stx-null? _tl5608457062_)
                        (___kont6398463985_ _hd5608357059_)
                        (let () (declare (not safe)) (_g5606856282_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5608457062_)
                                                        (___kont6398463985_
                                                         _hd5608357059_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5606856282_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5606856282_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5608157051_ '2))
                                            (if (gx#stx-pair? _tl5608057048_)
                                                (let ((_e5615656754_
                                                       (gx#syntax-e
                                                        _tl5608057048_)))
                                                  (let ((_tl5615856761_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5615656754_)))
                                                        (_hd5615756758_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5615656754_))))
                                                    (if (gx#stx-pair?
                                                         _tl5615856761_)
                                                        (let ((_e5615956764_
                                                               (gx#syntax-e
                                                                _tl5615856761_)))
                                                          (let ((_tl5616156771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5615956764_)))
                        (_hd5616056768_
                         (let () (declare (not safe)) (##car _e5615956764_))))
                    (if (gx#stx-pair? _hd5616056768_)
                        (let ((_e5616256774_ (gx#syntax-e _hd5616056768_)))
                          (let ((_tl5616456781_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5616256774_)))
                                (_hd5616356778_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5616256774_))))
                            (if (gx#stx-pair? _hd5616356778_)
                                (let ((_e5616556784_
                                       (gx#syntax-e _hd5616356778_)))
                                  (let ((_tl5616756791_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5616556784_)))
                                        (_hd5616656788_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5616556784_))))
                                    (if (gx#identifier? _hd5616656788_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g64749_|
                                             _hd5616656788_)
                                            (if (gx#stx-pair? _tl5616756791_)
                                                (let ((_e5616856794_
                                                       (gx#syntax-e
                                                        _tl5616756791_)))
                                                  (let ((_tl5617056801_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5616856794_)))
                                                        (_hd5616956798_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5616856794_))))
                                                    (if (gx#stx-null?
                                                         _tl5617056801_)
                                                        (if (gx#stx-pair?
                                                             _tl5616456781_)
                                                            (let ((_e5617156804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5616456781_)))
                      (let ((_tl5617356811_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5617156804_)))
                            (_hd5617256808_
                             (let ()
                               (declare (not safe))
                               (##car _e5617156804_))))
                        (___kont6398663987_
                         _tl5616156771_
                         _tl5617356811_
                         _hd5617256808_
                         _hd5616956798_
                         _hd5615756758_
                         _hd5607657035_)))
                    (___kont6398863989_
                     _tl5616156771_
                     _tl5616456781_
                     _hd5616356778_
                     _hd5615756758_
                     _hd5607657035_))
                (___kont6398863989_
                 _tl5616156771_
                 _tl5616456781_
                 _hd5616356778_
                 _hd5615756758_
                 _hd5607657035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont6398863989_
                                                 _tl5616156771_
                                                 _tl5616456781_
                                                 _hd5616356778_
                                                 _hd5615756758_
                                                 _hd5607657035_))
                                            (___kont6398863989_
                                             _tl5616156771_
                                             _tl5616456781_
                                             _hd5616356778_
                                             _hd5615756758_
                                             _hd5607657035_))
                                        (___kont6398863989_
                                         _tl5616156771_
                                         _tl5616456781_
                                         _hd5616356778_
                                         _hd5615756758_
                                         _hd5607657035_))))
                                (___kont6398863989_
                                 _tl5616156771_
                                 _tl5616456781_
                                 _hd5616356778_
                                 _hd5615756758_
                                 _hd5607657035_))))
                        (if (gx#stx-null? _hd5616056768_)
                            (___kont6399063991_
                             _tl5616156771_
                             _hd5615756758_
                             _hd5607657035_)
                            (let () (declare (not safe)) (_g5606856282_))))))
                (let () (declare (not safe)) (_g5606856282_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5606856282_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5608157051_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5608057048_)
                                                    (let ((_e5622356503_
                                                           (gx#syntax-e
                                                            _tl5608057048_)))
                                                      (let ((_tl5622556510_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5622356503_)))
                    (_hd5622456507_
                     (let () (declare (not safe)) (##car _e5622356503_))))
                (if (gx#stx-pair? _tl5622556510_)
                    (let ((_e5622656513_ (gx#syntax-e _tl5622556510_)))
                      (let ((_tl5622856520_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5622656513_)))
                            (_hd5622756517_
                             (let ()
                               (declare (not safe))
                               (##car _e5622656513_))))
                        (if (gx#stx-pair? _hd5622756517_)
                            (let ((_e5622956523_ (gx#syntax-e _hd5622756517_)))
                              (let ((_tl5623156530_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5622956523_)))
                                    (_hd5623056527_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5622956523_))))
                                (___kont6399263993_
                                 _tl5622856520_
                                 _tl5623156530_
                                 _hd5623056527_
                                 _hd5622456507_
                                 _hd5607657035_)))
                            (if (gx#stx-pair/null? _hd5622456507_)
                                (let ((___splice6399663997_
                                       (gx#syntax-split-splice
                                        _hd5622456507_
                                        '0)))
                                  (let ((_tl5625056326_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6399663997_
                                            '1)))
                                        (_target5624856323_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6399663997_
                                            '0))))
                                    (if (gx#stx-null? _tl5625056326_)
                                        (___match6432464325_
                                         _e5607557031_
                                         _hd5607657035_
                                         _tl5607757038_
                                         _e5607857041_
                                         _hd5607957045_
                                         _tl5608057048_
                                         _e5608157051_
                                         _e5622356503_
                                         _hd5622456507_
                                         _tl5622556510_
                                         ___splice6399663997_
                                         _target5624856323_
                                         _tl5625056326_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5606856282_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5606856282_))))))
                    (if (gx#stx-pair/null? _hd5622456507_)
                        (let ((___splice6399663997_
                               (gx#syntax-split-splice _hd5622456507_ '0)))
                          (let ((_tl5625056326_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6399663997_ '1)))
                                (_target5624856323_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6399663997_ '0))))
                            (if (gx#stx-null? _tl5625056326_)
                                (___match6432464325_
                                 _e5607557031_
                                 _hd5607657035_
                                 _tl5607757038_
                                 _e5607857041_
                                 _hd5607957045_
                                 _tl5608057048_
                                 _e5608157051_
                                 _e5622356503_
                                 _hd5622456507_
                                 _tl5622556510_
                                 ___splice6399663997_
                                 _target5624856323_
                                 _tl5625056326_)
                                (let ()
                                  (declare (not safe))
                                  (_g5606856282_)))))
                        (let () (declare (not safe)) (_g5606856282_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5606856282_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5606856282_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5606856282_)))))
                          (let () (declare (not safe)) (_g5606856282_)))))
                  (let () (declare (not safe)) (_g5606856282_))))))))))
