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
                                               (let ((__tmp8751
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp8703
                                                      (let ((__tmp8742
                                                             (let ((__tmp8743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp8750 (gx#datum->syntax '#f 'key))
                                  (__tmp8744
                                   (let ((__tmp8749
                                          (gx#datum->syntax '#f 'lst))
                                         (__tmp8745
                                          (let ((__tmp8746
                                                 (let ((__tmp8748
                                                        (gx#datum->syntax
                                                         '#f
                                                         'default))
                                                       (__tmp8747
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#f '()))))
                                                   (declare (not safe))
                                                   (cons __tmp8748
                                                         __tmp8747))))
                                            (declare (not safe))
                                            (cons __tmp8746 '()))))
                                     (declare (not safe))
                                     (cons __tmp8749 __tmp8745))))
                              (declare (not safe))
                              (cons __tmp8750 __tmp8744))))
                       (declare (not safe))
                       (cons _L4312_ __tmp8743)))
                    (__tmp8704
                     (let ((__tmp8705
                            (let ((__tmp8741 (gx#datum->syntax '#f 'cond))
                                  (__tmp8706
                                   (let ((__tmp8723
                                          (let ((__tmp8728
                                                 (let ((__tmp8740
                                                        (gx#datum->syntax
                                                         '#f
                                                         'and))
                                                       (__tmp8729
                                                        (let ((__tmp8736
                                                               (let ((__tmp8739
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'pair?))
                             (__tmp8737
                              (let ((__tmp8738 (gx#datum->syntax '#f 'lst)))
                                (declare (not safe))
                                (cons __tmp8738 '()))))
                         (declare (not safe))
                         (cons __tmp8739 __tmp8737)))
                      (__tmp8730
                       (let ((__tmp8731
                              (let ((__tmp8732
                                     (let ((__tmp8735
                                            (gx#datum->syntax '#f 'key))
                                           (__tmp8733
                                            (let ((__tmp8734
                                                   (gx#datum->syntax
                                                    '#f
                                                    'lst)))
                                              (declare (not safe))
                                              (cons __tmp8734 '()))))
                                       (declare (not safe))
                                       (cons __tmp8735 __tmp8733))))
                                (declare (not safe))
                                (cons _L4310_ __tmp8732))))
                         (declare (not safe))
                         (cons __tmp8731 '()))))
                  (declare (not safe))
                  (cons __tmp8736 __tmp8730))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8740 __tmp8729)))
                                                (__tmp8724
                                                 (let ((__tmp8727
                                                        (gx#datum->syntax
                                                         '#f
                                                         '=>))
                                                       (__tmp8725
                                                        (let ((__tmp8726
                                                               (gx#datum->syntax
                                                                '#f
                                                                'cdr)))
                                                          (declare (not safe))
                                                          (cons __tmp8726
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp8727
                                                         __tmp8725))))
                                            (declare (not safe))
                                            (cons __tmp8728 __tmp8724)))
                                         (__tmp8707
                                          (let ((__tmp8713
                                                 (let ((__tmp8719
                                                        (let ((__tmp8722
                                                               (gx#datum->syntax
                                                                '#f
                                                                'procedure?))
                                                              (__tmp8720
                                                               (let ((__tmp8721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'default)))
                         (declare (not safe))
                         (cons __tmp8721 '()))))
                  (declare (not safe))
                  (cons __tmp8722 __tmp8720)))
               (__tmp8714
                (let ((__tmp8715
                       (let ((__tmp8718 (gx#datum->syntax '#f 'default))
                             (__tmp8716
                              (let ((__tmp8717 (gx#datum->syntax '#f 'key)))
                                (declare (not safe))
                                (cons __tmp8717 '()))))
                         (declare (not safe))
                         (cons __tmp8718 __tmp8716))))
                  (declare (not safe))
                  (cons __tmp8715 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8719 __tmp8714)))
                                                (__tmp8708
                                                 (let ((__tmp8709
                                                        (let ((__tmp8712
                                                               (gx#datum->syntax
                                                                '#f
                                                                'else))
                                                              (__tmp8710
                                                               (let ((__tmp8711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'default)))
                         (declare (not safe))
                         (cons __tmp8711 '()))))
                  (declare (not safe))
                  (cons __tmp8712 __tmp8710))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8709 '()))))
                                            (declare (not safe))
                                            (cons __tmp8713 __tmp8708))))
                                     (declare (not safe))
                                     (cons __tmp8723 __tmp8707))))
                              (declare (not safe))
                              (cons __tmp8741 __tmp8706))))
                       (declare (not safe))
                       (cons __tmp8705 '()))))
                (declare (not safe))
                (cons __tmp8742 __tmp8704))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8751 __tmp8703)))
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
                                               (let ((__tmp8821
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp8752
                                                      (let ((__tmp8812
                                                             (let ((__tmp8813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp8820 (gx#datum->syntax '#f 'key))
                                  (__tmp8814
                                   (let ((__tmp8819
                                          (gx#datum->syntax '#f 'lst))
                                         (__tmp8815
                                          (let ((__tmp8816
                                                 (let ((__tmp8818
                                                        (gx#datum->syntax
                                                         '#f
                                                         'default))
                                                       (__tmp8817
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#f '()))))
                                                   (declare (not safe))
                                                   (cons __tmp8818
                                                         __tmp8817))))
                                            (declare (not safe))
                                            (cons __tmp8816 '()))))
                                     (declare (not safe))
                                     (cons __tmp8819 __tmp8815))))
                              (declare (not safe))
                              (cons __tmp8820 __tmp8814))))
                       (declare (not safe))
                       (cons _L4394_ __tmp8813)))
                    (__tmp8753
                     (let ((__tmp8754
                            (let ((__tmp8811 (gx#datum->syntax '#f 'let))
                                  (__tmp8755
                                   (let ((__tmp8810 (gx#datum->syntax '#f 'lp))
                                         (__tmp8756
                                          (let ((__tmp8805
                                                 (let ((__tmp8806
                                                        (let ((__tmp8809
                                                               (gx#datum->syntax
                                                                '#f
                                                                'rest))
                                                              (__tmp8807
                                                               (let ((__tmp8808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'lst)))
                         (declare (not safe))
                         (cons __tmp8808 '()))))
                  (declare (not safe))
                  (cons __tmp8809 __tmp8807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8806 '())))
                                                (__tmp8757
                                                 (let ((__tmp8758
                                                        (let ((__tmp8804
                                                               (gx#datum->syntax
                                                                '#f
                                                                'match))
                                                              (__tmp8759
                                                               (let ((__tmp8803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'rest))
                             (__tmp8760
                              (let ((__tmp8779
                                     (let ((__tmp8796
                                            (let ((__tmp8802
                                                   (gx#datum->syntax
                                                    '#f
                                                    '@list))
                                                  (__tmp8797
                                                   (let ((__tmp8801
                                                          (gx#datum->syntax
                                                           '#f
                                                           'k))
                                                         (__tmp8798
                                                          (let ((__tmp8800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'v))
                        (__tmp8799 (gx#datum->syntax '#f 'rest)))
                    (declare (not safe))
                    (cons __tmp8800 __tmp8799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8801
                                                           __tmp8798))))
                                              (declare (not safe))
                                              (cons __tmp8802 __tmp8797)))
                                           (__tmp8780
                                            (let ((__tmp8781
                                                   (let ((__tmp8795
                                                          (gx#datum->syntax
                                                           '#f
                                                           'if))
                                                         (__tmp8782
                                                          (let ((__tmp8790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp8791
                                (let ((__tmp8794 (gx#datum->syntax '#f 'k))
                                      (__tmp8792
                                       (let ((__tmp8793
                                              (gx#datum->syntax '#f 'key)))
                                         (declare (not safe))
                                         (cons __tmp8793 '()))))
                                  (declare (not safe))
                                  (cons __tmp8794 __tmp8792))))
                           (declare (not safe))
                           (cons _L4392_ __tmp8791)))
                        (__tmp8783
                         (let ((__tmp8789 (gx#datum->syntax '#f 'v))
                               (__tmp8784
                                (let ((__tmp8785
                                       (let ((__tmp8788
                                              (gx#datum->syntax '#f 'lp))
                                             (__tmp8786
                                              (let ((__tmp8787
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest)))
                                                (declare (not safe))
                                                (cons __tmp8787 '()))))
                                         (declare (not safe))
                                         (cons __tmp8788 __tmp8786))))
                                  (declare (not safe))
                                  (cons __tmp8785 '()))))
                           (declare (not safe))
                           (cons __tmp8789 __tmp8784))))
                    (declare (not safe))
                    (cons __tmp8790 __tmp8783))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8795
                                                           __tmp8782))))
                                              (declare (not safe))
                                              (cons __tmp8781 '()))))
                                       (declare (not safe))
                                       (cons __tmp8796 __tmp8780)))
                                    (__tmp8761
                                     (let ((__tmp8762
                                            (let ((__tmp8778
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp8763
                                                   (let ((__tmp8764
                                                          (let ((__tmp8777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'if))
                        (__tmp8765
                         (let ((__tmp8773
                                (let ((__tmp8776
                                       (gx#datum->syntax '#f 'procedure?))
                                      (__tmp8774
                                       (let ((__tmp8775
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp8775 '()))))
                                  (declare (not safe))
                                  (cons __tmp8776 __tmp8774)))
                               (__tmp8766
                                (let ((__tmp8769
                                       (let ((__tmp8772
                                              (gx#datum->syntax '#f 'default))
                                             (__tmp8770
                                              (let ((__tmp8771
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key)))
                                                (declare (not safe))
                                                (cons __tmp8771 '()))))
                                         (declare (not safe))
                                         (cons __tmp8772 __tmp8770)))
                                      (__tmp8767
                                       (let ((__tmp8768
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp8768 '()))))
                                  (declare (not safe))
                                  (cons __tmp8769 __tmp8767))))
                           (declare (not safe))
                           (cons __tmp8773 __tmp8766))))
                    (declare (not safe))
                    (cons __tmp8777 __tmp8765))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8764 '()))))
                                              (declare (not safe))
                                              (cons __tmp8778 __tmp8763))))
                                       (declare (not safe))
                                       (cons __tmp8762 '()))))
                                (declare (not safe))
                                (cons __tmp8779 __tmp8761))))
                         (declare (not safe))
                         (cons __tmp8803 __tmp8760))))
                  (declare (not safe))
                  (cons __tmp8804 __tmp8759))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8758 '()))))
                                            (declare (not safe))
                                            (cons __tmp8805 __tmp8757))))
                                     (declare (not safe))
                                     (cons __tmp8810 __tmp8756))))
                              (declare (not safe))
                              (cons __tmp8811 __tmp8755))))
                       (declare (not safe))
                       (cons __tmp8754 '()))))
                (declare (not safe))
                (cons __tmp8812 __tmp8753))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8821 __tmp8752)))
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
                                               (let ((__tmp8892
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp8822
                                                      (let ((__tmp8887
                                                             (let ((__tmp8888
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp8891 (gx#datum->syntax '#f 'el))
                                  (__tmp8889
                                   (let ((__tmp8890
                                          (gx#datum->syntax '#f 'lst)))
                                     (declare (not safe))
                                     (cons __tmp8890 '()))))
                              (declare (not safe))
                              (cons __tmp8891 __tmp8889))))
                       (declare (not safe))
                       (cons _L4475_ __tmp8888)))
                    (__tmp8823
                     (let ((__tmp8824
                            (let ((__tmp8886 (gx#datum->syntax '#f 'let))
                                  (__tmp8825
                                   (let ((__tmp8885 (gx#datum->syntax '#f 'lp))
                                         (__tmp8826
                                          (let ((__tmp8874
                                                 (let ((__tmp8881
                                                        (let ((__tmp8884
                                                               (gx#datum->syntax
                                                                '#f
                                                                'rest))
                                                              (__tmp8882
                                                               (let ((__tmp8883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'lst)))
                         (declare (not safe))
                         (cons __tmp8883 '()))))
                  (declare (not safe))
                  (cons __tmp8884 __tmp8882)))
               (__tmp8875
                (let ((__tmp8876
                       (let ((__tmp8880 (gx#datum->syntax '#f 'r))
                             (__tmp8877
                              (let ((__tmp8878
                                     (let ((__tmp8879
                                            (gx#datum->syntax '#f '@list)))
                                       (declare (not safe))
                                       (cons __tmp8879 '()))))
                                (declare (not safe))
                                (cons __tmp8878 '()))))
                         (declare (not safe))
                         (cons __tmp8880 __tmp8877))))
                  (declare (not safe))
                  (cons __tmp8876 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8881 __tmp8875)))
                                                (__tmp8827
                                                 (let ((__tmp8828
                                                        (let ((__tmp8873
                                                               (gx#datum->syntax
                                                                '#f
                                                                'match))
                                                              (__tmp8829
                                                               (let ((__tmp8872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'rest))
                             (__tmp8830
                              (let ((__tmp8836
                                     (let ((__tmp8867
                                            (let ((__tmp8871
                                                   (gx#datum->syntax
                                                    '#f
                                                    '@list))
                                                  (__tmp8868
                                                   (let ((__tmp8870
                                                          (gx#datum->syntax
                                                           '#f
                                                           'hd))
                                                         (__tmp8869
                                                          (gx#datum->syntax
                                                           '#f
                                                           'rest)))
                                                     (declare (not safe))
                                                     (cons __tmp8870
                                                           __tmp8869))))
                                              (declare (not safe))
                                              (cons __tmp8871 __tmp8868)))
                                           (__tmp8837
                                            (let ((__tmp8838
                                                   (let ((__tmp8866
                                                          (gx#datum->syntax
                                                           '#f
                                                           'if))
                                                         (__tmp8839
                                                          (let ((__tmp8861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp8862
                                (let ((__tmp8865 (gx#datum->syntax '#f 'el))
                                      (__tmp8863
                                       (let ((__tmp8864
                                              (gx#datum->syntax '#f 'hd)))
                                         (declare (not safe))
                                         (cons __tmp8864 '()))))
                                  (declare (not safe))
                                  (cons __tmp8865 __tmp8863))))
                           (declare (not safe))
                           (cons _L4473_ __tmp8862)))
                        (__tmp8840
                         (let ((__tmp8853
                                (let ((__tmp8860
                                       (gx#datum->syntax '#f 'foldl1))
                                      (__tmp8854
                                       (let ((__tmp8859
                                              (gx#datum->syntax '#f 'cons))
                                             (__tmp8855
                                              (let ((__tmp8858
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest))
                                                    (__tmp8856
                                                     (let ((__tmp8857
                                                            (gx#datum->syntax
                                                             '#f
                                                             'r)))
                                                       (declare (not safe))
                                                       (cons __tmp8857 '()))))
                                                (declare (not safe))
                                                (cons __tmp8858 __tmp8856))))
                                         (declare (not safe))
                                         (cons __tmp8859 __tmp8855))))
                                  (declare (not safe))
                                  (cons __tmp8860 __tmp8854)))
                               (__tmp8841
                                (let ((__tmp8842
                                       (let ((__tmp8852
                                              (gx#datum->syntax '#f 'lp))
                                             (__tmp8843
                                              (let ((__tmp8851
                                                     (gx#datum->syntax
                                                      '#f
                                                      'rest))
                                                    (__tmp8844
                                                     (let ((__tmp8845
                                                            (let ((__tmp8850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'cons))
                          (__tmp8846
                           (let ((__tmp8849 (gx#datum->syntax '#f 'hd))
                                 (__tmp8847
                                  (let ((__tmp8848 (gx#datum->syntax '#f 'r)))
                                    (declare (not safe))
                                    (cons __tmp8848 '()))))
                             (declare (not safe))
                             (cons __tmp8849 __tmp8847))))
                      (declare (not safe))
                      (cons __tmp8850 __tmp8846))))
               (declare (not safe))
               (cons __tmp8845 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp8851 __tmp8844))))
                                         (declare (not safe))
                                         (cons __tmp8852 __tmp8843))))
                                  (declare (not safe))
                                  (cons __tmp8842 '()))))
                           (declare (not safe))
                           (cons __tmp8853 __tmp8841))))
                    (declare (not safe))
                    (cons __tmp8861 __tmp8840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp8866
                                                           __tmp8839))))
                                              (declare (not safe))
                                              (cons __tmp8838 '()))))
                                       (declare (not safe))
                                       (cons __tmp8867 __tmp8837)))
                                    (__tmp8831
                                     (let ((__tmp8832
                                            (let ((__tmp8835
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp8833
                                                   (let ((__tmp8834
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lst)))
                                                     (declare (not safe))
                                                     (cons __tmp8834 '()))))
                                              (declare (not safe))
                                              (cons __tmp8835 __tmp8833))))
                                       (declare (not safe))
                                       (cons __tmp8832 '()))))
                                (declare (not safe))
                                (cons __tmp8836 __tmp8831))))
                         (declare (not safe))
                         (cons __tmp8872 __tmp8830))))
                  (declare (not safe))
                  (cons __tmp8873 __tmp8829))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8828 '()))))
                                            (declare (not safe))
                                            (cons __tmp8874 __tmp8827))))
                                     (declare (not safe))
                                     (cons __tmp8885 __tmp8826))))
                              (declare (not safe))
                              (cons __tmp8886 __tmp8825))))
                       (declare (not safe))
                       (cons __tmp8824 '()))))
                (declare (not safe))
                (cons __tmp8887 __tmp8823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8892 __tmp8822)))
                                             _hd44294467_
                                             _hd44264457_)
                                            (_g44184436_ _g44194440_))))
                                    (_g44184436_ _g44194440_))))
                            (_g44184436_ _g44194440_))))
                    (_g44184436_ _g44194440_)))))
        (_g44174491_ _$stx4414_)))))
