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
                                               (let ((__tmp8695
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp8647
                                                      (let ((__tmp8686
                                                             (let ((__tmp8687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp8694 (gx#datum->syntax '#f 'key))
                                  (__tmp8688
                                   (let ((__tmp8693
                                          (gx#datum->syntax '#f 'lst))
                                         (__tmp8689
                                          (let ((__tmp8690
                                                 (let ((__tmp8692
                                                        (gx#datum->syntax
                                                         '#f
                                                         'default))
                                                       (__tmp8691
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#f '()))))
                                                   (declare (not safe))
                                                   (cons __tmp8692
                                                         __tmp8691))))
                                            (declare (not safe))
                                            (cons __tmp8690 '()))))
                                     (declare (not safe))
                                     (cons __tmp8693 __tmp8689))))
                              (declare (not safe))
                              (cons __tmp8694 __tmp8688))))
                       (declare (not safe))
                       (cons _L4312_ __tmp8687)))
                    (__tmp8648
                     (let ((__tmp8649
                            (let ((__tmp8685 (gx#datum->syntax '#f 'cond))
                                  (__tmp8650
                                   (let ((__tmp8667
                                          (let ((__tmp8672
                                                 (let ((__tmp8684
                                                        (gx#datum->syntax
                                                         '#f
                                                         'and))
                                                       (__tmp8673
                                                        (let ((__tmp8680
                                                               (let ((__tmp8683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'pair?))
                             (__tmp8681
                              (let ((__tmp8682 (gx#datum->syntax '#f 'lst)))
                                (declare (not safe))
                                (cons __tmp8682 '()))))
                         (declare (not safe))
                         (cons __tmp8683 __tmp8681)))
                      (__tmp8674
                       (let ((__tmp8675
                              (let ((__tmp8676
                                     (let ((__tmp8679
                                            (gx#datum->syntax '#f 'key))
                                           (__tmp8677
                                            (let ((__tmp8678
                                                   (gx#datum->syntax
                                                    '#f
                                                    'lst)))
                                              (declare (not safe))
                                              (cons __tmp8678 '()))))
                                       (declare (not safe))
                                       (cons __tmp8679 __tmp8677))))
                                (declare (not safe))
                                (cons _L4310_ __tmp8676))))
                         (declare (not safe))
                         (cons __tmp8675 '()))))
                  (declare (not safe))
                  (cons __tmp8680 __tmp8674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8684 __tmp8673)))
                                                (__tmp8668
                                                 (let ((__tmp8671
                                                        (gx#datum->syntax
                                                         '#f
                                                         '=>))
                                                       (__tmp8669
                                                        (let ((__tmp8670
                                                               (gx#datum->syntax
                                                                '#f
                                                                'cdr)))
                                                          (declare (not safe))
                                                          (cons __tmp8670
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp8671
                                                         __tmp8669))))
                                            (declare (not safe))
                                            (cons __tmp8672 __tmp8668)))
                                         (__tmp8651
                                          (let ((__tmp8657
                                                 (let ((__tmp8663
                                                        (let ((__tmp8666
                                                               (gx#datum->syntax
                                                                '#f
                                                                'procedure?))
                                                              (__tmp8664
                                                               (let ((__tmp8665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'default)))
                         (declare (not safe))
                         (cons __tmp8665 '()))))
                  (declare (not safe))
                  (cons __tmp8666 __tmp8664)))
               (__tmp8658
                (let ((__tmp8659
                       (let ((__tmp8662 (gx#datum->syntax '#f 'default))
                             (__tmp8660
                              (let ((__tmp8661 (gx#datum->syntax '#f 'key)))
                                (declare (not safe))
                                (cons __tmp8661 '()))))
                         (declare (not safe))
                         (cons __tmp8662 __tmp8660))))
                  (declare (not safe))
                  (cons __tmp8659 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8663 __tmp8658)))
                                                (__tmp8652
                                                 (let ((__tmp8653
                                                        (let ((__tmp8656
                                                               (gx#datum->syntax
                                                                '#f
                                                                'else))
                                                              (__tmp8654
                                                               (let ((__tmp8655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'default)))
                         (declare (not safe))
                         (cons __tmp8655 '()))))
                  (declare (not safe))
                  (cons __tmp8656 __tmp8654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8653 '()))))
                                            (declare (not safe))
                                            (cons __tmp8657 __tmp8652))))
                                     (declare (not safe))
                                     (cons __tmp8667 __tmp8651))))
                              (declare (not safe))
                              (cons __tmp8685 __tmp8650))))
                       (declare (not safe))
                       (cons __tmp8649 '()))))
                (declare (not safe))
                (cons __tmp8686 __tmp8648))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8695 __tmp8647)))
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
                                               (let ((__tmp8765
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp8696
                                                      (let ((__tmp8756
                                                             (let ((__tmp8757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp8764 (gx#datum->syntax '#f 'key))
                                  (__tmp8758
                                   (let ((__tmp8763
                                          (gx#datum->syntax '#f 'lst))
                                         (__tmp8759
                                          (let ((__tmp8760
                                                 (let ((__tmp8762
                                                        (gx#datum->syntax
                                                         '#f
                                                         'default))
                                                       (__tmp8761
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#f '()))))
                                                   (declare (not safe))
                                                   (cons __tmp8762
                                                         __tmp8761))))
                                            (declare (not safe))
                                            (cons __tmp8760 '()))))
                                     (declare (not safe))
                                     (cons __tmp8763 __tmp8759))))
                              (declare (not safe))
                              (cons __tmp8764 __tmp8758))))
                       (declare (not safe))
                       (cons _L4394_ __tmp8757)))
                    (__tmp8697
                     (let ((__tmp8698
                            (let ((__tmp8755 (gx#datum->syntax '#f 'let))
                                  (__tmp8699
                                   (let ((__tmp8754 (gx#datum->syntax '#f 'lp))
                                         (__tmp8700
                                          (let ((__tmp8749
                                                 (let ((__tmp8750
                                                        (let ((__tmp8753
                                                               (gx#datum->syntax
                                                                '#f
                                                                'rest))
                                                              (__tmp8751
                                                               (let ((__tmp8752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'lst)))
                         (declare (not safe))
                         (cons __tmp8752 '()))))
                  (declare (not safe))
                  (cons __tmp8753 __tmp8751))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8750 '())))
                                                (__tmp8701
                                                 (let ((__tmp8702
                                                        (let ((__tmp8748
                                                               (gx#datum->syntax
                                                                '#f
                                                                'match))
                                                              (__tmp8703
                                                               (let ((__tmp8747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'rest))
                             (__tmp8704
                              (let ((__tmp8723
                                     (let ((__tmp8740
                                            (let ((__tmp8746
                                                   (gx#datum->syntax
                                                    '#f
                                                    '@list))
                                                  (__tmp8741
                                                   (let ((__tmp8745
                                                          (gx#datum->syntax
                                                           '#f
                                                           'k))
                                                         (__tmp8742
                                                          (let ((__tmp8744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'v))
                        (__tmp8743 (gx#datum->syntax '#f 'rest)))
                    (declare (not safe))
                    (cons __tmp8744 __tmp8743))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8745
                                                           __tmp8742))))
                                              (declare (not safe))
                                              (cons __tmp8746 __tmp8741)))
                                           (__tmp8724
                                            (let ((__tmp8725
                                                   (let ((__tmp8739
                                                          (gx#datum->syntax
                                                           '#f
                                                           'if))
                                                         (__tmp8726
                                                          (let ((__tmp8734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp8735
                                (let ((__tmp8738 (gx#datum->syntax '#f 'k))
                                      (__tmp8736
                                       (let ((__tmp8737
                                              (gx#datum->syntax '#f 'key)))
                                         (declare (not safe))
                                         (cons __tmp8737 '()))))
                                  (declare (not safe))
                                  (cons __tmp8738 __tmp8736))))
                           (declare (not safe))
                           (cons _L4392_ __tmp8735)))
                        (__tmp8727
                         (let ((__tmp8733 (gx#datum->syntax '#f 'v))
                               (__tmp8728
                                (let ((__tmp8729
                                       (let ((__tmp8732
                                              (gx#datum->syntax '#f 'lp))
                                             (__tmp8730
                                              (let ((__tmp8731
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest)))
                                                (declare (not safe))
                                                (cons __tmp8731 '()))))
                                         (declare (not safe))
                                         (cons __tmp8732 __tmp8730))))
                                  (declare (not safe))
                                  (cons __tmp8729 '()))))
                           (declare (not safe))
                           (cons __tmp8733 __tmp8728))))
                    (declare (not safe))
                    (cons __tmp8734 __tmp8727))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8739
                                                           __tmp8726))))
                                              (declare (not safe))
                                              (cons __tmp8725 '()))))
                                       (declare (not safe))
                                       (cons __tmp8740 __tmp8724)))
                                    (__tmp8705
                                     (let ((__tmp8706
                                            (let ((__tmp8722
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp8707
                                                   (let ((__tmp8708
                                                          (let ((__tmp8721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'if))
                        (__tmp8709
                         (let ((__tmp8717
                                (let ((__tmp8720
                                       (gx#datum->syntax '#f 'procedure?))
                                      (__tmp8718
                                       (let ((__tmp8719
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp8719 '()))))
                                  (declare (not safe))
                                  (cons __tmp8720 __tmp8718)))
                               (__tmp8710
                                (let ((__tmp8713
                                       (let ((__tmp8716
                                              (gx#datum->syntax '#f 'default))
                                             (__tmp8714
                                              (let ((__tmp8715
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key)))
                                                (declare (not safe))
                                                (cons __tmp8715 '()))))
                                         (declare (not safe))
                                         (cons __tmp8716 __tmp8714)))
                                      (__tmp8711
                                       (let ((__tmp8712
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp8712 '()))))
                                  (declare (not safe))
                                  (cons __tmp8713 __tmp8711))))
                           (declare (not safe))
                           (cons __tmp8717 __tmp8710))))
                    (declare (not safe))
                    (cons __tmp8721 __tmp8709))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8708 '()))))
                                              (declare (not safe))
                                              (cons __tmp8722 __tmp8707))))
                                       (declare (not safe))
                                       (cons __tmp8706 '()))))
                                (declare (not safe))
                                (cons __tmp8723 __tmp8705))))
                         (declare (not safe))
                         (cons __tmp8747 __tmp8704))))
                  (declare (not safe))
                  (cons __tmp8748 __tmp8703))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8702 '()))))
                                            (declare (not safe))
                                            (cons __tmp8749 __tmp8701))))
                                     (declare (not safe))
                                     (cons __tmp8754 __tmp8700))))
                              (declare (not safe))
                              (cons __tmp8755 __tmp8699))))
                       (declare (not safe))
                       (cons __tmp8698 '()))))
                (declare (not safe))
                (cons __tmp8756 __tmp8697))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8765 __tmp8696)))
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
                                               (let ((__tmp8836
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp8766
                                                      (let ((__tmp8831
                                                             (let ((__tmp8832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp8835 (gx#datum->syntax '#f 'el))
                                  (__tmp8833
                                   (let ((__tmp8834
                                          (gx#datum->syntax '#f 'lst)))
                                     (declare (not safe))
                                     (cons __tmp8834 '()))))
                              (declare (not safe))
                              (cons __tmp8835 __tmp8833))))
                       (declare (not safe))
                       (cons _L4475_ __tmp8832)))
                    (__tmp8767
                     (let ((__tmp8768
                            (let ((__tmp8830 (gx#datum->syntax '#f 'let))
                                  (__tmp8769
                                   (let ((__tmp8829 (gx#datum->syntax '#f 'lp))
                                         (__tmp8770
                                          (let ((__tmp8818
                                                 (let ((__tmp8825
                                                        (let ((__tmp8828
                                                               (gx#datum->syntax
                                                                '#f
                                                                'rest))
                                                              (__tmp8826
                                                               (let ((__tmp8827
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'lst)))
                         (declare (not safe))
                         (cons __tmp8827 '()))))
                  (declare (not safe))
                  (cons __tmp8828 __tmp8826)))
               (__tmp8819
                (let ((__tmp8820
                       (let ((__tmp8824 (gx#datum->syntax '#f 'r))
                             (__tmp8821
                              (let ((__tmp8822
                                     (let ((__tmp8823
                                            (gx#datum->syntax '#f '@list)))
                                       (declare (not safe))
                                       (cons __tmp8823 '()))))
                                (declare (not safe))
                                (cons __tmp8822 '()))))
                         (declare (not safe))
                         (cons __tmp8824 __tmp8821))))
                  (declare (not safe))
                  (cons __tmp8820 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8825 __tmp8819)))
                                                (__tmp8771
                                                 (let ((__tmp8772
                                                        (let ((__tmp8817
                                                               (gx#datum->syntax
                                                                '#f
                                                                'match))
                                                              (__tmp8773
                                                               (let ((__tmp8816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'rest))
                             (__tmp8774
                              (let ((__tmp8780
                                     (let ((__tmp8811
                                            (let ((__tmp8815
                                                   (gx#datum->syntax
                                                    '#f
                                                    '@list))
                                                  (__tmp8812
                                                   (let ((__tmp8814
                                                          (gx#datum->syntax
                                                           '#f
                                                           'hd))
                                                         (__tmp8813
                                                          (gx#datum->syntax
                                                           '#f
                                                           'rest)))
                                                     (declare (not safe))
                                                     (cons __tmp8814
                                                           __tmp8813))))
                                              (declare (not safe))
                                              (cons __tmp8815 __tmp8812)))
                                           (__tmp8781
                                            (let ((__tmp8782
                                                   (let ((__tmp8810
                                                          (gx#datum->syntax
                                                           '#f
                                                           'if))
                                                         (__tmp8783
                                                          (let ((__tmp8805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp8806
                                (let ((__tmp8809 (gx#datum->syntax '#f 'el))
                                      (__tmp8807
                                       (let ((__tmp8808
                                              (gx#datum->syntax '#f 'hd)))
                                         (declare (not safe))
                                         (cons __tmp8808 '()))))
                                  (declare (not safe))
                                  (cons __tmp8809 __tmp8807))))
                           (declare (not safe))
                           (cons _L4473_ __tmp8806)))
                        (__tmp8784
                         (let ((__tmp8797
                                (let ((__tmp8804
                                       (gx#datum->syntax '#f 'foldl1))
                                      (__tmp8798
                                       (let ((__tmp8803
                                              (gx#datum->syntax '#f 'cons))
                                             (__tmp8799
                                              (let ((__tmp8802
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest))
                                                    (__tmp8800
                                                     (let ((__tmp8801
                                                            (gx#datum->syntax
                                                             '#f
                                                             'r)))
                                                       (declare (not safe))
                                                       (cons __tmp8801 '()))))
                                                (declare (not safe))
                                                (cons __tmp8802 __tmp8800))))
                                         (declare (not safe))
                                         (cons __tmp8803 __tmp8799))))
                                  (declare (not safe))
                                  (cons __tmp8804 __tmp8798)))
                               (__tmp8785
                                (let ((__tmp8786
                                       (let ((__tmp8796
                                              (gx#datum->syntax '#f 'lp))
                                             (__tmp8787
                                              (let ((__tmp8795
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest))
                                                    (__tmp8788
                                                     (let ((__tmp8789
                                                            (let ((__tmp8794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'cons))
                          (__tmp8790
                           (let ((__tmp8793 (gx#datum->syntax '#f 'hd))
                                 (__tmp8791
                                  (let ((__tmp8792 (gx#datum->syntax '#f 'r)))
                                    (declare (not safe))
                                    (cons __tmp8792 '()))))
                             (declare (not safe))
                             (cons __tmp8793 __tmp8791))))
                      (declare (not safe))
                      (cons __tmp8794 __tmp8790))))
               (declare (not safe))
               (cons __tmp8789 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp8795 __tmp8788))))
                                         (declare (not safe))
                                         (cons __tmp8796 __tmp8787))))
                                  (declare (not safe))
                                  (cons __tmp8786 '()))))
                           (declare (not safe))
                           (cons __tmp8797 __tmp8785))))
                    (declare (not safe))
                    (cons __tmp8805 __tmp8784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8810
                                                           __tmp8783))))
                                              (declare (not safe))
                                              (cons __tmp8782 '()))))
                                       (declare (not safe))
                                       (cons __tmp8811 __tmp8781)))
                                    (__tmp8775
                                     (let ((__tmp8776
                                            (let ((__tmp8779
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp8777
                                                   (let ((__tmp8778
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lst)))
                                                     (declare (not safe))
                                                     (cons __tmp8778 '()))))
                                              (declare (not safe))
                                              (cons __tmp8779 __tmp8777))))
                                       (declare (not safe))
                                       (cons __tmp8776 '()))))
                                (declare (not safe))
                                (cons __tmp8780 __tmp8775))))
                         (declare (not safe))
                         (cons __tmp8816 __tmp8774))))
                  (declare (not safe))
                  (cons __tmp8817 __tmp8773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8772 '()))))
                                            (declare (not safe))
                                            (cons __tmp8818 __tmp8771))))
                                     (declare (not safe))
                                     (cons __tmp8829 __tmp8770))))
                              (declare (not safe))
                              (cons __tmp8830 __tmp8769))))
                       (declare (not safe))
                       (cons __tmp8768 '()))))
                (declare (not safe))
                (cons __tmp8831 __tmp8767))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8836 __tmp8766)))
                                             _hd44294467_
                                             _hd44264457_)
                                            (_g44184436_ _g44194440_))))
                                    (_g44184436_ _g44194440_))))
                            (_g44184436_ _g44194440_))))
                    (_g44184436_ _g44194440_)))))
        (_g44174491_ _$stx4414_)))))
