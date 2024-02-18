(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_$stx63028_)
      (let* ((_g6303263046_
              (lambda (_g6303363042_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6303363042_)))
             (_g6303163088_
              (lambda (_g6303363050_)
                (if (gx#stx-pair? _g6303363050_)
                    (let ((_e6303763053_ (gx#syntax-e _g6303363050_)))
                      (let ((_hd6303663057_
                             (let ()
                               (declare (not safe))
                               (##car _e6303763053_)))
                            (_tl6303563060_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6303763053_))))
                        (if (gx#stx-pair? _tl6303563060_)
                            (let ((_e6304063063_ (gx#syntax-e _tl6303563060_)))
                              (let ((_hd6303963067_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6304063063_)))
                                    (_tl6303863070_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6304063063_))))
                                (if (gx#stx-null? _tl6303863070_)
                                    ((lambda (_L63073_)
                                       (let ((__tmp69296
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp69294
                                              (let ((__tmp69295
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L63073_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp69295))))
                                         (declare (not safe))
                                         (cons __tmp69296 __tmp69294)))
                                     _hd6303963067_)
                                    (_g6303263046_ _g6303363050_))))
                            (_g6303263046_ _g6303363050_))))
                    (_g6303263046_ _g6303363050_)))))
        (_g6303163088_ _$stx63028_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_$stx63092_)
      (let* ((_g6309663142_
              (lambda (_g6309763138_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6309763138_)))
             (_g6309563295_
              (lambda (_g6309763146_)
                (if (gx#stx-pair? _g6309763146_)
                    (let ((_e6310963149_ (gx#syntax-e _g6309763146_)))
                      (let ((_hd6310863153_
                             (let ()
                               (declare (not safe))
                               (##car _e6310963149_)))
                            (_tl6310763156_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6310963149_))))
                        (if (gx#stx-pair? _tl6310763156_)
                            (let ((_e6311263159_ (gx#syntax-e _tl6310763156_)))
                              (let ((_hd6311163163_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6311263159_)))
                                    (_tl6311063166_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6311263159_))))
                                (if (gx#stx-pair? _tl6311063166_)
                                    (let ((_e6311563169_
                                           (gx#syntax-e _tl6311063166_)))
                                      (let ((_hd6311463173_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6311563169_)))
                                            (_tl6311363176_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6311563169_))))
                                        (if (gx#stx-pair? _tl6311363176_)
                                            (let ((_e6311863179_
                                                   (gx#syntax-e
                                                    _tl6311363176_)))
                                              (let ((_hd6311763183_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6311863179_)))
                                                    (_tl6311663186_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6311863179_))))
                                                (if (gx#stx-pair?
                                                     _tl6311663186_)
                                                    (let ((_e6312163189_
                                                           (gx#syntax-e
                                                            _tl6311663186_)))
                                                      (let ((_hd6312063193_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6312163189_)))
                    (_tl6311963196_
                     (let () (declare (not safe)) (##cdr _e6312163189_))))
                (if (gx#stx-pair? _tl6311963196_)
                    (let ((_e6312463199_ (gx#syntax-e _tl6311963196_)))
                      (let ((_hd6312363203_
                             (let ()
                               (declare (not safe))
                               (##car _e6312463199_)))
                            (_tl6312263206_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6312463199_))))
                        (if (gx#stx-pair? _tl6312263206_)
                            (let ((_e6312763209_ (gx#syntax-e _tl6312263206_)))
                              (let ((_hd6312663213_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6312763209_)))
                                    (_tl6312563216_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6312763209_))))
                                (if (gx#stx-pair? _tl6312563216_)
                                    (let ((_e6313063219_
                                           (gx#syntax-e _tl6312563216_)))
                                      (let ((_hd6312963223_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6313063219_)))
                                            (_tl6312863226_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6313063219_))))
                                        (if (gx#stx-pair? _tl6312863226_)
                                            (let ((_e6313363229_
                                                   (gx#syntax-e
                                                    _tl6312863226_)))
                                              (let ((_hd6313263233_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6313363229_)))
                                                    (_tl6313163236_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6313363229_))))
                                                (if (gx#stx-pair?
                                                     _tl6313163236_)
                                                    (let ((_e6313663239_
                                                           (gx#syntax-e
                                                            _tl6313163236_)))
                                                      (let ((_hd6313563243_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6313663239_)))
                    (_tl6313463246_
                     (let () (declare (not safe)) (##cdr _e6313663239_))))
                (if (gx#stx-null? _tl6313463246_)
                    ((lambda (_L63249_
                              _L63251_
                              _L63252_
                              _L63253_
                              _L63254_
                              _L63255_
                              _L63256_
                              _L63257_
                              _L63258_)
                       (let ((__tmp69728 (gx#datum->syntax '#f 'begin))
                             (__tmp69297
                              (let ((__tmp69707
                                     (let ((__tmp69727
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp69708
                                            (let ((__tmp69718
                                                   (let ((__tmp69719
                                                          (let ((__tmp69724
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp69726 (gx#datum->syntax '#f 'size-hint))
                               (__tmp69725
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons __tmp69726 __tmp69725)))
                        (__tmp69720
                         (let ((__tmp69721
                                (let ((__tmp69723 (gx#datum->syntax '#f 'seed))
                                      (__tmp69722
                                       (let ()
                                         (declare (not safe))
                                         (cons '0 '()))))
                                  (declare (not safe))
                                  (cons __tmp69723 __tmp69722))))
                           (declare (not safe))
                           (cons __tmp69721 '()))))
                    (declare (not safe))
                    (cons __tmp69724 __tmp69720))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L63258_
                                                           __tmp69719)))
                                                  (__tmp69709
                                                   (let ((__tmp69710
                                                          (let ((__tmp69717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-raw-table))
                        (__tmp69711
                         (let ((__tmp69716 (gx#datum->syntax '#f 'size-hint))
                               (__tmp69712
                                (let ((__tmp69713
                                       (let ((__tmp69714
                                              (let ((__tmp69715
                                                     (gx#datum->syntax
                                                      '#f
                                                      'seed)))
                                                (declare (not safe))
                                                (cons __tmp69715 '()))))
                                         (declare (not safe))
                                         (cons _L63249_ __tmp69714))))
                                  (declare (not safe))
                                  (cons _L63251_ __tmp69713))))
                           (declare (not safe))
                           (cons __tmp69716 __tmp69712))))
                    (declare (not safe))
                    (cons __tmp69717 __tmp69711))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69710 '()))))
                                              (declare (not safe))
                                              (cons __tmp69718 __tmp69709))))
                                       (declare (not safe))
                                       (cons __tmp69727 __tmp69708)))
                                    (__tmp69298
                                     (let ((__tmp69664
                                            (let ((__tmp69706
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp69665
                                                   (let ((__tmp69699
                                                          (let ((__tmp69700
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp69705 (gx#datum->syntax '#f 'tab))
                               (__tmp69701
                                (let ((__tmp69704 (gx#datum->syntax '#f 'key))
                                      (__tmp69702
                                       (let ((__tmp69703
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp69703 '()))))
                                  (declare (not safe))
                                  (cons __tmp69704 __tmp69702))))
                           (declare (not safe))
                           (cons __tmp69705 __tmp69701))))
                    (declare (not safe))
                    (cons _L63257_ __tmp69700)))
                 (__tmp69666
                  (let ((__tmp69667
                         (let ((__tmp69698 (gx#datum->syntax '#f 'let))
                               (__tmp69668
                                (let ((__tmp69682
                                       (let ((__tmp69691
                                              (let ((__tmp69697
                                                     (gx#datum->syntax
                                                      '#f
                                                      'table))
                                                    (__tmp69692
                                                     (let ((__tmp69693
                                                            (let ((__tmp69696
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-table))
                          (__tmp69694
                           (let ((__tmp69695 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp69695 '()))))
                      (declare (not safe))
                      (cons __tmp69696 __tmp69694))))
               (declare (not safe))
               (cons __tmp69693 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69697 __tmp69692)))
                                             (__tmp69683
                                              (let ((__tmp69684
                                                     (let ((__tmp69690
                                                            (gx#datum->syntax
                                                             '#f
                                                             'seed))
                                                           (__tmp69685
                                                            (let ((__tmp69686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp69689
                                  (gx#datum->syntax '#f '&raw-table-seed))
                                 (__tmp69687
                                  (let ((__tmp69688
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp69688 '()))))
                             (declare (not safe))
                             (cons __tmp69689 __tmp69687))))
                      (declare (not safe))
                      (cons __tmp69686 '()))))
               (declare (not safe))
               (cons __tmp69690 __tmp69685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69684 '()))))
                                         (declare (not safe))
                                         (cons __tmp69691 __tmp69683)))
                                      (__tmp69669
                                       (let ((__tmp69670
                                              (let ((__tmp69681
                                                     (gx#datum->syntax
                                                      '#f
                                                      '__table-ref))
                                                    (__tmp69671
                                                     (let ((__tmp69680
                                                            (gx#datum->syntax
                                                             '#f
                                                             'table))
                                                           (__tmp69672
                                                            (let ((__tmp69679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'seed))
                          (__tmp69673
                           (let ((__tmp69674
                                  (let ((__tmp69675
                                         (let ((__tmp69678
                                                (gx#datum->syntax '#f 'key))
                                               (__tmp69676
                                                (let ((__tmp69677
                                                       (gx#datum->syntax
                                                        '#f
                                                        'default)))
                                                  (declare (not safe))
                                                  (cons __tmp69677 '()))))
                                           (declare (not safe))
                                           (cons __tmp69678 __tmp69676))))
                                    (declare (not safe))
                                    (cons _L63249_ __tmp69675))))
                             (declare (not safe))
                             (cons _L63251_ __tmp69674))))
                      (declare (not safe))
                      (cons __tmp69679 __tmp69673))))
               (declare (not safe))
               (cons __tmp69680 __tmp69672))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69681 __tmp69671))))
                                         (declare (not safe))
                                         (cons __tmp69670 '()))))
                                  (declare (not safe))
                                  (cons __tmp69682 __tmp69669))))
                           (declare (not safe))
                           (cons __tmp69698 __tmp69668))))
                    (declare (not safe))
                    (cons __tmp69667 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69699
                                                           __tmp69666))))
                                              (declare (not safe))
                                              (cons __tmp69706 __tmp69665)))
                                           (__tmp69299
                                            (let ((__tmp69618
                                                   (let ((__tmp69663
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp69619
                                                          (let ((__tmp69656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp69657
                                (let ((__tmp69662 (gx#datum->syntax '#f 'tab))
                                      (__tmp69658
                                       (let ((__tmp69661
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp69659
                                              (let ((__tmp69660
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value)))
                                                (declare (not safe))
                                                (cons __tmp69660 '()))))
                                         (declare (not safe))
                                         (cons __tmp69661 __tmp69659))))
                                  (declare (not safe))
                                  (cons __tmp69662 __tmp69658))))
                           (declare (not safe))
                           (cons _L63256_ __tmp69657)))
                        (__tmp69620
                         (let ((__tmp69629
                                (let ((__tmp69655 (gx#datum->syntax '#f 'when))
                                      (__tmp69630
                                       (let ((__tmp69636
                                              (let ((__tmp69654
                                                     (gx#datum->syntax
                                                      '#f
                                                      'fx<))
                                                    (__tmp69637
                                                     (let ((__tmp69650
                                                            (let ((__tmp69653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-free))
                          (__tmp69651
                           (let ((__tmp69652 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp69652 '()))))
                      (declare (not safe))
                      (cons __tmp69653 __tmp69651)))
                   (__tmp69638
                    (let ((__tmp69639
                           (let ((__tmp69649
                                  (gx#datum->syntax '#f 'fxquotient))
                                 (__tmp69640
                                  (let ((__tmp69642
                                         (let ((__tmp69648
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp69643
                                                (let ((__tmp69644
                                                       (let ((__tmp69647
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp69645
                                                              (let ((__tmp69646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp69646 '()))))
                 (declare (not safe))
                 (cons __tmp69647 __tmp69645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69644 '()))))
                                           (declare (not safe))
                                           (cons __tmp69648 __tmp69643)))
                                        (__tmp69641
                                         (let ()
                                           (declare (not safe))
                                           (cons '4 '()))))
                                    (declare (not safe))
                                    (cons __tmp69642 __tmp69641))))
                             (declare (not safe))
                             (cons __tmp69649 __tmp69640))))
                      (declare (not safe))
                      (cons __tmp69639 '()))))
               (declare (not safe))
               (cons __tmp69650 __tmp69638))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69654 __tmp69637)))
                                             (__tmp69631
                                              (let ((__tmp69632
                                                     (let ((__tmp69635
                                                            (gx#datum->syntax
                                                             '#f
                                                             '__raw-table-rehash!))
                                                           (__tmp69633
                                                            (let ((__tmp69634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab)))
                      (declare (not safe))
                      (cons __tmp69634 '()))))
               (declare (not safe))
               (cons __tmp69635 __tmp69633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69632 '()))))
                                         (declare (not safe))
                                         (cons __tmp69636 __tmp69631))))
                                  (declare (not safe))
                                  (cons __tmp69655 __tmp69630)))
                               (__tmp69621
                                (let ((__tmp69622
                                       (let ((__tmp69623
                                              (let ((__tmp69628
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp69624
                                                     (let ((__tmp69627
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp69625
                                                            (let ((__tmp69626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'value)))
                      (declare (not safe))
                      (cons __tmp69626 '()))))
               (declare (not safe))
               (cons __tmp69627 __tmp69625))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69628 __tmp69624))))
                                         (declare (not safe))
                                         (cons _L63255_ __tmp69623))))
                                  (declare (not safe))
                                  (cons __tmp69622 '()))))
                           (declare (not safe))
                           (cons __tmp69629 __tmp69621))))
                    (declare (not safe))
                    (cons __tmp69656 __tmp69620))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69663
                                                           __tmp69619)))
                                                  (__tmp69300
                                                   (let ((__tmp69516
                                                          (let ((__tmp69617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'def))
                        (__tmp69517
                         (let ((__tmp69610
                                (let ((__tmp69611
                                       (let ((__tmp69616
                                              (gx#datum->syntax '#f 'tab))
                                             (__tmp69612
                                              (let ((__tmp69615
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp69613
                                                     (let ((__tmp69614
                                                            (gx#datum->syntax
                                                             '#f
                                                             'value)))
                                                       (declare (not safe))
                                                       (cons __tmp69614 '()))))
                                                (declare (not safe))
                                                (cons __tmp69615 __tmp69613))))
                                         (declare (not safe))
                                         (cons __tmp69616 __tmp69612))))
                                  (declare (not safe))
                                  (cons _L63255_ __tmp69611)))
                               (__tmp69518
                                (let ((__tmp69519
                                       (let ((__tmp69609
                                              (gx#datum->syntax '#f 'let))
                                             (__tmp69520
                                              (let ((__tmp69593
                                                     (let ((__tmp69602
                                                            (let ((__tmp69608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'table))
                          (__tmp69603
                           (let ((__tmp69604
                                  (let ((__tmp69607
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-table))
                                        (__tmp69605
                                         (let ((__tmp69606
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp69606 '()))))
                                    (declare (not safe))
                                    (cons __tmp69607 __tmp69605))))
                             (declare (not safe))
                             (cons __tmp69604 '()))))
                      (declare (not safe))
                      (cons __tmp69608 __tmp69603)))
                   (__tmp69594
                    (let ((__tmp69595
                           (let ((__tmp69601 (gx#datum->syntax '#f 'seed))
                                 (__tmp69596
                                  (let ((__tmp69597
                                         (let ((__tmp69600
                                                (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-seed))
                                               (__tmp69598
                                                (let ((__tmp69599
                                                       (gx#datum->syntax
                                                        '#f
                                                        'tab)))
                                                  (declare (not safe))
                                                  (cons __tmp69599 '()))))
                                           (declare (not safe))
                                           (cons __tmp69600 __tmp69598))))
                                    (declare (not safe))
                                    (cons __tmp69597 '()))))
                             (declare (not safe))
                             (cons __tmp69601 __tmp69596))))
                      (declare (not safe))
                      (cons __tmp69595 '()))))
               (declare (not safe))
               (cons __tmp69602 __tmp69594)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp69521
                                                     (let ((__tmp69522
                                                            (let ((__tmp69592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '__table-set!))
                          (__tmp69523
                           (let ((__tmp69591 (gx#datum->syntax '#f 'table))
                                 (__tmp69524
                                  (let ((__tmp69590
                                         (gx#datum->syntax '#f 'seed))
                                        (__tmp69525
                                         (let ((__tmp69526
                                                (let ((__tmp69527
                                                       (let ((__tmp69589
                                                              (gx#datum->syntax
                                                               '#f
                                                               'key))
                                                             (__tmp69528
                                                              (let ((__tmp69588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'value))
                            (__tmp69529
                             (let ((__tmp69551
                                    (let ((__tmp69587
                                           (gx#datum->syntax '#f 'lambda))
                                          (__tmp69552
                                           (let ((__tmp69553
                                                  (let ((__tmp69571
                                                         (let ((__tmp69586
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'set!))
                       (__tmp69572
                        (let ((__tmp69582
                               (let ((__tmp69585
                                      (gx#datum->syntax '#f '&raw-table-free))
                                     (__tmp69583
                                      (let ((__tmp69584
                                             (gx#datum->syntax '#f 'tab)))
                                        (declare (not safe))
                                        (cons __tmp69584 '()))))
                                 (declare (not safe))
                                 (cons __tmp69585 __tmp69583)))
                              (__tmp69573
                               (let ((__tmp69574
                                      (let ((__tmp69581
                                             (gx#datum->syntax '#f 'fx-))
                                            (__tmp69575
                                             (let ((__tmp69577
                                                    (let ((__tmp69580
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp69578
                                                           (let ((__tmp69579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp69579 '()))))
              (declare (not safe))
              (cons __tmp69580 __tmp69578)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp69576
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '1 '()))))
                                               (declare (not safe))
                                               (cons __tmp69577 __tmp69576))))
                                        (declare (not safe))
                                        (cons __tmp69581 __tmp69575))))
                                 (declare (not safe))
                                 (cons __tmp69574 '()))))
                          (declare (not safe))
                          (cons __tmp69582 __tmp69573))))
                   (declare (not safe))
                   (cons __tmp69586 __tmp69572)))
                (__tmp69554
                 (let ((__tmp69555
                        (let ((__tmp69570 (gx#datum->syntax '#f 'set!))
                              (__tmp69556
                               (let ((__tmp69566
                                      (let ((__tmp69569
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp69567
                                             (let ((__tmp69568
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp69568 '()))))
                                        (declare (not safe))
                                        (cons __tmp69569 __tmp69567)))
                                     (__tmp69557
                                      (let ((__tmp69558
                                             (let ((__tmp69565
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp69559
                                                    (let ((__tmp69561
                                                           (let ((__tmp69564
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp69562
                          (let ((__tmp69563 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp69563 '()))))
                     (declare (not safe))
                     (cons __tmp69564 __tmp69562)))
                  (__tmp69560 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp69561 __tmp69560))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69565 __tmp69559))))
                                        (declare (not safe))
                                        (cons __tmp69558 '()))))
                                 (declare (not safe))
                                 (cons __tmp69566 __tmp69557))))
                          (declare (not safe))
                          (cons __tmp69570 __tmp69556))))
                   (declare (not safe))
                   (cons __tmp69555 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69571
                                                          __tmp69554))))
                                             (declare (not safe))
                                             (cons '() __tmp69553))))
                                      (declare (not safe))
                                      (cons __tmp69587 __tmp69552)))
                                   (__tmp69530
                                    (let ((__tmp69531
                                           (let ((__tmp69550
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp69532
                                                  (let ((__tmp69533
                                                         (let ((__tmp69534
                                                                (let ((__tmp69549
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'set!))
                              (__tmp69535
                               (let ((__tmp69545
                                      (let ((__tmp69548
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp69546
                                             (let ((__tmp69547
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp69547 '()))))
                                        (declare (not safe))
                                        (cons __tmp69548 __tmp69546)))
                                     (__tmp69536
                                      (let ((__tmp69537
                                             (let ((__tmp69544
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp69538
                                                    (let ((__tmp69540
                                                           (let ((__tmp69543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp69541
                          (let ((__tmp69542 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp69542 '()))))
                     (declare (not safe))
                     (cons __tmp69543 __tmp69541)))
                  (__tmp69539 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp69540 __tmp69539))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69544 __tmp69538))))
                                        (declare (not safe))
                                        (cons __tmp69537 '()))))
                                 (declare (not safe))
                                 (cons __tmp69545 __tmp69536))))
                          (declare (not safe))
                          (cons __tmp69549 __tmp69535))))
                   (declare (not safe))
                   (cons __tmp69534 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '() __tmp69533))))
                                             (declare (not safe))
                                             (cons __tmp69550 __tmp69532))))
                                      (declare (not safe))
                                      (cons __tmp69531 '()))))
                               (declare (not safe))
                               (cons __tmp69551 __tmp69530))))
                        (declare (not safe))
                        (cons __tmp69588 __tmp69529))))
                 (declare (not safe))
                 (cons __tmp69589 __tmp69528))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L63249_ __tmp69527))))
                                           (declare (not safe))
                                           (cons _L63251_ __tmp69526))))
                                    (declare (not safe))
                                    (cons __tmp69590 __tmp69525))))
                             (declare (not safe))
                             (cons __tmp69591 __tmp69524))))
                      (declare (not safe))
                      (cons __tmp69592 __tmp69523))))
               (declare (not safe))
               (cons __tmp69522 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69593 __tmp69521))))
                                         (declare (not safe))
                                         (cons __tmp69609 __tmp69520))))
                                  (declare (not safe))
                                  (cons __tmp69519 '()))))
                           (declare (not safe))
                           (cons __tmp69610 __tmp69518))))
                    (declare (not safe))
                    (cons __tmp69617 __tmp69517)))
                 (__tmp69301
                  (let ((__tmp69468
                         (let ((__tmp69515 (gx#datum->syntax '#f 'def))
                               (__tmp69469
                                (let ((__tmp69507
                                       (let ((__tmp69508
                                              (let ((__tmp69514
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp69509
                                                     (let ((__tmp69513
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp69510
                                                            (let ((__tmp69511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp69512 (gx#datum->syntax '#f 'default)))
                             (declare (not safe))
                             (cons __tmp69512 '()))))
                      (declare (not safe))
                      (cons _L63254_ __tmp69511))))
               (declare (not safe))
               (cons __tmp69513 __tmp69510))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69514 __tmp69509))))
                                         (declare (not safe))
                                         (cons _L63254_ __tmp69508)))
                                      (__tmp69470
                                       (let ((__tmp69480
                                              (let ((__tmp69506
                                                     (gx#datum->syntax
                                                      '#f
                                                      'when))
                                                    (__tmp69481
                                                     (let ((__tmp69487
                                                            (let ((__tmp69505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'fx<))
                          (__tmp69488
                           (let ((__tmp69501
                                  (let ((__tmp69504
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-free))
                                        (__tmp69502
                                         (let ((__tmp69503
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp69503 '()))))
                                    (declare (not safe))
                                    (cons __tmp69504 __tmp69502)))
                                 (__tmp69489
                                  (let ((__tmp69490
                                         (let ((__tmp69500
                                                (gx#datum->syntax
                                                 '#f
                                                 'fxquotient))
                                               (__tmp69491
                                                (let ((__tmp69493
                                                       (let ((__tmp69499
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-length))
                                                             (__tmp69494
                                                              (let ((__tmp69495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69498
                                    (gx#datum->syntax '#f '&raw-table-table))
                                   (__tmp69496
                                    (let ((__tmp69497
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp69497 '()))))
                               (declare (not safe))
                               (cons __tmp69498 __tmp69496))))
                        (declare (not safe))
                        (cons __tmp69495 '()))))
                 (declare (not safe))
                 (cons __tmp69499 __tmp69494)))
              (__tmp69492 (let () (declare (not safe)) (cons '4 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69493
                                                        __tmp69492))))
                                           (declare (not safe))
                                           (cons __tmp69500 __tmp69491))))
                                    (declare (not safe))
                                    (cons __tmp69490 '()))))
                             (declare (not safe))
                             (cons __tmp69501 __tmp69489))))
                      (declare (not safe))
                      (cons __tmp69505 __tmp69488)))
                   (__tmp69482
                    (let ((__tmp69483
                           (let ((__tmp69486
                                  (gx#datum->syntax '#f '__raw-table-rehash!))
                                 (__tmp69484
                                  (let ((__tmp69485
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp69485 '()))))
                             (declare (not safe))
                             (cons __tmp69486 __tmp69484))))
                      (declare (not safe))
                      (cons __tmp69483 '()))))
               (declare (not safe))
               (cons __tmp69487 __tmp69482))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69506 __tmp69481)))
                                             (__tmp69471
                                              (let ((__tmp69472
                                                     (let ((__tmp69473
                                                            (let ((__tmp69479
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp69474
                           (let ((__tmp69478 (gx#datum->syntax '#f 'key))
                                 (__tmp69475
                                  (let ((__tmp69476
                                         (let ((__tmp69477
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp69477 '()))))
                                    (declare (not safe))
                                    (cons _L63254_ __tmp69476))))
                             (declare (not safe))
                             (cons __tmp69478 __tmp69475))))
                      (declare (not safe))
                      (cons __tmp69479 __tmp69474))))
               (declare (not safe))
               (cons _L63253_ __tmp69473))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69472 '()))))
                                         (declare (not safe))
                                         (cons __tmp69480 __tmp69471))))
                                  (declare (not safe))
                                  (cons __tmp69507 __tmp69470))))
                           (declare (not safe))
                           (cons __tmp69515 __tmp69469)))
                        (__tmp69302
                         (let ((__tmp69364
                                (let ((__tmp69467 (gx#datum->syntax '#f 'def))
                                      (__tmp69365
                                       (let ((__tmp69459
                                              (let ((__tmp69460
                                                     (let ((__tmp69466
                                                            (gx#datum->syntax
                                                             '#f
                                                             'tab))
                                                           (__tmp69461
                                                            (let ((__tmp69465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'key))
                          (__tmp69462
                           (let ((__tmp69463
                                  (let ((__tmp69464
                                         (gx#datum->syntax '#f 'default)))
                                    (declare (not safe))
                                    (cons __tmp69464 '()))))
                             (declare (not safe))
                             (cons _L63254_ __tmp69463))))
                      (declare (not safe))
                      (cons __tmp69465 __tmp69462))))
               (declare (not safe))
               (cons __tmp69466 __tmp69461))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L63253_ __tmp69460)))
                                             (__tmp69366
                                              (let ((__tmp69367
                                                     (let ((__tmp69458
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp69368
                                                            (let ((__tmp69442
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp69451
                                  (let ((__tmp69457
                                         (gx#datum->syntax '#f 'table))
                                        (__tmp69452
                                         (let ((__tmp69453
                                                (let ((__tmp69456
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table))
                                                      (__tmp69454
                                                       (let ((__tmp69455
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp69455
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp69456
                                                        __tmp69454))))
                                           (declare (not safe))
                                           (cons __tmp69453 '()))))
                                    (declare (not safe))
                                    (cons __tmp69457 __tmp69452)))
                                 (__tmp69443
                                  (let ((__tmp69444
                                         (let ((__tmp69450
                                                (gx#datum->syntax '#f 'seed))
                                               (__tmp69445
                                                (let ((__tmp69446
                                                       (let ((__tmp69449
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-seed))
                                                             (__tmp69447
                                                              (let ((__tmp69448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp69448 '()))))
                 (declare (not safe))
                 (cons __tmp69449 __tmp69447))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69446 '()))))
                                           (declare (not safe))
                                           (cons __tmp69450 __tmp69445))))
                                    (declare (not safe))
                                    (cons __tmp69444 '()))))
                             (declare (not safe))
                             (cons __tmp69451 __tmp69443)))
                          (__tmp69369
                           (let ((__tmp69370
                                  (let ((__tmp69441
                                         (gx#datum->syntax
                                          '#f
                                          '__table-update!))
                                        (__tmp69371
                                         (let ((__tmp69440
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp69372
                                                (let ((__tmp69439
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp69373
                                                       (let ((__tmp69374
                                                              (let ((__tmp69375
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69438 (gx#datum->syntax '#f 'key))
                                   (__tmp69376
                                    (let ((__tmp69377
                                           (let ((__tmp69437
                                                  (gx#datum->syntax
                                                   '#f
                                                   'default))
                                                 (__tmp69378
                                                  (let ((__tmp69400
                                                         (let ((__tmp69436
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda))
                       (__tmp69401
                        (let ((__tmp69402
                               (let ((__tmp69420
                                      (let ((__tmp69435
                                             (gx#datum->syntax '#f 'set!))
                                            (__tmp69421
                                             (let ((__tmp69431
                                                    (let ((__tmp69434
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp69432
                                                           (let ((__tmp69433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp69433 '()))))
              (declare (not safe))
              (cons __tmp69434 __tmp69432)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp69422
                                                    (let ((__tmp69423
                                                           (let ((__tmp69430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx-))
                         (__tmp69424
                          (let ((__tmp69426
                                 (let ((__tmp69429
                                        (gx#datum->syntax
                                         '#f
                                         '&raw-table-free))
                                       (__tmp69427
                                        (let ((__tmp69428
                                               (gx#datum->syntax '#f 'tab)))
                                          (declare (not safe))
                                          (cons __tmp69428 '()))))
                                   (declare (not safe))
                                   (cons __tmp69429 __tmp69427)))
                                (__tmp69425
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp69426 __tmp69425))))
                     (declare (not safe))
                     (cons __tmp69430 __tmp69424))))
              (declare (not safe))
              (cons __tmp69423 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69431 __tmp69422))))
                                        (declare (not safe))
                                        (cons __tmp69435 __tmp69421)))
                                     (__tmp69403
                                      (let ((__tmp69404
                                             (let ((__tmp69419
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp69405
                                                    (let ((__tmp69415
                                                           (let ((__tmp69418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp69416
                          (let ((__tmp69417 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp69417 '()))))
                     (declare (not safe))
                     (cons __tmp69418 __tmp69416)))
                  (__tmp69406
                   (let ((__tmp69407
                          (let ((__tmp69414 (gx#datum->syntax '#f 'fx+))
                                (__tmp69408
                                 (let ((__tmp69410
                                        (let ((__tmp69413
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp69411
                                               (let ((__tmp69412
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp69412 '()))))
                                          (declare (not safe))
                                          (cons __tmp69413 __tmp69411)))
                                       (__tmp69409
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp69410 __tmp69409))))
                            (declare (not safe))
                            (cons __tmp69414 __tmp69408))))
                     (declare (not safe))
                     (cons __tmp69407 '()))))
              (declare (not safe))
              (cons __tmp69415 __tmp69406))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69419 __tmp69405))))
                                        (declare (not safe))
                                        (cons __tmp69404 '()))))
                                 (declare (not safe))
                                 (cons __tmp69420 __tmp69403))))
                          (declare (not safe))
                          (cons '() __tmp69402))))
                   (declare (not safe))
                   (cons __tmp69436 __tmp69401)))
                (__tmp69379
                 (let ((__tmp69380
                        (let ((__tmp69399 (gx#datum->syntax '#f 'lambda))
                              (__tmp69381
                               (let ((__tmp69382
                                      (let ((__tmp69383
                                             (let ((__tmp69398
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp69384
                                                    (let ((__tmp69394
                                                           (let ((__tmp69397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp69395
                          (let ((__tmp69396 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp69396 '()))))
                     (declare (not safe))
                     (cons __tmp69397 __tmp69395)))
                  (__tmp69385
                   (let ((__tmp69386
                          (let ((__tmp69393 (gx#datum->syntax '#f 'fx+))
                                (__tmp69387
                                 (let ((__tmp69389
                                        (let ((__tmp69392
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp69390
                                               (let ((__tmp69391
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp69391 '()))))
                                          (declare (not safe))
                                          (cons __tmp69392 __tmp69390)))
                                       (__tmp69388
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp69389 __tmp69388))))
                            (declare (not safe))
                            (cons __tmp69393 __tmp69387))))
                     (declare (not safe))
                     (cons __tmp69386 '()))))
              (declare (not safe))
              (cons __tmp69394 __tmp69385))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69398 __tmp69384))))
                                        (declare (not safe))
                                        (cons __tmp69383 '()))))
                                 (declare (not safe))
                                 (cons '() __tmp69382))))
                          (declare (not safe))
                          (cons __tmp69399 __tmp69381))))
                   (declare (not safe))
                   (cons __tmp69380 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69400
                                                          __tmp69379))))
                                             (declare (not safe))
                                             (cons __tmp69437 __tmp69378))))
                                      (declare (not safe))
                                      (cons _L63254_ __tmp69377))))
                               (declare (not safe))
                               (cons __tmp69438 __tmp69376))))
                        (declare (not safe))
                        (cons _L63249_ __tmp69375))))
                 (declare (not safe))
                 (cons _L63251_ __tmp69374))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69439
                                                        __tmp69373))))
                                           (declare (not safe))
                                           (cons __tmp69440 __tmp69372))))
                                    (declare (not safe))
                                    (cons __tmp69441 __tmp69371))))
                             (declare (not safe))
                             (cons __tmp69370 '()))))
                      (declare (not safe))
                      (cons __tmp69442 __tmp69369))))
               (declare (not safe))
               (cons __tmp69458 __tmp69368))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69367 '()))))
                                         (declare (not safe))
                                         (cons __tmp69459 __tmp69366))))
                                  (declare (not safe))
                                  (cons __tmp69467 __tmp69365)))
                               (__tmp69303
                                (let ((__tmp69304
                                       (let ((__tmp69363
                                              (gx#datum->syntax '#f 'def))
                                             (__tmp69305
                                              (let ((__tmp69358
                                                     (let ((__tmp69359
                                                            (let ((__tmp69362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp69360
                           (let ((__tmp69361 (gx#datum->syntax '#f 'key)))
                             (declare (not safe))
                             (cons __tmp69361 '()))))
                      (declare (not safe))
                      (cons __tmp69362 __tmp69360))))
               (declare (not safe))
               (cons _L63252_ __tmp69359)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp69306
                                                     (let ((__tmp69307
                                                            (let ((__tmp69357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp69308
                           (let ((__tmp69341
                                  (let ((__tmp69350
                                         (let ((__tmp69356
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp69351
                                                (let ((__tmp69352
                                                       (let ((__tmp69355
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp69353
                                                              (let ((__tmp69354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp69354 '()))))
                 (declare (not safe))
                 (cons __tmp69355 __tmp69353))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69352 '()))))
                                           (declare (not safe))
                                           (cons __tmp69356 __tmp69351)))
                                        (__tmp69342
                                         (let ((__tmp69343
                                                (let ((__tmp69349
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp69344
                                                       (let ((__tmp69345
                                                              (let ((__tmp69348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-seed))
                            (__tmp69346
                             (let ((__tmp69347 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp69347 '()))))
                        (declare (not safe))
                        (cons __tmp69348 __tmp69346))))
                 (declare (not safe))
                 (cons __tmp69345 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69349
                                                        __tmp69344))))
                                           (declare (not safe))
                                           (cons __tmp69343 '()))))
                                    (declare (not safe))
                                    (cons __tmp69350 __tmp69342)))
                                 (__tmp69309
                                  (let ((__tmp69310
                                         (let ((__tmp69340
                                                (gx#datum->syntax
                                                 '#f
                                                 '__table-del!))
                                               (__tmp69311
                                                (let ((__tmp69339
                                                       (gx#datum->syntax
                                                        '#f
                                                        'table))
                                                      (__tmp69312
                                                       (let ((__tmp69338
                                                              (gx#datum->syntax
                                                               '#f
                                                               'seed))
                                                             (__tmp69313
                                                              (let ((__tmp69314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69315
                                    (let ((__tmp69337
                                           (gx#datum->syntax '#f 'key))
                                          (__tmp69316
                                           (let ((__tmp69317
                                                  (let ((__tmp69336
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp69318
                                                         (let ((__tmp69319
                                                                (let ((__tmp69320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69335 (gx#datum->syntax '#f 'set!))
                                     (__tmp69321
                                      (let ((__tmp69331
                                             (let ((__tmp69334
                                                    (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-count))
                                                   (__tmp69332
                                                    (let ((__tmp69333
                                                           (gx#datum->syntax
                                                            '#f
                                                            'tab)))
                                                      (declare (not safe))
                                                      (cons __tmp69333 '()))))
                                               (declare (not safe))
                                               (cons __tmp69334 __tmp69332)))
                                            (__tmp69322
                                             (let ((__tmp69323
                                                    (let ((__tmp69330
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx-))
                                                          (__tmp69324
                                                           (let ((__tmp69326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp69329
                                 (gx#datum->syntax '#f '&raw-table-count))
                                (__tmp69327
                                 (let ((__tmp69328
                                        (gx#datum->syntax '#f 'tab)))
                                   (declare (not safe))
                                   (cons __tmp69328 '()))))
                            (declare (not safe))
                            (cons __tmp69329 __tmp69327)))
                         (__tmp69325
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp69326 __tmp69325))))
              (declare (not safe))
              (cons __tmp69330 __tmp69324))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69323 '()))))
                                        (declare (not safe))
                                        (cons __tmp69331 __tmp69322))))
                                 (declare (not safe))
                                 (cons __tmp69335 __tmp69321))))
                          (declare (not safe))
                          (cons __tmp69320 '()))))
                   (declare (not safe))
                   (cons '() __tmp69319))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69336
                                                          __tmp69318))))
                                             (declare (not safe))
                                             (cons __tmp69317 '()))))
                                      (declare (not safe))
                                      (cons __tmp69337 __tmp69316))))
                               (declare (not safe))
                               (cons _L63249_ __tmp69315))))
                        (declare (not safe))
                        (cons _L63251_ __tmp69314))))
                 (declare (not safe))
                 (cons __tmp69338 __tmp69313))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69339
                                                        __tmp69312))))
                                           (declare (not safe))
                                           (cons __tmp69340 __tmp69311))))
                                    (declare (not safe))
                                    (cons __tmp69310 '()))))
                             (declare (not safe))
                             (cons __tmp69341 __tmp69309))))
                      (declare (not safe))
                      (cons __tmp69357 __tmp69308))))
               (declare (not safe))
               (cons __tmp69307 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69358 __tmp69306))))
                                         (declare (not safe))
                                         (cons __tmp69363 __tmp69305))))
                                  (declare (not safe))
                                  (cons __tmp69304 '()))))
                           (declare (not safe))
                           (cons __tmp69364 __tmp69303))))
                    (declare (not safe))
                    (cons __tmp69468 __tmp69302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69516
                                                           __tmp69301))))
                                              (declare (not safe))
                                              (cons __tmp69618 __tmp69300))))
                                       (declare (not safe))
                                       (cons __tmp69664 __tmp69299))))
                                (declare (not safe))
                                (cons __tmp69707 __tmp69298))))
                         (declare (not safe))
                         (cons __tmp69728 __tmp69297)))
                     _hd6313563243_
                     _hd6313263233_
                     _hd6312963223_
                     _hd6312663213_
                     _hd6312363203_
                     _hd6312063193_
                     _hd6311763183_
                     _hd6311463173_
                     _hd6311163163_)
                    (_g6309663142_ _g6309763146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6309663142_
                                                     _g6309763146_))))
                                            (_g6309663142_ _g6309763146_))))
                                    (_g6309663142_ _g6309763146_))))
                            (_g6309663142_ _g6309763146_))))
                    (_g6309663142_ _g6309763146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6309663142_
                                                     _g6309763146_))))
                                            (_g6309663142_ _g6309763146_))))
                                    (_g6309663142_ _g6309763146_))))
                            (_g6309663142_ _g6309763146_))))
                    (_g6309663142_ _g6309763146_)))))
        (_g6309563295_ _$stx63092_))))
  (define |[:0:]#probe-step|
    (lambda (_$stx63299_)
      (let* ((_g6330363325_
              (lambda (_g6330463321_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6330463321_)))
             (_g6330263394_
              (lambda (_g6330463329_)
                (if (gx#stx-pair? _g6330463329_)
                    (let ((_e6331063332_ (gx#syntax-e _g6330463329_)))
                      (let ((_hd6330963336_
                             (let ()
                               (declare (not safe))
                               (##car _e6331063332_)))
                            (_tl6330863339_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6331063332_))))
                        (if (gx#stx-pair? _tl6330863339_)
                            (let ((_e6331363342_ (gx#syntax-e _tl6330863339_)))
                              (let ((_hd6331263346_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6331363342_)))
                                    (_tl6331163349_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6331363342_))))
                                (if (gx#stx-pair? _tl6331163349_)
                                    (let ((_e6331663352_
                                           (gx#syntax-e _tl6331163349_)))
                                      (let ((_hd6331563356_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6331663352_)))
                                            (_tl6331463359_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6331663352_))))
                                        (if (gx#stx-pair? _tl6331463359_)
                                            (let ((_e6331963362_
                                                   (gx#syntax-e
                                                    _tl6331463359_)))
                                              (let ((_hd6331863366_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6331963362_)))
                                                    (_tl6331763369_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6331963362_))))
                                                (if (gx#stx-null?
                                                     _tl6331763369_)
                                                    ((lambda (_L63372_
                                                              _L63374_
                                                              _L63375_)
                                                       (let ((__tmp69748
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp69729
                                                              (let ((__tmp69736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69747
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp69737
                                    (let ((__tmp69738
                                           (let ((__tmp69746
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp69739
                                                  (let ((__tmp69740
                                                         (let ((__tmp69741
                                                                (let ((__tmp69742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69745 (gx#datum->syntax '#f 'fx*))
                                     (__tmp69743
                                      (let ((__tmp69744
                                             (let ()
                                               (declare (not safe))
                                               (cons _L63374_ '()))))
                                        (declare (not safe))
                                        (cons _L63374_ __tmp69744))))
                                 (declare (not safe))
                                 (cons __tmp69745 __tmp69743))))
                          (declare (not safe))
                          (cons __tmp69742 '()))))
                   (declare (not safe))
                   (cons _L63374_ __tmp69741))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L63375_
                                                          __tmp69740))))
                                             (declare (not safe))
                                             (cons __tmp69746 __tmp69739))))
                                      (declare (not safe))
                                      (cons __tmp69738 '()))))
                               (declare (not safe))
                               (cons __tmp69747 __tmp69737)))
                            (__tmp69730
                             (let ((__tmp69731
                                    (let ((__tmp69735
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp69732
                                           (let ((__tmp69734
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp69733
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L63372_ '()))))
                                             (declare (not safe))
                                             (cons __tmp69734 __tmp69733))))
                                      (declare (not safe))
                                      (cons __tmp69735 __tmp69732))))
                               (declare (not safe))
                               (cons __tmp69731 '()))))
                        (declare (not safe))
                        (cons __tmp69736 __tmp69730))))
                 (declare (not safe))
                 (cons __tmp69748 __tmp69729)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd6331863366_
                                                     _hd6331563356_
                                                     _hd6331263346_)
                                                    (_g6330363325_
                                                     _g6330463329_))))
                                            (_g6330363325_ _g6330463329_))))
                                    (_g6330363325_ _g6330463329_))))
                            (_g6330363325_ _g6330463329_))))
                    (_g6330363325_ _g6330463329_)))))
        (_g6330263394_ _$stx63299_))))
  (define |[:0:]#__table-ref|
    (lambda (_$stx63398_)
      (let* ((_g6340263436_
              (lambda (_g6340363432_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6340363432_)))
             (_g6340163547_
              (lambda (_g6340363440_)
                (if (gx#stx-pair? _g6340363440_)
                    (let ((_e6341263443_ (gx#syntax-e _g6340363440_)))
                      (let ((_hd6341163447_
                             (let ()
                               (declare (not safe))
                               (##car _e6341263443_)))
                            (_tl6341063450_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6341263443_))))
                        (if (gx#stx-pair? _tl6341063450_)
                            (let ((_e6341563453_ (gx#syntax-e _tl6341063450_)))
                              (let ((_hd6341463457_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6341563453_)))
                                    (_tl6341363460_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6341563453_))))
                                (if (gx#stx-pair? _tl6341363460_)
                                    (let ((_e6341863463_
                                           (gx#syntax-e _tl6341363460_)))
                                      (let ((_hd6341763467_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6341863463_)))
                                            (_tl6341663470_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6341863463_))))
                                        (if (gx#stx-pair? _tl6341663470_)
                                            (let ((_e6342163473_
                                                   (gx#syntax-e
                                                    _tl6341663470_)))
                                              (let ((_hd6342063477_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6342163473_)))
                                                    (_tl6341963480_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6342163473_))))
                                                (if (gx#stx-pair?
                                                     _tl6341963480_)
                                                    (let ((_e6342463483_
                                                           (gx#syntax-e
                                                            _tl6341963480_)))
                                                      (let ((_hd6342363487_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6342463483_)))
                    (_tl6342263490_
                     (let () (declare (not safe)) (##cdr _e6342463483_))))
                (if (gx#stx-pair? _tl6342263490_)
                    (let ((_e6342763493_ (gx#syntax-e _tl6342263490_)))
                      (let ((_hd6342663497_
                             (let ()
                               (declare (not safe))
                               (##car _e6342763493_)))
                            (_tl6342563500_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6342763493_))))
                        (if (gx#stx-pair? _tl6342563500_)
                            (let ((_e6343063503_ (gx#syntax-e _tl6342563500_)))
                              (let ((_hd6342963507_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6343063503_)))
                                    (_tl6342863510_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6343063503_))))
                                (if (gx#stx-null? _tl6342863510_)
                                    ((lambda (_L63513_
                                              _L63515_
                                              _L63516_
                                              _L63517_
                                              _L63518_
                                              _L63519_)
                                       (let ((__tmp69907
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp69749
                                              (let ((__tmp69867
                                                     (let ((__tmp69898
                                                            (let ((__tmp69906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp69899
                           (let ((__tmp69900
                                  (let ((__tmp69905
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp69901
                                         (let ((__tmp69903
                                                (let ((__tmp69904
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L63515_ '()))))
                                                  (declare (not safe))
                                                  (cons _L63517_ __tmp69904)))
                                               (__tmp69902
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L63518_ '()))))
                                           (declare (not safe))
                                           (cons __tmp69903 __tmp69902))))
                                    (declare (not safe))
                                    (cons __tmp69905 __tmp69901))))
                             (declare (not safe))
                             (cons __tmp69900 '()))))
                      (declare (not safe))
                      (cons __tmp69906 __tmp69899)))
                   (__tmp69868
                    (let ((__tmp69892
                           (let ((__tmp69897 (gx#datum->syntax '#f 'size))
                                 (__tmp69893
                                  (let ((__tmp69894
                                         (let ((__tmp69896
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp69895
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L63519_ '()))))
                                           (declare (not safe))
                                           (cons __tmp69896 __tmp69895))))
                                    (declare (not safe))
                                    (cons __tmp69894 '()))))
                             (declare (not safe))
                             (cons __tmp69897 __tmp69893)))
                          (__tmp69869
                           (let ((__tmp69884
                                  (let ((__tmp69891
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp69885
                                         (let ((__tmp69886
                                                (let ((__tmp69890
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp69887
                                                       (let ((__tmp69889
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp69888
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp69889 __tmp69888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69890
                                                        __tmp69887))))
                                           (declare (not safe))
                                           (cons __tmp69886 '()))))
                                    (declare (not safe))
                                    (cons __tmp69891 __tmp69885)))
                                 (__tmp69870
                                  (let ((__tmp69871
                                         (let ((__tmp69883
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp69872
                                                (let ((__tmp69873
                                                       (let ((__tmp69882
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp69874
                                                              (let ((__tmp69876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69881
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp69877
                                    (let ((__tmp69880
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp69878
                                           (let ((__tmp69879
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp69879 '()))))
                                      (declare (not safe))
                                      (cons __tmp69880 __tmp69878))))
                               (declare (not safe))
                               (cons __tmp69881 __tmp69877)))
                            (__tmp69875
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp69876 __tmp69875))))
                 (declare (not safe))
                 (cons __tmp69882 __tmp69874))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69873 '()))))
                                           (declare (not safe))
                                           (cons __tmp69883 __tmp69872))))
                                    (declare (not safe))
                                    (cons __tmp69871 '()))))
                             (declare (not safe))
                             (cons __tmp69884 __tmp69870))))
                      (declare (not safe))
                      (cons __tmp69892 __tmp69869))))
               (declare (not safe))
               (cons __tmp69898 __tmp69868)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp69750
                                                     (let ((__tmp69751
                                                            (let ((__tmp69866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp69752
                           (let ((__tmp69865 (gx#datum->syntax '#f 'loop))
                                 (__tmp69753
                                  (let ((__tmp69852
                                         (let ((__tmp69861
                                                (let ((__tmp69864
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp69862
                                                       (let ((__tmp69863
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp69863
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp69864
                                                        __tmp69862)))
                                               (__tmp69853
                                                (let ((__tmp69858
                                                       (let ((__tmp69860
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp69859
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp69860 __tmp69859)))
              (__tmp69854
               (let ((__tmp69855
                      (let ((__tmp69857 (gx#datum->syntax '#f 'deleted))
                            (__tmp69856
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp69857 __tmp69856))))
                 (declare (not safe))
                 (cons __tmp69855 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69858
                                                        __tmp69854))))
                                           (declare (not safe))
                                           (cons __tmp69861 __tmp69853)))
                                        (__tmp69754
                                         (let ((__tmp69755
                                                (let ((__tmp69851
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp69756
                                                       (let ((__tmp69843
                                                              (let ((__tmp69850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp69844
                             (let ((__tmp69845
                                    (let ((__tmp69849
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp69846
                                           (let ((__tmp69847
                                                  (let ((__tmp69848
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp69848 '()))))
                                             (declare (not safe))
                                             (cons _L63519_ __tmp69847))))
                                      (declare (not safe))
                                      (cons __tmp69849 __tmp69846))))
                               (declare (not safe))
                               (cons __tmp69845 '()))))
                        (declare (not safe))
                        (cons __tmp69850 __tmp69844)))
                     (__tmp69757
                      (let ((__tmp69758
                             (let ((__tmp69842 (gx#datum->syntax '#f 'cond))
                                   (__tmp69759
                                    (let ((__tmp69833
                                           (let ((__tmp69835
                                                  (let ((__tmp69841
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp69836
                                                         (let ((__tmp69840
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp69837
                        (let ((__tmp69838
                               (let ((__tmp69839
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp69839 '()))))
                          (declare (not safe))
                          (cons __tmp69838 '()))))
                   (declare (not safe))
                   (cons __tmp69840 __tmp69837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69841
                                                          __tmp69836)))
                                                 (__tmp69834
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L63513_ '()))))
                                             (declare (not safe))
                                             (cons __tmp69835 __tmp69834)))
                                          (__tmp69760
                                           (let ((__tmp69800
                                                  (let ((__tmp69826
                                                         (let ((__tmp69832
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp69827
                        (let ((__tmp69831 (gx#datum->syntax '#f 'k))
                              (__tmp69828
                               (let ((__tmp69829
                                      (let ((__tmp69830
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp69830 '()))))
                                 (declare (not safe))
                                 (cons __tmp69829 '()))))
                          (declare (not safe))
                          (cons __tmp69831 __tmp69828))))
                   (declare (not safe))
                   (cons __tmp69832 __tmp69827)))
                (__tmp69801
                 (let ((__tmp69802
                        (let ((__tmp69825 (gx#datum->syntax '#f 'loop))
                              (__tmp69803
                               (let ((__tmp69817
                                      (let ((__tmp69824
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp69818
                                             (let ((__tmp69823
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp69819
                                                    (let ((__tmp69822
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp69820
                                                           (let ((__tmp69821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp69821 '()))))
              (declare (not safe))
              (cons __tmp69822 __tmp69820))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69823 __tmp69819))))
                                        (declare (not safe))
                                        (cons __tmp69824 __tmp69818)))
                                     (__tmp69804
                                      (let ((__tmp69812
                                             (let ((__tmp69816
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp69813
                                                    (let ((__tmp69815
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp69814
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp69815
                                                            __tmp69814))))
                                               (declare (not safe))
                                               (cons __tmp69816 __tmp69813)))
                                            (__tmp69805
                                             (let ((__tmp69806
                                                    (let ((__tmp69811
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp69807
                                                           (let ((__tmp69810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp69808
                          (let ((__tmp69809 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp69809 '()))))
                     (declare (not safe))
                     (cons __tmp69810 __tmp69808))))
              (declare (not safe))
              (cons __tmp69811 __tmp69807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69806 '()))))
                                        (declare (not safe))
                                        (cons __tmp69812 __tmp69805))))
                                 (declare (not safe))
                                 (cons __tmp69817 __tmp69804))))
                          (declare (not safe))
                          (cons __tmp69825 __tmp69803))))
                   (declare (not safe))
                   (cons __tmp69802 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69826
                                                          __tmp69801)))
                                                 (__tmp69761
                                                  (let ((__tmp69785
                                                         (let ((__tmp69796
                                                                (let ((__tmp69797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69798
                                      (let ((__tmp69799
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp69799 '()))))
                                 (declare (not safe))
                                 (cons _L63515_ __tmp69798))))
                          (declare (not safe))
                          (cons _L63516_ __tmp69797)))
                       (__tmp69786
                        (let ((__tmp69787
                               (let ((__tmp69795
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp69788
                                      (let ((__tmp69789
                                             (let ((__tmp69790
                                                    (let ((__tmp69794
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp69791
                                                           (let ((__tmp69793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp69792
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp69793 __tmp69792))))
              (declare (not safe))
              (cons __tmp69794 __tmp69791))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69790 '()))))
                                        (declare (not safe))
                                        (cons _L63519_ __tmp69789))))
                                 (declare (not safe))
                                 (cons __tmp69795 __tmp69788))))
                          (declare (not safe))
                          (cons __tmp69787 '()))))
                   (declare (not safe))
                   (cons __tmp69796 __tmp69786)))
                (__tmp69762
                 (let ((__tmp69763
                        (let ((__tmp69784 (gx#datum->syntax '#f 'else))
                              (__tmp69764
                               (let ((__tmp69765
                                      (let ((__tmp69783
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp69766
                                             (let ((__tmp69775
                                                    (let ((__tmp69782
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp69776
                                                           (let ((__tmp69781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp69777
                          (let ((__tmp69780 (gx#datum->syntax '#f 'i))
                                (__tmp69778
                                 (let ((__tmp69779
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp69779 '()))))
                            (declare (not safe))
                            (cons __tmp69780 __tmp69778))))
                     (declare (not safe))
                     (cons __tmp69781 __tmp69777))))
              (declare (not safe))
              (cons __tmp69782 __tmp69776)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp69767
                                                    (let ((__tmp69770
                                                           (let ((__tmp69774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp69771
                          (let ((__tmp69773 (gx#datum->syntax '#f 'i))
                                (__tmp69772
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp69773 __tmp69772))))
                     (declare (not safe))
                     (cons __tmp69774 __tmp69771)))
                  (__tmp69768
                   (let ((__tmp69769 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp69769 '()))))
              (declare (not safe))
              (cons __tmp69770 __tmp69768))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69775 __tmp69767))))
                                        (declare (not safe))
                                        (cons __tmp69783 __tmp69766))))
                                 (declare (not safe))
                                 (cons __tmp69765 '()))))
                          (declare (not safe))
                          (cons __tmp69784 __tmp69764))))
                   (declare (not safe))
                   (cons __tmp69763 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69785
                                                          __tmp69762))))
                                             (declare (not safe))
                                             (cons __tmp69800 __tmp69761))))
                                      (declare (not safe))
                                      (cons __tmp69833 __tmp69760))))
                               (declare (not safe))
                               (cons __tmp69842 __tmp69759))))
                        (declare (not safe))
                        (cons __tmp69758 '()))))
                 (declare (not safe))
                 (cons __tmp69843 __tmp69757))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69851
                                                        __tmp69756))))
                                           (declare (not safe))
                                           (cons __tmp69755 '()))))
                                    (declare (not safe))
                                    (cons __tmp69852 __tmp69754))))
                             (declare (not safe))
                             (cons __tmp69865 __tmp69753))))
                      (declare (not safe))
                      (cons __tmp69866 __tmp69752))))
               (declare (not safe))
               (cons __tmp69751 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69867 __tmp69750))))
                                         (declare (not safe))
                                         (cons __tmp69907 __tmp69749)))
                                     _hd6342963507_
                                     _hd6342663497_
                                     _hd6342363487_
                                     _hd6342063477_
                                     _hd6341763467_
                                     _hd6341463457_)
                                    (_g6340263436_ _g6340363440_))))
                            (_g6340263436_ _g6340363440_))))
                    (_g6340263436_ _g6340363440_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6340263436_
                                                     _g6340363440_))))
                                            (_g6340263436_ _g6340363440_))))
                                    (_g6340263436_ _g6340363440_))))
                            (_g6340263436_ _g6340363440_))))
                    (_g6340263436_ _g6340363440_)))))
        (_g6340163547_ _$stx63398_))))
  (define |[:0:]#__table-set!|
    (lambda (_$stx63551_)
      (let* ((_g6355563597_
              (lambda (_g6355663593_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6355663593_)))
             (_g6355463736_
              (lambda (_g6355663601_)
                (if (gx#stx-pair? _g6355663601_)
                    (let ((_e6356763604_ (gx#syntax-e _g6355663601_)))
                      (let ((_hd6356663608_
                             (let ()
                               (declare (not safe))
                               (##car _e6356763604_)))
                            (_tl6356563611_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6356763604_))))
                        (if (gx#stx-pair? _tl6356563611_)
                            (let ((_e6357063614_ (gx#syntax-e _tl6356563611_)))
                              (let ((_hd6356963618_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6357063614_)))
                                    (_tl6356863621_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6357063614_))))
                                (if (gx#stx-pair? _tl6356863621_)
                                    (let ((_e6357363624_
                                           (gx#syntax-e _tl6356863621_)))
                                      (let ((_hd6357263628_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6357363624_)))
                                            (_tl6357163631_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6357363624_))))
                                        (if (gx#stx-pair? _tl6357163631_)
                                            (let ((_e6357663634_
                                                   (gx#syntax-e
                                                    _tl6357163631_)))
                                              (let ((_hd6357563638_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6357663634_)))
                                                    (_tl6357463641_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6357663634_))))
                                                (if (gx#stx-pair?
                                                     _tl6357463641_)
                                                    (let ((_e6357963644_
                                                           (gx#syntax-e
                                                            _tl6357463641_)))
                                                      (let ((_hd6357863648_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6357963644_)))
                    (_tl6357763651_
                     (let () (declare (not safe)) (##cdr _e6357963644_))))
                (if (gx#stx-pair? _tl6357763651_)
                    (let ((_e6358263654_ (gx#syntax-e _tl6357763651_)))
                      (let ((_hd6358163658_
                             (let ()
                               (declare (not safe))
                               (##car _e6358263654_)))
                            (_tl6358063661_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6358263654_))))
                        (if (gx#stx-pair? _tl6358063661_)
                            (let ((_e6358563664_ (gx#syntax-e _tl6358063661_)))
                              (let ((_hd6358463668_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6358563664_)))
                                    (_tl6358363671_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6358563664_))))
                                (if (gx#stx-pair? _tl6358363671_)
                                    (let ((_e6358863674_
                                           (gx#syntax-e _tl6358363671_)))
                                      (let ((_hd6358763678_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6358863674_)))
                                            (_tl6358663681_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6358863674_))))
                                        (if (gx#stx-pair? _tl6358663681_)
                                            (let ((_e6359163684_
                                                   (gx#syntax-e
                                                    _tl6358663681_)))
                                              (let ((_hd6359063688_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6359163684_)))
                                                    (_tl6358963691_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6359163684_))))
                                                (if (gx#stx-null?
                                                     _tl6358963691_)
                                                    ((lambda (_L63694_
                                                              _L63696_
                                                              _L63697_
                                                              _L63698_
                                                              _L63699_
                                                              _L63700_
                                                              _L63701_
                                                              _L63702_)
                                                       (let ((__tmp70124
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp69908
                                                              (let ((__tmp70084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp70115
                                    (let ((__tmp70123
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp70116
                                           (let ((__tmp70117
                                                  (let ((__tmp70122
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp70118
                                                         (let ((__tmp70120
                                                                (let ((__tmp70121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L63698_ '()))))
                          (declare (not safe))
                          (cons _L63700_ __tmp70121)))
                       (__tmp70119
                        (let () (declare (not safe)) (cons _L63701_ '()))))
                   (declare (not safe))
                   (cons __tmp70120 __tmp70119))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70122
                                                          __tmp70118))))
                                             (declare (not safe))
                                             (cons __tmp70117 '()))))
                                      (declare (not safe))
                                      (cons __tmp70123 __tmp70116)))
                                   (__tmp70085
                                    (let ((__tmp70109
                                           (let ((__tmp70114
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp70110
                                                  (let ((__tmp70111
                                                         (let ((__tmp70113
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp70112
                        (let () (declare (not safe)) (cons _L63702_ '()))))
                   (declare (not safe))
                   (cons __tmp70113 __tmp70112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70111 '()))))
                                             (declare (not safe))
                                             (cons __tmp70114 __tmp70110)))
                                          (__tmp70086
                                           (let ((__tmp70101
                                                  (let ((__tmp70108
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp70102
                                                         (let ((__tmp70103
                                                                (let ((__tmp70107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp70104
                               (let ((__tmp70106 (gx#datum->syntax '#f 'size))
                                     (__tmp70105
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp70106 __tmp70105))))
                          (declare (not safe))
                          (cons __tmp70107 __tmp70104))))
                   (declare (not safe))
                   (cons __tmp70103 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70108
                                                          __tmp70102)))
                                                 (__tmp70087
                                                  (let ((__tmp70088
                                                         (let ((__tmp70100
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp70089
                        (let ((__tmp70090
                               (let ((__tmp70099
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp70091
                                      (let ((__tmp70093
                                             (let ((__tmp70098
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp70094
                                                    (let ((__tmp70097
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp70095
                                                           (let ((__tmp70096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp70096 '()))))
              (declare (not safe))
              (cons __tmp70097 __tmp70095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp70098 __tmp70094)))
                                            (__tmp70092
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp70093 __tmp70092))))
                                 (declare (not safe))
                                 (cons __tmp70099 __tmp70091))))
                          (declare (not safe))
                          (cons __tmp70090 '()))))
                   (declare (not safe))
                   (cons __tmp70100 __tmp70089))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70088 '()))))
                                             (declare (not safe))
                                             (cons __tmp70101 __tmp70087))))
                                      (declare (not safe))
                                      (cons __tmp70109 __tmp70086))))
                               (declare (not safe))
                               (cons __tmp70115 __tmp70085)))
                            (__tmp69909
                             (let ((__tmp69910
                                    (let ((__tmp70083
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp69911
                                           (let ((__tmp70082
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp69912
                                                  (let ((__tmp70069
                                                         (let ((__tmp70078
                                                                (let ((__tmp70081
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp70079
                               (let ((__tmp70080
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp70080 '()))))
                          (declare (not safe))
                          (cons __tmp70081 __tmp70079)))
                       (__tmp70070
                        (let ((__tmp70075
                               (let ((__tmp70077 (gx#datum->syntax '#f 'i))
                                     (__tmp70076
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp70077 __tmp70076)))
                              (__tmp70071
                               (let ((__tmp70072
                                      (let ((__tmp70074
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp70073
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp70074 __tmp70073))))
                                 (declare (not safe))
                                 (cons __tmp70072 '()))))
                          (declare (not safe))
                          (cons __tmp70075 __tmp70071))))
                   (declare (not safe))
                   (cons __tmp70078 __tmp70070)))
                (__tmp69913
                 (let ((__tmp69914
                        (let ((__tmp70068 (gx#datum->syntax '#f 'let))
                              (__tmp69915
                               (let ((__tmp70060
                                      (let ((__tmp70067
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp70061
                                             (let ((__tmp70062
                                                    (let ((__tmp70066
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp70063
                                                           (let ((__tmp70064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp70065 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp70065 '()))))
                     (declare (not safe))
                     (cons _L63702_ __tmp70064))))
              (declare (not safe))
              (cons __tmp70066 __tmp70063))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp70062 '()))))
                                        (declare (not safe))
                                        (cons __tmp70067 __tmp70061)))
                                     (__tmp69916
                                      (let ((__tmp69917
                                             (let ((__tmp70059
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp69918
                                                    (let ((__tmp70000
                                                           (let ((__tmp70052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp70058 (gx#datum->syntax '#f 'eq?))
                                (__tmp70053
                                 (let ((__tmp70057 (gx#datum->syntax '#f 'k))
                                       (__tmp70054
                                        (let ((__tmp70055
                                               (let ((__tmp70056
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp70056 '()))))
                                          (declare (not safe))
                                          (cons __tmp70055 '()))))
                                   (declare (not safe))
                                   (cons __tmp70057 __tmp70054))))
                            (declare (not safe))
                            (cons __tmp70058 __tmp70053)))
                         (__tmp70001
                          (let ((__tmp70002
                                 (let ((__tmp70051 (gx#datum->syntax '#f 'if))
                                       (__tmp70003
                                        (let ((__tmp70050
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp70004
                                               (let ((__tmp70028
                                                      (let ((__tmp70049
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp70029
                                                             (let ((__tmp70043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp70048
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp70044
                                   (let ((__tmp70045
                                          (let ((__tmp70047
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp70046
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L63698_ '()))))
                                            (declare (not safe))
                                            (cons __tmp70047 __tmp70046))))
                                     (declare (not safe))
                                     (cons _L63702_ __tmp70045))))
                              (declare (not safe))
                              (cons __tmp70048 __tmp70044)))
                           (__tmp70030
                            (let ((__tmp70033
                                   (let ((__tmp70042
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp70034
                                          (let ((__tmp70035
                                                 (let ((__tmp70037
                                                        (let ((__tmp70041
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp70038
                                                               (let ((__tmp70040
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp70039
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp70040 __tmp70039))))
                  (declare (not safe))
                  (cons __tmp70041 __tmp70038)))
               (__tmp70036 (let () (declare (not safe)) (cons _L63697_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp70037
                                                         __tmp70036))))
                                            (declare (not safe))
                                            (cons _L63702_ __tmp70035))))
                                     (declare (not safe))
                                     (cons __tmp70042 __tmp70034)))
                                  (__tmp70031
                                   (let ((__tmp70032
                                          (let ()
                                            (declare (not safe))
                                            (cons _L63694_ '()))))
                                     (declare (not safe))
                                     (cons __tmp70032 '()))))
                              (declare (not safe))
                              (cons __tmp70033 __tmp70031))))
                       (declare (not safe))
                       (cons __tmp70043 __tmp70030))))
                (declare (not safe))
                (cons __tmp70049 __tmp70029)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp70005
                                                      (let ((__tmp70006
                                                             (let ((__tmp70027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp70007
                            (let ((__tmp70021
                                   (let ((__tmp70026
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp70022
                                          (let ((__tmp70023
                                                 (let ((__tmp70025
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp70024
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L63698_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp70025
                                                         __tmp70024))))
                                            (declare (not safe))
                                            (cons _L63702_ __tmp70023))))
                                     (declare (not safe))
                                     (cons __tmp70026 __tmp70022)))
                                  (__tmp70008
                                   (let ((__tmp70011
                                          (let ((__tmp70020
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp70012
                                                 (let ((__tmp70013
                                                        (let ((__tmp70015
                                                               (let ((__tmp70019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp70016
                              (let ((__tmp70018 (gx#datum->syntax '#f 'probe))
                                    (__tmp70017
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp70018 __tmp70017))))
                         (declare (not safe))
                         (cons __tmp70019 __tmp70016)))
                      (__tmp70014
                       (let () (declare (not safe)) (cons _L63697_ '()))))
                  (declare (not safe))
                  (cons __tmp70015 __tmp70014))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L63702_
                                                         __tmp70013))))
                                            (declare (not safe))
                                            (cons __tmp70020 __tmp70012)))
                                         (__tmp70009
                                          (let ((__tmp70010
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L63696_ '()))))
                                            (declare (not safe))
                                            (cons __tmp70010 '()))))
                                     (declare (not safe))
                                     (cons __tmp70011 __tmp70009))))
                              (declare (not safe))
                              (cons __tmp70021 __tmp70008))))
                       (declare (not safe))
                       (cons __tmp70027 __tmp70007))))
                (declare (not safe))
                (cons __tmp70006 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp70028
                                                       __tmp70005))))
                                          (declare (not safe))
                                          (cons __tmp70050 __tmp70004))))
                                   (declare (not safe))
                                   (cons __tmp70051 __tmp70003))))
                            (declare (not safe))
                            (cons __tmp70002 '()))))
                     (declare (not safe))
                     (cons __tmp70052 __tmp70001)))
                  (__tmp69919
                   (let ((__tmp69967
                          (let ((__tmp69993
                                 (let ((__tmp69999 (gx#datum->syntax '#f 'eq?))
                                       (__tmp69994
                                        (let ((__tmp69998
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp69995
                                               (let ((__tmp69996
                                                      (let ((__tmp69997
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp69997
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp69996 '()))))
                                          (declare (not safe))
                                          (cons __tmp69998 __tmp69995))))
                                   (declare (not safe))
                                   (cons __tmp69999 __tmp69994)))
                                (__tmp69968
                                 (let ((__tmp69969
                                        (let ((__tmp69992
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp69970
                                               (let ((__tmp69984
                                                      (let ((__tmp69991
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp69985
                                                             (let ((__tmp69990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp69986
                            (let ((__tmp69989 (gx#datum->syntax '#f 'i))
                                  (__tmp69987
                                   (let ((__tmp69988
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp69988 '()))))
                              (declare (not safe))
                              (cons __tmp69989 __tmp69987))))
                       (declare (not safe))
                       (cons __tmp69990 __tmp69986))))
                (declare (not safe))
                (cons __tmp69991 __tmp69985)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp69971
                                                      (let ((__tmp69979
                                                             (let ((__tmp69983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp69980
                            (let ((__tmp69982 (gx#datum->syntax '#f 'i))
                                  (__tmp69981
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp69982 __tmp69981))))
                       (declare (not safe))
                       (cons __tmp69983 __tmp69980)))
                    (__tmp69972
                     (let ((__tmp69973
                            (let ((__tmp69978 (gx#datum->syntax '#f 'or))
                                  (__tmp69974
                                   (let ((__tmp69977
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp69975
                                          (let ((__tmp69976
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp69976 '()))))
                                     (declare (not safe))
                                     (cons __tmp69977 __tmp69975))))
                              (declare (not safe))
                              (cons __tmp69978 __tmp69974))))
                       (declare (not safe))
                       (cons __tmp69973 '()))))
                (declare (not safe))
                (cons __tmp69979 __tmp69972))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69984
                                                       __tmp69971))))
                                          (declare (not safe))
                                          (cons __tmp69992 __tmp69970))))
                                   (declare (not safe))
                                   (cons __tmp69969 '()))))
                            (declare (not safe))
                            (cons __tmp69993 __tmp69968)))
                         (__tmp69920
                          (let ((__tmp69944
                                 (let ((__tmp69963
                                        (let ((__tmp69964
                                               (let ((__tmp69965
                                                      (let ((__tmp69966
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp69966
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L63698_ __tmp69965))))
                                          (declare (not safe))
                                          (cons _L63699_ __tmp69964)))
                                       (__tmp69945
                                        (let ((__tmp69957
                                               (let ((__tmp69962
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp69958
                                                      (let ((__tmp69959
                                                             (let ((__tmp69961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp69960
                            (let () (declare (not safe)) (cons _L63698_ '()))))
                       (declare (not safe))
                       (cons __tmp69961 __tmp69960))))
                (declare (not safe))
                (cons _L63702_ __tmp69959))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69962 __tmp69958)))
                                              (__tmp69946
                                               (let ((__tmp69947
                                                      (let ((__tmp69956
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp69948
                                                             (let ((__tmp69949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp69951
                                   (let ((__tmp69955
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp69952
                                          (let ((__tmp69954
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp69953
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp69954 __tmp69953))))
                                     (declare (not safe))
                                     (cons __tmp69955 __tmp69952)))
                                  (__tmp69950
                                   (let ()
                                     (declare (not safe))
                                     (cons _L63697_ '()))))
                              (declare (not safe))
                              (cons __tmp69951 __tmp69950))))
                       (declare (not safe))
                       (cons _L63702_ __tmp69949))))
                (declare (not safe))
                (cons __tmp69956 __tmp69948))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69947 '()))))
                                          (declare (not safe))
                                          (cons __tmp69957 __tmp69946))))
                                   (declare (not safe))
                                   (cons __tmp69963 __tmp69945)))
                                (__tmp69921
                                 (let ((__tmp69922
                                        (let ((__tmp69943
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp69923
                                               (let ((__tmp69924
                                                      (let ((__tmp69942
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp69925
                                                             (let ((__tmp69934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp69941
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp69935
                                   (let ((__tmp69940
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp69936
                                          (let ((__tmp69939
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp69937
                                                 (let ((__tmp69938
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp69938 '()))))
                                            (declare (not safe))
                                            (cons __tmp69939 __tmp69937))))
                                     (declare (not safe))
                                     (cons __tmp69940 __tmp69936))))
                              (declare (not safe))
                              (cons __tmp69941 __tmp69935)))
                           (__tmp69926
                            (let ((__tmp69929
                                   (let ((__tmp69933
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp69930
                                          (let ((__tmp69932
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp69931
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp69932 __tmp69931))))
                                     (declare (not safe))
                                     (cons __tmp69933 __tmp69930)))
                                  (__tmp69927
                                   (let ((__tmp69928
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp69928 '()))))
                              (declare (not safe))
                              (cons __tmp69929 __tmp69927))))
                       (declare (not safe))
                       (cons __tmp69934 __tmp69926))))
                (declare (not safe))
                (cons __tmp69942 __tmp69925))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69924 '()))))
                                          (declare (not safe))
                                          (cons __tmp69943 __tmp69923))))
                                   (declare (not safe))
                                   (cons __tmp69922 '()))))
                            (declare (not safe))
                            (cons __tmp69944 __tmp69921))))
                     (declare (not safe))
                     (cons __tmp69967 __tmp69920))))
              (declare (not safe))
              (cons __tmp70000 __tmp69919))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp70059 __tmp69918))))
                                        (declare (not safe))
                                        (cons __tmp69917 '()))))
                                 (declare (not safe))
                                 (cons __tmp70060 __tmp69916))))
                          (declare (not safe))
                          (cons __tmp70068 __tmp69915))))
                   (declare (not safe))
                   (cons __tmp69914 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70069
                                                          __tmp69913))))
                                             (declare (not safe))
                                             (cons __tmp70082 __tmp69912))))
                                      (declare (not safe))
                                      (cons __tmp70083 __tmp69911))))
                               (declare (not safe))
                               (cons __tmp69910 '()))))
                        (declare (not safe))
                        (cons __tmp70084 __tmp69909))))
                 (declare (not safe))
                 (cons __tmp70124 __tmp69908)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd6359063688_
                                                     _hd6358763678_
                                                     _hd6358463668_
                                                     _hd6358163658_
                                                     _hd6357863648_
                                                     _hd6357563638_
                                                     _hd6357263628_
                                                     _hd6356963618_)
                                                    (_g6355563597_
                                                     _g6355663601_))))
                                            (_g6355563597_ _g6355663601_))))
                                    (_g6355563597_ _g6355663601_))))
                            (_g6355563597_ _g6355663601_))))
                    (_g6355563597_ _g6355663601_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6355563597_
                                                     _g6355663601_))))
                                            (_g6355563597_ _g6355663601_))))
                                    (_g6355563597_ _g6355663601_))))
                            (_g6355563597_ _g6355663601_))))
                    (_g6355563597_ _g6355663601_)))))
        (_g6355463736_ _$stx63551_))))
  (define |[:0:]#__table-update!|
    (lambda (_$stx63740_)
      (let* ((_g6374463790_
              (lambda (_g6374563786_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6374563786_)))
             (_g6374363943_
              (lambda (_g6374563794_)
                (if (gx#stx-pair? _g6374563794_)
                    (let ((_e6375763797_ (gx#syntax-e _g6374563794_)))
                      (let ((_hd6375663801_
                             (let ()
                               (declare (not safe))
                               (##car _e6375763797_)))
                            (_tl6375563804_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6375763797_))))
                        (if (gx#stx-pair? _tl6375563804_)
                            (let ((_e6376063807_ (gx#syntax-e _tl6375563804_)))
                              (let ((_hd6375963811_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6376063807_)))
                                    (_tl6375863814_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6376063807_))))
                                (if (gx#stx-pair? _tl6375863814_)
                                    (let ((_e6376363817_
                                           (gx#syntax-e _tl6375863814_)))
                                      (let ((_hd6376263821_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6376363817_)))
                                            (_tl6376163824_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6376363817_))))
                                        (if (gx#stx-pair? _tl6376163824_)
                                            (let ((_e6376663827_
                                                   (gx#syntax-e
                                                    _tl6376163824_)))
                                              (let ((_hd6376563831_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6376663827_)))
                                                    (_tl6376463834_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6376663827_))))
                                                (if (gx#stx-pair?
                                                     _tl6376463834_)
                                                    (let ((_e6376963837_
                                                           (gx#syntax-e
                                                            _tl6376463834_)))
                                                      (let ((_hd6376863841_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6376963837_)))
                    (_tl6376763844_
                     (let () (declare (not safe)) (##cdr _e6376963837_))))
                (if (gx#stx-pair? _tl6376763844_)
                    (let ((_e6377263847_ (gx#syntax-e _tl6376763844_)))
                      (let ((_hd6377163851_
                             (let ()
                               (declare (not safe))
                               (##car _e6377263847_)))
                            (_tl6377063854_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6377263847_))))
                        (if (gx#stx-pair? _tl6377063854_)
                            (let ((_e6377563857_ (gx#syntax-e _tl6377063854_)))
                              (let ((_hd6377463861_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6377563857_)))
                                    (_tl6377363864_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6377563857_))))
                                (if (gx#stx-pair? _tl6377363864_)
                                    (let ((_e6377863867_
                                           (gx#syntax-e _tl6377363864_)))
                                      (let ((_hd6377763871_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6377863867_)))
                                            (_tl6377663874_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6377863867_))))
                                        (if (gx#stx-pair? _tl6377663874_)
                                            (let ((_e6378163877_
                                                   (gx#syntax-e
                                                    _tl6377663874_)))
                                              (let ((_hd6378063881_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6378163877_)))
                                                    (_tl6377963884_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6378163877_))))
                                                (if (gx#stx-pair?
                                                     _tl6377963884_)
                                                    (let ((_e6378463887_
                                                           (gx#syntax-e
                                                            _tl6377963884_)))
                                                      (let ((_hd6378363891_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6378463887_)))
                    (_tl6378263894_
                     (let () (declare (not safe)) (##cdr _e6378463887_))))
                (if (gx#stx-null? _tl6378263894_)
                    ((lambda (_L63897_
                              _L63899_
                              _L63900_
                              _L63901_
                              _L63902_
                              _L63903_
                              _L63904_
                              _L63905_
                              _L63906_)
                       (let ((__tmp70356 (gx#datum->syntax '#f 'let*))
                             (__tmp70125
                              (let ((__tmp70316
                                     (let ((__tmp70347
                                            (let ((__tmp70355
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp70348
                                                   (let ((__tmp70349
                                                          (let ((__tmp70354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'fxxor))
                        (__tmp70350
                         (let ((__tmp70352
                                (let ((__tmp70353
                                       (let ()
                                         (declare (not safe))
                                         (cons _L63902_ '()))))
                                  (declare (not safe))
                                  (cons _L63904_ __tmp70353)))
                               (__tmp70351
                                (let ()
                                  (declare (not safe))
                                  (cons _L63905_ '()))))
                           (declare (not safe))
                           (cons __tmp70352 __tmp70351))))
                    (declare (not safe))
                    (cons __tmp70354 __tmp70350))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp70349 '()))))
                                              (declare (not safe))
                                              (cons __tmp70355 __tmp70348)))
                                           (__tmp70317
                                            (let ((__tmp70341
                                                   (let ((__tmp70346
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size))
                                                         (__tmp70342
                                                          (let ((__tmp70343
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp70345
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp70344
                                (let ()
                                  (declare (not safe))
                                  (cons _L63906_ '()))))
                           (declare (not safe))
                           (cons __tmp70345 __tmp70344))))
                    (declare (not safe))
                    (cons __tmp70343 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp70346
                                                           __tmp70342)))
                                                  (__tmp70318
                                                   (let ((__tmp70333
                                                          (let ((__tmp70340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'entries))
                        (__tmp70334
                         (let ((__tmp70335
                                (let ((__tmp70339
                                       (gx#datum->syntax '#f 'fxquotient))
                                      (__tmp70336
                                       (let ((__tmp70338
                                              (gx#datum->syntax '#f 'size))
                                             (__tmp70337
                                              (let ()
                                                (declare (not safe))
                                                (cons '2 '()))))
                                         (declare (not safe))
                                         (cons __tmp70338 __tmp70337))))
                                  (declare (not safe))
                                  (cons __tmp70339 __tmp70336))))
                           (declare (not safe))
                           (cons __tmp70335 '()))))
                    (declare (not safe))
                    (cons __tmp70340 __tmp70334)))
                 (__tmp70319
                  (let ((__tmp70320
                         (let ((__tmp70332 (gx#datum->syntax '#f 'start))
                               (__tmp70321
                                (let ((__tmp70322
                                       (let ((__tmp70331
                                              (gx#datum->syntax
                                               '#f
                                               'fxarithmetic-shift-left))
                                             (__tmp70323
                                              (let ((__tmp70325
                                                     (let ((__tmp70330
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fxmodulo))
                                                           (__tmp70326
                                                            (let ((__tmp70329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp70327
                           (let ((__tmp70328 (gx#datum->syntax '#f 'entries)))
                             (declare (not safe))
                             (cons __tmp70328 '()))))
                      (declare (not safe))
                      (cons __tmp70329 __tmp70327))))
               (declare (not safe))
               (cons __tmp70330 __tmp70326)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp70324
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '1 '()))))
                                                (declare (not safe))
                                                (cons __tmp70325 __tmp70324))))
                                         (declare (not safe))
                                         (cons __tmp70331 __tmp70323))))
                                  (declare (not safe))
                                  (cons __tmp70322 '()))))
                           (declare (not safe))
                           (cons __tmp70332 __tmp70321))))
                    (declare (not safe))
                    (cons __tmp70320 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp70333
                                                           __tmp70319))))
                                              (declare (not safe))
                                              (cons __tmp70341 __tmp70318))))
                                       (declare (not safe))
                                       (cons __tmp70347 __tmp70317)))
                                    (__tmp70126
                                     (let ((__tmp70127
                                            (let ((__tmp70315
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp70128
                                                   (let ((__tmp70314
                                                          (gx#datum->syntax
                                                           '#f
                                                           'loop))
                                                         (__tmp70129
                                                          (let ((__tmp70301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp70310
                                (let ((__tmp70313
                                       (gx#datum->syntax '#f 'probe))
                                      (__tmp70311
                                       (let ((__tmp70312
                                              (gx#datum->syntax '#f 'start)))
                                         (declare (not safe))
                                         (cons __tmp70312 '()))))
                                  (declare (not safe))
                                  (cons __tmp70313 __tmp70311)))
                               (__tmp70302
                                (let ((__tmp70307
                                       (let ((__tmp70309
                                              (gx#datum->syntax '#f 'i))
                                             (__tmp70308
                                              (let ()
                                                (declare (not safe))
                                                (cons '1 '()))))
                                         (declare (not safe))
                                         (cons __tmp70309 __tmp70308)))
                                      (__tmp70303
                                       (let ((__tmp70304
                                              (let ((__tmp70306
                                                     (gx#datum->syntax
                                                      '#f
                                                      'deleted))
                                                    (__tmp70305
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons __tmp70306 __tmp70305))))
                                         (declare (not safe))
                                         (cons __tmp70304 '()))))
                                  (declare (not safe))
                                  (cons __tmp70307 __tmp70303))))
                           (declare (not safe))
                           (cons __tmp70310 __tmp70302)))
                        (__tmp70130
                         (let ((__tmp70131
                                (let ((__tmp70300 (gx#datum->syntax '#f 'let))
                                      (__tmp70132
                                       (let ((__tmp70292
                                              (let ((__tmp70299
                                                     (gx#datum->syntax '#f 'k))
                                                    (__tmp70293
                                                     (let ((__tmp70294
                                                            (let ((__tmp70298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-ref))
                          (__tmp70295
                           (let ((__tmp70296
                                  (let ((__tmp70297
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp70297 '()))))
                             (declare (not safe))
                             (cons _L63906_ __tmp70296))))
                      (declare (not safe))
                      (cons __tmp70298 __tmp70295))))
               (declare (not safe))
               (cons __tmp70294 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp70299 __tmp70293)))
                                             (__tmp70133
                                              (let ((__tmp70134
                                                     (let ((__tmp70291
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cond))
                                                           (__tmp70135
                                                            (let ((__tmp70228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp70284
                                  (let ((__tmp70290
                                         (gx#datum->syntax '#f 'eq?))
                                        (__tmp70285
                                         (let ((__tmp70289
                                                (gx#datum->syntax '#f 'k))
                                               (__tmp70286
                                                (let ((__tmp70287
                                                       (let ((__tmp70288
                                                              (gx#datum->syntax
                                                               '#f
                                                               'macro-unused-obj)))
                                                         (declare (not safe))
                                                         (cons __tmp70288
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp70287 '()))))
                                           (declare (not safe))
                                           (cons __tmp70289 __tmp70286))))
                                    (declare (not safe))
                                    (cons __tmp70290 __tmp70285)))
                                 (__tmp70229
                                  (let ((__tmp70230
                                         (let ((__tmp70283
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp70231
                                                (let ((__tmp70282
                                                       (gx#datum->syntax
                                                        '#f
                                                        'deleted))
                                                      (__tmp70232
                                                       (let ((__tmp70258
                                                              (let ((__tmp70281
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin))
                            (__tmp70259
                             (let ((__tmp70275
                                    (let ((__tmp70280
                                           (gx#datum->syntax '#f 'vector-set!))
                                          (__tmp70276
                                           (let ((__tmp70277
                                                  (let ((__tmp70279
                                                         (gx#datum->syntax
                                                          '#f
                                                          'deleted))
                                                        (__tmp70278
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L63902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70279
                                                          __tmp70278))))
                                             (declare (not safe))
                                             (cons _L63906_ __tmp70277))))
                                      (declare (not safe))
                                      (cons __tmp70280 __tmp70276)))
                                   (__tmp70260
                                    (let ((__tmp70263
                                           (let ((__tmp70274
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp70264
                                                  (let ((__tmp70265
                                                         (let ((__tmp70269
                                                                (let ((__tmp70273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fx+))
                              (__tmp70270
                               (let ((__tmp70272
                                      (gx#datum->syntax '#f 'deleted))
                                     (__tmp70271
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp70272 __tmp70271))))
                          (declare (not safe))
                          (cons __tmp70273 __tmp70270)))
                       (__tmp70266
                        (let ((__tmp70267
                               (let ((__tmp70268
                                      (let ()
                                        (declare (not safe))
                                        (cons _L63900_ '()))))
                                 (declare (not safe))
                                 (cons _L63901_ __tmp70268))))
                          (declare (not safe))
                          (cons __tmp70267 '()))))
                   (declare (not safe))
                   (cons __tmp70269 __tmp70266))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L63906_
                                                          __tmp70265))))
                                             (declare (not safe))
                                             (cons __tmp70274 __tmp70264)))
                                          (__tmp70261
                                           (let ((__tmp70262
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L63897_ '()))))
                                             (declare (not safe))
                                             (cons __tmp70262 '()))))
                                      (declare (not safe))
                                      (cons __tmp70263 __tmp70261))))
                               (declare (not safe))
                               (cons __tmp70275 __tmp70260))))
                        (declare (not safe))
                        (cons __tmp70281 __tmp70259)))
                     (__tmp70233
                      (let ((__tmp70234
                             (let ((__tmp70257 (gx#datum->syntax '#f 'begin))
                                   (__tmp70235
                                    (let ((__tmp70251
                                           (let ((__tmp70256
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp70252
                                                  (let ((__tmp70253
                                                         (let ((__tmp70255
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe))
                       (__tmp70254
                        (let () (declare (not safe)) (cons _L63902_ '()))))
                   (declare (not safe))
                   (cons __tmp70255 __tmp70254))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L63906_
                                                          __tmp70253))))
                                             (declare (not safe))
                                             (cons __tmp70256 __tmp70252)))
                                          (__tmp70236
                                           (let ((__tmp70239
                                                  (let ((__tmp70250
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-set!))
                                                        (__tmp70240
                                                         (let ((__tmp70241
                                                                (let ((__tmp70245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp70249 (gx#datum->syntax '#f 'fx+))
                                     (__tmp70246
                                      (let ((__tmp70248
                                             (gx#datum->syntax '#f 'probe))
                                            (__tmp70247
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp70248 __tmp70247))))
                                 (declare (not safe))
                                 (cons __tmp70249 __tmp70246)))
                              (__tmp70242
                               (let ((__tmp70243
                                      (let ((__tmp70244
                                             (let ()
                                               (declare (not safe))
                                               (cons _L63900_ '()))))
                                        (declare (not safe))
                                        (cons _L63901_ __tmp70244))))
                                 (declare (not safe))
                                 (cons __tmp70243 '()))))
                          (declare (not safe))
                          (cons __tmp70245 __tmp70242))))
                   (declare (not safe))
                   (cons _L63906_ __tmp70241))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70250
                                                          __tmp70240)))
                                                 (__tmp70237
                                                  (let ((__tmp70238
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L63899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70238 '()))))
                                             (declare (not safe))
                                             (cons __tmp70239 __tmp70237))))
                                      (declare (not safe))
                                      (cons __tmp70251 __tmp70236))))
                               (declare (not safe))
                               (cons __tmp70257 __tmp70235))))
                        (declare (not safe))
                        (cons __tmp70234 '()))))
                 (declare (not safe))
                 (cons __tmp70258 __tmp70233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70282
                                                        __tmp70232))))
                                           (declare (not safe))
                                           (cons __tmp70283 __tmp70231))))
                                    (declare (not safe))
                                    (cons __tmp70230 '()))))
                             (declare (not safe))
                             (cons __tmp70284 __tmp70229)))
                          (__tmp70136
                           (let ((__tmp70195
                                  (let ((__tmp70221
                                         (let ((__tmp70227
                                                (gx#datum->syntax '#f 'eq?))
                                               (__tmp70222
                                                (let ((__tmp70226
                                                       (gx#datum->syntax
                                                        '#f
                                                        'k))
                                                      (__tmp70223
                                                       (let ((__tmp70224
                                                              (let ((__tmp70225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'macro-deleted-obj)))
                        (declare (not safe))
                        (cons __tmp70225 '()))))
                 (declare (not safe))
                 (cons __tmp70224 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70226
                                                        __tmp70223))))
                                           (declare (not safe))
                                           (cons __tmp70227 __tmp70222)))
                                        (__tmp70196
                                         (let ((__tmp70197
                                                (let ((__tmp70220
                                                       (gx#datum->syntax
                                                        '#f
                                                        'loop))
                                                      (__tmp70198
                                                       (let ((__tmp70212
                                                              (let ((__tmp70219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe-step))
                            (__tmp70213
                             (let ((__tmp70218 (gx#datum->syntax '#f 'start))
                                   (__tmp70214
                                    (let ((__tmp70217
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp70215
                                           (let ((__tmp70216
                                                  (gx#datum->syntax
                                                   '#f
                                                   'size)))
                                             (declare (not safe))
                                             (cons __tmp70216 '()))))
                                      (declare (not safe))
                                      (cons __tmp70217 __tmp70215))))
                               (declare (not safe))
                               (cons __tmp70218 __tmp70214))))
                        (declare (not safe))
                        (cons __tmp70219 __tmp70213)))
                     (__tmp70199
                      (let ((__tmp70207
                             (let ((__tmp70211 (gx#datum->syntax '#f 'fx+))
                                   (__tmp70208
                                    (let ((__tmp70210
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp70209
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp70210 __tmp70209))))
                               (declare (not safe))
                               (cons __tmp70211 __tmp70208)))
                            (__tmp70200
                             (let ((__tmp70201
                                    (let ((__tmp70206
                                           (gx#datum->syntax '#f 'or))
                                          (__tmp70202
                                           (let ((__tmp70205
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted))
                                                 (__tmp70203
                                                  (let ((__tmp70204
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp70204 '()))))
                                             (declare (not safe))
                                             (cons __tmp70205 __tmp70203))))
                                      (declare (not safe))
                                      (cons __tmp70206 __tmp70202))))
                               (declare (not safe))
                               (cons __tmp70201 '()))))
                        (declare (not safe))
                        (cons __tmp70207 __tmp70200))))
                 (declare (not safe))
                 (cons __tmp70212 __tmp70199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70220
                                                        __tmp70198))))
                                           (declare (not safe))
                                           (cons __tmp70197 '()))))
                                    (declare (not safe))
                                    (cons __tmp70221 __tmp70196)))
                                 (__tmp70137
                                  (let ((__tmp70161
                                         (let ((__tmp70191
                                                (let ((__tmp70192
                                                       (let ((__tmp70193
                                                              (let ((__tmp70194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k)))
                        (declare (not safe))
                        (cons __tmp70194 '()))))
                 (declare (not safe))
                 (cons _L63902_ __tmp70193))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L63903_ __tmp70192)))
                                               (__tmp70162
                                                (let ((__tmp70185
                                                       (let ((__tmp70190
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-set!))
                                                             (__tmp70186
                                                              (let ((__tmp70187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp70189 (gx#datum->syntax '#f 'probe))
                                   (__tmp70188
                                    (let ()
                                      (declare (not safe))
                                      (cons _L63902_ '()))))
                               (declare (not safe))
                               (cons __tmp70189 __tmp70188))))
                        (declare (not safe))
                        (cons _L63906_ __tmp70187))))
                 (declare (not safe))
                 (cons __tmp70190 __tmp70186)))
              (__tmp70163
               (let ((__tmp70164
                      (let ((__tmp70184 (gx#datum->syntax '#f 'vector-set!))
                            (__tmp70165
                             (let ((__tmp70166
                                    (let ((__tmp70179
                                           (let ((__tmp70183
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp70180
                                                  (let ((__tmp70182
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe))
                                                        (__tmp70181
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp70182
                                                          __tmp70181))))
                                             (declare (not safe))
                                             (cons __tmp70183 __tmp70180)))
                                          (__tmp70167
                                           (let ((__tmp70168
                                                  (let ((__tmp70169
                                                         (let ((__tmp70170
                                                                (let ((__tmp70178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'vector-ref))
                              (__tmp70171
                               (let ((__tmp70172
                                      (let ((__tmp70173
                                             (let ((__tmp70177
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp70174
                                                    (let ((__tmp70176
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp70175
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp70176
                                                            __tmp70175))))
                                               (declare (not safe))
                                               (cons __tmp70177 __tmp70174))))
                                        (declare (not safe))
                                        (cons __tmp70173 '()))))
                                 (declare (not safe))
                                 (cons _L63906_ __tmp70172))))
                          (declare (not safe))
                          (cons __tmp70178 __tmp70171))))
                   (declare (not safe))
                   (cons __tmp70170 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L63901_
                                                          __tmp70169))))
                                             (declare (not safe))
                                             (cons __tmp70168 '()))))
                                      (declare (not safe))
                                      (cons __tmp70179 __tmp70167))))
                               (declare (not safe))
                               (cons _L63906_ __tmp70166))))
                        (declare (not safe))
                        (cons __tmp70184 __tmp70165))))
                 (declare (not safe))
                 (cons __tmp70164 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70185
                                                        __tmp70163))))
                                           (declare (not safe))
                                           (cons __tmp70191 __tmp70162)))
                                        (__tmp70138
                                         (let ((__tmp70139
                                                (let ((__tmp70160
                                                       (gx#datum->syntax
                                                        '#f
                                                        'else))
                                                      (__tmp70140
                                                       (let ((__tmp70141
                                                              (let ((__tmp70159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'loop))
                            (__tmp70142
                             (let ((__tmp70151
                                    (let ((__tmp70158
                                           (gx#datum->syntax '#f 'probe-step))
                                          (__tmp70152
                                           (let ((__tmp70157
                                                  (gx#datum->syntax
                                                   '#f
                                                   'start))
                                                 (__tmp70153
                                                  (let ((__tmp70156
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp70154
                                                         (let ((__tmp70155
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'size)))
                   (declare (not safe))
                   (cons __tmp70155 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70156
                                                          __tmp70154))))
                                             (declare (not safe))
                                             (cons __tmp70157 __tmp70153))))
                                      (declare (not safe))
                                      (cons __tmp70158 __tmp70152)))
                                   (__tmp70143
                                    (let ((__tmp70146
                                           (let ((__tmp70150
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp70147
                                                  (let ((__tmp70149
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp70148
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp70149
                                                          __tmp70148))))
                                             (declare (not safe))
                                             (cons __tmp70150 __tmp70147)))
                                          (__tmp70144
                                           (let ((__tmp70145
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted)))
                                             (declare (not safe))
                                             (cons __tmp70145 '()))))
                                      (declare (not safe))
                                      (cons __tmp70146 __tmp70144))))
                               (declare (not safe))
                               (cons __tmp70151 __tmp70143))))
                        (declare (not safe))
                        (cons __tmp70159 __tmp70142))))
                 (declare (not safe))
                 (cons __tmp70141 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70160
                                                        __tmp70140))))
                                           (declare (not safe))
                                           (cons __tmp70139 '()))))
                                    (declare (not safe))
                                    (cons __tmp70161 __tmp70138))))
                             (declare (not safe))
                             (cons __tmp70195 __tmp70137))))
                      (declare (not safe))
                      (cons __tmp70228 __tmp70136))))
               (declare (not safe))
               (cons __tmp70291 __tmp70135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp70134 '()))))
                                         (declare (not safe))
                                         (cons __tmp70292 __tmp70133))))
                                  (declare (not safe))
                                  (cons __tmp70300 __tmp70132))))
                           (declare (not safe))
                           (cons __tmp70131 '()))))
                    (declare (not safe))
                    (cons __tmp70301 __tmp70130))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp70314
                                                           __tmp70129))))
                                              (declare (not safe))
                                              (cons __tmp70315 __tmp70128))))
                                       (declare (not safe))
                                       (cons __tmp70127 '()))))
                                (declare (not safe))
                                (cons __tmp70316 __tmp70126))))
                         (declare (not safe))
                         (cons __tmp70356 __tmp70125)))
                     _hd6378363891_
                     _hd6378063881_
                     _hd6377763871_
                     _hd6377463861_
                     _hd6377163851_
                     _hd6376863841_
                     _hd6376563831_
                     _hd6376263821_
                     _hd6375963811_)
                    (_g6374463790_ _g6374563794_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6374463790_
                                                     _g6374563794_))))
                                            (_g6374463790_ _g6374563794_))))
                                    (_g6374463790_ _g6374563794_))))
                            (_g6374463790_ _g6374563794_))))
                    (_g6374463790_ _g6374563794_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6374463790_
                                                     _g6374563794_))))
                                            (_g6374463790_ _g6374563794_))))
                                    (_g6374463790_ _g6374563794_))))
                            (_g6374463790_ _g6374563794_))))
                    (_g6374463790_ _g6374563794_)))))
        (_g6374363943_ _$stx63740_))))
  (define |[:0:]#__table-del!|
    (lambda (_$stx63947_)
      (let* ((_g6395163985_
              (lambda (_g6395263981_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6395263981_)))
             (_g6395064096_
              (lambda (_g6395263989_)
                (if (gx#stx-pair? _g6395263989_)
                    (let ((_e6396163992_ (gx#syntax-e _g6395263989_)))
                      (let ((_hd6396063996_
                             (let ()
                               (declare (not safe))
                               (##car _e6396163992_)))
                            (_tl6395963999_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6396163992_))))
                        (if (gx#stx-pair? _tl6395963999_)
                            (let ((_e6396464002_ (gx#syntax-e _tl6395963999_)))
                              (let ((_hd6396364006_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6396464002_)))
                                    (_tl6396264009_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6396464002_))))
                                (if (gx#stx-pair? _tl6396264009_)
                                    (let ((_e6396764012_
                                           (gx#syntax-e _tl6396264009_)))
                                      (let ((_hd6396664016_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6396764012_)))
                                            (_tl6396564019_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6396764012_))))
                                        (if (gx#stx-pair? _tl6396564019_)
                                            (let ((_e6397064022_
                                                   (gx#syntax-e
                                                    _tl6396564019_)))
                                              (let ((_hd6396964026_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6397064022_)))
                                                    (_tl6396864029_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6397064022_))))
                                                (if (gx#stx-pair?
                                                     _tl6396864029_)
                                                    (let ((_e6397364032_
                                                           (gx#syntax-e
                                                            _tl6396864029_)))
                                                      (let ((_hd6397264036_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6397364032_)))
                    (_tl6397164039_
                     (let () (declare (not safe)) (##cdr _e6397364032_))))
                (if (gx#stx-pair? _tl6397164039_)
                    (let ((_e6397664042_ (gx#syntax-e _tl6397164039_)))
                      (let ((_hd6397564046_
                             (let ()
                               (declare (not safe))
                               (##car _e6397664042_)))
                            (_tl6397464049_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6397664042_))))
                        (if (gx#stx-pair? _tl6397464049_)
                            (let ((_e6397964052_ (gx#syntax-e _tl6397464049_)))
                              (let ((_hd6397864056_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6397964052_)))
                                    (_tl6397764059_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6397964052_))))
                                (if (gx#stx-null? _tl6397764059_)
                                    ((lambda (_L64062_
                                              _L64064_
                                              _L64065_
                                              _L64066_
                                              _L64067_
                                              _L64068_)
                                       (let ((__tmp70518
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp70357
                                              (let ((__tmp70478
                                                     (let ((__tmp70509
                                                            (let ((__tmp70517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp70510
                           (let ((__tmp70511
                                  (let ((__tmp70516
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp70512
                                         (let ((__tmp70514
                                                (let ((__tmp70515
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L64064_ '()))))
                                                  (declare (not safe))
                                                  (cons _L64066_ __tmp70515)))
                                               (__tmp70513
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L64067_ '()))))
                                           (declare (not safe))
                                           (cons __tmp70514 __tmp70513))))
                                    (declare (not safe))
                                    (cons __tmp70516 __tmp70512))))
                             (declare (not safe))
                             (cons __tmp70511 '()))))
                      (declare (not safe))
                      (cons __tmp70517 __tmp70510)))
                   (__tmp70479
                    (let ((__tmp70503
                           (let ((__tmp70508 (gx#datum->syntax '#f 'size))
                                 (__tmp70504
                                  (let ((__tmp70505
                                         (let ((__tmp70507
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp70506
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L64068_ '()))))
                                           (declare (not safe))
                                           (cons __tmp70507 __tmp70506))))
                                    (declare (not safe))
                                    (cons __tmp70505 '()))))
                             (declare (not safe))
                             (cons __tmp70508 __tmp70504)))
                          (__tmp70480
                           (let ((__tmp70495
                                  (let ((__tmp70502
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp70496
                                         (let ((__tmp70497
                                                (let ((__tmp70501
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp70498
                                                       (let ((__tmp70500
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp70499
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp70500 __tmp70499))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70501
                                                        __tmp70498))))
                                           (declare (not safe))
                                           (cons __tmp70497 '()))))
                                    (declare (not safe))
                                    (cons __tmp70502 __tmp70496)))
                                 (__tmp70481
                                  (let ((__tmp70482
                                         (let ((__tmp70494
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp70483
                                                (let ((__tmp70484
                                                       (let ((__tmp70493
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp70485
                                                              (let ((__tmp70487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp70492
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp70488
                                    (let ((__tmp70491
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp70489
                                           (let ((__tmp70490
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp70490 '()))))
                                      (declare (not safe))
                                      (cons __tmp70491 __tmp70489))))
                               (declare (not safe))
                               (cons __tmp70492 __tmp70488)))
                            (__tmp70486
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp70487 __tmp70486))))
                 (declare (not safe))
                 (cons __tmp70493 __tmp70485))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70484 '()))))
                                           (declare (not safe))
                                           (cons __tmp70494 __tmp70483))))
                                    (declare (not safe))
                                    (cons __tmp70482 '()))))
                             (declare (not safe))
                             (cons __tmp70495 __tmp70481))))
                      (declare (not safe))
                      (cons __tmp70503 __tmp70480))))
               (declare (not safe))
               (cons __tmp70509 __tmp70479)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp70358
                                                     (let ((__tmp70359
                                                            (let ((__tmp70477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp70360
                           (let ((__tmp70476 (gx#datum->syntax '#f 'loop))
                                 (__tmp70361
                                  (let ((__tmp70467
                                         (let ((__tmp70472
                                                (let ((__tmp70475
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp70473
                                                       (let ((__tmp70474
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp70474
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp70475
                                                        __tmp70473)))
                                               (__tmp70468
                                                (let ((__tmp70469
                                                       (let ((__tmp70471
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp70470
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp70471 __tmp70470))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70469 '()))))
                                           (declare (not safe))
                                           (cons __tmp70472 __tmp70468)))
                                        (__tmp70362
                                         (let ((__tmp70363
                                                (let ((__tmp70466
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp70364
                                                       (let ((__tmp70458
                                                              (let ((__tmp70465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp70459
                             (let ((__tmp70460
                                    (let ((__tmp70464
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp70461
                                           (let ((__tmp70462
                                                  (let ((__tmp70463
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp70463 '()))))
                                             (declare (not safe))
                                             (cons _L64068_ __tmp70462))))
                                      (declare (not safe))
                                      (cons __tmp70464 __tmp70461))))
                               (declare (not safe))
                               (cons __tmp70460 '()))))
                        (declare (not safe))
                        (cons __tmp70465 __tmp70459)))
                     (__tmp70365
                      (let ((__tmp70366
                             (let ((__tmp70457 (gx#datum->syntax '#f 'cond))
                                   (__tmp70367
                                    (let ((__tmp70446
                                           (let ((__tmp70450
                                                  (let ((__tmp70456
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp70451
                                                         (let ((__tmp70455
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp70452
                        (let ((__tmp70453
                               (let ((__tmp70454
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp70454 '()))))
                          (declare (not safe))
                          (cons __tmp70453 '()))))
                   (declare (not safe))
                   (cons __tmp70455 __tmp70452))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70456
                                                          __tmp70451)))
                                                 (__tmp70447
                                                  (let ((__tmp70448
                                                         (let ((__tmp70449
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp70449 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70448 '()))))
                                             (declare (not safe))
                                             (cons __tmp70450 __tmp70447)))
                                          (__tmp70368
                                           (let ((__tmp70420
                                                  (let ((__tmp70439
                                                         (let ((__tmp70445
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp70440
                        (let ((__tmp70444 (gx#datum->syntax '#f 'k))
                              (__tmp70441
                               (let ((__tmp70442
                                      (let ((__tmp70443
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp70443 '()))))
                                 (declare (not safe))
                                 (cons __tmp70442 '()))))
                          (declare (not safe))
                          (cons __tmp70444 __tmp70441))))
                   (declare (not safe))
                   (cons __tmp70445 __tmp70440)))
                (__tmp70421
                 (let ((__tmp70422
                        (let ((__tmp70438 (gx#datum->syntax '#f 'loop))
                              (__tmp70423
                               (let ((__tmp70430
                                      (let ((__tmp70437
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp70431
                                             (let ((__tmp70436
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp70432
                                                    (let ((__tmp70435
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp70433
                                                           (let ((__tmp70434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp70434 '()))))
              (declare (not safe))
              (cons __tmp70435 __tmp70433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp70436 __tmp70432))))
                                        (declare (not safe))
                                        (cons __tmp70437 __tmp70431)))
                                     (__tmp70424
                                      (let ((__tmp70425
                                             (let ((__tmp70429
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp70426
                                                    (let ((__tmp70428
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp70427
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp70428
                                                            __tmp70427))))
                                               (declare (not safe))
                                               (cons __tmp70429 __tmp70426))))
                                        (declare (not safe))
                                        (cons __tmp70425 '()))))
                                 (declare (not safe))
                                 (cons __tmp70430 __tmp70424))))
                          (declare (not safe))
                          (cons __tmp70438 __tmp70423))))
                   (declare (not safe))
                   (cons __tmp70422 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70439
                                                          __tmp70421)))
                                                 (__tmp70369
                                                  (let ((__tmp70391
                                                         (let ((__tmp70416
                                                                (let ((__tmp70417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp70418
                                      (let ((__tmp70419
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp70419 '()))))
                                 (declare (not safe))
                                 (cons _L64064_ __tmp70418))))
                          (declare (not safe))
                          (cons _L64065_ __tmp70417)))
                       (__tmp70392
                        (let ((__tmp70408
                               (let ((__tmp70415
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp70409
                                      (let ((__tmp70410
                                             (let ((__tmp70414
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp70411
                                                    (let ((__tmp70412
                                                           (let ((__tmp70413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp70413 '()))))
              (declare (not safe))
              (cons __tmp70412 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp70414 __tmp70411))))
                                        (declare (not safe))
                                        (cons _L64068_ __tmp70410))))
                                 (declare (not safe))
                                 (cons __tmp70415 __tmp70409)))
                              (__tmp70393
                               (let ((__tmp70396
                                      (let ((__tmp70407
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp70397
                                             (let ((__tmp70398
                                                    (let ((__tmp70402
                                                           (let ((__tmp70406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp70403
                          (let ((__tmp70405 (gx#datum->syntax '#f 'probe))
                                (__tmp70404
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp70405 __tmp70404))))
                     (declare (not safe))
                     (cons __tmp70406 __tmp70403)))
                  (__tmp70399
                   (let ((__tmp70400
                          (let ((__tmp70401
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp70401 '()))))
                     (declare (not safe))
                     (cons __tmp70400 '()))))
              (declare (not safe))
              (cons __tmp70402 __tmp70399))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L64068_ __tmp70398))))
                                        (declare (not safe))
                                        (cons __tmp70407 __tmp70397)))
                                     (__tmp70394
                                      (let ((__tmp70395
                                             (let ()
                                               (declare (not safe))
                                               (cons _L64062_ '()))))
                                        (declare (not safe))
                                        (cons __tmp70395 '()))))
                                 (declare (not safe))
                                 (cons __tmp70396 __tmp70394))))
                          (declare (not safe))
                          (cons __tmp70408 __tmp70393))))
                   (declare (not safe))
                   (cons __tmp70416 __tmp70392)))
                (__tmp70370
                 (let ((__tmp70371
                        (let ((__tmp70390 (gx#datum->syntax '#f 'else))
                              (__tmp70372
                               (let ((__tmp70373
                                      (let ((__tmp70389
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp70374
                                             (let ((__tmp70381
                                                    (let ((__tmp70388
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp70382
                                                           (let ((__tmp70387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp70383
                          (let ((__tmp70386 (gx#datum->syntax '#f 'i))
                                (__tmp70384
                                 (let ((__tmp70385
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp70385 '()))))
                            (declare (not safe))
                            (cons __tmp70386 __tmp70384))))
                     (declare (not safe))
                     (cons __tmp70387 __tmp70383))))
              (declare (not safe))
              (cons __tmp70388 __tmp70382)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp70375
                                                    (let ((__tmp70376
                                                           (let ((__tmp70380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp70377
                          (let ((__tmp70379 (gx#datum->syntax '#f 'i))
                                (__tmp70378
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp70379 __tmp70378))))
                     (declare (not safe))
                     (cons __tmp70380 __tmp70377))))
              (declare (not safe))
              (cons __tmp70376 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp70381 __tmp70375))))
                                        (declare (not safe))
                                        (cons __tmp70389 __tmp70374))))
                                 (declare (not safe))
                                 (cons __tmp70373 '()))))
                          (declare (not safe))
                          (cons __tmp70390 __tmp70372))))
                   (declare (not safe))
                   (cons __tmp70371 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70391
                                                          __tmp70370))))
                                             (declare (not safe))
                                             (cons __tmp70420 __tmp70369))))
                                      (declare (not safe))
                                      (cons __tmp70446 __tmp70368))))
                               (declare (not safe))
                               (cons __tmp70457 __tmp70367))))
                        (declare (not safe))
                        (cons __tmp70366 '()))))
                 (declare (not safe))
                 (cons __tmp70458 __tmp70365))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70466
                                                        __tmp70364))))
                                           (declare (not safe))
                                           (cons __tmp70363 '()))))
                                    (declare (not safe))
                                    (cons __tmp70467 __tmp70362))))
                             (declare (not safe))
                             (cons __tmp70476 __tmp70361))))
                      (declare (not safe))
                      (cons __tmp70477 __tmp70360))))
               (declare (not safe))
               (cons __tmp70359 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp70478 __tmp70358))))
                                         (declare (not safe))
                                         (cons __tmp70518 __tmp70357)))
                                     _hd6397864056_
                                     _hd6397564046_
                                     _hd6397264036_
                                     _hd6396964026_
                                     _hd6396664016_
                                     _hd6396364006_)
                                    (_g6395163985_ _g6395263989_))))
                            (_g6395163985_ _g6395263989_))))
                    (_g6395163985_ _g6395263989_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6395163985_
                                                     _g6395263989_))))
                                            (_g6395163985_ _g6395263989_))))
                                    (_g6395163985_ _g6395263989_))))
                            (_g6395163985_ _g6395263989_))))
                    (_g6395163985_ _g6395263989_)))))
        (_g6395064096_ _$stx63947_)))))
