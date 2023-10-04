(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#defassget|
    (lambda (_$stx4251_)
      (let* ((_g42554273_
              (lambda (_g42564269_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g42564269_)))
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
                                               (let ((__tmp8699
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp8651
                                                      (let ((__tmp8690
                                                             (let ((__tmp8691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp8698 (gx#datum->syntax '#f 'key))
                                  (__tmp8692
                                   (let ((__tmp8697
                                          (gx#datum->syntax '#f 'lst))
                                         (__tmp8693
                                          (let ((__tmp8694
                                                 (let ((__tmp8696
                                                        (gx#datum->syntax
                                                         '#f
                                                         'default))
                                                       (__tmp8695
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#f '()))))
                                                   (declare (not safe))
                                                   (cons __tmp8696
                                                         __tmp8695))))
                                            (declare (not safe))
                                            (cons __tmp8694 '()))))
                                     (declare (not safe))
                                     (cons __tmp8697 __tmp8693))))
                              (declare (not safe))
                              (cons __tmp8698 __tmp8692))))
                       (declare (not safe))
                       (cons _L4312_ __tmp8691)))
                    (__tmp8652
                     (let ((__tmp8653
                            (let ((__tmp8689 (gx#datum->syntax '#f 'cond))
                                  (__tmp8654
                                   (let ((__tmp8671
                                          (let ((__tmp8676
                                                 (let ((__tmp8688
                                                        (gx#datum->syntax
                                                         '#f
                                                         'and))
                                                       (__tmp8677
                                                        (let ((__tmp8684
                                                               (let ((__tmp8687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'pair?))
                             (__tmp8685
                              (let ((__tmp8686 (gx#datum->syntax '#f 'lst)))
                                (declare (not safe))
                                (cons __tmp8686 '()))))
                         (declare (not safe))
                         (cons __tmp8687 __tmp8685)))
                      (__tmp8678
                       (let ((__tmp8679
                              (let ((__tmp8680
                                     (let ((__tmp8683
                                            (gx#datum->syntax '#f 'key))
                                           (__tmp8681
                                            (let ((__tmp8682
                                                   (gx#datum->syntax
                                                    '#f
                                                    'lst)))
                                              (declare (not safe))
                                              (cons __tmp8682 '()))))
                                       (declare (not safe))
                                       (cons __tmp8683 __tmp8681))))
                                (declare (not safe))
                                (cons _L4310_ __tmp8680))))
                         (declare (not safe))
                         (cons __tmp8679 '()))))
                  (declare (not safe))
                  (cons __tmp8684 __tmp8678))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8688 __tmp8677)))
                                                (__tmp8672
                                                 (let ((__tmp8675
                                                        (gx#datum->syntax
                                                         '#f
                                                         '=>))
                                                       (__tmp8673
                                                        (let ((__tmp8674
                                                               (gx#datum->syntax
                                                                '#f
                                                                'cdr)))
                                                          (declare (not safe))
                                                          (cons __tmp8674
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp8675
                                                         __tmp8673))))
                                            (declare (not safe))
                                            (cons __tmp8676 __tmp8672)))
                                         (__tmp8655
                                          (let ((__tmp8661
                                                 (let ((__tmp8667
                                                        (let ((__tmp8670
                                                               (gx#datum->syntax
                                                                '#f
                                                                'procedure?))
                                                              (__tmp8668
                                                               (let ((__tmp8669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'default)))
                         (declare (not safe))
                         (cons __tmp8669 '()))))
                  (declare (not safe))
                  (cons __tmp8670 __tmp8668)))
               (__tmp8662
                (let ((__tmp8663
                       (let ((__tmp8666 (gx#datum->syntax '#f 'default))
                             (__tmp8664
                              (let ((__tmp8665 (gx#datum->syntax '#f 'key)))
                                (declare (not safe))
                                (cons __tmp8665 '()))))
                         (declare (not safe))
                         (cons __tmp8666 __tmp8664))))
                  (declare (not safe))
                  (cons __tmp8663 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8667 __tmp8662)))
                                                (__tmp8656
                                                 (let ((__tmp8657
                                                        (let ((__tmp8660
                                                               (gx#datum->syntax
                                                                '#f
                                                                'else))
                                                              (__tmp8658
                                                               (let ((__tmp8659
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'default)))
                         (declare (not safe))
                         (cons __tmp8659 '()))))
                  (declare (not safe))
                  (cons __tmp8660 __tmp8658))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8657 '()))))
                                            (declare (not safe))
                                            (cons __tmp8661 __tmp8656))))
                                     (declare (not safe))
                                     (cons __tmp8671 __tmp8655))))
                              (declare (not safe))
                              (cons __tmp8689 __tmp8654))))
                       (declare (not safe))
                       (cons __tmp8653 '()))))
                (declare (not safe))
                (cons __tmp8690 __tmp8652))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8699 __tmp8651)))
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
                (gx#raise-syntax-error '#f '"Bad syntax" _g43384351_)))
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
                                               (let ((__tmp8769
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp8700
                                                      (let ((__tmp8760
                                                             (let ((__tmp8761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp8768 (gx#datum->syntax '#f 'key))
                                  (__tmp8762
                                   (let ((__tmp8767
                                          (gx#datum->syntax '#f 'lst))
                                         (__tmp8763
                                          (let ((__tmp8764
                                                 (let ((__tmp8766
                                                        (gx#datum->syntax
                                                         '#f
                                                         'default))
                                                       (__tmp8765
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#f '()))))
                                                   (declare (not safe))
                                                   (cons __tmp8766
                                                         __tmp8765))))
                                            (declare (not safe))
                                            (cons __tmp8764 '()))))
                                     (declare (not safe))
                                     (cons __tmp8767 __tmp8763))))
                              (declare (not safe))
                              (cons __tmp8768 __tmp8762))))
                       (declare (not safe))
                       (cons _L4394_ __tmp8761)))
                    (__tmp8701
                     (let ((__tmp8702
                            (let ((__tmp8759 (gx#datum->syntax '#f 'let))
                                  (__tmp8703
                                   (let ((__tmp8758 (gx#datum->syntax '#f 'lp))
                                         (__tmp8704
                                          (let ((__tmp8753
                                                 (let ((__tmp8754
                                                        (let ((__tmp8757
                                                               (gx#datum->syntax
                                                                '#f
                                                                'rest))
                                                              (__tmp8755
                                                               (let ((__tmp8756
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'lst)))
                         (declare (not safe))
                         (cons __tmp8756 '()))))
                  (declare (not safe))
                  (cons __tmp8757 __tmp8755))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8754 '())))
                                                (__tmp8705
                                                 (let ((__tmp8706
                                                        (let ((__tmp8752
                                                               (gx#datum->syntax
                                                                '#f
                                                                'match))
                                                              (__tmp8707
                                                               (let ((__tmp8751
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'rest))
                             (__tmp8708
                              (let ((__tmp8727
                                     (let ((__tmp8744
                                            (let ((__tmp8750
                                                   (gx#datum->syntax
                                                    '#f
                                                    '@list))
                                                  (__tmp8745
                                                   (let ((__tmp8749
                                                          (gx#datum->syntax
                                                           '#f
                                                           'k))
                                                         (__tmp8746
                                                          (let ((__tmp8748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'v))
                        (__tmp8747 (gx#datum->syntax '#f 'rest)))
                    (declare (not safe))
                    (cons __tmp8748 __tmp8747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8749
                                                           __tmp8746))))
                                              (declare (not safe))
                                              (cons __tmp8750 __tmp8745)))
                                           (__tmp8728
                                            (let ((__tmp8729
                                                   (let ((__tmp8743
                                                          (gx#datum->syntax
                                                           '#f
                                                           'if))
                                                         (__tmp8730
                                                          (let ((__tmp8738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp8739
                                (let ((__tmp8742 (gx#datum->syntax '#f 'k))
                                      (__tmp8740
                                       (let ((__tmp8741
                                              (gx#datum->syntax '#f 'key)))
                                         (declare (not safe))
                                         (cons __tmp8741 '()))))
                                  (declare (not safe))
                                  (cons __tmp8742 __tmp8740))))
                           (declare (not safe))
                           (cons _L4392_ __tmp8739)))
                        (__tmp8731
                         (let ((__tmp8737 (gx#datum->syntax '#f 'v))
                               (__tmp8732
                                (let ((__tmp8733
                                       (let ((__tmp8736
                                              (gx#datum->syntax '#f 'lp))
                                             (__tmp8734
                                              (let ((__tmp8735
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest)))
                                                (declare (not safe))
                                                (cons __tmp8735 '()))))
                                         (declare (not safe))
                                         (cons __tmp8736 __tmp8734))))
                                  (declare (not safe))
                                  (cons __tmp8733 '()))))
                           (declare (not safe))
                           (cons __tmp8737 __tmp8732))))
                    (declare (not safe))
                    (cons __tmp8738 __tmp8731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8743
                                                           __tmp8730))))
                                              (declare (not safe))
                                              (cons __tmp8729 '()))))
                                       (declare (not safe))
                                       (cons __tmp8744 __tmp8728)))
                                    (__tmp8709
                                     (let ((__tmp8710
                                            (let ((__tmp8726
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp8711
                                                   (let ((__tmp8712
                                                          (let ((__tmp8725
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'if))
                        (__tmp8713
                         (let ((__tmp8721
                                (let ((__tmp8724
                                       (gx#datum->syntax '#f 'procedure?))
                                      (__tmp8722
                                       (let ((__tmp8723
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp8723 '()))))
                                  (declare (not safe))
                                  (cons __tmp8724 __tmp8722)))
                               (__tmp8714
                                (let ((__tmp8717
                                       (let ((__tmp8720
                                              (gx#datum->syntax '#f 'default))
                                             (__tmp8718
                                              (let ((__tmp8719
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key)))
                                                (declare (not safe))
                                                (cons __tmp8719 '()))))
                                         (declare (not safe))
                                         (cons __tmp8720 __tmp8718)))
                                      (__tmp8715
                                       (let ((__tmp8716
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp8716 '()))))
                                  (declare (not safe))
                                  (cons __tmp8717 __tmp8715))))
                           (declare (not safe))
                           (cons __tmp8721 __tmp8714))))
                    (declare (not safe))
                    (cons __tmp8725 __tmp8713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8712 '()))))
                                              (declare (not safe))
                                              (cons __tmp8726 __tmp8711))))
                                       (declare (not safe))
                                       (cons __tmp8710 '()))))
                                (declare (not safe))
                                (cons __tmp8727 __tmp8709))))
                         (declare (not safe))
                         (cons __tmp8751 __tmp8708))))
                  (declare (not safe))
                  (cons __tmp8752 __tmp8707))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8706 '()))))
                                            (declare (not safe))
                                            (cons __tmp8753 __tmp8705))))
                                     (declare (not safe))
                                     (cons __tmp8758 __tmp8704))))
                              (declare (not safe))
                              (cons __tmp8759 __tmp8703))))
                       (declare (not safe))
                       (cons __tmp8702 '()))))
                (declare (not safe))
                (cons __tmp8760 __tmp8701))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8769 __tmp8700)))
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
                (gx#raise-syntax-error '#f '"Bad syntax" _g44194432_)))
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
                                               (let ((__tmp8840
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp8770
                                                      (let ((__tmp8835
                                                             (let ((__tmp8836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp8839 (gx#datum->syntax '#f 'el))
                                  (__tmp8837
                                   (let ((__tmp8838
                                          (gx#datum->syntax '#f 'lst)))
                                     (declare (not safe))
                                     (cons __tmp8838 '()))))
                              (declare (not safe))
                              (cons __tmp8839 __tmp8837))))
                       (declare (not safe))
                       (cons _L4475_ __tmp8836)))
                    (__tmp8771
                     (let ((__tmp8772
                            (let ((__tmp8834 (gx#datum->syntax '#f 'let))
                                  (__tmp8773
                                   (let ((__tmp8833 (gx#datum->syntax '#f 'lp))
                                         (__tmp8774
                                          (let ((__tmp8822
                                                 (let ((__tmp8829
                                                        (let ((__tmp8832
                                                               (gx#datum->syntax
                                                                '#f
                                                                'rest))
                                                              (__tmp8830
                                                               (let ((__tmp8831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'lst)))
                         (declare (not safe))
                         (cons __tmp8831 '()))))
                  (declare (not safe))
                  (cons __tmp8832 __tmp8830)))
               (__tmp8823
                (let ((__tmp8824
                       (let ((__tmp8828 (gx#datum->syntax '#f 'r))
                             (__tmp8825
                              (let ((__tmp8826
                                     (let ((__tmp8827
                                            (gx#datum->syntax '#f '@list)))
                                       (declare (not safe))
                                       (cons __tmp8827 '()))))
                                (declare (not safe))
                                (cons __tmp8826 '()))))
                         (declare (not safe))
                         (cons __tmp8828 __tmp8825))))
                  (declare (not safe))
                  (cons __tmp8824 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8829 __tmp8823)))
                                                (__tmp8775
                                                 (let ((__tmp8776
                                                        (let ((__tmp8821
                                                               (gx#datum->syntax
                                                                '#f
                                                                'match))
                                                              (__tmp8777
                                                               (let ((__tmp8820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'rest))
                             (__tmp8778
                              (let ((__tmp8784
                                     (let ((__tmp8815
                                            (let ((__tmp8819
                                                   (gx#datum->syntax
                                                    '#f
                                                    '@list))
                                                  (__tmp8816
                                                   (let ((__tmp8818
                                                          (gx#datum->syntax
                                                           '#f
                                                           'hd))
                                                         (__tmp8817
                                                          (gx#datum->syntax
                                                           '#f
                                                           'rest)))
                                                     (declare (not safe))
                                                     (cons __tmp8818
                                                           __tmp8817))))
                                              (declare (not safe))
                                              (cons __tmp8819 __tmp8816)))
                                           (__tmp8785
                                            (let ((__tmp8786
                                                   (let ((__tmp8814
                                                          (gx#datum->syntax
                                                           '#f
                                                           'if))
                                                         (__tmp8787
                                                          (let ((__tmp8809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp8810
                                (let ((__tmp8813 (gx#datum->syntax '#f 'el))
                                      (__tmp8811
                                       (let ((__tmp8812
                                              (gx#datum->syntax '#f 'hd)))
                                         (declare (not safe))
                                         (cons __tmp8812 '()))))
                                  (declare (not safe))
                                  (cons __tmp8813 __tmp8811))))
                           (declare (not safe))
                           (cons _L4473_ __tmp8810)))
                        (__tmp8788
                         (let ((__tmp8801
                                (let ((__tmp8808
                                       (gx#datum->syntax '#f 'foldl1))
                                      (__tmp8802
                                       (let ((__tmp8807
                                              (gx#datum->syntax '#f 'cons))
                                             (__tmp8803
                                              (let ((__tmp8806
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest))
                                                    (__tmp8804
                                                     (let ((__tmp8805
                                                            (gx#datum->syntax
                                                             '#f
                                                             'r)))
                                                       (declare (not safe))
                                                       (cons __tmp8805 '()))))
                                                (declare (not safe))
                                                (cons __tmp8806 __tmp8804))))
                                         (declare (not safe))
                                         (cons __tmp8807 __tmp8803))))
                                  (declare (not safe))
                                  (cons __tmp8808 __tmp8802)))
                               (__tmp8789
                                (let ((__tmp8790
                                       (let ((__tmp8800
                                              (gx#datum->syntax '#f 'lp))
                                             (__tmp8791
                                              (let ((__tmp8799
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest))
                                                    (__tmp8792
                                                     (let ((__tmp8793
                                                            (let ((__tmp8798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'cons))
                          (__tmp8794
                           (let ((__tmp8797 (gx#datum->syntax '#f 'hd))
                                 (__tmp8795
                                  (let ((__tmp8796 (gx#datum->syntax '#f 'r)))
                                    (declare (not safe))
                                    (cons __tmp8796 '()))))
                             (declare (not safe))
                             (cons __tmp8797 __tmp8795))))
                      (declare (not safe))
                      (cons __tmp8798 __tmp8794))))
               (declare (not safe))
               (cons __tmp8793 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp8799 __tmp8792))))
                                         (declare (not safe))
                                         (cons __tmp8800 __tmp8791))))
                                  (declare (not safe))
                                  (cons __tmp8790 '()))))
                           (declare (not safe))
                           (cons __tmp8801 __tmp8789))))
                    (declare (not safe))
                    (cons __tmp8809 __tmp8788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8814
                                                           __tmp8787))))
                                              (declare (not safe))
                                              (cons __tmp8786 '()))))
                                       (declare (not safe))
                                       (cons __tmp8815 __tmp8785)))
                                    (__tmp8779
                                     (let ((__tmp8780
                                            (let ((__tmp8783
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp8781
                                                   (let ((__tmp8782
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lst)))
                                                     (declare (not safe))
                                                     (cons __tmp8782 '()))))
                                              (declare (not safe))
                                              (cons __tmp8783 __tmp8781))))
                                       (declare (not safe))
                                       (cons __tmp8780 '()))))
                                (declare (not safe))
                                (cons __tmp8784 __tmp8779))))
                         (declare (not safe))
                         (cons __tmp8820 __tmp8778))))
                  (declare (not safe))
                  (cons __tmp8821 __tmp8777))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8776 '()))))
                                            (declare (not safe))
                                            (cons __tmp8822 __tmp8775))))
                                     (declare (not safe))
                                     (cons __tmp8833 __tmp8774))))
                              (declare (not safe))
                              (cons __tmp8834 __tmp8773))))
                       (declare (not safe))
                       (cons __tmp8772 '()))))
                (declare (not safe))
                (cons __tmp8835 __tmp8771))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8840 __tmp8770)))
                                             _hd44294467_
                                             _hd44264457_)
                                            (_g44184436_ _g44194440_))))
                                    (_g44184436_ _g44194440_))))
                            (_g44184436_ _g44194440_))))
                    (_g44184436_ _g44194440_)))))
        (_g44174491_ _$stx4414_)))))
