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
                                               (let ((__tmp8683
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp8635
                                                      (let ((__tmp8674
                                                             (let ((__tmp8675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp8682 (gx#datum->syntax '#f 'key))
                                  (__tmp8676
                                   (let ((__tmp8681
                                          (gx#datum->syntax '#f 'lst))
                                         (__tmp8677
                                          (let ((__tmp8678
                                                 (let ((__tmp8680
                                                        (gx#datum->syntax
                                                         '#f
                                                         'default))
                                                       (__tmp8679
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#f '()))))
                                                   (declare (not safe))
                                                   (cons __tmp8680
                                                         __tmp8679))))
                                            (declare (not safe))
                                            (cons __tmp8678 '()))))
                                     (declare (not safe))
                                     (cons __tmp8681 __tmp8677))))
                              (declare (not safe))
                              (cons __tmp8682 __tmp8676))))
                       (declare (not safe))
                       (cons _L4312_ __tmp8675)))
                    (__tmp8636
                     (let ((__tmp8637
                            (let ((__tmp8673 (gx#datum->syntax '#f 'cond))
                                  (__tmp8638
                                   (let ((__tmp8655
                                          (let ((__tmp8660
                                                 (let ((__tmp8672
                                                        (gx#datum->syntax
                                                         '#f
                                                         'and))
                                                       (__tmp8661
                                                        (let ((__tmp8668
                                                               (let ((__tmp8671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'pair?))
                             (__tmp8669
                              (let ((__tmp8670 (gx#datum->syntax '#f 'lst)))
                                (declare (not safe))
                                (cons __tmp8670 '()))))
                         (declare (not safe))
                         (cons __tmp8671 __tmp8669)))
                      (__tmp8662
                       (let ((__tmp8663
                              (let ((__tmp8664
                                     (let ((__tmp8667
                                            (gx#datum->syntax '#f 'key))
                                           (__tmp8665
                                            (let ((__tmp8666
                                                   (gx#datum->syntax
                                                    '#f
                                                    'lst)))
                                              (declare (not safe))
                                              (cons __tmp8666 '()))))
                                       (declare (not safe))
                                       (cons __tmp8667 __tmp8665))))
                                (declare (not safe))
                                (cons _L4310_ __tmp8664))))
                         (declare (not safe))
                         (cons __tmp8663 '()))))
                  (declare (not safe))
                  (cons __tmp8668 __tmp8662))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8672 __tmp8661)))
                                                (__tmp8656
                                                 (let ((__tmp8659
                                                        (gx#datum->syntax
                                                         '#f
                                                         '=>))
                                                       (__tmp8657
                                                        (let ((__tmp8658
                                                               (gx#datum->syntax
                                                                '#f
                                                                'cdr)))
                                                          (declare (not safe))
                                                          (cons __tmp8658
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp8659
                                                         __tmp8657))))
                                            (declare (not safe))
                                            (cons __tmp8660 __tmp8656)))
                                         (__tmp8639
                                          (let ((__tmp8645
                                                 (let ((__tmp8651
                                                        (let ((__tmp8654
                                                               (gx#datum->syntax
                                                                '#f
                                                                'procedure?))
                                                              (__tmp8652
                                                               (let ((__tmp8653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'default)))
                         (declare (not safe))
                         (cons __tmp8653 '()))))
                  (declare (not safe))
                  (cons __tmp8654 __tmp8652)))
               (__tmp8646
                (let ((__tmp8647
                       (let ((__tmp8650 (gx#datum->syntax '#f 'default))
                             (__tmp8648
                              (let ((__tmp8649 (gx#datum->syntax '#f 'key)))
                                (declare (not safe))
                                (cons __tmp8649 '()))))
                         (declare (not safe))
                         (cons __tmp8650 __tmp8648))))
                  (declare (not safe))
                  (cons __tmp8647 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8651 __tmp8646)))
                                                (__tmp8640
                                                 (let ((__tmp8641
                                                        (let ((__tmp8644
                                                               (gx#datum->syntax
                                                                '#f
                                                                'else))
                                                              (__tmp8642
                                                               (let ((__tmp8643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'default)))
                         (declare (not safe))
                         (cons __tmp8643 '()))))
                  (declare (not safe))
                  (cons __tmp8644 __tmp8642))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8641 '()))))
                                            (declare (not safe))
                                            (cons __tmp8645 __tmp8640))))
                                     (declare (not safe))
                                     (cons __tmp8655 __tmp8639))))
                              (declare (not safe))
                              (cons __tmp8673 __tmp8638))))
                       (declare (not safe))
                       (cons __tmp8637 '()))))
                (declare (not safe))
                (cons __tmp8674 __tmp8636))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8683 __tmp8635)))
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
                                               (let ((__tmp8753
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp8684
                                                      (let ((__tmp8744
                                                             (let ((__tmp8745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp8752 (gx#datum->syntax '#f 'key))
                                  (__tmp8746
                                   (let ((__tmp8751
                                          (gx#datum->syntax '#f 'lst))
                                         (__tmp8747
                                          (let ((__tmp8748
                                                 (let ((__tmp8750
                                                        (gx#datum->syntax
                                                         '#f
                                                         'default))
                                                       (__tmp8749
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#f '()))))
                                                   (declare (not safe))
                                                   (cons __tmp8750
                                                         __tmp8749))))
                                            (declare (not safe))
                                            (cons __tmp8748 '()))))
                                     (declare (not safe))
                                     (cons __tmp8751 __tmp8747))))
                              (declare (not safe))
                              (cons __tmp8752 __tmp8746))))
                       (declare (not safe))
                       (cons _L4394_ __tmp8745)))
                    (__tmp8685
                     (let ((__tmp8686
                            (let ((__tmp8743 (gx#datum->syntax '#f 'let))
                                  (__tmp8687
                                   (let ((__tmp8742 (gx#datum->syntax '#f 'lp))
                                         (__tmp8688
                                          (let ((__tmp8737
                                                 (let ((__tmp8738
                                                        (let ((__tmp8741
                                                               (gx#datum->syntax
                                                                '#f
                                                                'rest))
                                                              (__tmp8739
                                                               (let ((__tmp8740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'lst)))
                         (declare (not safe))
                         (cons __tmp8740 '()))))
                  (declare (not safe))
                  (cons __tmp8741 __tmp8739))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8738 '())))
                                                (__tmp8689
                                                 (let ((__tmp8690
                                                        (let ((__tmp8736
                                                               (gx#datum->syntax
                                                                '#f
                                                                'match))
                                                              (__tmp8691
                                                               (let ((__tmp8735
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'rest))
                             (__tmp8692
                              (let ((__tmp8711
                                     (let ((__tmp8728
                                            (let ((__tmp8734
                                                   (gx#datum->syntax
                                                    '#f
                                                    '@list))
                                                  (__tmp8729
                                                   (let ((__tmp8733
                                                          (gx#datum->syntax
                                                           '#f
                                                           'k))
                                                         (__tmp8730
                                                          (let ((__tmp8732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'v))
                        (__tmp8731 (gx#datum->syntax '#f 'rest)))
                    (declare (not safe))
                    (cons __tmp8732 __tmp8731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8733
                                                           __tmp8730))))
                                              (declare (not safe))
                                              (cons __tmp8734 __tmp8729)))
                                           (__tmp8712
                                            (let ((__tmp8713
                                                   (let ((__tmp8727
                                                          (gx#datum->syntax
                                                           '#f
                                                           'if))
                                                         (__tmp8714
                                                          (let ((__tmp8722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp8723
                                (let ((__tmp8726 (gx#datum->syntax '#f 'k))
                                      (__tmp8724
                                       (let ((__tmp8725
                                              (gx#datum->syntax '#f 'key)))
                                         (declare (not safe))
                                         (cons __tmp8725 '()))))
                                  (declare (not safe))
                                  (cons __tmp8726 __tmp8724))))
                           (declare (not safe))
                           (cons _L4392_ __tmp8723)))
                        (__tmp8715
                         (let ((__tmp8721 (gx#datum->syntax '#f 'v))
                               (__tmp8716
                                (let ((__tmp8717
                                       (let ((__tmp8720
                                              (gx#datum->syntax '#f 'lp))
                                             (__tmp8718
                                              (let ((__tmp8719
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest)))
                                                (declare (not safe))
                                                (cons __tmp8719 '()))))
                                         (declare (not safe))
                                         (cons __tmp8720 __tmp8718))))
                                  (declare (not safe))
                                  (cons __tmp8717 '()))))
                           (declare (not safe))
                           (cons __tmp8721 __tmp8716))))
                    (declare (not safe))
                    (cons __tmp8722 __tmp8715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8727
                                                           __tmp8714))))
                                              (declare (not safe))
                                              (cons __tmp8713 '()))))
                                       (declare (not safe))
                                       (cons __tmp8728 __tmp8712)))
                                    (__tmp8693
                                     (let ((__tmp8694
                                            (let ((__tmp8710
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp8695
                                                   (let ((__tmp8696
                                                          (let ((__tmp8709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'if))
                        (__tmp8697
                         (let ((__tmp8705
                                (let ((__tmp8708
                                       (gx#datum->syntax '#f 'procedure?))
                                      (__tmp8706
                                       (let ((__tmp8707
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp8707 '()))))
                                  (declare (not safe))
                                  (cons __tmp8708 __tmp8706)))
                               (__tmp8698
                                (let ((__tmp8701
                                       (let ((__tmp8704
                                              (gx#datum->syntax '#f 'default))
                                             (__tmp8702
                                              (let ((__tmp8703
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key)))
                                                (declare (not safe))
                                                (cons __tmp8703 '()))))
                                         (declare (not safe))
                                         (cons __tmp8704 __tmp8702)))
                                      (__tmp8699
                                       (let ((__tmp8700
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp8700 '()))))
                                  (declare (not safe))
                                  (cons __tmp8701 __tmp8699))))
                           (declare (not safe))
                           (cons __tmp8705 __tmp8698))))
                    (declare (not safe))
                    (cons __tmp8709 __tmp8697))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8696 '()))))
                                              (declare (not safe))
                                              (cons __tmp8710 __tmp8695))))
                                       (declare (not safe))
                                       (cons __tmp8694 '()))))
                                (declare (not safe))
                                (cons __tmp8711 __tmp8693))))
                         (declare (not safe))
                         (cons __tmp8735 __tmp8692))))
                  (declare (not safe))
                  (cons __tmp8736 __tmp8691))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8690 '()))))
                                            (declare (not safe))
                                            (cons __tmp8737 __tmp8689))))
                                     (declare (not safe))
                                     (cons __tmp8742 __tmp8688))))
                              (declare (not safe))
                              (cons __tmp8743 __tmp8687))))
                       (declare (not safe))
                       (cons __tmp8686 '()))))
                (declare (not safe))
                (cons __tmp8744 __tmp8685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8753 __tmp8684)))
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
                                               (let ((__tmp8824
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp8754
                                                      (let ((__tmp8819
                                                             (let ((__tmp8820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp8823 (gx#datum->syntax '#f 'el))
                                  (__tmp8821
                                   (let ((__tmp8822
                                          (gx#datum->syntax '#f 'lst)))
                                     (declare (not safe))
                                     (cons __tmp8822 '()))))
                              (declare (not safe))
                              (cons __tmp8823 __tmp8821))))
                       (declare (not safe))
                       (cons _L4475_ __tmp8820)))
                    (__tmp8755
                     (let ((__tmp8756
                            (let ((__tmp8818 (gx#datum->syntax '#f 'let))
                                  (__tmp8757
                                   (let ((__tmp8817 (gx#datum->syntax '#f 'lp))
                                         (__tmp8758
                                          (let ((__tmp8806
                                                 (let ((__tmp8813
                                                        (let ((__tmp8816
                                                               (gx#datum->syntax
                                                                '#f
                                                                'rest))
                                                              (__tmp8814
                                                               (let ((__tmp8815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'lst)))
                         (declare (not safe))
                         (cons __tmp8815 '()))))
                  (declare (not safe))
                  (cons __tmp8816 __tmp8814)))
               (__tmp8807
                (let ((__tmp8808
                       (let ((__tmp8812 (gx#datum->syntax '#f 'r))
                             (__tmp8809
                              (let ((__tmp8810
                                     (let ((__tmp8811
                                            (gx#datum->syntax '#f '@list)))
                                       (declare (not safe))
                                       (cons __tmp8811 '()))))
                                (declare (not safe))
                                (cons __tmp8810 '()))))
                         (declare (not safe))
                         (cons __tmp8812 __tmp8809))))
                  (declare (not safe))
                  (cons __tmp8808 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8813 __tmp8807)))
                                                (__tmp8759
                                                 (let ((__tmp8760
                                                        (let ((__tmp8805
                                                               (gx#datum->syntax
                                                                '#f
                                                                'match))
                                                              (__tmp8761
                                                               (let ((__tmp8804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'rest))
                             (__tmp8762
                              (let ((__tmp8768
                                     (let ((__tmp8799
                                            (let ((__tmp8803
                                                   (gx#datum->syntax
                                                    '#f
                                                    '@list))
                                                  (__tmp8800
                                                   (let ((__tmp8802
                                                          (gx#datum->syntax
                                                           '#f
                                                           'hd))
                                                         (__tmp8801
                                                          (gx#datum->syntax
                                                           '#f
                                                           'rest)))
                                                     (declare (not safe))
                                                     (cons __tmp8802
                                                           __tmp8801))))
                                              (declare (not safe))
                                              (cons __tmp8803 __tmp8800)))
                                           (__tmp8769
                                            (let ((__tmp8770
                                                   (let ((__tmp8798
                                                          (gx#datum->syntax
                                                           '#f
                                                           'if))
                                                         (__tmp8771
                                                          (let ((__tmp8793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp8794
                                (let ((__tmp8797 (gx#datum->syntax '#f 'el))
                                      (__tmp8795
                                       (let ((__tmp8796
                                              (gx#datum->syntax '#f 'hd)))
                                         (declare (not safe))
                                         (cons __tmp8796 '()))))
                                  (declare (not safe))
                                  (cons __tmp8797 __tmp8795))))
                           (declare (not safe))
                           (cons _L4473_ __tmp8794)))
                        (__tmp8772
                         (let ((__tmp8785
                                (let ((__tmp8792
                                       (gx#datum->syntax '#f 'foldl1))
                                      (__tmp8786
                                       (let ((__tmp8791
                                              (gx#datum->syntax '#f 'cons))
                                             (__tmp8787
                                              (let ((__tmp8790
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest))
                                                    (__tmp8788
                                                     (let ((__tmp8789
                                                            (gx#datum->syntax
                                                             '#f
                                                             'r)))
                                                       (declare (not safe))
                                                       (cons __tmp8789 '()))))
                                                (declare (not safe))
                                                (cons __tmp8790 __tmp8788))))
                                         (declare (not safe))
                                         (cons __tmp8791 __tmp8787))))
                                  (declare (not safe))
                                  (cons __tmp8792 __tmp8786)))
                               (__tmp8773
                                (let ((__tmp8774
                                       (let ((__tmp8784
                                              (gx#datum->syntax '#f 'lp))
                                             (__tmp8775
                                              (let ((__tmp8783
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest))
                                                    (__tmp8776
                                                     (let ((__tmp8777
                                                            (let ((__tmp8782
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'cons))
                          (__tmp8778
                           (let ((__tmp8781 (gx#datum->syntax '#f 'hd))
                                 (__tmp8779
                                  (let ((__tmp8780 (gx#datum->syntax '#f 'r)))
                                    (declare (not safe))
                                    (cons __tmp8780 '()))))
                             (declare (not safe))
                             (cons __tmp8781 __tmp8779))))
                      (declare (not safe))
                      (cons __tmp8782 __tmp8778))))
               (declare (not safe))
               (cons __tmp8777 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp8783 __tmp8776))))
                                         (declare (not safe))
                                         (cons __tmp8784 __tmp8775))))
                                  (declare (not safe))
                                  (cons __tmp8774 '()))))
                           (declare (not safe))
                           (cons __tmp8785 __tmp8773))))
                    (declare (not safe))
                    (cons __tmp8793 __tmp8772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8798
                                                           __tmp8771))))
                                              (declare (not safe))
                                              (cons __tmp8770 '()))))
                                       (declare (not safe))
                                       (cons __tmp8799 __tmp8769)))
                                    (__tmp8763
                                     (let ((__tmp8764
                                            (let ((__tmp8767
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp8765
                                                   (let ((__tmp8766
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lst)))
                                                     (declare (not safe))
                                                     (cons __tmp8766 '()))))
                                              (declare (not safe))
                                              (cons __tmp8767 __tmp8765))))
                                       (declare (not safe))
                                       (cons __tmp8764 '()))))
                                (declare (not safe))
                                (cons __tmp8768 __tmp8763))))
                         (declare (not safe))
                         (cons __tmp8804 __tmp8762))))
                  (declare (not safe))
                  (cons __tmp8805 __tmp8761))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8760 '()))))
                                            (declare (not safe))
                                            (cons __tmp8806 __tmp8759))))
                                     (declare (not safe))
                                     (cons __tmp8817 __tmp8758))))
                              (declare (not safe))
                              (cons __tmp8818 __tmp8757))))
                       (declare (not safe))
                       (cons __tmp8756 '()))))
                (declare (not safe))
                (cons __tmp8819 __tmp8755))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8824 __tmp8754)))
                                             _hd44294467_
                                             _hd44264457_)
                                            (_g44184436_ _g44194440_))))
                                    (_g44184436_ _g44194440_))))
                            (_g44184436_ _g44194440_))))
                    (_g44184436_ _g44194440_)))))
        (_g44174491_ _$stx4414_)))))
