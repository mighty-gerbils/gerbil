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
                    (let ((_e6303563053_ (gx#syntax-e _g6303363050_)))
                      (let ((_hd6303663057_
                             (let ()
                               (declare (not safe))
                               (##car _e6303563053_)))
                            (_tl6303763060_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6303563053_))))
                        (if (gx#stx-pair? _tl6303763060_)
                            (let ((_e6303863063_ (gx#syntax-e _tl6303763060_)))
                              (let ((_hd6303963067_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6303863063_)))
                                    (_tl6304063070_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6303863063_))))
                                (if (gx#stx-null? _tl6304063070_)
                                    ((lambda (_L63073_)
                                       (let ((__tmp69294
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp69292
                                              (let ((__tmp69293
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L63073_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp69293))))
                                         (declare (not safe))
                                         (cons __tmp69294 __tmp69292)))
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
                    (let ((_e6310763149_ (gx#syntax-e _g6309763146_)))
                      (let ((_hd6310863153_
                             (let ()
                               (declare (not safe))
                               (##car _e6310763149_)))
                            (_tl6310963156_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6310763149_))))
                        (if (gx#stx-pair? _tl6310963156_)
                            (let ((_e6311063159_ (gx#syntax-e _tl6310963156_)))
                              (let ((_hd6311163163_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6311063159_)))
                                    (_tl6311263166_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6311063159_))))
                                (if (gx#stx-pair? _tl6311263166_)
                                    (let ((_e6311363169_
                                           (gx#syntax-e _tl6311263166_)))
                                      (let ((_hd6311463173_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6311363169_)))
                                            (_tl6311563176_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6311363169_))))
                                        (if (gx#stx-pair? _tl6311563176_)
                                            (let ((_e6311663179_
                                                   (gx#syntax-e
                                                    _tl6311563176_)))
                                              (let ((_hd6311763183_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6311663179_)))
                                                    (_tl6311863186_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6311663179_))))
                                                (if (gx#stx-pair?
                                                     _tl6311863186_)
                                                    (let ((_e6311963189_
                                                           (gx#syntax-e
                                                            _tl6311863186_)))
                                                      (let ((_hd6312063193_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6311963189_)))
                    (_tl6312163196_
                     (let () (declare (not safe)) (##cdr _e6311963189_))))
                (if (gx#stx-pair? _tl6312163196_)
                    (let ((_e6312263199_ (gx#syntax-e _tl6312163196_)))
                      (let ((_hd6312363203_
                             (let ()
                               (declare (not safe))
                               (##car _e6312263199_)))
                            (_tl6312463206_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6312263199_))))
                        (if (gx#stx-pair? _tl6312463206_)
                            (let ((_e6312563209_ (gx#syntax-e _tl6312463206_)))
                              (let ((_hd6312663213_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6312563209_)))
                                    (_tl6312763216_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6312563209_))))
                                (if (gx#stx-pair? _tl6312763216_)
                                    (let ((_e6312863219_
                                           (gx#syntax-e _tl6312763216_)))
                                      (let ((_hd6312963223_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6312863219_)))
                                            (_tl6313063226_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6312863219_))))
                                        (if (gx#stx-pair? _tl6313063226_)
                                            (let ((_e6313163229_
                                                   (gx#syntax-e
                                                    _tl6313063226_)))
                                              (let ((_hd6313263233_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6313163229_)))
                                                    (_tl6313363236_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6313163229_))))
                                                (if (gx#stx-pair?
                                                     _tl6313363236_)
                                                    (let ((_e6313463239_
                                                           (gx#syntax-e
                                                            _tl6313363236_)))
                                                      (let ((_hd6313563243_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6313463239_)))
                    (_tl6313663246_
                     (let () (declare (not safe)) (##cdr _e6313463239_))))
                (if (gx#stx-null? _tl6313663246_)
                    ((lambda (_L63249_
                              _L63251_
                              _L63252_
                              _L63253_
                              _L63254_
                              _L63255_
                              _L63256_
                              _L63257_
                              _L63258_)
                       (let ((__tmp69726 (gx#datum->syntax '#f 'begin))
                             (__tmp69295
                              (let ((__tmp69705
                                     (let ((__tmp69725
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp69706
                                            (let ((__tmp69716
                                                   (let ((__tmp69717
                                                          (let ((__tmp69722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp69724 (gx#datum->syntax '#f 'size-hint))
                               (__tmp69723
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons __tmp69724 __tmp69723)))
                        (__tmp69718
                         (let ((__tmp69719
                                (let ((__tmp69721 (gx#datum->syntax '#f 'seed))
                                      (__tmp69720
                                       (let ()
                                         (declare (not safe))
                                         (cons '0 '()))))
                                  (declare (not safe))
                                  (cons __tmp69721 __tmp69720))))
                           (declare (not safe))
                           (cons __tmp69719 '()))))
                    (declare (not safe))
                    (cons __tmp69722 __tmp69718))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L63258_
                                                           __tmp69717)))
                                                  (__tmp69707
                                                   (let ((__tmp69708
                                                          (let ((__tmp69715
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-raw-table))
                        (__tmp69709
                         (let ((__tmp69714 (gx#datum->syntax '#f 'size-hint))
                               (__tmp69710
                                (let ((__tmp69711
                                       (let ((__tmp69712
                                              (let ((__tmp69713
                                                     (gx#datum->syntax
                                                      '#f
                                                      'seed)))
                                                (declare (not safe))
                                                (cons __tmp69713 '()))))
                                         (declare (not safe))
                                         (cons _L63249_ __tmp69712))))
                                  (declare (not safe))
                                  (cons _L63251_ __tmp69711))))
                           (declare (not safe))
                           (cons __tmp69714 __tmp69710))))
                    (declare (not safe))
                    (cons __tmp69715 __tmp69709))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69708 '()))))
                                              (declare (not safe))
                                              (cons __tmp69716 __tmp69707))))
                                       (declare (not safe))
                                       (cons __tmp69725 __tmp69706)))
                                    (__tmp69296
                                     (let ((__tmp69662
                                            (let ((__tmp69704
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp69663
                                                   (let ((__tmp69697
                                                          (let ((__tmp69698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp69703 (gx#datum->syntax '#f 'tab))
                               (__tmp69699
                                (let ((__tmp69702 (gx#datum->syntax '#f 'key))
                                      (__tmp69700
                                       (let ((__tmp69701
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp69701 '()))))
                                  (declare (not safe))
                                  (cons __tmp69702 __tmp69700))))
                           (declare (not safe))
                           (cons __tmp69703 __tmp69699))))
                    (declare (not safe))
                    (cons _L63257_ __tmp69698)))
                 (__tmp69664
                  (let ((__tmp69665
                         (let ((__tmp69696 (gx#datum->syntax '#f 'let))
                               (__tmp69666
                                (let ((__tmp69680
                                       (let ((__tmp69689
                                              (let ((__tmp69695
                                                     (gx#datum->syntax
                                                      '#f
                                                      'table))
                                                    (__tmp69690
                                                     (let ((__tmp69691
                                                            (let ((__tmp69694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-table))
                          (__tmp69692
                           (let ((__tmp69693 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp69693 '()))))
                      (declare (not safe))
                      (cons __tmp69694 __tmp69692))))
               (declare (not safe))
               (cons __tmp69691 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69695 __tmp69690)))
                                             (__tmp69681
                                              (let ((__tmp69682
                                                     (let ((__tmp69688
                                                            (gx#datum->syntax
                                                             '#f
                                                             'seed))
                                                           (__tmp69683
                                                            (let ((__tmp69684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp69687
                                  (gx#datum->syntax '#f '&raw-table-seed))
                                 (__tmp69685
                                  (let ((__tmp69686
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp69686 '()))))
                             (declare (not safe))
                             (cons __tmp69687 __tmp69685))))
                      (declare (not safe))
                      (cons __tmp69684 '()))))
               (declare (not safe))
               (cons __tmp69688 __tmp69683))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69682 '()))))
                                         (declare (not safe))
                                         (cons __tmp69689 __tmp69681)))
                                      (__tmp69667
                                       (let ((__tmp69668
                                              (let ((__tmp69679
                                                     (gx#datum->syntax
                                                      '#f
                                                      '__table-ref))
                                                    (__tmp69669
                                                     (let ((__tmp69678
                                                            (gx#datum->syntax
                                                             '#f
                                                             'table))
                                                           (__tmp69670
                                                            (let ((__tmp69677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'seed))
                          (__tmp69671
                           (let ((__tmp69672
                                  (let ((__tmp69673
                                         (let ((__tmp69676
                                                (gx#datum->syntax '#f 'key))
                                               (__tmp69674
                                                (let ((__tmp69675
                                                       (gx#datum->syntax
                                                        '#f
                                                        'default)))
                                                  (declare (not safe))
                                                  (cons __tmp69675 '()))))
                                           (declare (not safe))
                                           (cons __tmp69676 __tmp69674))))
                                    (declare (not safe))
                                    (cons _L63249_ __tmp69673))))
                             (declare (not safe))
                             (cons _L63251_ __tmp69672))))
                      (declare (not safe))
                      (cons __tmp69677 __tmp69671))))
               (declare (not safe))
               (cons __tmp69678 __tmp69670))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69679 __tmp69669))))
                                         (declare (not safe))
                                         (cons __tmp69668 '()))))
                                  (declare (not safe))
                                  (cons __tmp69680 __tmp69667))))
                           (declare (not safe))
                           (cons __tmp69696 __tmp69666))))
                    (declare (not safe))
                    (cons __tmp69665 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69697
                                                           __tmp69664))))
                                              (declare (not safe))
                                              (cons __tmp69704 __tmp69663)))
                                           (__tmp69297
                                            (let ((__tmp69616
                                                   (let ((__tmp69661
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp69617
                                                          (let ((__tmp69654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp69655
                                (let ((__tmp69660 (gx#datum->syntax '#f 'tab))
                                      (__tmp69656
                                       (let ((__tmp69659
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp69657
                                              (let ((__tmp69658
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value)))
                                                (declare (not safe))
                                                (cons __tmp69658 '()))))
                                         (declare (not safe))
                                         (cons __tmp69659 __tmp69657))))
                                  (declare (not safe))
                                  (cons __tmp69660 __tmp69656))))
                           (declare (not safe))
                           (cons _L63256_ __tmp69655)))
                        (__tmp69618
                         (let ((__tmp69627
                                (let ((__tmp69653 (gx#datum->syntax '#f 'when))
                                      (__tmp69628
                                       (let ((__tmp69634
                                              (let ((__tmp69652
                                                     (gx#datum->syntax
                                                      '#f
                                                      'fx<))
                                                    (__tmp69635
                                                     (let ((__tmp69648
                                                            (let ((__tmp69651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-free))
                          (__tmp69649
                           (let ((__tmp69650 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp69650 '()))))
                      (declare (not safe))
                      (cons __tmp69651 __tmp69649)))
                   (__tmp69636
                    (let ((__tmp69637
                           (let ((__tmp69647
                                  (gx#datum->syntax '#f 'fxquotient))
                                 (__tmp69638
                                  (let ((__tmp69640
                                         (let ((__tmp69646
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp69641
                                                (let ((__tmp69642
                                                       (let ((__tmp69645
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp69643
                                                              (let ((__tmp69644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp69644 '()))))
                 (declare (not safe))
                 (cons __tmp69645 __tmp69643))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69642 '()))))
                                           (declare (not safe))
                                           (cons __tmp69646 __tmp69641)))
                                        (__tmp69639
                                         (let ()
                                           (declare (not safe))
                                           (cons '4 '()))))
                                    (declare (not safe))
                                    (cons __tmp69640 __tmp69639))))
                             (declare (not safe))
                             (cons __tmp69647 __tmp69638))))
                      (declare (not safe))
                      (cons __tmp69637 '()))))
               (declare (not safe))
               (cons __tmp69648 __tmp69636))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69652 __tmp69635)))
                                             (__tmp69629
                                              (let ((__tmp69630
                                                     (let ((__tmp69633
                                                            (gx#datum->syntax
                                                             '#f
                                                             '__raw-table-rehash!))
                                                           (__tmp69631
                                                            (let ((__tmp69632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab)))
                      (declare (not safe))
                      (cons __tmp69632 '()))))
               (declare (not safe))
               (cons __tmp69633 __tmp69631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69630 '()))))
                                         (declare (not safe))
                                         (cons __tmp69634 __tmp69629))))
                                  (declare (not safe))
                                  (cons __tmp69653 __tmp69628)))
                               (__tmp69619
                                (let ((__tmp69620
                                       (let ((__tmp69621
                                              (let ((__tmp69626
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp69622
                                                     (let ((__tmp69625
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp69623
                                                            (let ((__tmp69624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'value)))
                      (declare (not safe))
                      (cons __tmp69624 '()))))
               (declare (not safe))
               (cons __tmp69625 __tmp69623))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69626 __tmp69622))))
                                         (declare (not safe))
                                         (cons _L63255_ __tmp69621))))
                                  (declare (not safe))
                                  (cons __tmp69620 '()))))
                           (declare (not safe))
                           (cons __tmp69627 __tmp69619))))
                    (declare (not safe))
                    (cons __tmp69654 __tmp69618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69661
                                                           __tmp69617)))
                                                  (__tmp69298
                                                   (let ((__tmp69514
                                                          (let ((__tmp69615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'def))
                        (__tmp69515
                         (let ((__tmp69608
                                (let ((__tmp69609
                                       (let ((__tmp69614
                                              (gx#datum->syntax '#f 'tab))
                                             (__tmp69610
                                              (let ((__tmp69613
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp69611
                                                     (let ((__tmp69612
                                                            (gx#datum->syntax
                                                             '#f
                                                             'value)))
                                                       (declare (not safe))
                                                       (cons __tmp69612 '()))))
                                                (declare (not safe))
                                                (cons __tmp69613 __tmp69611))))
                                         (declare (not safe))
                                         (cons __tmp69614 __tmp69610))))
                                  (declare (not safe))
                                  (cons _L63255_ __tmp69609)))
                               (__tmp69516
                                (let ((__tmp69517
                                       (let ((__tmp69607
                                              (gx#datum->syntax '#f 'let))
                                             (__tmp69518
                                              (let ((__tmp69591
                                                     (let ((__tmp69600
                                                            (let ((__tmp69606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'table))
                          (__tmp69601
                           (let ((__tmp69602
                                  (let ((__tmp69605
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-table))
                                        (__tmp69603
                                         (let ((__tmp69604
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp69604 '()))))
                                    (declare (not safe))
                                    (cons __tmp69605 __tmp69603))))
                             (declare (not safe))
                             (cons __tmp69602 '()))))
                      (declare (not safe))
                      (cons __tmp69606 __tmp69601)))
                   (__tmp69592
                    (let ((__tmp69593
                           (let ((__tmp69599 (gx#datum->syntax '#f 'seed))
                                 (__tmp69594
                                  (let ((__tmp69595
                                         (let ((__tmp69598
                                                (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-seed))
                                               (__tmp69596
                                                (let ((__tmp69597
                                                       (gx#datum->syntax
                                                        '#f
                                                        'tab)))
                                                  (declare (not safe))
                                                  (cons __tmp69597 '()))))
                                           (declare (not safe))
                                           (cons __tmp69598 __tmp69596))))
                                    (declare (not safe))
                                    (cons __tmp69595 '()))))
                             (declare (not safe))
                             (cons __tmp69599 __tmp69594))))
                      (declare (not safe))
                      (cons __tmp69593 '()))))
               (declare (not safe))
               (cons __tmp69600 __tmp69592)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp69519
                                                     (let ((__tmp69520
                                                            (let ((__tmp69590
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '__table-set!))
                          (__tmp69521
                           (let ((__tmp69589 (gx#datum->syntax '#f 'table))
                                 (__tmp69522
                                  (let ((__tmp69588
                                         (gx#datum->syntax '#f 'seed))
                                        (__tmp69523
                                         (let ((__tmp69524
                                                (let ((__tmp69525
                                                       (let ((__tmp69587
                                                              (gx#datum->syntax
                                                               '#f
                                                               'key))
                                                             (__tmp69526
                                                              (let ((__tmp69586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'value))
                            (__tmp69527
                             (let ((__tmp69549
                                    (let ((__tmp69585
                                           (gx#datum->syntax '#f 'lambda))
                                          (__tmp69550
                                           (let ((__tmp69551
                                                  (let ((__tmp69569
                                                         (let ((__tmp69584
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'set!))
                       (__tmp69570
                        (let ((__tmp69580
                               (let ((__tmp69583
                                      (gx#datum->syntax '#f '&raw-table-free))
                                     (__tmp69581
                                      (let ((__tmp69582
                                             (gx#datum->syntax '#f 'tab)))
                                        (declare (not safe))
                                        (cons __tmp69582 '()))))
                                 (declare (not safe))
                                 (cons __tmp69583 __tmp69581)))
                              (__tmp69571
                               (let ((__tmp69572
                                      (let ((__tmp69579
                                             (gx#datum->syntax '#f 'fx-))
                                            (__tmp69573
                                             (let ((__tmp69575
                                                    (let ((__tmp69578
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp69576
                                                           (let ((__tmp69577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp69577 '()))))
              (declare (not safe))
              (cons __tmp69578 __tmp69576)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp69574
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '1 '()))))
                                               (declare (not safe))
                                               (cons __tmp69575 __tmp69574))))
                                        (declare (not safe))
                                        (cons __tmp69579 __tmp69573))))
                                 (declare (not safe))
                                 (cons __tmp69572 '()))))
                          (declare (not safe))
                          (cons __tmp69580 __tmp69571))))
                   (declare (not safe))
                   (cons __tmp69584 __tmp69570)))
                (__tmp69552
                 (let ((__tmp69553
                        (let ((__tmp69568 (gx#datum->syntax '#f 'set!))
                              (__tmp69554
                               (let ((__tmp69564
                                      (let ((__tmp69567
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp69565
                                             (let ((__tmp69566
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp69566 '()))))
                                        (declare (not safe))
                                        (cons __tmp69567 __tmp69565)))
                                     (__tmp69555
                                      (let ((__tmp69556
                                             (let ((__tmp69563
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp69557
                                                    (let ((__tmp69559
                                                           (let ((__tmp69562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp69560
                          (let ((__tmp69561 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp69561 '()))))
                     (declare (not safe))
                     (cons __tmp69562 __tmp69560)))
                  (__tmp69558 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp69559 __tmp69558))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69563 __tmp69557))))
                                        (declare (not safe))
                                        (cons __tmp69556 '()))))
                                 (declare (not safe))
                                 (cons __tmp69564 __tmp69555))))
                          (declare (not safe))
                          (cons __tmp69568 __tmp69554))))
                   (declare (not safe))
                   (cons __tmp69553 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69569
                                                          __tmp69552))))
                                             (declare (not safe))
                                             (cons '() __tmp69551))))
                                      (declare (not safe))
                                      (cons __tmp69585 __tmp69550)))
                                   (__tmp69528
                                    (let ((__tmp69529
                                           (let ((__tmp69548
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp69530
                                                  (let ((__tmp69531
                                                         (let ((__tmp69532
                                                                (let ((__tmp69547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'set!))
                              (__tmp69533
                               (let ((__tmp69543
                                      (let ((__tmp69546
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp69544
                                             (let ((__tmp69545
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp69545 '()))))
                                        (declare (not safe))
                                        (cons __tmp69546 __tmp69544)))
                                     (__tmp69534
                                      (let ((__tmp69535
                                             (let ((__tmp69542
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp69536
                                                    (let ((__tmp69538
                                                           (let ((__tmp69541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp69539
                          (let ((__tmp69540 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp69540 '()))))
                     (declare (not safe))
                     (cons __tmp69541 __tmp69539)))
                  (__tmp69537 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp69538 __tmp69537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69542 __tmp69536))))
                                        (declare (not safe))
                                        (cons __tmp69535 '()))))
                                 (declare (not safe))
                                 (cons __tmp69543 __tmp69534))))
                          (declare (not safe))
                          (cons __tmp69547 __tmp69533))))
                   (declare (not safe))
                   (cons __tmp69532 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '() __tmp69531))))
                                             (declare (not safe))
                                             (cons __tmp69548 __tmp69530))))
                                      (declare (not safe))
                                      (cons __tmp69529 '()))))
                               (declare (not safe))
                               (cons __tmp69549 __tmp69528))))
                        (declare (not safe))
                        (cons __tmp69586 __tmp69527))))
                 (declare (not safe))
                 (cons __tmp69587 __tmp69526))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L63249_ __tmp69525))))
                                           (declare (not safe))
                                           (cons _L63251_ __tmp69524))))
                                    (declare (not safe))
                                    (cons __tmp69588 __tmp69523))))
                             (declare (not safe))
                             (cons __tmp69589 __tmp69522))))
                      (declare (not safe))
                      (cons __tmp69590 __tmp69521))))
               (declare (not safe))
               (cons __tmp69520 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69591 __tmp69519))))
                                         (declare (not safe))
                                         (cons __tmp69607 __tmp69518))))
                                  (declare (not safe))
                                  (cons __tmp69517 '()))))
                           (declare (not safe))
                           (cons __tmp69608 __tmp69516))))
                    (declare (not safe))
                    (cons __tmp69615 __tmp69515)))
                 (__tmp69299
                  (let ((__tmp69466
                         (let ((__tmp69513 (gx#datum->syntax '#f 'def))
                               (__tmp69467
                                (let ((__tmp69505
                                       (let ((__tmp69506
                                              (let ((__tmp69512
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp69507
                                                     (let ((__tmp69511
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp69508
                                                            (let ((__tmp69509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp69510 (gx#datum->syntax '#f 'default)))
                             (declare (not safe))
                             (cons __tmp69510 '()))))
                      (declare (not safe))
                      (cons _L63254_ __tmp69509))))
               (declare (not safe))
               (cons __tmp69511 __tmp69508))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69512 __tmp69507))))
                                         (declare (not safe))
                                         (cons _L63254_ __tmp69506)))
                                      (__tmp69468
                                       (let ((__tmp69478
                                              (let ((__tmp69504
                                                     (gx#datum->syntax
                                                      '#f
                                                      'when))
                                                    (__tmp69479
                                                     (let ((__tmp69485
                                                            (let ((__tmp69503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'fx<))
                          (__tmp69486
                           (let ((__tmp69499
                                  (let ((__tmp69502
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-free))
                                        (__tmp69500
                                         (let ((__tmp69501
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp69501 '()))))
                                    (declare (not safe))
                                    (cons __tmp69502 __tmp69500)))
                                 (__tmp69487
                                  (let ((__tmp69488
                                         (let ((__tmp69498
                                                (gx#datum->syntax
                                                 '#f
                                                 'fxquotient))
                                               (__tmp69489
                                                (let ((__tmp69491
                                                       (let ((__tmp69497
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-length))
                                                             (__tmp69492
                                                              (let ((__tmp69493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69496
                                    (gx#datum->syntax '#f '&raw-table-table))
                                   (__tmp69494
                                    (let ((__tmp69495
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp69495 '()))))
                               (declare (not safe))
                               (cons __tmp69496 __tmp69494))))
                        (declare (not safe))
                        (cons __tmp69493 '()))))
                 (declare (not safe))
                 (cons __tmp69497 __tmp69492)))
              (__tmp69490 (let () (declare (not safe)) (cons '4 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69491
                                                        __tmp69490))))
                                           (declare (not safe))
                                           (cons __tmp69498 __tmp69489))))
                                    (declare (not safe))
                                    (cons __tmp69488 '()))))
                             (declare (not safe))
                             (cons __tmp69499 __tmp69487))))
                      (declare (not safe))
                      (cons __tmp69503 __tmp69486)))
                   (__tmp69480
                    (let ((__tmp69481
                           (let ((__tmp69484
                                  (gx#datum->syntax '#f '__raw-table-rehash!))
                                 (__tmp69482
                                  (let ((__tmp69483
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp69483 '()))))
                             (declare (not safe))
                             (cons __tmp69484 __tmp69482))))
                      (declare (not safe))
                      (cons __tmp69481 '()))))
               (declare (not safe))
               (cons __tmp69485 __tmp69480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69504 __tmp69479)))
                                             (__tmp69469
                                              (let ((__tmp69470
                                                     (let ((__tmp69471
                                                            (let ((__tmp69477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp69472
                           (let ((__tmp69476 (gx#datum->syntax '#f 'key))
                                 (__tmp69473
                                  (let ((__tmp69474
                                         (let ((__tmp69475
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp69475 '()))))
                                    (declare (not safe))
                                    (cons _L63254_ __tmp69474))))
                             (declare (not safe))
                             (cons __tmp69476 __tmp69473))))
                      (declare (not safe))
                      (cons __tmp69477 __tmp69472))))
               (declare (not safe))
               (cons _L63253_ __tmp69471))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69470 '()))))
                                         (declare (not safe))
                                         (cons __tmp69478 __tmp69469))))
                                  (declare (not safe))
                                  (cons __tmp69505 __tmp69468))))
                           (declare (not safe))
                           (cons __tmp69513 __tmp69467)))
                        (__tmp69300
                         (let ((__tmp69362
                                (let ((__tmp69465 (gx#datum->syntax '#f 'def))
                                      (__tmp69363
                                       (let ((__tmp69457
                                              (let ((__tmp69458
                                                     (let ((__tmp69464
                                                            (gx#datum->syntax
                                                             '#f
                                                             'tab))
                                                           (__tmp69459
                                                            (let ((__tmp69463
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'key))
                          (__tmp69460
                           (let ((__tmp69461
                                  (let ((__tmp69462
                                         (gx#datum->syntax '#f 'default)))
                                    (declare (not safe))
                                    (cons __tmp69462 '()))))
                             (declare (not safe))
                             (cons _L63254_ __tmp69461))))
                      (declare (not safe))
                      (cons __tmp69463 __tmp69460))))
               (declare (not safe))
               (cons __tmp69464 __tmp69459))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L63253_ __tmp69458)))
                                             (__tmp69364
                                              (let ((__tmp69365
                                                     (let ((__tmp69456
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp69366
                                                            (let ((__tmp69440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp69449
                                  (let ((__tmp69455
                                         (gx#datum->syntax '#f 'table))
                                        (__tmp69450
                                         (let ((__tmp69451
                                                (let ((__tmp69454
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table))
                                                      (__tmp69452
                                                       (let ((__tmp69453
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp69453
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp69454
                                                        __tmp69452))))
                                           (declare (not safe))
                                           (cons __tmp69451 '()))))
                                    (declare (not safe))
                                    (cons __tmp69455 __tmp69450)))
                                 (__tmp69441
                                  (let ((__tmp69442
                                         (let ((__tmp69448
                                                (gx#datum->syntax '#f 'seed))
                                               (__tmp69443
                                                (let ((__tmp69444
                                                       (let ((__tmp69447
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-seed))
                                                             (__tmp69445
                                                              (let ((__tmp69446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp69446 '()))))
                 (declare (not safe))
                 (cons __tmp69447 __tmp69445))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69444 '()))))
                                           (declare (not safe))
                                           (cons __tmp69448 __tmp69443))))
                                    (declare (not safe))
                                    (cons __tmp69442 '()))))
                             (declare (not safe))
                             (cons __tmp69449 __tmp69441)))
                          (__tmp69367
                           (let ((__tmp69368
                                  (let ((__tmp69439
                                         (gx#datum->syntax
                                          '#f
                                          '__table-update!))
                                        (__tmp69369
                                         (let ((__tmp69438
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp69370
                                                (let ((__tmp69437
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp69371
                                                       (let ((__tmp69372
                                                              (let ((__tmp69373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69436 (gx#datum->syntax '#f 'key))
                                   (__tmp69374
                                    (let ((__tmp69375
                                           (let ((__tmp69435
                                                  (gx#datum->syntax
                                                   '#f
                                                   'default))
                                                 (__tmp69376
                                                  (let ((__tmp69398
                                                         (let ((__tmp69434
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda))
                       (__tmp69399
                        (let ((__tmp69400
                               (let ((__tmp69418
                                      (let ((__tmp69433
                                             (gx#datum->syntax '#f 'set!))
                                            (__tmp69419
                                             (let ((__tmp69429
                                                    (let ((__tmp69432
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp69430
                                                           (let ((__tmp69431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp69431 '()))))
              (declare (not safe))
              (cons __tmp69432 __tmp69430)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp69420
                                                    (let ((__tmp69421
                                                           (let ((__tmp69428
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx-))
                         (__tmp69422
                          (let ((__tmp69424
                                 (let ((__tmp69427
                                        (gx#datum->syntax
                                         '#f
                                         '&raw-table-free))
                                       (__tmp69425
                                        (let ((__tmp69426
                                               (gx#datum->syntax '#f 'tab)))
                                          (declare (not safe))
                                          (cons __tmp69426 '()))))
                                   (declare (not safe))
                                   (cons __tmp69427 __tmp69425)))
                                (__tmp69423
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp69424 __tmp69423))))
                     (declare (not safe))
                     (cons __tmp69428 __tmp69422))))
              (declare (not safe))
              (cons __tmp69421 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69429 __tmp69420))))
                                        (declare (not safe))
                                        (cons __tmp69433 __tmp69419)))
                                     (__tmp69401
                                      (let ((__tmp69402
                                             (let ((__tmp69417
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp69403
                                                    (let ((__tmp69413
                                                           (let ((__tmp69416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp69414
                          (let ((__tmp69415 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp69415 '()))))
                     (declare (not safe))
                     (cons __tmp69416 __tmp69414)))
                  (__tmp69404
                   (let ((__tmp69405
                          (let ((__tmp69412 (gx#datum->syntax '#f 'fx+))
                                (__tmp69406
                                 (let ((__tmp69408
                                        (let ((__tmp69411
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp69409
                                               (let ((__tmp69410
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp69410 '()))))
                                          (declare (not safe))
                                          (cons __tmp69411 __tmp69409)))
                                       (__tmp69407
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp69408 __tmp69407))))
                            (declare (not safe))
                            (cons __tmp69412 __tmp69406))))
                     (declare (not safe))
                     (cons __tmp69405 '()))))
              (declare (not safe))
              (cons __tmp69413 __tmp69404))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69417 __tmp69403))))
                                        (declare (not safe))
                                        (cons __tmp69402 '()))))
                                 (declare (not safe))
                                 (cons __tmp69418 __tmp69401))))
                          (declare (not safe))
                          (cons '() __tmp69400))))
                   (declare (not safe))
                   (cons __tmp69434 __tmp69399)))
                (__tmp69377
                 (let ((__tmp69378
                        (let ((__tmp69397 (gx#datum->syntax '#f 'lambda))
                              (__tmp69379
                               (let ((__tmp69380
                                      (let ((__tmp69381
                                             (let ((__tmp69396
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp69382
                                                    (let ((__tmp69392
                                                           (let ((__tmp69395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp69393
                          (let ((__tmp69394 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp69394 '()))))
                     (declare (not safe))
                     (cons __tmp69395 __tmp69393)))
                  (__tmp69383
                   (let ((__tmp69384
                          (let ((__tmp69391 (gx#datum->syntax '#f 'fx+))
                                (__tmp69385
                                 (let ((__tmp69387
                                        (let ((__tmp69390
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp69388
                                               (let ((__tmp69389
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp69389 '()))))
                                          (declare (not safe))
                                          (cons __tmp69390 __tmp69388)))
                                       (__tmp69386
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp69387 __tmp69386))))
                            (declare (not safe))
                            (cons __tmp69391 __tmp69385))))
                     (declare (not safe))
                     (cons __tmp69384 '()))))
              (declare (not safe))
              (cons __tmp69392 __tmp69383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69396 __tmp69382))))
                                        (declare (not safe))
                                        (cons __tmp69381 '()))))
                                 (declare (not safe))
                                 (cons '() __tmp69380))))
                          (declare (not safe))
                          (cons __tmp69397 __tmp69379))))
                   (declare (not safe))
                   (cons __tmp69378 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69398
                                                          __tmp69377))))
                                             (declare (not safe))
                                             (cons __tmp69435 __tmp69376))))
                                      (declare (not safe))
                                      (cons _L63254_ __tmp69375))))
                               (declare (not safe))
                               (cons __tmp69436 __tmp69374))))
                        (declare (not safe))
                        (cons _L63249_ __tmp69373))))
                 (declare (not safe))
                 (cons _L63251_ __tmp69372))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69437
                                                        __tmp69371))))
                                           (declare (not safe))
                                           (cons __tmp69438 __tmp69370))))
                                    (declare (not safe))
                                    (cons __tmp69439 __tmp69369))))
                             (declare (not safe))
                             (cons __tmp69368 '()))))
                      (declare (not safe))
                      (cons __tmp69440 __tmp69367))))
               (declare (not safe))
               (cons __tmp69456 __tmp69366))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69365 '()))))
                                         (declare (not safe))
                                         (cons __tmp69457 __tmp69364))))
                                  (declare (not safe))
                                  (cons __tmp69465 __tmp69363)))
                               (__tmp69301
                                (let ((__tmp69302
                                       (let ((__tmp69361
                                              (gx#datum->syntax '#f 'def))
                                             (__tmp69303
                                              (let ((__tmp69356
                                                     (let ((__tmp69357
                                                            (let ((__tmp69360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp69358
                           (let ((__tmp69359 (gx#datum->syntax '#f 'key)))
                             (declare (not safe))
                             (cons __tmp69359 '()))))
                      (declare (not safe))
                      (cons __tmp69360 __tmp69358))))
               (declare (not safe))
               (cons _L63252_ __tmp69357)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp69304
                                                     (let ((__tmp69305
                                                            (let ((__tmp69355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp69306
                           (let ((__tmp69339
                                  (let ((__tmp69348
                                         (let ((__tmp69354
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp69349
                                                (let ((__tmp69350
                                                       (let ((__tmp69353
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp69351
                                                              (let ((__tmp69352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp69352 '()))))
                 (declare (not safe))
                 (cons __tmp69353 __tmp69351))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69350 '()))))
                                           (declare (not safe))
                                           (cons __tmp69354 __tmp69349)))
                                        (__tmp69340
                                         (let ((__tmp69341
                                                (let ((__tmp69347
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp69342
                                                       (let ((__tmp69343
                                                              (let ((__tmp69346
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-seed))
                            (__tmp69344
                             (let ((__tmp69345 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp69345 '()))))
                        (declare (not safe))
                        (cons __tmp69346 __tmp69344))))
                 (declare (not safe))
                 (cons __tmp69343 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69347
                                                        __tmp69342))))
                                           (declare (not safe))
                                           (cons __tmp69341 '()))))
                                    (declare (not safe))
                                    (cons __tmp69348 __tmp69340)))
                                 (__tmp69307
                                  (let ((__tmp69308
                                         (let ((__tmp69338
                                                (gx#datum->syntax
                                                 '#f
                                                 '__table-del!))
                                               (__tmp69309
                                                (let ((__tmp69337
                                                       (gx#datum->syntax
                                                        '#f
                                                        'table))
                                                      (__tmp69310
                                                       (let ((__tmp69336
                                                              (gx#datum->syntax
                                                               '#f
                                                               'seed))
                                                             (__tmp69311
                                                              (let ((__tmp69312
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69313
                                    (let ((__tmp69335
                                           (gx#datum->syntax '#f 'key))
                                          (__tmp69314
                                           (let ((__tmp69315
                                                  (let ((__tmp69334
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp69316
                                                         (let ((__tmp69317
                                                                (let ((__tmp69318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69333 (gx#datum->syntax '#f 'set!))
                                     (__tmp69319
                                      (let ((__tmp69329
                                             (let ((__tmp69332
                                                    (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-count))
                                                   (__tmp69330
                                                    (let ((__tmp69331
                                                           (gx#datum->syntax
                                                            '#f
                                                            'tab)))
                                                      (declare (not safe))
                                                      (cons __tmp69331 '()))))
                                               (declare (not safe))
                                               (cons __tmp69332 __tmp69330)))
                                            (__tmp69320
                                             (let ((__tmp69321
                                                    (let ((__tmp69328
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx-))
                                                          (__tmp69322
                                                           (let ((__tmp69324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp69327
                                 (gx#datum->syntax '#f '&raw-table-count))
                                (__tmp69325
                                 (let ((__tmp69326
                                        (gx#datum->syntax '#f 'tab)))
                                   (declare (not safe))
                                   (cons __tmp69326 '()))))
                            (declare (not safe))
                            (cons __tmp69327 __tmp69325)))
                         (__tmp69323
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp69324 __tmp69323))))
              (declare (not safe))
              (cons __tmp69328 __tmp69322))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69321 '()))))
                                        (declare (not safe))
                                        (cons __tmp69329 __tmp69320))))
                                 (declare (not safe))
                                 (cons __tmp69333 __tmp69319))))
                          (declare (not safe))
                          (cons __tmp69318 '()))))
                   (declare (not safe))
                   (cons '() __tmp69317))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69334
                                                          __tmp69316))))
                                             (declare (not safe))
                                             (cons __tmp69315 '()))))
                                      (declare (not safe))
                                      (cons __tmp69335 __tmp69314))))
                               (declare (not safe))
                               (cons _L63249_ __tmp69313))))
                        (declare (not safe))
                        (cons _L63251_ __tmp69312))))
                 (declare (not safe))
                 (cons __tmp69336 __tmp69311))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69337
                                                        __tmp69310))))
                                           (declare (not safe))
                                           (cons __tmp69338 __tmp69309))))
                                    (declare (not safe))
                                    (cons __tmp69308 '()))))
                             (declare (not safe))
                             (cons __tmp69339 __tmp69307))))
                      (declare (not safe))
                      (cons __tmp69355 __tmp69306))))
               (declare (not safe))
               (cons __tmp69305 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69356 __tmp69304))))
                                         (declare (not safe))
                                         (cons __tmp69361 __tmp69303))))
                                  (declare (not safe))
                                  (cons __tmp69302 '()))))
                           (declare (not safe))
                           (cons __tmp69362 __tmp69301))))
                    (declare (not safe))
                    (cons __tmp69466 __tmp69300))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69514
                                                           __tmp69299))))
                                              (declare (not safe))
                                              (cons __tmp69616 __tmp69298))))
                                       (declare (not safe))
                                       (cons __tmp69662 __tmp69297))))
                                (declare (not safe))
                                (cons __tmp69705 __tmp69296))))
                         (declare (not safe))
                         (cons __tmp69726 __tmp69295)))
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
                    (let ((_e6330863332_ (gx#syntax-e _g6330463329_)))
                      (let ((_hd6330963336_
                             (let ()
                               (declare (not safe))
                               (##car _e6330863332_)))
                            (_tl6331063339_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6330863332_))))
                        (if (gx#stx-pair? _tl6331063339_)
                            (let ((_e6331163342_ (gx#syntax-e _tl6331063339_)))
                              (let ((_hd6331263346_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6331163342_)))
                                    (_tl6331363349_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6331163342_))))
                                (if (gx#stx-pair? _tl6331363349_)
                                    (let ((_e6331463352_
                                           (gx#syntax-e _tl6331363349_)))
                                      (let ((_hd6331563356_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6331463352_)))
                                            (_tl6331663359_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6331463352_))))
                                        (if (gx#stx-pair? _tl6331663359_)
                                            (let ((_e6331763362_
                                                   (gx#syntax-e
                                                    _tl6331663359_)))
                                              (let ((_hd6331863366_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6331763362_)))
                                                    (_tl6331963369_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6331763362_))))
                                                (if (gx#stx-null?
                                                     _tl6331963369_)
                                                    ((lambda (_L63372_
                                                              _L63374_
                                                              _L63375_)
                                                       (let ((__tmp69746
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp69727
                                                              (let ((__tmp69734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69745
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp69735
                                    (let ((__tmp69736
                                           (let ((__tmp69744
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp69737
                                                  (let ((__tmp69738
                                                         (let ((__tmp69739
                                                                (let ((__tmp69740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69743 (gx#datum->syntax '#f 'fx*))
                                     (__tmp69741
                                      (let ((__tmp69742
                                             (let ()
                                               (declare (not safe))
                                               (cons _L63374_ '()))))
                                        (declare (not safe))
                                        (cons _L63374_ __tmp69742))))
                                 (declare (not safe))
                                 (cons __tmp69743 __tmp69741))))
                          (declare (not safe))
                          (cons __tmp69740 '()))))
                   (declare (not safe))
                   (cons _L63374_ __tmp69739))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L63375_
                                                          __tmp69738))))
                                             (declare (not safe))
                                             (cons __tmp69744 __tmp69737))))
                                      (declare (not safe))
                                      (cons __tmp69736 '()))))
                               (declare (not safe))
                               (cons __tmp69745 __tmp69735)))
                            (__tmp69728
                             (let ((__tmp69729
                                    (let ((__tmp69733
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp69730
                                           (let ((__tmp69732
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp69731
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L63372_ '()))))
                                             (declare (not safe))
                                             (cons __tmp69732 __tmp69731))))
                                      (declare (not safe))
                                      (cons __tmp69733 __tmp69730))))
                               (declare (not safe))
                               (cons __tmp69729 '()))))
                        (declare (not safe))
                        (cons __tmp69734 __tmp69728))))
                 (declare (not safe))
                 (cons __tmp69746 __tmp69727)))
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
                    (let ((_e6341063443_ (gx#syntax-e _g6340363440_)))
                      (let ((_hd6341163447_
                             (let ()
                               (declare (not safe))
                               (##car _e6341063443_)))
                            (_tl6341263450_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6341063443_))))
                        (if (gx#stx-pair? _tl6341263450_)
                            (let ((_e6341363453_ (gx#syntax-e _tl6341263450_)))
                              (let ((_hd6341463457_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6341363453_)))
                                    (_tl6341563460_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6341363453_))))
                                (if (gx#stx-pair? _tl6341563460_)
                                    (let ((_e6341663463_
                                           (gx#syntax-e _tl6341563460_)))
                                      (let ((_hd6341763467_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6341663463_)))
                                            (_tl6341863470_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6341663463_))))
                                        (if (gx#stx-pair? _tl6341863470_)
                                            (let ((_e6341963473_
                                                   (gx#syntax-e
                                                    _tl6341863470_)))
                                              (let ((_hd6342063477_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6341963473_)))
                                                    (_tl6342163480_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6341963473_))))
                                                (if (gx#stx-pair?
                                                     _tl6342163480_)
                                                    (let ((_e6342263483_
                                                           (gx#syntax-e
                                                            _tl6342163480_)))
                                                      (let ((_hd6342363487_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6342263483_)))
                    (_tl6342463490_
                     (let () (declare (not safe)) (##cdr _e6342263483_))))
                (if (gx#stx-pair? _tl6342463490_)
                    (let ((_e6342563493_ (gx#syntax-e _tl6342463490_)))
                      (let ((_hd6342663497_
                             (let ()
                               (declare (not safe))
                               (##car _e6342563493_)))
                            (_tl6342763500_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6342563493_))))
                        (if (gx#stx-pair? _tl6342763500_)
                            (let ((_e6342863503_ (gx#syntax-e _tl6342763500_)))
                              (let ((_hd6342963507_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6342863503_)))
                                    (_tl6343063510_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6342863503_))))
                                (if (gx#stx-null? _tl6343063510_)
                                    ((lambda (_L63513_
                                              _L63515_
                                              _L63516_
                                              _L63517_
                                              _L63518_
                                              _L63519_)
                                       (let ((__tmp69905
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp69747
                                              (let ((__tmp69865
                                                     (let ((__tmp69896
                                                            (let ((__tmp69904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp69897
                           (let ((__tmp69898
                                  (let ((__tmp69903
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp69899
                                         (let ((__tmp69901
                                                (let ((__tmp69902
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L63515_ '()))))
                                                  (declare (not safe))
                                                  (cons _L63517_ __tmp69902)))
                                               (__tmp69900
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L63518_ '()))))
                                           (declare (not safe))
                                           (cons __tmp69901 __tmp69900))))
                                    (declare (not safe))
                                    (cons __tmp69903 __tmp69899))))
                             (declare (not safe))
                             (cons __tmp69898 '()))))
                      (declare (not safe))
                      (cons __tmp69904 __tmp69897)))
                   (__tmp69866
                    (let ((__tmp69890
                           (let ((__tmp69895 (gx#datum->syntax '#f 'size))
                                 (__tmp69891
                                  (let ((__tmp69892
                                         (let ((__tmp69894
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp69893
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L63519_ '()))))
                                           (declare (not safe))
                                           (cons __tmp69894 __tmp69893))))
                                    (declare (not safe))
                                    (cons __tmp69892 '()))))
                             (declare (not safe))
                             (cons __tmp69895 __tmp69891)))
                          (__tmp69867
                           (let ((__tmp69882
                                  (let ((__tmp69889
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp69883
                                         (let ((__tmp69884
                                                (let ((__tmp69888
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp69885
                                                       (let ((__tmp69887
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp69886
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp69887 __tmp69886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69888
                                                        __tmp69885))))
                                           (declare (not safe))
                                           (cons __tmp69884 '()))))
                                    (declare (not safe))
                                    (cons __tmp69889 __tmp69883)))
                                 (__tmp69868
                                  (let ((__tmp69869
                                         (let ((__tmp69881
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp69870
                                                (let ((__tmp69871
                                                       (let ((__tmp69880
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp69872
                                                              (let ((__tmp69874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp69879
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp69875
                                    (let ((__tmp69878
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp69876
                                           (let ((__tmp69877
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp69877 '()))))
                                      (declare (not safe))
                                      (cons __tmp69878 __tmp69876))))
                               (declare (not safe))
                               (cons __tmp69879 __tmp69875)))
                            (__tmp69873
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp69874 __tmp69873))))
                 (declare (not safe))
                 (cons __tmp69880 __tmp69872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69871 '()))))
                                           (declare (not safe))
                                           (cons __tmp69881 __tmp69870))))
                                    (declare (not safe))
                                    (cons __tmp69869 '()))))
                             (declare (not safe))
                             (cons __tmp69882 __tmp69868))))
                      (declare (not safe))
                      (cons __tmp69890 __tmp69867))))
               (declare (not safe))
               (cons __tmp69896 __tmp69866)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp69748
                                                     (let ((__tmp69749
                                                            (let ((__tmp69864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp69750
                           (let ((__tmp69863 (gx#datum->syntax '#f 'loop))
                                 (__tmp69751
                                  (let ((__tmp69850
                                         (let ((__tmp69859
                                                (let ((__tmp69862
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp69860
                                                       (let ((__tmp69861
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp69861
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp69862
                                                        __tmp69860)))
                                               (__tmp69851
                                                (let ((__tmp69856
                                                       (let ((__tmp69858
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp69857
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp69858 __tmp69857)))
              (__tmp69852
               (let ((__tmp69853
                      (let ((__tmp69855 (gx#datum->syntax '#f 'deleted))
                            (__tmp69854
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp69855 __tmp69854))))
                 (declare (not safe))
                 (cons __tmp69853 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69856
                                                        __tmp69852))))
                                           (declare (not safe))
                                           (cons __tmp69859 __tmp69851)))
                                        (__tmp69752
                                         (let ((__tmp69753
                                                (let ((__tmp69849
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp69754
                                                       (let ((__tmp69841
                                                              (let ((__tmp69848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp69842
                             (let ((__tmp69843
                                    (let ((__tmp69847
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp69844
                                           (let ((__tmp69845
                                                  (let ((__tmp69846
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp69846 '()))))
                                             (declare (not safe))
                                             (cons _L63519_ __tmp69845))))
                                      (declare (not safe))
                                      (cons __tmp69847 __tmp69844))))
                               (declare (not safe))
                               (cons __tmp69843 '()))))
                        (declare (not safe))
                        (cons __tmp69848 __tmp69842)))
                     (__tmp69755
                      (let ((__tmp69756
                             (let ((__tmp69840 (gx#datum->syntax '#f 'cond))
                                   (__tmp69757
                                    (let ((__tmp69831
                                           (let ((__tmp69833
                                                  (let ((__tmp69839
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp69834
                                                         (let ((__tmp69838
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp69835
                        (let ((__tmp69836
                               (let ((__tmp69837
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp69837 '()))))
                          (declare (not safe))
                          (cons __tmp69836 '()))))
                   (declare (not safe))
                   (cons __tmp69838 __tmp69835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69839
                                                          __tmp69834)))
                                                 (__tmp69832
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L63513_ '()))))
                                             (declare (not safe))
                                             (cons __tmp69833 __tmp69832)))
                                          (__tmp69758
                                           (let ((__tmp69798
                                                  (let ((__tmp69824
                                                         (let ((__tmp69830
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp69825
                        (let ((__tmp69829 (gx#datum->syntax '#f 'k))
                              (__tmp69826
                               (let ((__tmp69827
                                      (let ((__tmp69828
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp69828 '()))))
                                 (declare (not safe))
                                 (cons __tmp69827 '()))))
                          (declare (not safe))
                          (cons __tmp69829 __tmp69826))))
                   (declare (not safe))
                   (cons __tmp69830 __tmp69825)))
                (__tmp69799
                 (let ((__tmp69800
                        (let ((__tmp69823 (gx#datum->syntax '#f 'loop))
                              (__tmp69801
                               (let ((__tmp69815
                                      (let ((__tmp69822
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp69816
                                             (let ((__tmp69821
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp69817
                                                    (let ((__tmp69820
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp69818
                                                           (let ((__tmp69819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp69819 '()))))
              (declare (not safe))
              (cons __tmp69820 __tmp69818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69821 __tmp69817))))
                                        (declare (not safe))
                                        (cons __tmp69822 __tmp69816)))
                                     (__tmp69802
                                      (let ((__tmp69810
                                             (let ((__tmp69814
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp69811
                                                    (let ((__tmp69813
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp69812
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp69813
                                                            __tmp69812))))
                                               (declare (not safe))
                                               (cons __tmp69814 __tmp69811)))
                                            (__tmp69803
                                             (let ((__tmp69804
                                                    (let ((__tmp69809
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp69805
                                                           (let ((__tmp69808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp69806
                          (let ((__tmp69807 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp69807 '()))))
                     (declare (not safe))
                     (cons __tmp69808 __tmp69806))))
              (declare (not safe))
              (cons __tmp69809 __tmp69805))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69804 '()))))
                                        (declare (not safe))
                                        (cons __tmp69810 __tmp69803))))
                                 (declare (not safe))
                                 (cons __tmp69815 __tmp69802))))
                          (declare (not safe))
                          (cons __tmp69823 __tmp69801))))
                   (declare (not safe))
                   (cons __tmp69800 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69824
                                                          __tmp69799)))
                                                 (__tmp69759
                                                  (let ((__tmp69783
                                                         (let ((__tmp69794
                                                                (let ((__tmp69795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69796
                                      (let ((__tmp69797
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp69797 '()))))
                                 (declare (not safe))
                                 (cons _L63515_ __tmp69796))))
                          (declare (not safe))
                          (cons _L63516_ __tmp69795)))
                       (__tmp69784
                        (let ((__tmp69785
                               (let ((__tmp69793
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp69786
                                      (let ((__tmp69787
                                             (let ((__tmp69788
                                                    (let ((__tmp69792
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp69789
                                                           (let ((__tmp69791
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp69790
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp69791 __tmp69790))))
              (declare (not safe))
              (cons __tmp69792 __tmp69789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69788 '()))))
                                        (declare (not safe))
                                        (cons _L63519_ __tmp69787))))
                                 (declare (not safe))
                                 (cons __tmp69793 __tmp69786))))
                          (declare (not safe))
                          (cons __tmp69785 '()))))
                   (declare (not safe))
                   (cons __tmp69794 __tmp69784)))
                (__tmp69760
                 (let ((__tmp69761
                        (let ((__tmp69782 (gx#datum->syntax '#f 'else))
                              (__tmp69762
                               (let ((__tmp69763
                                      (let ((__tmp69781
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp69764
                                             (let ((__tmp69773
                                                    (let ((__tmp69780
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp69774
                                                           (let ((__tmp69779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp69775
                          (let ((__tmp69778 (gx#datum->syntax '#f 'i))
                                (__tmp69776
                                 (let ((__tmp69777
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp69777 '()))))
                            (declare (not safe))
                            (cons __tmp69778 __tmp69776))))
                     (declare (not safe))
                     (cons __tmp69779 __tmp69775))))
              (declare (not safe))
              (cons __tmp69780 __tmp69774)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp69765
                                                    (let ((__tmp69768
                                                           (let ((__tmp69772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp69769
                          (let ((__tmp69771 (gx#datum->syntax '#f 'i))
                                (__tmp69770
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp69771 __tmp69770))))
                     (declare (not safe))
                     (cons __tmp69772 __tmp69769)))
                  (__tmp69766
                   (let ((__tmp69767 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp69767 '()))))
              (declare (not safe))
              (cons __tmp69768 __tmp69766))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69773 __tmp69765))))
                                        (declare (not safe))
                                        (cons __tmp69781 __tmp69764))))
                                 (declare (not safe))
                                 (cons __tmp69763 '()))))
                          (declare (not safe))
                          (cons __tmp69782 __tmp69762))))
                   (declare (not safe))
                   (cons __tmp69761 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69783
                                                          __tmp69760))))
                                             (declare (not safe))
                                             (cons __tmp69798 __tmp69759))))
                                      (declare (not safe))
                                      (cons __tmp69831 __tmp69758))))
                               (declare (not safe))
                               (cons __tmp69840 __tmp69757))))
                        (declare (not safe))
                        (cons __tmp69756 '()))))
                 (declare (not safe))
                 (cons __tmp69841 __tmp69755))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69849
                                                        __tmp69754))))
                                           (declare (not safe))
                                           (cons __tmp69753 '()))))
                                    (declare (not safe))
                                    (cons __tmp69850 __tmp69752))))
                             (declare (not safe))
                             (cons __tmp69863 __tmp69751))))
                      (declare (not safe))
                      (cons __tmp69864 __tmp69750))))
               (declare (not safe))
               (cons __tmp69749 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69865 __tmp69748))))
                                         (declare (not safe))
                                         (cons __tmp69905 __tmp69747)))
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
                    (let ((_e6356563604_ (gx#syntax-e _g6355663601_)))
                      (let ((_hd6356663608_
                             (let ()
                               (declare (not safe))
                               (##car _e6356563604_)))
                            (_tl6356763611_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6356563604_))))
                        (if (gx#stx-pair? _tl6356763611_)
                            (let ((_e6356863614_ (gx#syntax-e _tl6356763611_)))
                              (let ((_hd6356963618_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6356863614_)))
                                    (_tl6357063621_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6356863614_))))
                                (if (gx#stx-pair? _tl6357063621_)
                                    (let ((_e6357163624_
                                           (gx#syntax-e _tl6357063621_)))
                                      (let ((_hd6357263628_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6357163624_)))
                                            (_tl6357363631_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6357163624_))))
                                        (if (gx#stx-pair? _tl6357363631_)
                                            (let ((_e6357463634_
                                                   (gx#syntax-e
                                                    _tl6357363631_)))
                                              (let ((_hd6357563638_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6357463634_)))
                                                    (_tl6357663641_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6357463634_))))
                                                (if (gx#stx-pair?
                                                     _tl6357663641_)
                                                    (let ((_e6357763644_
                                                           (gx#syntax-e
                                                            _tl6357663641_)))
                                                      (let ((_hd6357863648_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6357763644_)))
                    (_tl6357963651_
                     (let () (declare (not safe)) (##cdr _e6357763644_))))
                (if (gx#stx-pair? _tl6357963651_)
                    (let ((_e6358063654_ (gx#syntax-e _tl6357963651_)))
                      (let ((_hd6358163658_
                             (let ()
                               (declare (not safe))
                               (##car _e6358063654_)))
                            (_tl6358263661_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6358063654_))))
                        (if (gx#stx-pair? _tl6358263661_)
                            (let ((_e6358363664_ (gx#syntax-e _tl6358263661_)))
                              (let ((_hd6358463668_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6358363664_)))
                                    (_tl6358563671_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6358363664_))))
                                (if (gx#stx-pair? _tl6358563671_)
                                    (let ((_e6358663674_
                                           (gx#syntax-e _tl6358563671_)))
                                      (let ((_hd6358763678_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6358663674_)))
                                            (_tl6358863681_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6358663674_))))
                                        (if (gx#stx-pair? _tl6358863681_)
                                            (let ((_e6358963684_
                                                   (gx#syntax-e
                                                    _tl6358863681_)))
                                              (let ((_hd6359063688_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6358963684_)))
                                                    (_tl6359163691_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6358963684_))))
                                                (if (gx#stx-null?
                                                     _tl6359163691_)
                                                    ((lambda (_L63694_
                                                              _L63696_
                                                              _L63697_
                                                              _L63698_
                                                              _L63699_
                                                              _L63700_
                                                              _L63701_
                                                              _L63702_)
                                                       (let ((__tmp70122
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp69906
                                                              (let ((__tmp70082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp70113
                                    (let ((__tmp70121
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp70114
                                           (let ((__tmp70115
                                                  (let ((__tmp70120
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp70116
                                                         (let ((__tmp70118
                                                                (let ((__tmp70119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L63698_ '()))))
                          (declare (not safe))
                          (cons _L63700_ __tmp70119)))
                       (__tmp70117
                        (let () (declare (not safe)) (cons _L63701_ '()))))
                   (declare (not safe))
                   (cons __tmp70118 __tmp70117))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70120
                                                          __tmp70116))))
                                             (declare (not safe))
                                             (cons __tmp70115 '()))))
                                      (declare (not safe))
                                      (cons __tmp70121 __tmp70114)))
                                   (__tmp70083
                                    (let ((__tmp70107
                                           (let ((__tmp70112
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp70108
                                                  (let ((__tmp70109
                                                         (let ((__tmp70111
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp70110
                        (let () (declare (not safe)) (cons _L63702_ '()))))
                   (declare (not safe))
                   (cons __tmp70111 __tmp70110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70109 '()))))
                                             (declare (not safe))
                                             (cons __tmp70112 __tmp70108)))
                                          (__tmp70084
                                           (let ((__tmp70099
                                                  (let ((__tmp70106
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp70100
                                                         (let ((__tmp70101
                                                                (let ((__tmp70105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp70102
                               (let ((__tmp70104 (gx#datum->syntax '#f 'size))
                                     (__tmp70103
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp70104 __tmp70103))))
                          (declare (not safe))
                          (cons __tmp70105 __tmp70102))))
                   (declare (not safe))
                   (cons __tmp70101 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70106
                                                          __tmp70100)))
                                                 (__tmp70085
                                                  (let ((__tmp70086
                                                         (let ((__tmp70098
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp70087
                        (let ((__tmp70088
                               (let ((__tmp70097
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp70089
                                      (let ((__tmp70091
                                             (let ((__tmp70096
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp70092
                                                    (let ((__tmp70095
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp70093
                                                           (let ((__tmp70094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp70094 '()))))
              (declare (not safe))
              (cons __tmp70095 __tmp70093))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp70096 __tmp70092)))
                                            (__tmp70090
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp70091 __tmp70090))))
                                 (declare (not safe))
                                 (cons __tmp70097 __tmp70089))))
                          (declare (not safe))
                          (cons __tmp70088 '()))))
                   (declare (not safe))
                   (cons __tmp70098 __tmp70087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70086 '()))))
                                             (declare (not safe))
                                             (cons __tmp70099 __tmp70085))))
                                      (declare (not safe))
                                      (cons __tmp70107 __tmp70084))))
                               (declare (not safe))
                               (cons __tmp70113 __tmp70083)))
                            (__tmp69907
                             (let ((__tmp69908
                                    (let ((__tmp70081
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp69909
                                           (let ((__tmp70080
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp69910
                                                  (let ((__tmp70067
                                                         (let ((__tmp70076
                                                                (let ((__tmp70079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp70077
                               (let ((__tmp70078
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp70078 '()))))
                          (declare (not safe))
                          (cons __tmp70079 __tmp70077)))
                       (__tmp70068
                        (let ((__tmp70073
                               (let ((__tmp70075 (gx#datum->syntax '#f 'i))
                                     (__tmp70074
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp70075 __tmp70074)))
                              (__tmp70069
                               (let ((__tmp70070
                                      (let ((__tmp70072
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp70071
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp70072 __tmp70071))))
                                 (declare (not safe))
                                 (cons __tmp70070 '()))))
                          (declare (not safe))
                          (cons __tmp70073 __tmp70069))))
                   (declare (not safe))
                   (cons __tmp70076 __tmp70068)))
                (__tmp69911
                 (let ((__tmp69912
                        (let ((__tmp70066 (gx#datum->syntax '#f 'let))
                              (__tmp69913
                               (let ((__tmp70058
                                      (let ((__tmp70065
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp70059
                                             (let ((__tmp70060
                                                    (let ((__tmp70064
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp70061
                                                           (let ((__tmp70062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp70063 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp70063 '()))))
                     (declare (not safe))
                     (cons _L63702_ __tmp70062))))
              (declare (not safe))
              (cons __tmp70064 __tmp70061))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp70060 '()))))
                                        (declare (not safe))
                                        (cons __tmp70065 __tmp70059)))
                                     (__tmp69914
                                      (let ((__tmp69915
                                             (let ((__tmp70057
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp69916
                                                    (let ((__tmp69998
                                                           (let ((__tmp70050
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp70056 (gx#datum->syntax '#f 'eq?))
                                (__tmp70051
                                 (let ((__tmp70055 (gx#datum->syntax '#f 'k))
                                       (__tmp70052
                                        (let ((__tmp70053
                                               (let ((__tmp70054
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp70054 '()))))
                                          (declare (not safe))
                                          (cons __tmp70053 '()))))
                                   (declare (not safe))
                                   (cons __tmp70055 __tmp70052))))
                            (declare (not safe))
                            (cons __tmp70056 __tmp70051)))
                         (__tmp69999
                          (let ((__tmp70000
                                 (let ((__tmp70049 (gx#datum->syntax '#f 'if))
                                       (__tmp70001
                                        (let ((__tmp70048
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp70002
                                               (let ((__tmp70026
                                                      (let ((__tmp70047
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp70027
                                                             (let ((__tmp70041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp70046
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp70042
                                   (let ((__tmp70043
                                          (let ((__tmp70045
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp70044
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L63698_ '()))))
                                            (declare (not safe))
                                            (cons __tmp70045 __tmp70044))))
                                     (declare (not safe))
                                     (cons _L63702_ __tmp70043))))
                              (declare (not safe))
                              (cons __tmp70046 __tmp70042)))
                           (__tmp70028
                            (let ((__tmp70031
                                   (let ((__tmp70040
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp70032
                                          (let ((__tmp70033
                                                 (let ((__tmp70035
                                                        (let ((__tmp70039
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp70036
                                                               (let ((__tmp70038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp70037
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp70038 __tmp70037))))
                  (declare (not safe))
                  (cons __tmp70039 __tmp70036)))
               (__tmp70034 (let () (declare (not safe)) (cons _L63697_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp70035
                                                         __tmp70034))))
                                            (declare (not safe))
                                            (cons _L63702_ __tmp70033))))
                                     (declare (not safe))
                                     (cons __tmp70040 __tmp70032)))
                                  (__tmp70029
                                   (let ((__tmp70030
                                          (let ()
                                            (declare (not safe))
                                            (cons _L63694_ '()))))
                                     (declare (not safe))
                                     (cons __tmp70030 '()))))
                              (declare (not safe))
                              (cons __tmp70031 __tmp70029))))
                       (declare (not safe))
                       (cons __tmp70041 __tmp70028))))
                (declare (not safe))
                (cons __tmp70047 __tmp70027)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp70003
                                                      (let ((__tmp70004
                                                             (let ((__tmp70025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp70005
                            (let ((__tmp70019
                                   (let ((__tmp70024
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp70020
                                          (let ((__tmp70021
                                                 (let ((__tmp70023
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp70022
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L63698_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp70023
                                                         __tmp70022))))
                                            (declare (not safe))
                                            (cons _L63702_ __tmp70021))))
                                     (declare (not safe))
                                     (cons __tmp70024 __tmp70020)))
                                  (__tmp70006
                                   (let ((__tmp70009
                                          (let ((__tmp70018
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp70010
                                                 (let ((__tmp70011
                                                        (let ((__tmp70013
                                                               (let ((__tmp70017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp70014
                              (let ((__tmp70016 (gx#datum->syntax '#f 'probe))
                                    (__tmp70015
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp70016 __tmp70015))))
                         (declare (not safe))
                         (cons __tmp70017 __tmp70014)))
                      (__tmp70012
                       (let () (declare (not safe)) (cons _L63697_ '()))))
                  (declare (not safe))
                  (cons __tmp70013 __tmp70012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L63702_
                                                         __tmp70011))))
                                            (declare (not safe))
                                            (cons __tmp70018 __tmp70010)))
                                         (__tmp70007
                                          (let ((__tmp70008
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L63696_ '()))))
                                            (declare (not safe))
                                            (cons __tmp70008 '()))))
                                     (declare (not safe))
                                     (cons __tmp70009 __tmp70007))))
                              (declare (not safe))
                              (cons __tmp70019 __tmp70006))))
                       (declare (not safe))
                       (cons __tmp70025 __tmp70005))))
                (declare (not safe))
                (cons __tmp70004 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp70026
                                                       __tmp70003))))
                                          (declare (not safe))
                                          (cons __tmp70048 __tmp70002))))
                                   (declare (not safe))
                                   (cons __tmp70049 __tmp70001))))
                            (declare (not safe))
                            (cons __tmp70000 '()))))
                     (declare (not safe))
                     (cons __tmp70050 __tmp69999)))
                  (__tmp69917
                   (let ((__tmp69965
                          (let ((__tmp69991
                                 (let ((__tmp69997 (gx#datum->syntax '#f 'eq?))
                                       (__tmp69992
                                        (let ((__tmp69996
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp69993
                                               (let ((__tmp69994
                                                      (let ((__tmp69995
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp69995
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp69994 '()))))
                                          (declare (not safe))
                                          (cons __tmp69996 __tmp69993))))
                                   (declare (not safe))
                                   (cons __tmp69997 __tmp69992)))
                                (__tmp69966
                                 (let ((__tmp69967
                                        (let ((__tmp69990
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp69968
                                               (let ((__tmp69982
                                                      (let ((__tmp69989
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp69983
                                                             (let ((__tmp69988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp69984
                            (let ((__tmp69987 (gx#datum->syntax '#f 'i))
                                  (__tmp69985
                                   (let ((__tmp69986
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp69986 '()))))
                              (declare (not safe))
                              (cons __tmp69987 __tmp69985))))
                       (declare (not safe))
                       (cons __tmp69988 __tmp69984))))
                (declare (not safe))
                (cons __tmp69989 __tmp69983)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp69969
                                                      (let ((__tmp69977
                                                             (let ((__tmp69981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp69978
                            (let ((__tmp69980 (gx#datum->syntax '#f 'i))
                                  (__tmp69979
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp69980 __tmp69979))))
                       (declare (not safe))
                       (cons __tmp69981 __tmp69978)))
                    (__tmp69970
                     (let ((__tmp69971
                            (let ((__tmp69976 (gx#datum->syntax '#f 'or))
                                  (__tmp69972
                                   (let ((__tmp69975
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp69973
                                          (let ((__tmp69974
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp69974 '()))))
                                     (declare (not safe))
                                     (cons __tmp69975 __tmp69973))))
                              (declare (not safe))
                              (cons __tmp69976 __tmp69972))))
                       (declare (not safe))
                       (cons __tmp69971 '()))))
                (declare (not safe))
                (cons __tmp69977 __tmp69970))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69982
                                                       __tmp69969))))
                                          (declare (not safe))
                                          (cons __tmp69990 __tmp69968))))
                                   (declare (not safe))
                                   (cons __tmp69967 '()))))
                            (declare (not safe))
                            (cons __tmp69991 __tmp69966)))
                         (__tmp69918
                          (let ((__tmp69942
                                 (let ((__tmp69961
                                        (let ((__tmp69962
                                               (let ((__tmp69963
                                                      (let ((__tmp69964
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp69964
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L63698_ __tmp69963))))
                                          (declare (not safe))
                                          (cons _L63699_ __tmp69962)))
                                       (__tmp69943
                                        (let ((__tmp69955
                                               (let ((__tmp69960
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp69956
                                                      (let ((__tmp69957
                                                             (let ((__tmp69959
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp69958
                            (let () (declare (not safe)) (cons _L63698_ '()))))
                       (declare (not safe))
                       (cons __tmp69959 __tmp69958))))
                (declare (not safe))
                (cons _L63702_ __tmp69957))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69960 __tmp69956)))
                                              (__tmp69944
                                               (let ((__tmp69945
                                                      (let ((__tmp69954
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp69946
                                                             (let ((__tmp69947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp69949
                                   (let ((__tmp69953
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp69950
                                          (let ((__tmp69952
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp69951
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp69952 __tmp69951))))
                                     (declare (not safe))
                                     (cons __tmp69953 __tmp69950)))
                                  (__tmp69948
                                   (let ()
                                     (declare (not safe))
                                     (cons _L63697_ '()))))
                              (declare (not safe))
                              (cons __tmp69949 __tmp69948))))
                       (declare (not safe))
                       (cons _L63702_ __tmp69947))))
                (declare (not safe))
                (cons __tmp69954 __tmp69946))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69945 '()))))
                                          (declare (not safe))
                                          (cons __tmp69955 __tmp69944))))
                                   (declare (not safe))
                                   (cons __tmp69961 __tmp69943)))
                                (__tmp69919
                                 (let ((__tmp69920
                                        (let ((__tmp69941
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp69921
                                               (let ((__tmp69922
                                                      (let ((__tmp69940
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp69923
                                                             (let ((__tmp69932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp69939
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp69933
                                   (let ((__tmp69938
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp69934
                                          (let ((__tmp69937
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp69935
                                                 (let ((__tmp69936
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp69936 '()))))
                                            (declare (not safe))
                                            (cons __tmp69937 __tmp69935))))
                                     (declare (not safe))
                                     (cons __tmp69938 __tmp69934))))
                              (declare (not safe))
                              (cons __tmp69939 __tmp69933)))
                           (__tmp69924
                            (let ((__tmp69927
                                   (let ((__tmp69931
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp69928
                                          (let ((__tmp69930
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp69929
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp69930 __tmp69929))))
                                     (declare (not safe))
                                     (cons __tmp69931 __tmp69928)))
                                  (__tmp69925
                                   (let ((__tmp69926
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp69926 '()))))
                              (declare (not safe))
                              (cons __tmp69927 __tmp69925))))
                       (declare (not safe))
                       (cons __tmp69932 __tmp69924))))
                (declare (not safe))
                (cons __tmp69940 __tmp69923))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69922 '()))))
                                          (declare (not safe))
                                          (cons __tmp69941 __tmp69921))))
                                   (declare (not safe))
                                   (cons __tmp69920 '()))))
                            (declare (not safe))
                            (cons __tmp69942 __tmp69919))))
                     (declare (not safe))
                     (cons __tmp69965 __tmp69918))))
              (declare (not safe))
              (cons __tmp69998 __tmp69917))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp70057 __tmp69916))))
                                        (declare (not safe))
                                        (cons __tmp69915 '()))))
                                 (declare (not safe))
                                 (cons __tmp70058 __tmp69914))))
                          (declare (not safe))
                          (cons __tmp70066 __tmp69913))))
                   (declare (not safe))
                   (cons __tmp69912 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70067
                                                          __tmp69911))))
                                             (declare (not safe))
                                             (cons __tmp70080 __tmp69910))))
                                      (declare (not safe))
                                      (cons __tmp70081 __tmp69909))))
                               (declare (not safe))
                               (cons __tmp69908 '()))))
                        (declare (not safe))
                        (cons __tmp70082 __tmp69907))))
                 (declare (not safe))
                 (cons __tmp70122 __tmp69906)))
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
                    (let ((_e6375563797_ (gx#syntax-e _g6374563794_)))
                      (let ((_hd6375663801_
                             (let ()
                               (declare (not safe))
                               (##car _e6375563797_)))
                            (_tl6375763804_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6375563797_))))
                        (if (gx#stx-pair? _tl6375763804_)
                            (let ((_e6375863807_ (gx#syntax-e _tl6375763804_)))
                              (let ((_hd6375963811_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6375863807_)))
                                    (_tl6376063814_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6375863807_))))
                                (if (gx#stx-pair? _tl6376063814_)
                                    (let ((_e6376163817_
                                           (gx#syntax-e _tl6376063814_)))
                                      (let ((_hd6376263821_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6376163817_)))
                                            (_tl6376363824_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6376163817_))))
                                        (if (gx#stx-pair? _tl6376363824_)
                                            (let ((_e6376463827_
                                                   (gx#syntax-e
                                                    _tl6376363824_)))
                                              (let ((_hd6376563831_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6376463827_)))
                                                    (_tl6376663834_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6376463827_))))
                                                (if (gx#stx-pair?
                                                     _tl6376663834_)
                                                    (let ((_e6376763837_
                                                           (gx#syntax-e
                                                            _tl6376663834_)))
                                                      (let ((_hd6376863841_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6376763837_)))
                    (_tl6376963844_
                     (let () (declare (not safe)) (##cdr _e6376763837_))))
                (if (gx#stx-pair? _tl6376963844_)
                    (let ((_e6377063847_ (gx#syntax-e _tl6376963844_)))
                      (let ((_hd6377163851_
                             (let ()
                               (declare (not safe))
                               (##car _e6377063847_)))
                            (_tl6377263854_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6377063847_))))
                        (if (gx#stx-pair? _tl6377263854_)
                            (let ((_e6377363857_ (gx#syntax-e _tl6377263854_)))
                              (let ((_hd6377463861_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6377363857_)))
                                    (_tl6377563864_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6377363857_))))
                                (if (gx#stx-pair? _tl6377563864_)
                                    (let ((_e6377663867_
                                           (gx#syntax-e _tl6377563864_)))
                                      (let ((_hd6377763871_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6377663867_)))
                                            (_tl6377863874_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6377663867_))))
                                        (if (gx#stx-pair? _tl6377863874_)
                                            (let ((_e6377963877_
                                                   (gx#syntax-e
                                                    _tl6377863874_)))
                                              (let ((_hd6378063881_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6377963877_)))
                                                    (_tl6378163884_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6377963877_))))
                                                (if (gx#stx-pair?
                                                     _tl6378163884_)
                                                    (let ((_e6378263887_
                                                           (gx#syntax-e
                                                            _tl6378163884_)))
                                                      (let ((_hd6378363891_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6378263887_)))
                    (_tl6378463894_
                     (let () (declare (not safe)) (##cdr _e6378263887_))))
                (if (gx#stx-null? _tl6378463894_)
                    ((lambda (_L63897_
                              _L63899_
                              _L63900_
                              _L63901_
                              _L63902_
                              _L63903_
                              _L63904_
                              _L63905_
                              _L63906_)
                       (let ((__tmp70354 (gx#datum->syntax '#f 'let*))
                             (__tmp70123
                              (let ((__tmp70314
                                     (let ((__tmp70345
                                            (let ((__tmp70353
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp70346
                                                   (let ((__tmp70347
                                                          (let ((__tmp70352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'fxxor))
                        (__tmp70348
                         (let ((__tmp70350
                                (let ((__tmp70351
                                       (let ()
                                         (declare (not safe))
                                         (cons _L63902_ '()))))
                                  (declare (not safe))
                                  (cons _L63904_ __tmp70351)))
                               (__tmp70349
                                (let ()
                                  (declare (not safe))
                                  (cons _L63905_ '()))))
                           (declare (not safe))
                           (cons __tmp70350 __tmp70349))))
                    (declare (not safe))
                    (cons __tmp70352 __tmp70348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp70347 '()))))
                                              (declare (not safe))
                                              (cons __tmp70353 __tmp70346)))
                                           (__tmp70315
                                            (let ((__tmp70339
                                                   (let ((__tmp70344
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size))
                                                         (__tmp70340
                                                          (let ((__tmp70341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp70343
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp70342
                                (let ()
                                  (declare (not safe))
                                  (cons _L63906_ '()))))
                           (declare (not safe))
                           (cons __tmp70343 __tmp70342))))
                    (declare (not safe))
                    (cons __tmp70341 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp70344
                                                           __tmp70340)))
                                                  (__tmp70316
                                                   (let ((__tmp70331
                                                          (let ((__tmp70338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'entries))
                        (__tmp70332
                         (let ((__tmp70333
                                (let ((__tmp70337
                                       (gx#datum->syntax '#f 'fxquotient))
                                      (__tmp70334
                                       (let ((__tmp70336
                                              (gx#datum->syntax '#f 'size))
                                             (__tmp70335
                                              (let ()
                                                (declare (not safe))
                                                (cons '2 '()))))
                                         (declare (not safe))
                                         (cons __tmp70336 __tmp70335))))
                                  (declare (not safe))
                                  (cons __tmp70337 __tmp70334))))
                           (declare (not safe))
                           (cons __tmp70333 '()))))
                    (declare (not safe))
                    (cons __tmp70338 __tmp70332)))
                 (__tmp70317
                  (let ((__tmp70318
                         (let ((__tmp70330 (gx#datum->syntax '#f 'start))
                               (__tmp70319
                                (let ((__tmp70320
                                       (let ((__tmp70329
                                              (gx#datum->syntax
                                               '#f
                                               'fxarithmetic-shift-left))
                                             (__tmp70321
                                              (let ((__tmp70323
                                                     (let ((__tmp70328
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fxmodulo))
                                                           (__tmp70324
                                                            (let ((__tmp70327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp70325
                           (let ((__tmp70326 (gx#datum->syntax '#f 'entries)))
                             (declare (not safe))
                             (cons __tmp70326 '()))))
                      (declare (not safe))
                      (cons __tmp70327 __tmp70325))))
               (declare (not safe))
               (cons __tmp70328 __tmp70324)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp70322
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '1 '()))))
                                                (declare (not safe))
                                                (cons __tmp70323 __tmp70322))))
                                         (declare (not safe))
                                         (cons __tmp70329 __tmp70321))))
                                  (declare (not safe))
                                  (cons __tmp70320 '()))))
                           (declare (not safe))
                           (cons __tmp70330 __tmp70319))))
                    (declare (not safe))
                    (cons __tmp70318 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp70331
                                                           __tmp70317))))
                                              (declare (not safe))
                                              (cons __tmp70339 __tmp70316))))
                                       (declare (not safe))
                                       (cons __tmp70345 __tmp70315)))
                                    (__tmp70124
                                     (let ((__tmp70125
                                            (let ((__tmp70313
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp70126
                                                   (let ((__tmp70312
                                                          (gx#datum->syntax
                                                           '#f
                                                           'loop))
                                                         (__tmp70127
                                                          (let ((__tmp70299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp70308
                                (let ((__tmp70311
                                       (gx#datum->syntax '#f 'probe))
                                      (__tmp70309
                                       (let ((__tmp70310
                                              (gx#datum->syntax '#f 'start)))
                                         (declare (not safe))
                                         (cons __tmp70310 '()))))
                                  (declare (not safe))
                                  (cons __tmp70311 __tmp70309)))
                               (__tmp70300
                                (let ((__tmp70305
                                       (let ((__tmp70307
                                              (gx#datum->syntax '#f 'i))
                                             (__tmp70306
                                              (let ()
                                                (declare (not safe))
                                                (cons '1 '()))))
                                         (declare (not safe))
                                         (cons __tmp70307 __tmp70306)))
                                      (__tmp70301
                                       (let ((__tmp70302
                                              (let ((__tmp70304
                                                     (gx#datum->syntax
                                                      '#f
                                                      'deleted))
                                                    (__tmp70303
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons __tmp70304 __tmp70303))))
                                         (declare (not safe))
                                         (cons __tmp70302 '()))))
                                  (declare (not safe))
                                  (cons __tmp70305 __tmp70301))))
                           (declare (not safe))
                           (cons __tmp70308 __tmp70300)))
                        (__tmp70128
                         (let ((__tmp70129
                                (let ((__tmp70298 (gx#datum->syntax '#f 'let))
                                      (__tmp70130
                                       (let ((__tmp70290
                                              (let ((__tmp70297
                                                     (gx#datum->syntax '#f 'k))
                                                    (__tmp70291
                                                     (let ((__tmp70292
                                                            (let ((__tmp70296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-ref))
                          (__tmp70293
                           (let ((__tmp70294
                                  (let ((__tmp70295
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp70295 '()))))
                             (declare (not safe))
                             (cons _L63906_ __tmp70294))))
                      (declare (not safe))
                      (cons __tmp70296 __tmp70293))))
               (declare (not safe))
               (cons __tmp70292 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp70297 __tmp70291)))
                                             (__tmp70131
                                              (let ((__tmp70132
                                                     (let ((__tmp70289
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cond))
                                                           (__tmp70133
                                                            (let ((__tmp70226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp70282
                                  (let ((__tmp70288
                                         (gx#datum->syntax '#f 'eq?))
                                        (__tmp70283
                                         (let ((__tmp70287
                                                (gx#datum->syntax '#f 'k))
                                               (__tmp70284
                                                (let ((__tmp70285
                                                       (let ((__tmp70286
                                                              (gx#datum->syntax
                                                               '#f
                                                               'macro-unused-obj)))
                                                         (declare (not safe))
                                                         (cons __tmp70286
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp70285 '()))))
                                           (declare (not safe))
                                           (cons __tmp70287 __tmp70284))))
                                    (declare (not safe))
                                    (cons __tmp70288 __tmp70283)))
                                 (__tmp70227
                                  (let ((__tmp70228
                                         (let ((__tmp70281
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp70229
                                                (let ((__tmp70280
                                                       (gx#datum->syntax
                                                        '#f
                                                        'deleted))
                                                      (__tmp70230
                                                       (let ((__tmp70256
                                                              (let ((__tmp70279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin))
                            (__tmp70257
                             (let ((__tmp70273
                                    (let ((__tmp70278
                                           (gx#datum->syntax '#f 'vector-set!))
                                          (__tmp70274
                                           (let ((__tmp70275
                                                  (let ((__tmp70277
                                                         (gx#datum->syntax
                                                          '#f
                                                          'deleted))
                                                        (__tmp70276
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L63902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70277
                                                          __tmp70276))))
                                             (declare (not safe))
                                             (cons _L63906_ __tmp70275))))
                                      (declare (not safe))
                                      (cons __tmp70278 __tmp70274)))
                                   (__tmp70258
                                    (let ((__tmp70261
                                           (let ((__tmp70272
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp70262
                                                  (let ((__tmp70263
                                                         (let ((__tmp70267
                                                                (let ((__tmp70271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fx+))
                              (__tmp70268
                               (let ((__tmp70270
                                      (gx#datum->syntax '#f 'deleted))
                                     (__tmp70269
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp70270 __tmp70269))))
                          (declare (not safe))
                          (cons __tmp70271 __tmp70268)))
                       (__tmp70264
                        (let ((__tmp70265
                               (let ((__tmp70266
                                      (let ()
                                        (declare (not safe))
                                        (cons _L63900_ '()))))
                                 (declare (not safe))
                                 (cons _L63901_ __tmp70266))))
                          (declare (not safe))
                          (cons __tmp70265 '()))))
                   (declare (not safe))
                   (cons __tmp70267 __tmp70264))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L63906_
                                                          __tmp70263))))
                                             (declare (not safe))
                                             (cons __tmp70272 __tmp70262)))
                                          (__tmp70259
                                           (let ((__tmp70260
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L63897_ '()))))
                                             (declare (not safe))
                                             (cons __tmp70260 '()))))
                                      (declare (not safe))
                                      (cons __tmp70261 __tmp70259))))
                               (declare (not safe))
                               (cons __tmp70273 __tmp70258))))
                        (declare (not safe))
                        (cons __tmp70279 __tmp70257)))
                     (__tmp70231
                      (let ((__tmp70232
                             (let ((__tmp70255 (gx#datum->syntax '#f 'begin))
                                   (__tmp70233
                                    (let ((__tmp70249
                                           (let ((__tmp70254
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp70250
                                                  (let ((__tmp70251
                                                         (let ((__tmp70253
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe))
                       (__tmp70252
                        (let () (declare (not safe)) (cons _L63902_ '()))))
                   (declare (not safe))
                   (cons __tmp70253 __tmp70252))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L63906_
                                                          __tmp70251))))
                                             (declare (not safe))
                                             (cons __tmp70254 __tmp70250)))
                                          (__tmp70234
                                           (let ((__tmp70237
                                                  (let ((__tmp70248
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-set!))
                                                        (__tmp70238
                                                         (let ((__tmp70239
                                                                (let ((__tmp70243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp70247 (gx#datum->syntax '#f 'fx+))
                                     (__tmp70244
                                      (let ((__tmp70246
                                             (gx#datum->syntax '#f 'probe))
                                            (__tmp70245
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp70246 __tmp70245))))
                                 (declare (not safe))
                                 (cons __tmp70247 __tmp70244)))
                              (__tmp70240
                               (let ((__tmp70241
                                      (let ((__tmp70242
                                             (let ()
                                               (declare (not safe))
                                               (cons _L63900_ '()))))
                                        (declare (not safe))
                                        (cons _L63901_ __tmp70242))))
                                 (declare (not safe))
                                 (cons __tmp70241 '()))))
                          (declare (not safe))
                          (cons __tmp70243 __tmp70240))))
                   (declare (not safe))
                   (cons _L63906_ __tmp70239))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70248
                                                          __tmp70238)))
                                                 (__tmp70235
                                                  (let ((__tmp70236
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L63899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70236 '()))))
                                             (declare (not safe))
                                             (cons __tmp70237 __tmp70235))))
                                      (declare (not safe))
                                      (cons __tmp70249 __tmp70234))))
                               (declare (not safe))
                               (cons __tmp70255 __tmp70233))))
                        (declare (not safe))
                        (cons __tmp70232 '()))))
                 (declare (not safe))
                 (cons __tmp70256 __tmp70231))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70280
                                                        __tmp70230))))
                                           (declare (not safe))
                                           (cons __tmp70281 __tmp70229))))
                                    (declare (not safe))
                                    (cons __tmp70228 '()))))
                             (declare (not safe))
                             (cons __tmp70282 __tmp70227)))
                          (__tmp70134
                           (let ((__tmp70193
                                  (let ((__tmp70219
                                         (let ((__tmp70225
                                                (gx#datum->syntax '#f 'eq?))
                                               (__tmp70220
                                                (let ((__tmp70224
                                                       (gx#datum->syntax
                                                        '#f
                                                        'k))
                                                      (__tmp70221
                                                       (let ((__tmp70222
                                                              (let ((__tmp70223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'macro-deleted-obj)))
                        (declare (not safe))
                        (cons __tmp70223 '()))))
                 (declare (not safe))
                 (cons __tmp70222 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70224
                                                        __tmp70221))))
                                           (declare (not safe))
                                           (cons __tmp70225 __tmp70220)))
                                        (__tmp70194
                                         (let ((__tmp70195
                                                (let ((__tmp70218
                                                       (gx#datum->syntax
                                                        '#f
                                                        'loop))
                                                      (__tmp70196
                                                       (let ((__tmp70210
                                                              (let ((__tmp70217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe-step))
                            (__tmp70211
                             (let ((__tmp70216 (gx#datum->syntax '#f 'start))
                                   (__tmp70212
                                    (let ((__tmp70215
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp70213
                                           (let ((__tmp70214
                                                  (gx#datum->syntax
                                                   '#f
                                                   'size)))
                                             (declare (not safe))
                                             (cons __tmp70214 '()))))
                                      (declare (not safe))
                                      (cons __tmp70215 __tmp70213))))
                               (declare (not safe))
                               (cons __tmp70216 __tmp70212))))
                        (declare (not safe))
                        (cons __tmp70217 __tmp70211)))
                     (__tmp70197
                      (let ((__tmp70205
                             (let ((__tmp70209 (gx#datum->syntax '#f 'fx+))
                                   (__tmp70206
                                    (let ((__tmp70208
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp70207
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp70208 __tmp70207))))
                               (declare (not safe))
                               (cons __tmp70209 __tmp70206)))
                            (__tmp70198
                             (let ((__tmp70199
                                    (let ((__tmp70204
                                           (gx#datum->syntax '#f 'or))
                                          (__tmp70200
                                           (let ((__tmp70203
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted))
                                                 (__tmp70201
                                                  (let ((__tmp70202
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp70202 '()))))
                                             (declare (not safe))
                                             (cons __tmp70203 __tmp70201))))
                                      (declare (not safe))
                                      (cons __tmp70204 __tmp70200))))
                               (declare (not safe))
                               (cons __tmp70199 '()))))
                        (declare (not safe))
                        (cons __tmp70205 __tmp70198))))
                 (declare (not safe))
                 (cons __tmp70210 __tmp70197))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70218
                                                        __tmp70196))))
                                           (declare (not safe))
                                           (cons __tmp70195 '()))))
                                    (declare (not safe))
                                    (cons __tmp70219 __tmp70194)))
                                 (__tmp70135
                                  (let ((__tmp70159
                                         (let ((__tmp70189
                                                (let ((__tmp70190
                                                       (let ((__tmp70191
                                                              (let ((__tmp70192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k)))
                        (declare (not safe))
                        (cons __tmp70192 '()))))
                 (declare (not safe))
                 (cons _L63902_ __tmp70191))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L63903_ __tmp70190)))
                                               (__tmp70160
                                                (let ((__tmp70183
                                                       (let ((__tmp70188
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-set!))
                                                             (__tmp70184
                                                              (let ((__tmp70185
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp70187 (gx#datum->syntax '#f 'probe))
                                   (__tmp70186
                                    (let ()
                                      (declare (not safe))
                                      (cons _L63902_ '()))))
                               (declare (not safe))
                               (cons __tmp70187 __tmp70186))))
                        (declare (not safe))
                        (cons _L63906_ __tmp70185))))
                 (declare (not safe))
                 (cons __tmp70188 __tmp70184)))
              (__tmp70161
               (let ((__tmp70162
                      (let ((__tmp70182 (gx#datum->syntax '#f 'vector-set!))
                            (__tmp70163
                             (let ((__tmp70164
                                    (let ((__tmp70177
                                           (let ((__tmp70181
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp70178
                                                  (let ((__tmp70180
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe))
                                                        (__tmp70179
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp70180
                                                          __tmp70179))))
                                             (declare (not safe))
                                             (cons __tmp70181 __tmp70178)))
                                          (__tmp70165
                                           (let ((__tmp70166
                                                  (let ((__tmp70167
                                                         (let ((__tmp70168
                                                                (let ((__tmp70176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'vector-ref))
                              (__tmp70169
                               (let ((__tmp70170
                                      (let ((__tmp70171
                                             (let ((__tmp70175
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp70172
                                                    (let ((__tmp70174
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp70173
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp70174
                                                            __tmp70173))))
                                               (declare (not safe))
                                               (cons __tmp70175 __tmp70172))))
                                        (declare (not safe))
                                        (cons __tmp70171 '()))))
                                 (declare (not safe))
                                 (cons _L63906_ __tmp70170))))
                          (declare (not safe))
                          (cons __tmp70176 __tmp70169))))
                   (declare (not safe))
                   (cons __tmp70168 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L63901_
                                                          __tmp70167))))
                                             (declare (not safe))
                                             (cons __tmp70166 '()))))
                                      (declare (not safe))
                                      (cons __tmp70177 __tmp70165))))
                               (declare (not safe))
                               (cons _L63906_ __tmp70164))))
                        (declare (not safe))
                        (cons __tmp70182 __tmp70163))))
                 (declare (not safe))
                 (cons __tmp70162 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70183
                                                        __tmp70161))))
                                           (declare (not safe))
                                           (cons __tmp70189 __tmp70160)))
                                        (__tmp70136
                                         (let ((__tmp70137
                                                (let ((__tmp70158
                                                       (gx#datum->syntax
                                                        '#f
                                                        'else))
                                                      (__tmp70138
                                                       (let ((__tmp70139
                                                              (let ((__tmp70157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'loop))
                            (__tmp70140
                             (let ((__tmp70149
                                    (let ((__tmp70156
                                           (gx#datum->syntax '#f 'probe-step))
                                          (__tmp70150
                                           (let ((__tmp70155
                                                  (gx#datum->syntax
                                                   '#f
                                                   'start))
                                                 (__tmp70151
                                                  (let ((__tmp70154
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp70152
                                                         (let ((__tmp70153
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'size)))
                   (declare (not safe))
                   (cons __tmp70153 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70154
                                                          __tmp70152))))
                                             (declare (not safe))
                                             (cons __tmp70155 __tmp70151))))
                                      (declare (not safe))
                                      (cons __tmp70156 __tmp70150)))
                                   (__tmp70141
                                    (let ((__tmp70144
                                           (let ((__tmp70148
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp70145
                                                  (let ((__tmp70147
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp70146
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp70147
                                                          __tmp70146))))
                                             (declare (not safe))
                                             (cons __tmp70148 __tmp70145)))
                                          (__tmp70142
                                           (let ((__tmp70143
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted)))
                                             (declare (not safe))
                                             (cons __tmp70143 '()))))
                                      (declare (not safe))
                                      (cons __tmp70144 __tmp70142))))
                               (declare (not safe))
                               (cons __tmp70149 __tmp70141))))
                        (declare (not safe))
                        (cons __tmp70157 __tmp70140))))
                 (declare (not safe))
                 (cons __tmp70139 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70158
                                                        __tmp70138))))
                                           (declare (not safe))
                                           (cons __tmp70137 '()))))
                                    (declare (not safe))
                                    (cons __tmp70159 __tmp70136))))
                             (declare (not safe))
                             (cons __tmp70193 __tmp70135))))
                      (declare (not safe))
                      (cons __tmp70226 __tmp70134))))
               (declare (not safe))
               (cons __tmp70289 __tmp70133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp70132 '()))))
                                         (declare (not safe))
                                         (cons __tmp70290 __tmp70131))))
                                  (declare (not safe))
                                  (cons __tmp70298 __tmp70130))))
                           (declare (not safe))
                           (cons __tmp70129 '()))))
                    (declare (not safe))
                    (cons __tmp70299 __tmp70128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp70312
                                                           __tmp70127))))
                                              (declare (not safe))
                                              (cons __tmp70313 __tmp70126))))
                                       (declare (not safe))
                                       (cons __tmp70125 '()))))
                                (declare (not safe))
                                (cons __tmp70314 __tmp70124))))
                         (declare (not safe))
                         (cons __tmp70354 __tmp70123)))
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
                    (let ((_e6395963992_ (gx#syntax-e _g6395263989_)))
                      (let ((_hd6396063996_
                             (let ()
                               (declare (not safe))
                               (##car _e6395963992_)))
                            (_tl6396163999_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6395963992_))))
                        (if (gx#stx-pair? _tl6396163999_)
                            (let ((_e6396264002_ (gx#syntax-e _tl6396163999_)))
                              (let ((_hd6396364006_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6396264002_)))
                                    (_tl6396464009_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6396264002_))))
                                (if (gx#stx-pair? _tl6396464009_)
                                    (let ((_e6396564012_
                                           (gx#syntax-e _tl6396464009_)))
                                      (let ((_hd6396664016_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6396564012_)))
                                            (_tl6396764019_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6396564012_))))
                                        (if (gx#stx-pair? _tl6396764019_)
                                            (let ((_e6396864022_
                                                   (gx#syntax-e
                                                    _tl6396764019_)))
                                              (let ((_hd6396964026_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6396864022_)))
                                                    (_tl6397064029_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6396864022_))))
                                                (if (gx#stx-pair?
                                                     _tl6397064029_)
                                                    (let ((_e6397164032_
                                                           (gx#syntax-e
                                                            _tl6397064029_)))
                                                      (let ((_hd6397264036_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6397164032_)))
                    (_tl6397364039_
                     (let () (declare (not safe)) (##cdr _e6397164032_))))
                (if (gx#stx-pair? _tl6397364039_)
                    (let ((_e6397464042_ (gx#syntax-e _tl6397364039_)))
                      (let ((_hd6397564046_
                             (let ()
                               (declare (not safe))
                               (##car _e6397464042_)))
                            (_tl6397664049_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6397464042_))))
                        (if (gx#stx-pair? _tl6397664049_)
                            (let ((_e6397764052_ (gx#syntax-e _tl6397664049_)))
                              (let ((_hd6397864056_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6397764052_)))
                                    (_tl6397964059_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6397764052_))))
                                (if (gx#stx-null? _tl6397964059_)
                                    ((lambda (_L64062_
                                              _L64064_
                                              _L64065_
                                              _L64066_
                                              _L64067_
                                              _L64068_)
                                       (let ((__tmp70516
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp70355
                                              (let ((__tmp70476
                                                     (let ((__tmp70507
                                                            (let ((__tmp70515
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp70508
                           (let ((__tmp70509
                                  (let ((__tmp70514
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp70510
                                         (let ((__tmp70512
                                                (let ((__tmp70513
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L64064_ '()))))
                                                  (declare (not safe))
                                                  (cons _L64066_ __tmp70513)))
                                               (__tmp70511
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L64067_ '()))))
                                           (declare (not safe))
                                           (cons __tmp70512 __tmp70511))))
                                    (declare (not safe))
                                    (cons __tmp70514 __tmp70510))))
                             (declare (not safe))
                             (cons __tmp70509 '()))))
                      (declare (not safe))
                      (cons __tmp70515 __tmp70508)))
                   (__tmp70477
                    (let ((__tmp70501
                           (let ((__tmp70506 (gx#datum->syntax '#f 'size))
                                 (__tmp70502
                                  (let ((__tmp70503
                                         (let ((__tmp70505
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp70504
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L64068_ '()))))
                                           (declare (not safe))
                                           (cons __tmp70505 __tmp70504))))
                                    (declare (not safe))
                                    (cons __tmp70503 '()))))
                             (declare (not safe))
                             (cons __tmp70506 __tmp70502)))
                          (__tmp70478
                           (let ((__tmp70493
                                  (let ((__tmp70500
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp70494
                                         (let ((__tmp70495
                                                (let ((__tmp70499
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp70496
                                                       (let ((__tmp70498
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp70497
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp70498 __tmp70497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70499
                                                        __tmp70496))))
                                           (declare (not safe))
                                           (cons __tmp70495 '()))))
                                    (declare (not safe))
                                    (cons __tmp70500 __tmp70494)))
                                 (__tmp70479
                                  (let ((__tmp70480
                                         (let ((__tmp70492
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp70481
                                                (let ((__tmp70482
                                                       (let ((__tmp70491
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp70483
                                                              (let ((__tmp70485
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp70490
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp70486
                                    (let ((__tmp70489
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp70487
                                           (let ((__tmp70488
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp70488 '()))))
                                      (declare (not safe))
                                      (cons __tmp70489 __tmp70487))))
                               (declare (not safe))
                               (cons __tmp70490 __tmp70486)))
                            (__tmp70484
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp70485 __tmp70484))))
                 (declare (not safe))
                 (cons __tmp70491 __tmp70483))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70482 '()))))
                                           (declare (not safe))
                                           (cons __tmp70492 __tmp70481))))
                                    (declare (not safe))
                                    (cons __tmp70480 '()))))
                             (declare (not safe))
                             (cons __tmp70493 __tmp70479))))
                      (declare (not safe))
                      (cons __tmp70501 __tmp70478))))
               (declare (not safe))
               (cons __tmp70507 __tmp70477)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp70356
                                                     (let ((__tmp70357
                                                            (let ((__tmp70475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp70358
                           (let ((__tmp70474 (gx#datum->syntax '#f 'loop))
                                 (__tmp70359
                                  (let ((__tmp70465
                                         (let ((__tmp70470
                                                (let ((__tmp70473
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp70471
                                                       (let ((__tmp70472
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp70472
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp70473
                                                        __tmp70471)))
                                               (__tmp70466
                                                (let ((__tmp70467
                                                       (let ((__tmp70469
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp70468
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp70469 __tmp70468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70467 '()))))
                                           (declare (not safe))
                                           (cons __tmp70470 __tmp70466)))
                                        (__tmp70360
                                         (let ((__tmp70361
                                                (let ((__tmp70464
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp70362
                                                       (let ((__tmp70456
                                                              (let ((__tmp70463
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp70457
                             (let ((__tmp70458
                                    (let ((__tmp70462
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp70459
                                           (let ((__tmp70460
                                                  (let ((__tmp70461
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp70461 '()))))
                                             (declare (not safe))
                                             (cons _L64068_ __tmp70460))))
                                      (declare (not safe))
                                      (cons __tmp70462 __tmp70459))))
                               (declare (not safe))
                               (cons __tmp70458 '()))))
                        (declare (not safe))
                        (cons __tmp70463 __tmp70457)))
                     (__tmp70363
                      (let ((__tmp70364
                             (let ((__tmp70455 (gx#datum->syntax '#f 'cond))
                                   (__tmp70365
                                    (let ((__tmp70444
                                           (let ((__tmp70448
                                                  (let ((__tmp70454
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp70449
                                                         (let ((__tmp70453
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp70450
                        (let ((__tmp70451
                               (let ((__tmp70452
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp70452 '()))))
                          (declare (not safe))
                          (cons __tmp70451 '()))))
                   (declare (not safe))
                   (cons __tmp70453 __tmp70450))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70454
                                                          __tmp70449)))
                                                 (__tmp70445
                                                  (let ((__tmp70446
                                                         (let ((__tmp70447
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp70447 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70446 '()))))
                                             (declare (not safe))
                                             (cons __tmp70448 __tmp70445)))
                                          (__tmp70366
                                           (let ((__tmp70418
                                                  (let ((__tmp70437
                                                         (let ((__tmp70443
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp70438
                        (let ((__tmp70442 (gx#datum->syntax '#f 'k))
                              (__tmp70439
                               (let ((__tmp70440
                                      (let ((__tmp70441
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp70441 '()))))
                                 (declare (not safe))
                                 (cons __tmp70440 '()))))
                          (declare (not safe))
                          (cons __tmp70442 __tmp70439))))
                   (declare (not safe))
                   (cons __tmp70443 __tmp70438)))
                (__tmp70419
                 (let ((__tmp70420
                        (let ((__tmp70436 (gx#datum->syntax '#f 'loop))
                              (__tmp70421
                               (let ((__tmp70428
                                      (let ((__tmp70435
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp70429
                                             (let ((__tmp70434
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp70430
                                                    (let ((__tmp70433
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp70431
                                                           (let ((__tmp70432
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp70432 '()))))
              (declare (not safe))
              (cons __tmp70433 __tmp70431))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp70434 __tmp70430))))
                                        (declare (not safe))
                                        (cons __tmp70435 __tmp70429)))
                                     (__tmp70422
                                      (let ((__tmp70423
                                             (let ((__tmp70427
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp70424
                                                    (let ((__tmp70426
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp70425
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp70426
                                                            __tmp70425))))
                                               (declare (not safe))
                                               (cons __tmp70427 __tmp70424))))
                                        (declare (not safe))
                                        (cons __tmp70423 '()))))
                                 (declare (not safe))
                                 (cons __tmp70428 __tmp70422))))
                          (declare (not safe))
                          (cons __tmp70436 __tmp70421))))
                   (declare (not safe))
                   (cons __tmp70420 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70437
                                                          __tmp70419)))
                                                 (__tmp70367
                                                  (let ((__tmp70389
                                                         (let ((__tmp70414
                                                                (let ((__tmp70415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp70416
                                      (let ((__tmp70417
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp70417 '()))))
                                 (declare (not safe))
                                 (cons _L64064_ __tmp70416))))
                          (declare (not safe))
                          (cons _L64065_ __tmp70415)))
                       (__tmp70390
                        (let ((__tmp70406
                               (let ((__tmp70413
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp70407
                                      (let ((__tmp70408
                                             (let ((__tmp70412
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp70409
                                                    (let ((__tmp70410
                                                           (let ((__tmp70411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp70411 '()))))
              (declare (not safe))
              (cons __tmp70410 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp70412 __tmp70409))))
                                        (declare (not safe))
                                        (cons _L64068_ __tmp70408))))
                                 (declare (not safe))
                                 (cons __tmp70413 __tmp70407)))
                              (__tmp70391
                               (let ((__tmp70394
                                      (let ((__tmp70405
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp70395
                                             (let ((__tmp70396
                                                    (let ((__tmp70400
                                                           (let ((__tmp70404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp70401
                          (let ((__tmp70403 (gx#datum->syntax '#f 'probe))
                                (__tmp70402
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp70403 __tmp70402))))
                     (declare (not safe))
                     (cons __tmp70404 __tmp70401)))
                  (__tmp70397
                   (let ((__tmp70398
                          (let ((__tmp70399
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp70399 '()))))
                     (declare (not safe))
                     (cons __tmp70398 '()))))
              (declare (not safe))
              (cons __tmp70400 __tmp70397))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L64068_ __tmp70396))))
                                        (declare (not safe))
                                        (cons __tmp70405 __tmp70395)))
                                     (__tmp70392
                                      (let ((__tmp70393
                                             (let ()
                                               (declare (not safe))
                                               (cons _L64062_ '()))))
                                        (declare (not safe))
                                        (cons __tmp70393 '()))))
                                 (declare (not safe))
                                 (cons __tmp70394 __tmp70392))))
                          (declare (not safe))
                          (cons __tmp70406 __tmp70391))))
                   (declare (not safe))
                   (cons __tmp70414 __tmp70390)))
                (__tmp70368
                 (let ((__tmp70369
                        (let ((__tmp70388 (gx#datum->syntax '#f 'else))
                              (__tmp70370
                               (let ((__tmp70371
                                      (let ((__tmp70387
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp70372
                                             (let ((__tmp70379
                                                    (let ((__tmp70386
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp70380
                                                           (let ((__tmp70385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp70381
                          (let ((__tmp70384 (gx#datum->syntax '#f 'i))
                                (__tmp70382
                                 (let ((__tmp70383
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp70383 '()))))
                            (declare (not safe))
                            (cons __tmp70384 __tmp70382))))
                     (declare (not safe))
                     (cons __tmp70385 __tmp70381))))
              (declare (not safe))
              (cons __tmp70386 __tmp70380)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp70373
                                                    (let ((__tmp70374
                                                           (let ((__tmp70378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp70375
                          (let ((__tmp70377 (gx#datum->syntax '#f 'i))
                                (__tmp70376
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp70377 __tmp70376))))
                     (declare (not safe))
                     (cons __tmp70378 __tmp70375))))
              (declare (not safe))
              (cons __tmp70374 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp70379 __tmp70373))))
                                        (declare (not safe))
                                        (cons __tmp70387 __tmp70372))))
                                 (declare (not safe))
                                 (cons __tmp70371 '()))))
                          (declare (not safe))
                          (cons __tmp70388 __tmp70370))))
                   (declare (not safe))
                   (cons __tmp70369 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp70389
                                                          __tmp70368))))
                                             (declare (not safe))
                                             (cons __tmp70418 __tmp70367))))
                                      (declare (not safe))
                                      (cons __tmp70444 __tmp70366))))
                               (declare (not safe))
                               (cons __tmp70455 __tmp70365))))
                        (declare (not safe))
                        (cons __tmp70364 '()))))
                 (declare (not safe))
                 (cons __tmp70456 __tmp70363))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70464
                                                        __tmp70362))))
                                           (declare (not safe))
                                           (cons __tmp70361 '()))))
                                    (declare (not safe))
                                    (cons __tmp70465 __tmp70360))))
                             (declare (not safe))
                             (cons __tmp70474 __tmp70359))))
                      (declare (not safe))
                      (cons __tmp70475 __tmp70358))))
               (declare (not safe))
               (cons __tmp70357 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp70476 __tmp70356))))
                                         (declare (not safe))
                                         (cons __tmp70516 __tmp70355)))
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
