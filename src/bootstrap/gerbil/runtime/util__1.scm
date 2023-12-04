(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#defassget|
    (lambda (_$stx4251_)
      (let* ((_g42554273_
              (lambda (_g42564269_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g42564269_)))
             (_g42544329_
              (lambda (_g42564277_)
                (if (gx#stx-pair? _g42564277_)
                    (let ((_e42614280_ (gx#syntax-e _g42564277_)))
                      (let ((_hd42604284_
                             (let () (declare (not safe)) (##car _e42614280_)))
                            (_tl42594287_
                             (let ()
                               (declare (not safe))
                               (##cdr _e42614280_))))
                        (if (gx#stx-pair? _tl42594287_)
                            (let ((_e42644290_ (gx#syntax-e _tl42594287_)))
                              (let ((_hd42634294_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e42644290_)))
                                    (_tl42624297_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e42644290_))))
                                (if (gx#stx-pair? _tl42624297_)
                                    (let ((_e42674300_
                                           (gx#syntax-e _tl42624297_)))
                                      (let ((_hd42664304_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e42674300_)))
                                            (_tl42654307_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e42674300_))))
                                        (if (gx#stx-null? _tl42654307_)
                                            ((lambda (_L4310_ _L4312_)
                                               (let ((__tmp6662
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp6614
                                                      (let ((__tmp6653
                                                             (let ((__tmp6654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp6661 (gx#datum->syntax '#f 'key))
                                  (__tmp6655
                                   (let ((__tmp6660
                                          (gx#datum->syntax '#f 'lst))
                                         (__tmp6656
                                          (let ((__tmp6657
                                                 (let ((__tmp6659
                                                        (gx#datum->syntax
                                                         '#f
                                                         'default))
                                                       (__tmp6658
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#f '()))))
                                                   (declare (not safe))
                                                   (cons __tmp6659
                                                         __tmp6658))))
                                            (declare (not safe))
                                            (cons __tmp6657 '()))))
                                     (declare (not safe))
                                     (cons __tmp6660 __tmp6656))))
                              (declare (not safe))
                              (cons __tmp6661 __tmp6655))))
                       (declare (not safe))
                       (cons _L4312_ __tmp6654)))
                    (__tmp6615
                     (let ((__tmp6616
                            (let ((__tmp6652 (gx#datum->syntax '#f 'cond))
                                  (__tmp6617
                                   (let ((__tmp6634
                                          (let ((__tmp6639
                                                 (let ((__tmp6651
                                                        (gx#datum->syntax
                                                         '#f
                                                         'and))
                                                       (__tmp6640
                                                        (let ((__tmp6647
                                                               (let ((__tmp6650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'pair?))
                             (__tmp6648
                              (let ((__tmp6649 (gx#datum->syntax '#f 'lst)))
                                (declare (not safe))
                                (cons __tmp6649 '()))))
                         (declare (not safe))
                         (cons __tmp6650 __tmp6648)))
                      (__tmp6641
                       (let ((__tmp6642
                              (let ((__tmp6643
                                     (let ((__tmp6646
                                            (gx#datum->syntax '#f 'key))
                                           (__tmp6644
                                            (let ((__tmp6645
                                                   (gx#datum->syntax
                                                    '#f
                                                    'lst)))
                                              (declare (not safe))
                                              (cons __tmp6645 '()))))
                                       (declare (not safe))
                                       (cons __tmp6646 __tmp6644))))
                                (declare (not safe))
                                (cons _L4310_ __tmp6643))))
                         (declare (not safe))
                         (cons __tmp6642 '()))))
                  (declare (not safe))
                  (cons __tmp6647 __tmp6641))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp6651 __tmp6640)))
                                                (__tmp6635
                                                 (let ((__tmp6638
                                                        (gx#datum->syntax
                                                         '#f
                                                         '=>))
                                                       (__tmp6636
                                                        (let ((__tmp6637
                                                               (gx#datum->syntax
                                                                '#f
                                                                'cdr)))
                                                          (declare (not safe))
                                                          (cons __tmp6637
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp6638
                                                         __tmp6636))))
                                            (declare (not safe))
                                            (cons __tmp6639 __tmp6635)))
                                         (__tmp6618
                                          (let ((__tmp6624
                                                 (let ((__tmp6630
                                                        (let ((__tmp6633
                                                               (gx#datum->syntax
                                                                '#f
                                                                'procedure?))
                                                              (__tmp6631
                                                               (let ((__tmp6632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'default)))
                         (declare (not safe))
                         (cons __tmp6632 '()))))
                  (declare (not safe))
                  (cons __tmp6633 __tmp6631)))
               (__tmp6625
                (let ((__tmp6626
                       (let ((__tmp6629 (gx#datum->syntax '#f 'default))
                             (__tmp6627
                              (let ((__tmp6628 (gx#datum->syntax '#f 'key)))
                                (declare (not safe))
                                (cons __tmp6628 '()))))
                         (declare (not safe))
                         (cons __tmp6629 __tmp6627))))
                  (declare (not safe))
                  (cons __tmp6626 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp6630 __tmp6625)))
                                                (__tmp6619
                                                 (let ((__tmp6620
                                                        (let ((__tmp6623
                                                               (gx#datum->syntax
                                                                '#f
                                                                'else))
                                                              (__tmp6621
                                                               (let ((__tmp6622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'default)))
                         (declare (not safe))
                         (cons __tmp6622 '()))))
                  (declare (not safe))
                  (cons __tmp6623 __tmp6621))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp6620 '()))))
                                            (declare (not safe))
                                            (cons __tmp6624 __tmp6619))))
                                     (declare (not safe))
                                     (cons __tmp6634 __tmp6618))))
                              (declare (not safe))
                              (cons __tmp6652 __tmp6617))))
                       (declare (not safe))
                       (cons __tmp6616 '()))))
                (declare (not safe))
                (cons __tmp6653 __tmp6615))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp6662 __tmp6614)))
                                             _hd42664304_
                                             _hd42634294_)
                                            (_g42554273_ _g42564277_))))
                                    (_g42554273_ _g42564277_))))
                            (_g42554273_ _g42564277_))))
                    (_g42554273_ _g42564277_)))))
        (_g42544329_ _$stx4251_))))
  (define |[:0:]#defpget|
    (lambda (_$stx4333_)
      (let* ((_g43374355_
              (lambda (_g43384351_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g43384351_)))
             (_g43364410_
              (lambda (_g43384359_)
                (if (gx#stx-pair? _g43384359_)
                    (let ((_e43434362_ (gx#syntax-e _g43384359_)))
                      (let ((_hd43424366_
                             (let () (declare (not safe)) (##car _e43434362_)))
                            (_tl43414369_
                             (let ()
                               (declare (not safe))
                               (##cdr _e43434362_))))
                        (if (gx#stx-pair? _tl43414369_)
                            (let ((_e43464372_ (gx#syntax-e _tl43414369_)))
                              (let ((_hd43454376_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e43464372_)))
                                    (_tl43444379_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e43464372_))))
                                (if (gx#stx-pair? _tl43444379_)
                                    (let ((_e43494382_
                                           (gx#syntax-e _tl43444379_)))
                                      (let ((_hd43484386_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e43494382_)))
                                            (_tl43474389_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e43494382_))))
                                        (if (gx#stx-null? _tl43474389_)
                                            ((lambda (_L4392_ _L4394_)
                                               (let ((__tmp6732
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp6663
                                                      (let ((__tmp6723
                                                             (let ((__tmp6724
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp6731 (gx#datum->syntax '#f 'key))
                                  (__tmp6725
                                   (let ((__tmp6730
                                          (gx#datum->syntax '#f 'lst))
                                         (__tmp6726
                                          (let ((__tmp6727
                                                 (let ((__tmp6729
                                                        (gx#datum->syntax
                                                         '#f
                                                         'default))
                                                       (__tmp6728
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#f '()))))
                                                   (declare (not safe))
                                                   (cons __tmp6729
                                                         __tmp6728))))
                                            (declare (not safe))
                                            (cons __tmp6727 '()))))
                                     (declare (not safe))
                                     (cons __tmp6730 __tmp6726))))
                              (declare (not safe))
                              (cons __tmp6731 __tmp6725))))
                       (declare (not safe))
                       (cons _L4394_ __tmp6724)))
                    (__tmp6664
                     (let ((__tmp6665
                            (let ((__tmp6722 (gx#datum->syntax '#f 'let))
                                  (__tmp6666
                                   (let ((__tmp6721 (gx#datum->syntax '#f 'lp))
                                         (__tmp6667
                                          (let ((__tmp6716
                                                 (let ((__tmp6717
                                                        (let ((__tmp6720
                                                               (gx#datum->syntax
                                                                '#f
                                                                'rest))
                                                              (__tmp6718
                                                               (let ((__tmp6719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'lst)))
                         (declare (not safe))
                         (cons __tmp6719 '()))))
                  (declare (not safe))
                  (cons __tmp6720 __tmp6718))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp6717 '())))
                                                (__tmp6668
                                                 (let ((__tmp6669
                                                        (let ((__tmp6715
                                                               (gx#datum->syntax
                                                                '#f
                                                                'match))
                                                              (__tmp6670
                                                               (let ((__tmp6714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'rest))
                             (__tmp6671
                              (let ((__tmp6690
                                     (let ((__tmp6707
                                            (let ((__tmp6713
                                                   (gx#datum->syntax
                                                    '#f
                                                    '@list))
                                                  (__tmp6708
                                                   (let ((__tmp6712
                                                          (gx#datum->syntax
                                                           '#f
                                                           'k))
                                                         (__tmp6709
                                                          (let ((__tmp6711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'v))
                        (__tmp6710 (gx#datum->syntax '#f 'rest)))
                    (declare (not safe))
                    (cons __tmp6711 __tmp6710))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp6712
                                                           __tmp6709))))
                                              (declare (not safe))
                                              (cons __tmp6713 __tmp6708)))
                                           (__tmp6691
                                            (let ((__tmp6692
                                                   (let ((__tmp6706
                                                          (gx#datum->syntax
                                                           '#f
                                                           'if))
                                                         (__tmp6693
                                                          (let ((__tmp6701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp6702
                                (let ((__tmp6705 (gx#datum->syntax '#f 'k))
                                      (__tmp6703
                                       (let ((__tmp6704
                                              (gx#datum->syntax '#f 'key)))
                                         (declare (not safe))
                                         (cons __tmp6704 '()))))
                                  (declare (not safe))
                                  (cons __tmp6705 __tmp6703))))
                           (declare (not safe))
                           (cons _L4392_ __tmp6702)))
                        (__tmp6694
                         (let ((__tmp6700 (gx#datum->syntax '#f 'v))
                               (__tmp6695
                                (let ((__tmp6696
                                       (let ((__tmp6699
                                              (gx#datum->syntax '#f 'lp))
                                             (__tmp6697
                                              (let ((__tmp6698
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest)))
                                                (declare (not safe))
                                                (cons __tmp6698 '()))))
                                         (declare (not safe))
                                         (cons __tmp6699 __tmp6697))))
                                  (declare (not safe))
                                  (cons __tmp6696 '()))))
                           (declare (not safe))
                           (cons __tmp6700 __tmp6695))))
                    (declare (not safe))
                    (cons __tmp6701 __tmp6694))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp6706
                                                           __tmp6693))))
                                              (declare (not safe))
                                              (cons __tmp6692 '()))))
                                       (declare (not safe))
                                       (cons __tmp6707 __tmp6691)))
                                    (__tmp6672
                                     (let ((__tmp6673
                                            (let ((__tmp6689
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp6674
                                                   (let ((__tmp6675
                                                          (let ((__tmp6688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'if))
                        (__tmp6676
                         (let ((__tmp6684
                                (let ((__tmp6687
                                       (gx#datum->syntax '#f 'procedure?))
                                      (__tmp6685
                                       (let ((__tmp6686
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp6686 '()))))
                                  (declare (not safe))
                                  (cons __tmp6687 __tmp6685)))
                               (__tmp6677
                                (let ((__tmp6680
                                       (let ((__tmp6683
                                              (gx#datum->syntax '#f 'default))
                                             (__tmp6681
                                              (let ((__tmp6682
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key)))
                                                (declare (not safe))
                                                (cons __tmp6682 '()))))
                                         (declare (not safe))
                                         (cons __tmp6683 __tmp6681)))
                                      (__tmp6678
                                       (let ((__tmp6679
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp6679 '()))))
                                  (declare (not safe))
                                  (cons __tmp6680 __tmp6678))))
                           (declare (not safe))
                           (cons __tmp6684 __tmp6677))))
                    (declare (not safe))
                    (cons __tmp6688 __tmp6676))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp6675 '()))))
                                              (declare (not safe))
                                              (cons __tmp6689 __tmp6674))))
                                       (declare (not safe))
                                       (cons __tmp6673 '()))))
                                (declare (not safe))
                                (cons __tmp6690 __tmp6672))))
                         (declare (not safe))
                         (cons __tmp6714 __tmp6671))))
                  (declare (not safe))
                  (cons __tmp6715 __tmp6670))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp6669 '()))))
                                            (declare (not safe))
                                            (cons __tmp6716 __tmp6668))))
                                     (declare (not safe))
                                     (cons __tmp6721 __tmp6667))))
                              (declare (not safe))
                              (cons __tmp6722 __tmp6666))))
                       (declare (not safe))
                       (cons __tmp6665 '()))))
                (declare (not safe))
                (cons __tmp6723 __tmp6664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp6732 __tmp6663)))
                                             _hd43484386_
                                             _hd43454376_)
                                            (_g43374355_ _g43384359_))))
                                    (_g43374355_ _g43384359_))))
                            (_g43374355_ _g43384359_))))
                    (_g43374355_ _g43384359_)))))
        (_g43364410_ _$stx4333_))))
  (define |[:0:]#defremove1|
    (lambda (_$stx4414_)
      (let* ((_g44184436_
              (lambda (_g44194432_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g44194432_)))
             (_g44174491_
              (lambda (_g44194440_)
                (if (gx#stx-pair? _g44194440_)
                    (let ((_e44244443_ (gx#syntax-e _g44194440_)))
                      (let ((_hd44234447_
                             (let () (declare (not safe)) (##car _e44244443_)))
                            (_tl44224450_
                             (let ()
                               (declare (not safe))
                               (##cdr _e44244443_))))
                        (if (gx#stx-pair? _tl44224450_)
                            (let ((_e44274453_ (gx#syntax-e _tl44224450_)))
                              (let ((_hd44264457_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e44274453_)))
                                    (_tl44254460_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e44274453_))))
                                (if (gx#stx-pair? _tl44254460_)
                                    (let ((_e44304463_
                                           (gx#syntax-e _tl44254460_)))
                                      (let ((_hd44294467_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e44304463_)))
                                            (_tl44284470_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e44304463_))))
                                        (if (gx#stx-null? _tl44284470_)
                                            ((lambda (_L4473_ _L4475_)
                                               (let ((__tmp6803
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp6733
                                                      (let ((__tmp6798
                                                             (let ((__tmp6799
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp6802 (gx#datum->syntax '#f 'el))
                                  (__tmp6800
                                   (let ((__tmp6801
                                          (gx#datum->syntax '#f 'lst)))
                                     (declare (not safe))
                                     (cons __tmp6801 '()))))
                              (declare (not safe))
                              (cons __tmp6802 __tmp6800))))
                       (declare (not safe))
                       (cons _L4475_ __tmp6799)))
                    (__tmp6734
                     (let ((__tmp6735
                            (let ((__tmp6797 (gx#datum->syntax '#f 'let))
                                  (__tmp6736
                                   (let ((__tmp6796 (gx#datum->syntax '#f 'lp))
                                         (__tmp6737
                                          (let ((__tmp6785
                                                 (let ((__tmp6792
                                                        (let ((__tmp6795
                                                               (gx#datum->syntax
                                                                '#f
                                                                'rest))
                                                              (__tmp6793
                                                               (let ((__tmp6794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'lst)))
                         (declare (not safe))
                         (cons __tmp6794 '()))))
                  (declare (not safe))
                  (cons __tmp6795 __tmp6793)))
               (__tmp6786
                (let ((__tmp6787
                       (let ((__tmp6791 (gx#datum->syntax '#f 'r))
                             (__tmp6788
                              (let ((__tmp6789
                                     (let ((__tmp6790
                                            (gx#datum->syntax '#f '@list)))
                                       (declare (not safe))
                                       (cons __tmp6790 '()))))
                                (declare (not safe))
                                (cons __tmp6789 '()))))
                         (declare (not safe))
                         (cons __tmp6791 __tmp6788))))
                  (declare (not safe))
                  (cons __tmp6787 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp6792 __tmp6786)))
                                                (__tmp6738
                                                 (let ((__tmp6739
                                                        (let ((__tmp6784
                                                               (gx#datum->syntax
                                                                '#f
                                                                'match))
                                                              (__tmp6740
                                                               (let ((__tmp6783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'rest))
                             (__tmp6741
                              (let ((__tmp6747
                                     (let ((__tmp6778
                                            (let ((__tmp6782
                                                   (gx#datum->syntax
                                                    '#f
                                                    '@list))
                                                  (__tmp6779
                                                   (let ((__tmp6781
                                                          (gx#datum->syntax
                                                           '#f
                                                           'hd))
                                                         (__tmp6780
                                                          (gx#datum->syntax
                                                           '#f
                                                           'rest)))
                                                     (declare (not safe))
                                                     (cons __tmp6781
                                                           __tmp6780))))
                                              (declare (not safe))
                                              (cons __tmp6782 __tmp6779)))
                                           (__tmp6748
                                            (let ((__tmp6749
                                                   (let ((__tmp6777
                                                          (gx#datum->syntax
                                                           '#f
                                                           'if))
                                                         (__tmp6750
                                                          (let ((__tmp6772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp6773
                                (let ((__tmp6776 (gx#datum->syntax '#f 'el))
                                      (__tmp6774
                                       (let ((__tmp6775
                                              (gx#datum->syntax '#f 'hd)))
                                         (declare (not safe))
                                         (cons __tmp6775 '()))))
                                  (declare (not safe))
                                  (cons __tmp6776 __tmp6774))))
                           (declare (not safe))
                           (cons _L4473_ __tmp6773)))
                        (__tmp6751
                         (let ((__tmp6764
                                (let ((__tmp6771
                                       (gx#datum->syntax '#f 'foldl1))
                                      (__tmp6765
                                       (let ((__tmp6770
                                              (gx#datum->syntax '#f 'cons))
                                             (__tmp6766
                                              (let ((__tmp6769
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest))
                                                    (__tmp6767
                                                     (let ((__tmp6768
                                                            (gx#datum->syntax
                                                             '#f
                                                             'r)))
                                                       (declare (not safe))
                                                       (cons __tmp6768 '()))))
                                                (declare (not safe))
                                                (cons __tmp6769 __tmp6767))))
                                         (declare (not safe))
                                         (cons __tmp6770 __tmp6766))))
                                  (declare (not safe))
                                  (cons __tmp6771 __tmp6765)))
                               (__tmp6752
                                (let ((__tmp6753
                                       (let ((__tmp6763
                                              (gx#datum->syntax '#f 'lp))
                                             (__tmp6754
                                              (let ((__tmp6762
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest))
                                                    (__tmp6755
                                                     (let ((__tmp6756
                                                            (let ((__tmp6761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'cons))
                          (__tmp6757
                           (let ((__tmp6760 (gx#datum->syntax '#f 'hd))
                                 (__tmp6758
                                  (let ((__tmp6759 (gx#datum->syntax '#f 'r)))
                                    (declare (not safe))
                                    (cons __tmp6759 '()))))
                             (declare (not safe))
                             (cons __tmp6760 __tmp6758))))
                      (declare (not safe))
                      (cons __tmp6761 __tmp6757))))
               (declare (not safe))
               (cons __tmp6756 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp6762 __tmp6755))))
                                         (declare (not safe))
                                         (cons __tmp6763 __tmp6754))))
                                  (declare (not safe))
                                  (cons __tmp6753 '()))))
                           (declare (not safe))
                           (cons __tmp6764 __tmp6752))))
                    (declare (not safe))
                    (cons __tmp6772 __tmp6751))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp6777
                                                           __tmp6750))))
                                              (declare (not safe))
                                              (cons __tmp6749 '()))))
                                       (declare (not safe))
                                       (cons __tmp6778 __tmp6748)))
                                    (__tmp6742
                                     (let ((__tmp6743
                                            (let ((__tmp6746
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp6744
                                                   (let ((__tmp6745
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lst)))
                                                     (declare (not safe))
                                                     (cons __tmp6745 '()))))
                                              (declare (not safe))
                                              (cons __tmp6746 __tmp6744))))
                                       (declare (not safe))
                                       (cons __tmp6743 '()))))
                                (declare (not safe))
                                (cons __tmp6747 __tmp6742))))
                         (declare (not safe))
                         (cons __tmp6783 __tmp6741))))
                  (declare (not safe))
                  (cons __tmp6784 __tmp6740))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp6739 '()))))
                                            (declare (not safe))
                                            (cons __tmp6785 __tmp6738))))
                                     (declare (not safe))
                                     (cons __tmp6796 __tmp6737))))
                              (declare (not safe))
                              (cons __tmp6797 __tmp6736))))
                       (declare (not safe))
                       (cons __tmp6735 '()))))
                (declare (not safe))
                (cons __tmp6798 __tmp6734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp6803 __tmp6733)))
                                             _hd44294467_
                                             _hd44264457_)
                                            (_g44184436_ _g44194440_))))
                                    (_g44184436_ _g44194440_))))
                            (_g44184436_ _g44194440_))))
                    (_g44184436_ _g44194440_)))))
        (_g44174491_ _$stx4414_)))))
