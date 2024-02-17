(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#defspecialized-table|
    (lambda (_$stx64752_)
      (let* ((_g6475664794_
              (lambda (_g6475764790_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6475764790_)))
             (_g6475564920_
              (lambda (_g6475764798_)
                (if (gx#stx-pair? _g6475764798_)
                    (let ((_e6476764801_ (gx#syntax-e _g6475764798_)))
                      (let ((_hd6476664805_
                             (let ()
                               (declare (not safe))
                               (##car _e6476764801_)))
                            (_tl6476564808_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6476764801_))))
                        (if (gx#stx-pair? _tl6476564808_)
                            (let ((_e6477064811_ (gx#syntax-e _tl6476564808_)))
                              (let ((_hd6476964815_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6477064811_)))
                                    (_tl6476864818_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6477064811_))))
                                (if (gx#stx-pair? _tl6476864818_)
                                    (let ((_e6477364821_
                                           (gx#syntax-e _tl6476864818_)))
                                      (let ((_hd6477264825_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6477364821_)))
                                            (_tl6477164828_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6477364821_))))
                                        (if (gx#stx-pair? _tl6477164828_)
                                            (let ((_e6477664831_
                                                   (gx#syntax-e
                                                    _tl6477164828_)))
                                              (let ((_hd6477564835_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6477664831_)))
                                                    (_tl6477464838_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6477664831_))))
                                                (if (gx#stx-pair?
                                                     _tl6477464838_)
                                                    (let ((_e6477964841_
                                                           (gx#syntax-e
                                                            _tl6477464838_)))
                                                      (let ((_hd6477864845_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6477964841_)))
                    (_tl6477764848_
                     (let () (declare (not safe)) (##cdr _e6477964841_))))
                (if (gx#stx-pair? _tl6477764848_)
                    (let ((_e6478264851_ (gx#syntax-e _tl6477764848_)))
                      (let ((_hd6478164855_
                             (let ()
                               (declare (not safe))
                               (##car _e6478264851_)))
                            (_tl6478064858_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6478264851_))))
                        (if (gx#stx-pair? _tl6478064858_)
                            (let ((_e6478564861_ (gx#syntax-e _tl6478064858_)))
                              (let ((_hd6478464865_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6478564861_)))
                                    (_tl6478364868_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6478564861_))))
                                (if (gx#stx-pair? _tl6478364868_)
                                    (let ((_e6478864871_
                                           (gx#syntax-e _tl6478364868_)))
                                      (let ((_hd6478764875_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6478864871_)))
                                            (_tl6478664878_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6478864871_))))
                                        (if (gx#stx-null? _tl6478664878_)
                                            ((lambda (_L64881_
                                                      _L64883_
                                                      _L64884_
                                                      _L64885_
                                                      _L64886_
                                                      _L64887_
                                                      _L64888_)
                                               (let ((__tmp70894
                                                      (gx#datum->syntax
                                                       '#f
                                                       'begin))
                                                     (__tmp70656
                                                      (let ((__tmp70879
                                                             (let ((__tmp70893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'def))
                           (__tmp70880
                            (let ((__tmp70888
                                   (let ((__tmp70889
                                          (let ((__tmp70890
                                                 (let ((__tmp70892
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size-hint))
                                                       (__tmp70891
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#f '()))))
                                                   (declare (not safe))
                                                   (cons __tmp70892
                                                         __tmp70891))))
                                            (declare (not safe))
                                            (cons __tmp70890 '()))))
                                     (declare (not safe))
                                     (cons _L64888_ __tmp70889)))
                                  (__tmp70881
                                   (let ((__tmp70882
                                          (let ((__tmp70887
                                                 (gx#datum->syntax
                                                  '#f
                                                  'make-raw-table))
                                                (__tmp70883
                                                 (let ((__tmp70886
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size-hint))
                                                       (__tmp70884
                                                        (let ((__tmp70885
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L64881_ '()))))
                  (declare (not safe))
                  (cons _L64883_ __tmp70885))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp70886
                                                         __tmp70884))))
                                            (declare (not safe))
                                            (cons __tmp70887 __tmp70883))))
                                     (declare (not safe))
                                     (cons __tmp70882 '()))))
                              (declare (not safe))
                              (cons __tmp70888 __tmp70881))))
                       (declare (not safe))
                       (cons __tmp70893 __tmp70880)))
                    (__tmp70657
                     (let ((__tmp70847
                            (let ((__tmp70878 (gx#datum->syntax '#f 'def))
                                  (__tmp70848
                                   (let ((__tmp70871
                                          (let ((__tmp70872
                                                 (let ((__tmp70877
                                                        (gx#datum->syntax
                                                         '#f
                                                         'tab))
                                                       (__tmp70873
                                                        (let ((__tmp70876
                                                               (gx#datum->syntax
                                                                '#f
                                                                'key))
                                                              (__tmp70874
                                                               (let ((__tmp70875
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'default)))
                         (declare (not safe))
                         (cons __tmp70875 '()))))
                  (declare (not safe))
                  (cons __tmp70876 __tmp70874))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp70877
                                                         __tmp70873))))
                                            (declare (not safe))
                                            (cons _L64887_ __tmp70872)))
                                         (__tmp70849
                                          (let ((__tmp70850
                                                 (let ((__tmp70870
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let))
                                                       (__tmp70851
                                                        (let ((__tmp70863
                                                               (let ((__tmp70869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'table))
                             (__tmp70864
                              (let ((__tmp70865
                                     (let ((__tmp70868
                                            (gx#datum->syntax
                                             '#f
                                             '&raw-table-table))
                                           (__tmp70866
                                            (let ((__tmp70867
                                                   (gx#datum->syntax
                                                    '#f
                                                    'tab)))
                                              (declare (not safe))
                                              (cons __tmp70867 '()))))
                                       (declare (not safe))
                                       (cons __tmp70868 __tmp70866))))
                                (declare (not safe))
                                (cons __tmp70865 '()))))
                         (declare (not safe))
                         (cons __tmp70869 __tmp70864)))
                      (__tmp70852
                       (let ((__tmp70853
                              (let ((__tmp70862
                                     (gx#datum->syntax '#f '__table-ref))
                                    (__tmp70854
                                     (let ((__tmp70861
                                            (gx#datum->syntax '#f 'table))
                                           (__tmp70855
                                            (let ((__tmp70856
                                                   (let ((__tmp70857
                                                          (let ((__tmp70860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'key))
                        (__tmp70858
                         (let ((__tmp70859 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp70859 '()))))
                    (declare (not safe))
                    (cons __tmp70860 __tmp70858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L64881_
                                                           __tmp70857))))
                                              (declare (not safe))
                                              (cons _L64883_ __tmp70856))))
                                       (declare (not safe))
                                       (cons __tmp70861 __tmp70855))))
                                (declare (not safe))
                                (cons __tmp70862 __tmp70854))))
                         (declare (not safe))
                         (cons __tmp70853 '()))))
                  (declare (not safe))
                  (cons __tmp70863 __tmp70852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp70870
                                                         __tmp70851))))
                                            (declare (not safe))
                                            (cons __tmp70850 '()))))
                                     (declare (not safe))
                                     (cons __tmp70871 __tmp70849))))
                              (declare (not safe))
                              (cons __tmp70878 __tmp70848)))
                           (__tmp70658
                            (let ((__tmp70801
                                   (let ((__tmp70846
                                          (gx#datum->syntax '#f 'def))
                                         (__tmp70802
                                          (let ((__tmp70839
                                                 (let ((__tmp70840
                                                        (let ((__tmp70845
                                                               (gx#datum->syntax
                                                                '#f
                                                                'tab))
                                                              (__tmp70841
                                                               (let ((__tmp70844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'key))
                             (__tmp70842
                              (let ((__tmp70843 (gx#datum->syntax '#f 'value)))
                                (declare (not safe))
                                (cons __tmp70843 '()))))
                         (declare (not safe))
                         (cons __tmp70844 __tmp70842))))
                  (declare (not safe))
                  (cons __tmp70845 __tmp70841))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L64886_ __tmp70840)))
                                                (__tmp70803
                                                 (let ((__tmp70812
                                                        (let ((__tmp70838
                                                               (gx#datum->syntax
                                                                '#f
                                                                'when))
                                                              (__tmp70813
                                                               (let ((__tmp70819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp70837 (gx#datum->syntax '#f 'fx<))
                                    (__tmp70820
                                     (let ((__tmp70833
                                            (let ((__tmp70836
                                                   (gx#datum->syntax
                                                    '#f
                                                    '&raw-table-free))
                                                  (__tmp70834
                                                   (let ((__tmp70835
                                                          (gx#datum->syntax
                                                           '#f
                                                           'tab)))
                                                     (declare (not safe))
                                                     (cons __tmp70835 '()))))
                                              (declare (not safe))
                                              (cons __tmp70836 __tmp70834)))
                                           (__tmp70821
                                            (let ((__tmp70822
                                                   (let ((__tmp70832
                                                          (gx#datum->syntax
                                                           '#f
                                                           'fxquotient))
                                                         (__tmp70823
                                                          (let ((__tmp70825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp70831
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp70826
                                (let ((__tmp70827
                                       (let ((__tmp70830
                                              (gx#datum->syntax
                                               '#f
                                               '&raw-table-table))
                                             (__tmp70828
                                              (let ((__tmp70829
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab)))
                                                (declare (not safe))
                                                (cons __tmp70829 '()))))
                                         (declare (not safe))
                                         (cons __tmp70830 __tmp70828))))
                                  (declare (not safe))
                                  (cons __tmp70827 '()))))
                           (declare (not safe))
                           (cons __tmp70831 __tmp70826)))
                        (__tmp70824
                         (let () (declare (not safe)) (cons '4 '()))))
                    (declare (not safe))
                    (cons __tmp70825 __tmp70824))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp70832
                                                           __tmp70823))))
                                              (declare (not safe))
                                              (cons __tmp70822 '()))))
                                       (declare (not safe))
                                       (cons __tmp70833 __tmp70821))))
                                (declare (not safe))
                                (cons __tmp70837 __tmp70820)))
                             (__tmp70814
                              (let ((__tmp70815
                                     (let ((__tmp70818
                                            (gx#datum->syntax
                                             '#f
                                             '__raw-table-rehash!))
                                           (__tmp70816
                                            (let ((__tmp70817
                                                   (gx#datum->syntax
                                                    '#f
                                                    'tab)))
                                              (declare (not safe))
                                              (cons __tmp70817 '()))))
                                       (declare (not safe))
                                       (cons __tmp70818 __tmp70816))))
                                (declare (not safe))
                                (cons __tmp70815 '()))))
                         (declare (not safe))
                         (cons __tmp70819 __tmp70814))))
                  (declare (not safe))
                  (cons __tmp70838 __tmp70813)))
               (__tmp70804
                (let ((__tmp70805
                       (let ((__tmp70806
                              (let ((__tmp70811 (gx#datum->syntax '#f 'tab))
                                    (__tmp70807
                                     (let ((__tmp70810
                                            (gx#datum->syntax '#f 'key))
                                           (__tmp70808
                                            (let ((__tmp70809
                                                   (gx#datum->syntax
                                                    '#f
                                                    'value)))
                                              (declare (not safe))
                                              (cons __tmp70809 '()))))
                                       (declare (not safe))
                                       (cons __tmp70810 __tmp70808))))
                                (declare (not safe))
                                (cons __tmp70811 __tmp70807))))
                         (declare (not safe))
                         (cons _L64885_ __tmp70806))))
                  (declare (not safe))
                  (cons __tmp70805 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp70812
                                                         __tmp70804))))
                                            (declare (not safe))
                                            (cons __tmp70839 __tmp70803))))
                                     (declare (not safe))
                                     (cons __tmp70846 __tmp70802)))
                                  (__tmp70659
                                   (let ((__tmp70710
                                          (let ((__tmp70800
                                                 (gx#datum->syntax '#f 'def))
                                                (__tmp70711
                                                 (let ((__tmp70793
                                                        (let ((__tmp70794
                                                               (let ((__tmp70799
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'tab))
                             (__tmp70795
                              (let ((__tmp70798 (gx#datum->syntax '#f 'key))
                                    (__tmp70796
                                     (let ((__tmp70797
                                            (gx#datum->syntax '#f 'value)))
                                       (declare (not safe))
                                       (cons __tmp70797 '()))))
                                (declare (not safe))
                                (cons __tmp70798 __tmp70796))))
                         (declare (not safe))
                         (cons __tmp70799 __tmp70795))))
                  (declare (not safe))
                  (cons _L64885_ __tmp70794)))
               (__tmp70712
                (let ((__tmp70713
                       (let ((__tmp70792 (gx#datum->syntax '#f 'let))
                             (__tmp70714
                              (let ((__tmp70785
                                     (let ((__tmp70791
                                            (gx#datum->syntax '#f 'table))
                                           (__tmp70786
                                            (let ((__tmp70787
                                                   (let ((__tmp70790
                                                          (gx#datum->syntax
                                                           '#f
                                                           '&raw-table-table))
                                                         (__tmp70788
                                                          (let ((__tmp70789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'tab)))
                    (declare (not safe))
                    (cons __tmp70789 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp70790
                                                           __tmp70788))))
                                              (declare (not safe))
                                              (cons __tmp70787 '()))))
                                       (declare (not safe))
                                       (cons __tmp70791 __tmp70786)))
                                    (__tmp70715
                                     (let ((__tmp70716
                                            (let ((__tmp70784
                                                   (gx#datum->syntax
                                                    '#f
                                                    '__table-set!))
                                                  (__tmp70717
                                                   (let ((__tmp70783
                                                          (gx#datum->syntax
                                                           '#f
                                                           'table))
                                                         (__tmp70718
                                                          (let ((__tmp70719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp70720
                                (let ((__tmp70782 (gx#datum->syntax '#f 'key))
                                      (__tmp70721
                                       (let ((__tmp70781
                                              (gx#datum->syntax '#f 'value))
                                             (__tmp70722
                                              (let ((__tmp70744
                                                     (let ((__tmp70780
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp70745
                                                            (let ((__tmp70746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp70764
                                  (let ((__tmp70779
                                         (gx#datum->syntax '#f 'set!))
                                        (__tmp70765
                                         (let ((__tmp70775
                                                (let ((__tmp70778
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-free))
                                                      (__tmp70776
                                                       (let ((__tmp70777
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp70777
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp70778
                                                        __tmp70776)))
                                               (__tmp70766
                                                (let ((__tmp70767
                                                       (let ((__tmp70774
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fx-))
                                                             (__tmp70768
                                                              (let ((__tmp70770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp70773
                                    (gx#datum->syntax '#f '&raw-table-free))
                                   (__tmp70771
                                    (let ((__tmp70772
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp70772 '()))))
                               (declare (not safe))
                               (cons __tmp70773 __tmp70771)))
                            (__tmp70769
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp70770 __tmp70769))))
                 (declare (not safe))
                 (cons __tmp70774 __tmp70768))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70767 '()))))
                                           (declare (not safe))
                                           (cons __tmp70775 __tmp70766))))
                                    (declare (not safe))
                                    (cons __tmp70779 __tmp70765)))
                                 (__tmp70747
                                  (let ((__tmp70748
                                         (let ((__tmp70763
                                                (gx#datum->syntax '#f 'set!))
                                               (__tmp70749
                                                (let ((__tmp70759
                                                       (let ((__tmp70762
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-count))
                                                             (__tmp70760
                                                              (let ((__tmp70761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp70761 '()))))
                 (declare (not safe))
                 (cons __tmp70762 __tmp70760)))
              (__tmp70750
               (let ((__tmp70751
                      (let ((__tmp70758 (gx#datum->syntax '#f 'fx+))
                            (__tmp70752
                             (let ((__tmp70754
                                    (let ((__tmp70757
                                           (gx#datum->syntax
                                            '#f
                                            '&raw-table-count))
                                          (__tmp70755
                                           (let ((__tmp70756
                                                  (gx#datum->syntax '#f 'tab)))
                                             (declare (not safe))
                                             (cons __tmp70756 '()))))
                                      (declare (not safe))
                                      (cons __tmp70757 __tmp70755)))
                                   (__tmp70753
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 '()))))
                               (declare (not safe))
                               (cons __tmp70754 __tmp70753))))
                        (declare (not safe))
                        (cons __tmp70758 __tmp70752))))
                 (declare (not safe))
                 (cons __tmp70751 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70759
                                                        __tmp70750))))
                                           (declare (not safe))
                                           (cons __tmp70763 __tmp70749))))
                                    (declare (not safe))
                                    (cons __tmp70748 '()))))
                             (declare (not safe))
                             (cons __tmp70764 __tmp70747))))
                      (declare (not safe))
                      (cons '() __tmp70746))))
               (declare (not safe))
               (cons __tmp70780 __tmp70745)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp70723
                                                     (let ((__tmp70724
                                                            (let ((__tmp70743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'lambda))
                          (__tmp70725
                           (let ((__tmp70726
                                  (let ((__tmp70727
                                         (let ((__tmp70742
                                                (gx#datum->syntax '#f 'set!))
                                               (__tmp70728
                                                (let ((__tmp70738
                                                       (let ((__tmp70741
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-count))
                                                             (__tmp70739
                                                              (let ((__tmp70740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp70740 '()))))
                 (declare (not safe))
                 (cons __tmp70741 __tmp70739)))
              (__tmp70729
               (let ((__tmp70730
                      (let ((__tmp70737 (gx#datum->syntax '#f 'fx+))
                            (__tmp70731
                             (let ((__tmp70733
                                    (let ((__tmp70736
                                           (gx#datum->syntax
                                            '#f
                                            '&raw-table-count))
                                          (__tmp70734
                                           (let ((__tmp70735
                                                  (gx#datum->syntax '#f 'tab)))
                                             (declare (not safe))
                                             (cons __tmp70735 '()))))
                                      (declare (not safe))
                                      (cons __tmp70736 __tmp70734)))
                                   (__tmp70732
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 '()))))
                               (declare (not safe))
                               (cons __tmp70733 __tmp70732))))
                        (declare (not safe))
                        (cons __tmp70737 __tmp70731))))
                 (declare (not safe))
                 (cons __tmp70730 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70738
                                                        __tmp70729))))
                                           (declare (not safe))
                                           (cons __tmp70742 __tmp70728))))
                                    (declare (not safe))
                                    (cons __tmp70727 '()))))
                             (declare (not safe))
                             (cons '() __tmp70726))))
                      (declare (not safe))
                      (cons __tmp70743 __tmp70725))))
               (declare (not safe))
               (cons __tmp70724 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp70744 __tmp70723))))
                                         (declare (not safe))
                                         (cons __tmp70781 __tmp70722))))
                                  (declare (not safe))
                                  (cons __tmp70782 __tmp70721))))
                           (declare (not safe))
                           (cons _L64881_ __tmp70720))))
                    (declare (not safe))
                    (cons _L64883_ __tmp70719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp70783
                                                           __tmp70718))))
                                              (declare (not safe))
                                              (cons __tmp70784 __tmp70717))))
                                       (declare (not safe))
                                       (cons __tmp70716 '()))))
                                (declare (not safe))
                                (cons __tmp70785 __tmp70715))))
                         (declare (not safe))
                         (cons __tmp70792 __tmp70714))))
                  (declare (not safe))
                  (cons __tmp70713 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp70793
                                                         __tmp70712))))
                                            (declare (not safe))
                                            (cons __tmp70800 __tmp70711)))
                                         (__tmp70660
                                          (let ((__tmp70661
                                                 (let ((__tmp70709
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp70662
                                                        (let ((__tmp70704
                                                               (let ((__tmp70705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp70708 (gx#datum->syntax '#f 'tab))
                                    (__tmp70706
                                     (let ((__tmp70707
                                            (gx#datum->syntax '#f 'key)))
                                       (declare (not safe))
                                       (cons __tmp70707 '()))))
                                (declare (not safe))
                                (cons __tmp70708 __tmp70706))))
                         (declare (not safe))
                         (cons _L64884_ __tmp70705)))
                      (__tmp70663
                       (let ((__tmp70664
                              (let ((__tmp70703 (gx#datum->syntax '#f 'let))
                                    (__tmp70665
                                     (let ((__tmp70696
                                            (let ((__tmp70702
                                                   (gx#datum->syntax
                                                    '#f
                                                    'table))
                                                  (__tmp70697
                                                   (let ((__tmp70698
                                                          (let ((__tmp70701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '&raw-table-table))
                        (__tmp70699
                         (let ((__tmp70700 (gx#datum->syntax '#f 'tab)))
                           (declare (not safe))
                           (cons __tmp70700 '()))))
                    (declare (not safe))
                    (cons __tmp70701 __tmp70699))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp70698 '()))))
                                              (declare (not safe))
                                              (cons __tmp70702 __tmp70697)))
                                           (__tmp70666
                                            (let ((__tmp70667
                                                   (let ((__tmp70695
                                                          (gx#datum->syntax
                                                           '#f
                                                           '__table-del!))
                                                         (__tmp70668
                                                          (let ((__tmp70694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'table))
                        (__tmp70669
                         (let ((__tmp70670
                                (let ((__tmp70671
                                       (let ((__tmp70693
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp70672
                                              (let ((__tmp70673
                                                     (let ((__tmp70692
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp70674
                                                            (let ((__tmp70675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp70676
                                  (let ((__tmp70691
                                         (gx#datum->syntax '#f 'set!))
                                        (__tmp70677
                                         (let ((__tmp70687
                                                (let ((__tmp70690
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-count))
                                                      (__tmp70688
                                                       (let ((__tmp70689
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp70689
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp70690
                                                        __tmp70688)))
                                               (__tmp70678
                                                (let ((__tmp70679
                                                       (let ((__tmp70686
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fx-))
                                                             (__tmp70680
                                                              (let ((__tmp70682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp70685
                                    (gx#datum->syntax '#f '&raw-table-count))
                                   (__tmp70683
                                    (let ((__tmp70684
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp70684 '()))))
                               (declare (not safe))
                               (cons __tmp70685 __tmp70683)))
                            (__tmp70681
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp70682 __tmp70681))))
                 (declare (not safe))
                 (cons __tmp70686 __tmp70680))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp70679 '()))))
                                           (declare (not safe))
                                           (cons __tmp70687 __tmp70678))))
                                    (declare (not safe))
                                    (cons __tmp70691 __tmp70677))))
                             (declare (not safe))
                             (cons __tmp70676 '()))))
                      (declare (not safe))
                      (cons '() __tmp70675))))
               (declare (not safe))
               (cons __tmp70692 __tmp70674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp70673 '()))))
                                         (declare (not safe))
                                         (cons __tmp70693 __tmp70672))))
                                  (declare (not safe))
                                  (cons _L64881_ __tmp70671))))
                           (declare (not safe))
                           (cons _L64883_ __tmp70670))))
                    (declare (not safe))
                    (cons __tmp70694 __tmp70669))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp70695
                                                           __tmp70668))))
                                              (declare (not safe))
                                              (cons __tmp70667 '()))))
                                       (declare (not safe))
                                       (cons __tmp70696 __tmp70666))))
                                (declare (not safe))
                                (cons __tmp70703 __tmp70665))))
                         (declare (not safe))
                         (cons __tmp70664 '()))))
                  (declare (not safe))
                  (cons __tmp70704 __tmp70663))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp70709
                                                         __tmp70662))))
                                            (declare (not safe))
                                            (cons __tmp70661 '()))))
                                     (declare (not safe))
                                     (cons __tmp70710 __tmp70660))))
                              (declare (not safe))
                              (cons __tmp70801 __tmp70659))))
                       (declare (not safe))
                       (cons __tmp70847 __tmp70658))))
                (declare (not safe))
                (cons __tmp70879 __tmp70657))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp70894 __tmp70656)))
                                             _hd6478764875_
                                             _hd6478464865_
                                             _hd6478164855_
                                             _hd6477864845_
                                             _hd6477564835_
                                             _hd6477264825_
                                             _hd6476964815_)
                                            (_g6475664794_ _g6475764798_))))
                                    (_g6475664794_ _g6475764798_))))
                            (_g6475664794_ _g6475764798_))))
                    (_g6475664794_ _g6475764798_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6475664794_
                                                     _g6475764798_))))
                                            (_g6475664794_ _g6475764798_))))
                                    (_g6475664794_ _g6475764798_))))
                            (_g6475664794_ _g6475764798_))))
                    (_g6475664794_ _g6475764798_)))))
        (_g6475564920_ _$stx64752_))))
  (define |[:0:]#probe-step|
    (lambda (_$stx64924_)
      (let* ((_g6492864950_
              (lambda (_g6492964946_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6492964946_)))
             (_g6492765019_
              (lambda (_g6492964954_)
                (if (gx#stx-pair? _g6492964954_)
                    (let ((_e6493564957_ (gx#syntax-e _g6492964954_)))
                      (let ((_hd6493464961_
                             (let ()
                               (declare (not safe))
                               (##car _e6493564957_)))
                            (_tl6493364964_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6493564957_))))
                        (if (gx#stx-pair? _tl6493364964_)
                            (let ((_e6493864967_ (gx#syntax-e _tl6493364964_)))
                              (let ((_hd6493764971_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6493864967_)))
                                    (_tl6493664974_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6493864967_))))
                                (if (gx#stx-pair? _tl6493664974_)
                                    (let ((_e6494164977_
                                           (gx#syntax-e _tl6493664974_)))
                                      (let ((_hd6494064981_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6494164977_)))
                                            (_tl6493964984_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6494164977_))))
                                        (if (gx#stx-pair? _tl6493964984_)
                                            (let ((_e6494464987_
                                                   (gx#syntax-e
                                                    _tl6493964984_)))
                                              (let ((_hd6494364991_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6494464987_)))
                                                    (_tl6494264994_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6494464987_))))
                                                (if (gx#stx-null?
                                                     _tl6494264994_)
                                                    ((lambda (_L64997_
                                                              _L64999_
                                                              _L65000_)
                                                       (let ((__tmp70914
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp70895
                                                              (let ((__tmp70902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp70913
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp70903
                                    (let ((__tmp70904
                                           (let ((__tmp70912
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp70905
                                                  (let ((__tmp70906
                                                         (let ((__tmp70907
                                                                (let ((__tmp70908
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp70911 (gx#datum->syntax '#f 'fx*))
                                     (__tmp70909
                                      (let ((__tmp70910
                                             (let ()
                                               (declare (not safe))
                                               (cons _L64999_ '()))))
                                        (declare (not safe))
                                        (cons _L64999_ __tmp70910))))
                                 (declare (not safe))
                                 (cons __tmp70911 __tmp70909))))
                          (declare (not safe))
                          (cons __tmp70908 '()))))
                   (declare (not safe))
                   (cons _L64999_ __tmp70907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L65000_
                                                          __tmp70906))))
                                             (declare (not safe))
                                             (cons __tmp70912 __tmp70905))))
                                      (declare (not safe))
                                      (cons __tmp70904 '()))))
                               (declare (not safe))
                               (cons __tmp70913 __tmp70903)))
                            (__tmp70896
                             (let ((__tmp70897
                                    (let ((__tmp70901
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp70898
                                           (let ((__tmp70900
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp70899
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L64997_ '()))))
                                             (declare (not safe))
                                             (cons __tmp70900 __tmp70899))))
                                      (declare (not safe))
                                      (cons __tmp70901 __tmp70898))))
                               (declare (not safe))
                               (cons __tmp70897 '()))))
                        (declare (not safe))
                        (cons __tmp70902 __tmp70896))))
                 (declare (not safe))
                 (cons __tmp70914 __tmp70895)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd6494364991_
                                                     _hd6494064981_
                                                     _hd6493764971_)
                                                    (_g6492864950_
                                                     _g6492964954_))))
                                            (_g6492864950_ _g6492964954_))))
                                    (_g6492864950_ _g6492964954_))))
                            (_g6492864950_ _g6492964954_))))
                    (_g6492864950_ _g6492964954_)))))
        (_g6492765019_ _$stx64924_))))
  (define |[:0:]#__table-ref|
    (lambda (_$stx65023_)
      (let* ((_g6502765057_
              (lambda (_g6502865053_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6502865053_)))
             (_g6502665154_
              (lambda (_g6502865061_)
                (if (gx#stx-pair? _g6502865061_)
                    (let ((_e6503665064_ (gx#syntax-e _g6502865061_)))
                      (let ((_hd6503565068_
                             (let ()
                               (declare (not safe))
                               (##car _e6503665064_)))
                            (_tl6503465071_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6503665064_))))
                        (if (gx#stx-pair? _tl6503465071_)
                            (let ((_e6503965074_ (gx#syntax-e _tl6503465071_)))
                              (let ((_hd6503865078_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6503965074_)))
                                    (_tl6503765081_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6503965074_))))
                                (if (gx#stx-pair? _tl6503765081_)
                                    (let ((_e6504265084_
                                           (gx#syntax-e _tl6503765081_)))
                                      (let ((_hd6504165088_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6504265084_)))
                                            (_tl6504065091_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6504265084_))))
                                        (if (gx#stx-pair? _tl6504065091_)
                                            (let ((_e6504565094_
                                                   (gx#syntax-e
                                                    _tl6504065091_)))
                                              (let ((_hd6504465098_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6504565094_)))
                                                    (_tl6504365101_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6504565094_))))
                                                (if (gx#stx-pair?
                                                     _tl6504365101_)
                                                    (let ((_e6504865104_
                                                           (gx#syntax-e
                                                            _tl6504365101_)))
                                                      (let ((_hd6504765108_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6504865104_)))
                    (_tl6504665111_
                     (let () (declare (not safe)) (##cdr _e6504865104_))))
                (if (gx#stx-pair? _tl6504665111_)
                    (let ((_e6505165114_ (gx#syntax-e _tl6504665111_)))
                      (let ((_hd6505065118_
                             (let ()
                               (declare (not safe))
                               (##car _e6505165114_)))
                            (_tl6504965121_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6505165114_))))
                        (if (gx#stx-null? _tl6504965121_)
                            ((lambda (_L65124_
                                      _L65126_
                                      _L65127_
                                      _L65128_
                                      _L65129_)
                               (let ((__tmp71069 (gx#datum->syntax '#f 'let*))
                                     (__tmp70915
                                      (let ((__tmp71033
                                             (let ((__tmp71064
                                                    (let ((__tmp71068
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp71065
                                                           (let ((__tmp71066
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp71067
                                 (let ()
                                   (declare (not safe))
                                   (cons _L65126_ '()))))
                            (declare (not safe))
                            (cons _L65128_ __tmp71067))))
                     (declare (not safe))
                     (cons __tmp71066 '()))))
              (declare (not safe))
              (cons __tmp71068 __tmp71065)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp71034
                                                    (let ((__tmp71058
                                                           (let ((__tmp71063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size))
                         (__tmp71059
                          (let ((__tmp71060
                                 (let ((__tmp71062
                                        (gx#datum->syntax '#f 'vector-length))
                                       (__tmp71061
                                        (let ()
                                          (declare (not safe))
                                          (cons _L65129_ '()))))
                                   (declare (not safe))
                                   (cons __tmp71062 __tmp71061))))
                            (declare (not safe))
                            (cons __tmp71060 '()))))
                     (declare (not safe))
                     (cons __tmp71063 __tmp71059)))
                  (__tmp71035
                   (let ((__tmp71050
                          (let ((__tmp71057 (gx#datum->syntax '#f 'entries))
                                (__tmp71051
                                 (let ((__tmp71052
                                        (let ((__tmp71056
                                               (gx#datum->syntax
                                                '#f
                                                'fxquotient))
                                              (__tmp71053
                                               (let ((__tmp71055
                                                      (gx#datum->syntax
                                                       '#f
                                                       'size))
                                                     (__tmp71054
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '2 '()))))
                                                 (declare (not safe))
                                                 (cons __tmp71055
                                                       __tmp71054))))
                                          (declare (not safe))
                                          (cons __tmp71056 __tmp71053))))
                                   (declare (not safe))
                                   (cons __tmp71052 '()))))
                            (declare (not safe))
                            (cons __tmp71057 __tmp71051)))
                         (__tmp71036
                          (let ((__tmp71037
                                 (let ((__tmp71049
                                        (gx#datum->syntax '#f 'start))
                                       (__tmp71038
                                        (let ((__tmp71039
                                               (let ((__tmp71048
                                                      (gx#datum->syntax
                                                       '#f
                                                       'fxarithmetic-shift-left))
                                                     (__tmp71040
                                                      (let ((__tmp71042
                                                             (let ((__tmp71047
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fxmodulo))
                           (__tmp71043
                            (let ((__tmp71046 (gx#datum->syntax '#f 'h))
                                  (__tmp71044
                                   (let ((__tmp71045
                                          (gx#datum->syntax '#f 'entries)))
                                     (declare (not safe))
                                     (cons __tmp71045 '()))))
                              (declare (not safe))
                              (cons __tmp71046 __tmp71044))))
                       (declare (not safe))
                       (cons __tmp71047 __tmp71043)))
                    (__tmp71041 (let () (declare (not safe)) (cons '1 '()))))
                (declare (not safe))
                (cons __tmp71042 __tmp71041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp71048
                                                       __tmp71040))))
                                          (declare (not safe))
                                          (cons __tmp71039 '()))))
                                   (declare (not safe))
                                   (cons __tmp71049 __tmp71038))))
                            (declare (not safe))
                            (cons __tmp71037 '()))))
                     (declare (not safe))
                     (cons __tmp71050 __tmp71036))))
              (declare (not safe))
              (cons __tmp71058 __tmp71035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp71064 __tmp71034)))
                                            (__tmp70916
                                             (let ((__tmp70917
                                                    (let ((__tmp71032
                                                           (gx#datum->syntax
                                                            '#f
                                                            'let))
                                                          (__tmp70918
                                                           (let ((__tmp71031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'loop))
                         (__tmp70919
                          (let ((__tmp71018
                                 (let ((__tmp71027
                                        (let ((__tmp71030
                                               (gx#datum->syntax '#f 'probe))
                                              (__tmp71028
                                               (let ((__tmp71029
                                                      (gx#datum->syntax
                                                       '#f
                                                       'start)))
                                                 (declare (not safe))
                                                 (cons __tmp71029 '()))))
                                          (declare (not safe))
                                          (cons __tmp71030 __tmp71028)))
                                       (__tmp71019
                                        (let ((__tmp71024
                                               (let ((__tmp71026
                                                      (gx#datum->syntax
                                                       '#f
                                                       'i))
                                                     (__tmp71025
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '1 '()))))
                                                 (declare (not safe))
                                                 (cons __tmp71026 __tmp71025)))
                                              (__tmp71020
                                               (let ((__tmp71021
                                                      (let ((__tmp71023
                                                             (gx#datum->syntax
                                                              '#f
                                                              'deleted))
                                                            (__tmp71022
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons '#f '()))))
                (declare (not safe))
                (cons __tmp71023 __tmp71022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp71021 '()))))
                                          (declare (not safe))
                                          (cons __tmp71024 __tmp71020))))
                                   (declare (not safe))
                                   (cons __tmp71027 __tmp71019)))
                                (__tmp70920
                                 (let ((__tmp70921
                                        (let ((__tmp71017
                                               (gx#datum->syntax '#f 'let))
                                              (__tmp70922
                                               (let ((__tmp71009
                                                      (let ((__tmp71016
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k))
                                                            (__tmp71010
                                                             (let ((__tmp71011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp71015
                                   (gx#datum->syntax '#f 'vector-ref))
                                  (__tmp71012
                                   (let ((__tmp71013
                                          (let ((__tmp71014
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp71014 '()))))
                                     (declare (not safe))
                                     (cons _L65129_ __tmp71013))))
                              (declare (not safe))
                              (cons __tmp71015 __tmp71012))))
                       (declare (not safe))
                       (cons __tmp71011 '()))))
                (declare (not safe))
                (cons __tmp71016 __tmp71010)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp70923
                                                      (let ((__tmp70924
                                                             (let ((__tmp71008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'cond))
                           (__tmp70925
                            (let ((__tmp70999
                                   (let ((__tmp71001
                                          (let ((__tmp71007
                                                 (gx#datum->syntax '#f 'eq?))
                                                (__tmp71002
                                                 (let ((__tmp71006
                                                        (gx#datum->syntax
                                                         '#f
                                                         'k))
                                                       (__tmp71003
                                                        (let ((__tmp71004
                                                               (let ((__tmp71005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'macro-unused-obj)))
                         (declare (not safe))
                         (cons __tmp71005 '()))))
                  (declare (not safe))
                  (cons __tmp71004 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp71006
                                                         __tmp71003))))
                                            (declare (not safe))
                                            (cons __tmp71007 __tmp71002)))
                                         (__tmp71000
                                          (let ()
                                            (declare (not safe))
                                            (cons _L65124_ '()))))
                                     (declare (not safe))
                                     (cons __tmp71001 __tmp71000)))
                                  (__tmp70926
                                   (let ((__tmp70966
                                          (let ((__tmp70992
                                                 (let ((__tmp70998
                                                        (gx#datum->syntax
                                                         '#f
                                                         'eq?))
                                                       (__tmp70993
                                                        (let ((__tmp70997
                                                               (gx#datum->syntax
                                                                '#f
                                                                'k))
                                                              (__tmp70994
                                                               (let ((__tmp70995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp70996
                                     (gx#datum->syntax
                                      '#f
                                      'macro-deleted-obj)))
                                (declare (not safe))
                                (cons __tmp70996 '()))))
                         (declare (not safe))
                         (cons __tmp70995 '()))))
                  (declare (not safe))
                  (cons __tmp70997 __tmp70994))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp70998
                                                         __tmp70993)))
                                                (__tmp70967
                                                 (let ((__tmp70968
                                                        (let ((__tmp70991
                                                               (gx#datum->syntax
                                                                '#f
                                                                'loop))
                                                              (__tmp70969
                                                               (let ((__tmp70983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp70990
                                     (gx#datum->syntax '#f 'probe-step))
                                    (__tmp70984
                                     (let ((__tmp70989
                                            (gx#datum->syntax '#f 'start))
                                           (__tmp70985
                                            (let ((__tmp70988
                                                   (gx#datum->syntax '#f 'i))
                                                  (__tmp70986
                                                   (let ((__tmp70987
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size)))
                                                     (declare (not safe))
                                                     (cons __tmp70987 '()))))
                                              (declare (not safe))
                                              (cons __tmp70988 __tmp70986))))
                                       (declare (not safe))
                                       (cons __tmp70989 __tmp70985))))
                                (declare (not safe))
                                (cons __tmp70990 __tmp70984)))
                             (__tmp70970
                              (let ((__tmp70978
                                     (let ((__tmp70982
                                            (gx#datum->syntax '#f 'fx+))
                                           (__tmp70979
                                            (let ((__tmp70981
                                                   (gx#datum->syntax '#f 'i))
                                                  (__tmp70980
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '1 '()))))
                                              (declare (not safe))
                                              (cons __tmp70981 __tmp70980))))
                                       (declare (not safe))
                                       (cons __tmp70982 __tmp70979)))
                                    (__tmp70971
                                     (let ((__tmp70972
                                            (let ((__tmp70977
                                                   (gx#datum->syntax '#f 'or))
                                                  (__tmp70973
                                                   (let ((__tmp70976
                                                          (gx#datum->syntax
                                                           '#f
                                                           'deleted))
                                                         (__tmp70974
                                                          (let ((__tmp70975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'probe)))
                    (declare (not safe))
                    (cons __tmp70975 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp70976
                                                           __tmp70974))))
                                              (declare (not safe))
                                              (cons __tmp70977 __tmp70973))))
                                       (declare (not safe))
                                       (cons __tmp70972 '()))))
                                (declare (not safe))
                                (cons __tmp70978 __tmp70971))))
                         (declare (not safe))
                         (cons __tmp70983 __tmp70970))))
                  (declare (not safe))
                  (cons __tmp70991 __tmp70969))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp70968 '()))))
                                            (declare (not safe))
                                            (cons __tmp70992 __tmp70967)))
                                         (__tmp70927
                                          (let ((__tmp70951
                                                 (let ((__tmp70962
                                                        (let ((__tmp70963
                                                               (let ((__tmp70964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp70965 (gx#datum->syntax '#f 'k)))
                                (declare (not safe))
                                (cons __tmp70965 '()))))
                         (declare (not safe))
                         (cons _L65126_ __tmp70964))))
                  (declare (not safe))
                  (cons _L65127_ __tmp70963)))
               (__tmp70952
                (let ((__tmp70953
                       (let ((__tmp70961 (gx#datum->syntax '#f 'vector-ref))
                             (__tmp70954
                              (let ((__tmp70955
                                     (let ((__tmp70956
                                            (let ((__tmp70960
                                                   (gx#datum->syntax '#f 'fx+))
                                                  (__tmp70957
                                                   (let ((__tmp70959
                                                          (gx#datum->syntax
                                                           '#f
                                                           'probe))
                                                         (__tmp70958
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '1 '()))))
                                                     (declare (not safe))
                                                     (cons __tmp70959
                                                           __tmp70958))))
                                              (declare (not safe))
                                              (cons __tmp70960 __tmp70957))))
                                       (declare (not safe))
                                       (cons __tmp70956 '()))))
                                (declare (not safe))
                                (cons _L65129_ __tmp70955))))
                         (declare (not safe))
                         (cons __tmp70961 __tmp70954))))
                  (declare (not safe))
                  (cons __tmp70953 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp70962
                                                         __tmp70952)))
                                                (__tmp70928
                                                 (let ((__tmp70929
                                                        (let ((__tmp70950
                                                               (gx#datum->syntax
                                                                '#f
                                                                'else))
                                                              (__tmp70930
                                                               (let ((__tmp70931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp70949 (gx#datum->syntax '#f 'loop))
                                    (__tmp70932
                                     (let ((__tmp70941
                                            (let ((__tmp70948
                                                   (gx#datum->syntax
                                                    '#f
                                                    'probe-step))
                                                  (__tmp70942
                                                   (let ((__tmp70947
                                                          (gx#datum->syntax
                                                           '#f
                                                           'start))
                                                         (__tmp70943
                                                          (let ((__tmp70946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'i))
                        (__tmp70944
                         (let ((__tmp70945 (gx#datum->syntax '#f 'size)))
                           (declare (not safe))
                           (cons __tmp70945 '()))))
                    (declare (not safe))
                    (cons __tmp70946 __tmp70944))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp70947
                                                           __tmp70943))))
                                              (declare (not safe))
                                              (cons __tmp70948 __tmp70942)))
                                           (__tmp70933
                                            (let ((__tmp70936
                                                   (let ((__tmp70940
                                                          (gx#datum->syntax
                                                           '#f
                                                           'fx+))
                                                         (__tmp70937
                                                          (let ((__tmp70939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'i))
                        (__tmp70938
                         (let () (declare (not safe)) (cons '1 '()))))
                    (declare (not safe))
                    (cons __tmp70939 __tmp70938))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp70940
                                                           __tmp70937)))
                                                  (__tmp70934
                                                   (let ((__tmp70935
                                                          (gx#datum->syntax
                                                           '#f
                                                           'deleted)))
                                                     (declare (not safe))
                                                     (cons __tmp70935 '()))))
                                              (declare (not safe))
                                              (cons __tmp70936 __tmp70934))))
                                       (declare (not safe))
                                       (cons __tmp70941 __tmp70933))))
                                (declare (not safe))
                                (cons __tmp70949 __tmp70932))))
                         (declare (not safe))
                         (cons __tmp70931 '()))))
                  (declare (not safe))
                  (cons __tmp70950 __tmp70930))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp70929 '()))))
                                            (declare (not safe))
                                            (cons __tmp70951 __tmp70928))))
                                     (declare (not safe))
                                     (cons __tmp70966 __tmp70927))))
                              (declare (not safe))
                              (cons __tmp70999 __tmp70926))))
                       (declare (not safe))
                       (cons __tmp71008 __tmp70925))))
                (declare (not safe))
                (cons __tmp70924 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp71009
                                                       __tmp70923))))
                                          (declare (not safe))
                                          (cons __tmp71017 __tmp70922))))
                                   (declare (not safe))
                                   (cons __tmp70921 '()))))
                            (declare (not safe))
                            (cons __tmp71018 __tmp70920))))
                     (declare (not safe))
                     (cons __tmp71031 __tmp70919))))
              (declare (not safe))
              (cons __tmp71032 __tmp70918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp70917 '()))))
                                        (declare (not safe))
                                        (cons __tmp71033 __tmp70916))))
                                 (declare (not safe))
                                 (cons __tmp71069 __tmp70915)))
                             _hd6505065118_
                             _hd6504765108_
                             _hd6504465098_
                             _hd6504165088_
                             _hd6503865078_)
                            (_g6502765057_ _g6502865061_))))
                    (_g6502765057_ _g6502865061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6502765057_
                                                     _g6502865061_))))
                                            (_g6502765057_ _g6502865061_))))
                                    (_g6502765057_ _g6502865061_))))
                            (_g6502765057_ _g6502865061_))))
                    (_g6502765057_ _g6502865061_)))))
        (_g6502665154_ _$stx65023_))))
  (define |[:0:]#__table-set!|
    (lambda (_$stx65158_)
      (let* ((_g6516265200_
              (lambda (_g6516365196_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6516365196_)))
             (_g6516165325_
              (lambda (_g6516365204_)
                (if (gx#stx-pair? _g6516365204_)
                    (let ((_e6517365207_ (gx#syntax-e _g6516365204_)))
                      (let ((_hd6517265211_
                             (let ()
                               (declare (not safe))
                               (##car _e6517365207_)))
                            (_tl6517165214_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6517365207_))))
                        (if (gx#stx-pair? _tl6517165214_)
                            (let ((_e6517665217_ (gx#syntax-e _tl6517165214_)))
                              (let ((_hd6517565221_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6517665217_)))
                                    (_tl6517465224_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6517665217_))))
                                (if (gx#stx-pair? _tl6517465224_)
                                    (let ((_e6517965227_
                                           (gx#syntax-e _tl6517465224_)))
                                      (let ((_hd6517865231_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6517965227_)))
                                            (_tl6517765234_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6517965227_))))
                                        (if (gx#stx-pair? _tl6517765234_)
                                            (let ((_e6518265237_
                                                   (gx#syntax-e
                                                    _tl6517765234_)))
                                              (let ((_hd6518165241_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6518265237_)))
                                                    (_tl6518065244_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6518265237_))))
                                                (if (gx#stx-pair?
                                                     _tl6518065244_)
                                                    (let ((_e6518565247_
                                                           (gx#syntax-e
                                                            _tl6518065244_)))
                                                      (let ((_hd6518465251_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6518565247_)))
                    (_tl6518365254_
                     (let () (declare (not safe)) (##cdr _e6518565247_))))
                (if (gx#stx-pair? _tl6518365254_)
                    (let ((_e6518865257_ (gx#syntax-e _tl6518365254_)))
                      (let ((_hd6518765261_
                             (let ()
                               (declare (not safe))
                               (##car _e6518865257_)))
                            (_tl6518665264_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6518865257_))))
                        (if (gx#stx-pair? _tl6518665264_)
                            (let ((_e6519165267_ (gx#syntax-e _tl6518665264_)))
                              (let ((_hd6519065271_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6519165267_)))
                                    (_tl6518965274_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6519165267_))))
                                (if (gx#stx-pair? _tl6518965274_)
                                    (let ((_e6519465277_
                                           (gx#syntax-e _tl6518965274_)))
                                      (let ((_hd6519365281_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6519465277_)))
                                            (_tl6519265284_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6519465277_))))
                                        (if (gx#stx-null? _tl6519265284_)
                                            ((lambda (_L65287_
                                                      _L65289_
                                                      _L65290_
                                                      _L65291_
                                                      _L65292_
                                                      _L65293_
                                                      _L65294_)
                                               (let ((__tmp71282
                                                      (gx#datum->syntax
                                                       '#f
                                                       'let*))
                                                     (__tmp71070
                                                      (let ((__tmp71246
                                                             (let ((__tmp71277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp71281 (gx#datum->syntax '#f 'h))
                                  (__tmp71278
                                   (let ((__tmp71279
                                          (let ((__tmp71280
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L65291_ '()))))
                                            (declare (not safe))
                                            (cons _L65293_ __tmp71280))))
                                     (declare (not safe))
                                     (cons __tmp71279 '()))))
                              (declare (not safe))
                              (cons __tmp71281 __tmp71278)))
                           (__tmp71247
                            (let ((__tmp71271
                                   (let ((__tmp71276
                                          (gx#datum->syntax '#f 'size))
                                         (__tmp71272
                                          (let ((__tmp71273
                                                 (let ((__tmp71275
                                                        (gx#datum->syntax
                                                         '#f
                                                         'vector-length))
                                                       (__tmp71274
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L65294_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp71275
                                                         __tmp71274))))
                                            (declare (not safe))
                                            (cons __tmp71273 '()))))
                                     (declare (not safe))
                                     (cons __tmp71276 __tmp71272)))
                                  (__tmp71248
                                   (let ((__tmp71263
                                          (let ((__tmp71270
                                                 (gx#datum->syntax
                                                  '#f
                                                  'entries))
                                                (__tmp71264
                                                 (let ((__tmp71265
                                                        (let ((__tmp71269
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fxquotient))
                                                              (__tmp71266
                                                               (let ((__tmp71268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'size))
                             (__tmp71267
                              (let () (declare (not safe)) (cons '2 '()))))
                         (declare (not safe))
                         (cons __tmp71268 __tmp71267))))
                  (declare (not safe))
                  (cons __tmp71269 __tmp71266))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp71265 '()))))
                                            (declare (not safe))
                                            (cons __tmp71270 __tmp71264)))
                                         (__tmp71249
                                          (let ((__tmp71250
                                                 (let ((__tmp71262
                                                        (gx#datum->syntax
                                                         '#f
                                                         'start))
                                                       (__tmp71251
                                                        (let ((__tmp71252
                                                               (let ((__tmp71261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fxarithmetic-shift-left))
                             (__tmp71253
                              (let ((__tmp71255
                                     (let ((__tmp71260
                                            (gx#datum->syntax '#f 'fxmodulo))
                                           (__tmp71256
                                            (let ((__tmp71259
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp71257
                                                   (let ((__tmp71258
                                                          (gx#datum->syntax
                                                           '#f
                                                           'entries)))
                                                     (declare (not safe))
                                                     (cons __tmp71258 '()))))
                                              (declare (not safe))
                                              (cons __tmp71259 __tmp71257))))
                                       (declare (not safe))
                                       (cons __tmp71260 __tmp71256)))
                                    (__tmp71254
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp71255 __tmp71254))))
                         (declare (not safe))
                         (cons __tmp71261 __tmp71253))))
                  (declare (not safe))
                  (cons __tmp71252 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp71262
                                                         __tmp71251))))
                                            (declare (not safe))
                                            (cons __tmp71250 '()))))
                                     (declare (not safe))
                                     (cons __tmp71263 __tmp71249))))
                              (declare (not safe))
                              (cons __tmp71271 __tmp71248))))
                       (declare (not safe))
                       (cons __tmp71277 __tmp71247)))
                    (__tmp71071
                     (let ((__tmp71072
                            (let ((__tmp71245 (gx#datum->syntax '#f 'let))
                                  (__tmp71073
                                   (let ((__tmp71244
                                          (gx#datum->syntax '#f 'loop))
                                         (__tmp71074
                                          (let ((__tmp71231
                                                 (let ((__tmp71240
                                                        (let ((__tmp71243
                                                               (gx#datum->syntax
                                                                '#f
                                                                'probe))
                                                              (__tmp71241
                                                               (let ((__tmp71242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'start)))
                         (declare (not safe))
                         (cons __tmp71242 '()))))
                  (declare (not safe))
                  (cons __tmp71243 __tmp71241)))
               (__tmp71232
                (let ((__tmp71237
                       (let ((__tmp71239 (gx#datum->syntax '#f 'i))
                             (__tmp71238
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp71239 __tmp71238)))
                      (__tmp71233
                       (let ((__tmp71234
                              (let ((__tmp71236
                                     (gx#datum->syntax '#f 'deleted))
                                    (__tmp71235
                                     (let ()
                                       (declare (not safe))
                                       (cons '#f '()))))
                                (declare (not safe))
                                (cons __tmp71236 __tmp71235))))
                         (declare (not safe))
                         (cons __tmp71234 '()))))
                  (declare (not safe))
                  (cons __tmp71237 __tmp71233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp71240
                                                         __tmp71232)))
                                                (__tmp71075
                                                 (let ((__tmp71076
                                                        (let ((__tmp71230
                                                               (gx#datum->syntax
                                                                '#f
                                                                'let))
                                                              (__tmp71077
                                                               (let ((__tmp71222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp71229 (gx#datum->syntax '#f 'k))
                                    (__tmp71223
                                     (let ((__tmp71224
                                            (let ((__tmp71228
                                                   (gx#datum->syntax
                                                    '#f
                                                    'vector-ref))
                                                  (__tmp71225
                                                   (let ((__tmp71226
                                                          (let ((__tmp71227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'probe)))
                    (declare (not safe))
                    (cons __tmp71227 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L65294_
                                                           __tmp71226))))
                                              (declare (not safe))
                                              (cons __tmp71228 __tmp71225))))
                                       (declare (not safe))
                                       (cons __tmp71224 '()))))
                                (declare (not safe))
                                (cons __tmp71229 __tmp71223)))
                             (__tmp71078
                              (let ((__tmp71079
                                     (let ((__tmp71221
                                            (gx#datum->syntax '#f 'cond))
                                           (__tmp71080
                                            (let ((__tmp71162
                                                   (let ((__tmp71214
                                                          (let ((__tmp71220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'eq?))
                        (__tmp71215
                         (let ((__tmp71219 (gx#datum->syntax '#f 'k))
                               (__tmp71216
                                (let ((__tmp71217
                                       (let ((__tmp71218
                                              (gx#datum->syntax
                                               '#f
                                               'macro-unused-obj)))
                                         (declare (not safe))
                                         (cons __tmp71218 '()))))
                                  (declare (not safe))
                                  (cons __tmp71217 '()))))
                           (declare (not safe))
                           (cons __tmp71219 __tmp71216))))
                    (declare (not safe))
                    (cons __tmp71220 __tmp71215)))
                 (__tmp71163
                  (let ((__tmp71164
                         (let ((__tmp71213 (gx#datum->syntax '#f 'if))
                               (__tmp71165
                                (let ((__tmp71212
                                       (gx#datum->syntax '#f 'deleted))
                                      (__tmp71166
                                       (let ((__tmp71190
                                              (let ((__tmp71211
                                                     (gx#datum->syntax
                                                      '#f
                                                      'begin))
                                                    (__tmp71191
                                                     (let ((__tmp71205
                                                            (let ((__tmp71210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-set!))
                          (__tmp71206
                           (let ((__tmp71207
                                  (let ((__tmp71209
                                         (gx#datum->syntax '#f 'deleted))
                                        (__tmp71208
                                         (let ()
                                           (declare (not safe))
                                           (cons _L65291_ '()))))
                                    (declare (not safe))
                                    (cons __tmp71209 __tmp71208))))
                             (declare (not safe))
                             (cons _L65294_ __tmp71207))))
                      (declare (not safe))
                      (cons __tmp71210 __tmp71206)))
                   (__tmp71192
                    (let ((__tmp71195
                           (let ((__tmp71204
                                  (gx#datum->syntax '#f 'vector-set!))
                                 (__tmp71196
                                  (let ((__tmp71197
                                         (let ((__tmp71199
                                                (let ((__tmp71203
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fx+))
                                                      (__tmp71200
                                                       (let ((__tmp71202
                                                              (gx#datum->syntax
                                                               '#f
                                                               'deleted))
                                                             (__tmp71201
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp71202 __tmp71201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp71203
                                                        __tmp71200)))
                                               (__tmp71198
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L65290_ '()))))
                                           (declare (not safe))
                                           (cons __tmp71199 __tmp71198))))
                                    (declare (not safe))
                                    (cons _L65294_ __tmp71197))))
                             (declare (not safe))
                             (cons __tmp71204 __tmp71196)))
                          (__tmp71193
                           (let ((__tmp71194
                                  (let ()
                                    (declare (not safe))
                                    (cons _L65287_ '()))))
                             (declare (not safe))
                             (cons __tmp71194 '()))))
                      (declare (not safe))
                      (cons __tmp71195 __tmp71193))))
               (declare (not safe))
               (cons __tmp71205 __tmp71192))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp71211 __tmp71191)))
                                             (__tmp71167
                                              (let ((__tmp71168
                                                     (let ((__tmp71189
                                                            (gx#datum->syntax
                                                             '#f
                                                             'begin))
                                                           (__tmp71169
                                                            (let ((__tmp71183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp71188
                                  (gx#datum->syntax '#f 'vector-set!))
                                 (__tmp71184
                                  (let ((__tmp71185
                                         (let ((__tmp71187
                                                (gx#datum->syntax '#f 'probe))
                                               (__tmp71186
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L65291_ '()))))
                                           (declare (not safe))
                                           (cons __tmp71187 __tmp71186))))
                                    (declare (not safe))
                                    (cons _L65294_ __tmp71185))))
                             (declare (not safe))
                             (cons __tmp71188 __tmp71184)))
                          (__tmp71170
                           (let ((__tmp71173
                                  (let ((__tmp71182
                                         (gx#datum->syntax '#f 'vector-set!))
                                        (__tmp71174
                                         (let ((__tmp71175
                                                (let ((__tmp71177
                                                       (let ((__tmp71181
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fx+))
                                                             (__tmp71178
                                                              (let ((__tmp71180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe))
                            (__tmp71179
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp71180 __tmp71179))))
                 (declare (not safe))
                 (cons __tmp71181 __tmp71178)))
              (__tmp71176 (let () (declare (not safe)) (cons _L65290_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp71177
                                                        __tmp71176))))
                                           (declare (not safe))
                                           (cons _L65294_ __tmp71175))))
                                    (declare (not safe))
                                    (cons __tmp71182 __tmp71174)))
                                 (__tmp71171
                                  (let ((__tmp71172
                                         (let ()
                                           (declare (not safe))
                                           (cons _L65289_ '()))))
                                    (declare (not safe))
                                    (cons __tmp71172 '()))))
                             (declare (not safe))
                             (cons __tmp71173 __tmp71171))))
                      (declare (not safe))
                      (cons __tmp71183 __tmp71170))))
               (declare (not safe))
               (cons __tmp71189 __tmp71169))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp71168 '()))))
                                         (declare (not safe))
                                         (cons __tmp71190 __tmp71167))))
                                  (declare (not safe))
                                  (cons __tmp71212 __tmp71166))))
                           (declare (not safe))
                           (cons __tmp71213 __tmp71165))))
                    (declare (not safe))
                    (cons __tmp71164 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp71214
                                                           __tmp71163)))
                                                  (__tmp71081
                                                   (let ((__tmp71129
                                                          (let ((__tmp71155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp71161 (gx#datum->syntax '#f 'eq?))
                               (__tmp71156
                                (let ((__tmp71160 (gx#datum->syntax '#f 'k))
                                      (__tmp71157
                                       (let ((__tmp71158
                                              (let ((__tmp71159
                                                     (gx#datum->syntax
                                                      '#f
                                                      'macro-deleted-obj)))
                                                (declare (not safe))
                                                (cons __tmp71159 '()))))
                                         (declare (not safe))
                                         (cons __tmp71158 '()))))
                                  (declare (not safe))
                                  (cons __tmp71160 __tmp71157))))
                           (declare (not safe))
                           (cons __tmp71161 __tmp71156)))
                        (__tmp71130
                         (let ((__tmp71131
                                (let ((__tmp71154 (gx#datum->syntax '#f 'loop))
                                      (__tmp71132
                                       (let ((__tmp71146
                                              (let ((__tmp71153
                                                     (gx#datum->syntax
                                                      '#f
                                                      'probe-step))
                                                    (__tmp71147
                                                     (let ((__tmp71152
                                                            (gx#datum->syntax
                                                             '#f
                                                             'start))
                                                           (__tmp71148
                                                            (let ((__tmp71151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'i))
                          (__tmp71149
                           (let ((__tmp71150 (gx#datum->syntax '#f 'size)))
                             (declare (not safe))
                             (cons __tmp71150 '()))))
                      (declare (not safe))
                      (cons __tmp71151 __tmp71149))))
               (declare (not safe))
               (cons __tmp71152 __tmp71148))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp71153 __tmp71147)))
                                             (__tmp71133
                                              (let ((__tmp71141
                                                     (let ((__tmp71145
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fx+))
                                                           (__tmp71142
                                                            (let ((__tmp71144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'i))
                          (__tmp71143
                           (let () (declare (not safe)) (cons '1 '()))))
                      (declare (not safe))
                      (cons __tmp71144 __tmp71143))))
               (declare (not safe))
               (cons __tmp71145 __tmp71142)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp71134
                                                     (let ((__tmp71135
                                                            (let ((__tmp71140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'or))
                          (__tmp71136
                           (let ((__tmp71139 (gx#datum->syntax '#f 'deleted))
                                 (__tmp71137
                                  (let ((__tmp71138
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp71138 '()))))
                             (declare (not safe))
                             (cons __tmp71139 __tmp71137))))
                      (declare (not safe))
                      (cons __tmp71140 __tmp71136))))
               (declare (not safe))
               (cons __tmp71135 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp71141 __tmp71134))))
                                         (declare (not safe))
                                         (cons __tmp71146 __tmp71133))))
                                  (declare (not safe))
                                  (cons __tmp71154 __tmp71132))))
                           (declare (not safe))
                           (cons __tmp71131 '()))))
                    (declare (not safe))
                    (cons __tmp71155 __tmp71130)))
                 (__tmp71082
                  (let ((__tmp71106
                         (let ((__tmp71125
                                (let ((__tmp71126
                                       (let ((__tmp71127
                                              (let ((__tmp71128
                                                     (gx#datum->syntax
                                                      '#f
                                                      'k)))
                                                (declare (not safe))
                                                (cons __tmp71128 '()))))
                                         (declare (not safe))
                                         (cons _L65291_ __tmp71127))))
                                  (declare (not safe))
                                  (cons _L65292_ __tmp71126)))
                               (__tmp71107
                                (let ((__tmp71119
                                       (let ((__tmp71124
                                              (gx#datum->syntax
                                               '#f
                                               'vector-set!))
                                             (__tmp71120
                                              (let ((__tmp71121
                                                     (let ((__tmp71123
                                                            (gx#datum->syntax
                                                             '#f
                                                             'probe))
                                                           (__tmp71122
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L65291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp71123 __tmp71122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L65294_ __tmp71121))))
                                         (declare (not safe))
                                         (cons __tmp71124 __tmp71120)))
                                      (__tmp71108
                                       (let ((__tmp71109
                                              (let ((__tmp71118
                                                     (gx#datum->syntax
                                                      '#f
                                                      'vector-set!))
                                                    (__tmp71110
                                                     (let ((__tmp71111
                                                            (let ((__tmp71113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp71117 (gx#datum->syntax '#f 'fx+))
                                 (__tmp71114
                                  (let ((__tmp71116
                                         (gx#datum->syntax '#f 'probe))
                                        (__tmp71115
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp71116 __tmp71115))))
                             (declare (not safe))
                             (cons __tmp71117 __tmp71114)))
                          (__tmp71112
                           (let () (declare (not safe)) (cons _L65290_ '()))))
                      (declare (not safe))
                      (cons __tmp71113 __tmp71112))))
               (declare (not safe))
               (cons _L65294_ __tmp71111))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp71118 __tmp71110))))
                                         (declare (not safe))
                                         (cons __tmp71109 '()))))
                                  (declare (not safe))
                                  (cons __tmp71119 __tmp71108))))
                           (declare (not safe))
                           (cons __tmp71125 __tmp71107)))
                        (__tmp71083
                         (let ((__tmp71084
                                (let ((__tmp71105 (gx#datum->syntax '#f 'else))
                                      (__tmp71085
                                       (let ((__tmp71086
                                              (let ((__tmp71104
                                                     (gx#datum->syntax
                                                      '#f
                                                      'loop))
                                                    (__tmp71087
                                                     (let ((__tmp71096
                                                            (let ((__tmp71103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'probe-step))
                          (__tmp71097
                           (let ((__tmp71102 (gx#datum->syntax '#f 'start))
                                 (__tmp71098
                                  (let ((__tmp71101 (gx#datum->syntax '#f 'i))
                                        (__tmp71099
                                         (let ((__tmp71100
                                                (gx#datum->syntax '#f 'size)))
                                           (declare (not safe))
                                           (cons __tmp71100 '()))))
                                    (declare (not safe))
                                    (cons __tmp71101 __tmp71099))))
                             (declare (not safe))
                             (cons __tmp71102 __tmp71098))))
                      (declare (not safe))
                      (cons __tmp71103 __tmp71097)))
                   (__tmp71088
                    (let ((__tmp71091
                           (let ((__tmp71095 (gx#datum->syntax '#f 'fx+))
                                 (__tmp71092
                                  (let ((__tmp71094 (gx#datum->syntax '#f 'i))
                                        (__tmp71093
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp71094 __tmp71093))))
                             (declare (not safe))
                             (cons __tmp71095 __tmp71092)))
                          (__tmp71089
                           (let ((__tmp71090 (gx#datum->syntax '#f 'deleted)))
                             (declare (not safe))
                             (cons __tmp71090 '()))))
                      (declare (not safe))
                      (cons __tmp71091 __tmp71089))))
               (declare (not safe))
               (cons __tmp71096 __tmp71088))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp71104 __tmp71087))))
                                         (declare (not safe))
                                         (cons __tmp71086 '()))))
                                  (declare (not safe))
                                  (cons __tmp71105 __tmp71085))))
                           (declare (not safe))
                           (cons __tmp71084 '()))))
                    (declare (not safe))
                    (cons __tmp71106 __tmp71083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp71129
                                                           __tmp71082))))
                                              (declare (not safe))
                                              (cons __tmp71162 __tmp71081))))
                                       (declare (not safe))
                                       (cons __tmp71221 __tmp71080))))
                                (declare (not safe))
                                (cons __tmp71079 '()))))
                         (declare (not safe))
                         (cons __tmp71222 __tmp71078))))
                  (declare (not safe))
                  (cons __tmp71230 __tmp71077))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp71076 '()))))
                                            (declare (not safe))
                                            (cons __tmp71231 __tmp71075))))
                                     (declare (not safe))
                                     (cons __tmp71244 __tmp71074))))
                              (declare (not safe))
                              (cons __tmp71245 __tmp71073))))
                       (declare (not safe))
                       (cons __tmp71072 '()))))
                (declare (not safe))
                (cons __tmp71246 __tmp71071))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp71282 __tmp71070)))
                                             _hd6519365281_
                                             _hd6519065271_
                                             _hd6518765261_
                                             _hd6518465251_
                                             _hd6518165241_
                                             _hd6517865231_
                                             _hd6517565221_)
                                            (_g6516265200_ _g6516365204_))))
                                    (_g6516265200_ _g6516365204_))))
                            (_g6516265200_ _g6516365204_))))
                    (_g6516265200_ _g6516365204_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6516265200_
                                                     _g6516365204_))))
                                            (_g6516265200_ _g6516365204_))))
                                    (_g6516265200_ _g6516365204_))))
                            (_g6516265200_ _g6516365204_))))
                    (_g6516265200_ _g6516365204_)))))
        (_g6516165325_ _$stx65158_))))
  (define |[:0:]#__table-del!|
    (lambda (_$stx65329_)
      (let* ((_g6533365363_
              (lambda (_g6533465359_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6533465359_)))
             (_g6533265460_
              (lambda (_g6533465367_)
                (if (gx#stx-pair? _g6533465367_)
                    (let ((_e6534265370_ (gx#syntax-e _g6533465367_)))
                      (let ((_hd6534165374_
                             (let ()
                               (declare (not safe))
                               (##car _e6534265370_)))
                            (_tl6534065377_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6534265370_))))
                        (if (gx#stx-pair? _tl6534065377_)
                            (let ((_e6534565380_ (gx#syntax-e _tl6534065377_)))
                              (let ((_hd6534465384_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6534565380_)))
                                    (_tl6534365387_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6534565380_))))
                                (if (gx#stx-pair? _tl6534365387_)
                                    (let ((_e6534865390_
                                           (gx#syntax-e _tl6534365387_)))
                                      (let ((_hd6534765394_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6534865390_)))
                                            (_tl6534665397_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6534865390_))))
                                        (if (gx#stx-pair? _tl6534665397_)
                                            (let ((_e6535165400_
                                                   (gx#syntax-e
                                                    _tl6534665397_)))
                                              (let ((_hd6535065404_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6535165400_)))
                                                    (_tl6534965407_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6535165400_))))
                                                (if (gx#stx-pair?
                                                     _tl6534965407_)
                                                    (let ((_e6535465410_
                                                           (gx#syntax-e
                                                            _tl6534965407_)))
                                                      (let ((_hd6535365414_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6535465410_)))
                    (_tl6535265417_
                     (let () (declare (not safe)) (##cdr _e6535465410_))))
                (if (gx#stx-pair? _tl6535265417_)
                    (let ((_e6535765420_ (gx#syntax-e _tl6535265417_)))
                      (let ((_hd6535665424_
                             (let ()
                               (declare (not safe))
                               (##car _e6535765420_)))
                            (_tl6535565427_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6535765420_))))
                        (if (gx#stx-null? _tl6535565427_)
                            ((lambda (_L65430_
                                      _L65432_
                                      _L65433_
                                      _L65434_
                                      _L65435_)
                               (let ((__tmp71440 (gx#datum->syntax '#f 'let*))
                                     (__tmp71283
                                      (let ((__tmp71404
                                             (let ((__tmp71435
                                                    (let ((__tmp71439
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp71436
                                                           (let ((__tmp71437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp71438
                                 (let ()
                                   (declare (not safe))
                                   (cons _L65432_ '()))))
                            (declare (not safe))
                            (cons _L65434_ __tmp71438))))
                     (declare (not safe))
                     (cons __tmp71437 '()))))
              (declare (not safe))
              (cons __tmp71439 __tmp71436)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp71405
                                                    (let ((__tmp71429
                                                           (let ((__tmp71434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size))
                         (__tmp71430
                          (let ((__tmp71431
                                 (let ((__tmp71433
                                        (gx#datum->syntax '#f 'vector-length))
                                       (__tmp71432
                                        (let ()
                                          (declare (not safe))
                                          (cons _L65435_ '()))))
                                   (declare (not safe))
                                   (cons __tmp71433 __tmp71432))))
                            (declare (not safe))
                            (cons __tmp71431 '()))))
                     (declare (not safe))
                     (cons __tmp71434 __tmp71430)))
                  (__tmp71406
                   (let ((__tmp71421
                          (let ((__tmp71428 (gx#datum->syntax '#f 'entries))
                                (__tmp71422
                                 (let ((__tmp71423
                                        (let ((__tmp71427
                                               (gx#datum->syntax
                                                '#f
                                                'fxquotient))
                                              (__tmp71424
                                               (let ((__tmp71426
                                                      (gx#datum->syntax
                                                       '#f
                                                       'size))
                                                     (__tmp71425
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '2 '()))))
                                                 (declare (not safe))
                                                 (cons __tmp71426
                                                       __tmp71425))))
                                          (declare (not safe))
                                          (cons __tmp71427 __tmp71424))))
                                   (declare (not safe))
                                   (cons __tmp71423 '()))))
                            (declare (not safe))
                            (cons __tmp71428 __tmp71422)))
                         (__tmp71407
                          (let ((__tmp71408
                                 (let ((__tmp71420
                                        (gx#datum->syntax '#f 'start))
                                       (__tmp71409
                                        (let ((__tmp71410
                                               (let ((__tmp71419
                                                      (gx#datum->syntax
                                                       '#f
                                                       'fxarithmetic-shift-left))
                                                     (__tmp71411
                                                      (let ((__tmp71413
                                                             (let ((__tmp71418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fxmodulo))
                           (__tmp71414
                            (let ((__tmp71417 (gx#datum->syntax '#f 'h))
                                  (__tmp71415
                                   (let ((__tmp71416
                                          (gx#datum->syntax '#f 'entries)))
                                     (declare (not safe))
                                     (cons __tmp71416 '()))))
                              (declare (not safe))
                              (cons __tmp71417 __tmp71415))))
                       (declare (not safe))
                       (cons __tmp71418 __tmp71414)))
                    (__tmp71412 (let () (declare (not safe)) (cons '1 '()))))
                (declare (not safe))
                (cons __tmp71413 __tmp71412))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp71419
                                                       __tmp71411))))
                                          (declare (not safe))
                                          (cons __tmp71410 '()))))
                                   (declare (not safe))
                                   (cons __tmp71420 __tmp71409))))
                            (declare (not safe))
                            (cons __tmp71408 '()))))
                     (declare (not safe))
                     (cons __tmp71421 __tmp71407))))
              (declare (not safe))
              (cons __tmp71429 __tmp71406))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp71435 __tmp71405)))
                                            (__tmp71284
                                             (let ((__tmp71285
                                                    (let ((__tmp71403
                                                           (gx#datum->syntax
                                                            '#f
                                                            'let))
                                                          (__tmp71286
                                                           (let ((__tmp71402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'loop))
                         (__tmp71287
                          (let ((__tmp71393
                                 (let ((__tmp71398
                                        (let ((__tmp71401
                                               (gx#datum->syntax '#f 'probe))
                                              (__tmp71399
                                               (let ((__tmp71400
                                                      (gx#datum->syntax
                                                       '#f
                                                       'start)))
                                                 (declare (not safe))
                                                 (cons __tmp71400 '()))))
                                          (declare (not safe))
                                          (cons __tmp71401 __tmp71399)))
                                       (__tmp71394
                                        (let ((__tmp71395
                                               (let ((__tmp71397
                                                      (gx#datum->syntax
                                                       '#f
                                                       'i))
                                                     (__tmp71396
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '1 '()))))
                                                 (declare (not safe))
                                                 (cons __tmp71397
                                                       __tmp71396))))
                                          (declare (not safe))
                                          (cons __tmp71395 '()))))
                                   (declare (not safe))
                                   (cons __tmp71398 __tmp71394)))
                                (__tmp71288
                                 (let ((__tmp71289
                                        (let ((__tmp71392
                                               (gx#datum->syntax '#f 'let))
                                              (__tmp71290
                                               (let ((__tmp71384
                                                      (let ((__tmp71391
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k))
                                                            (__tmp71385
                                                             (let ((__tmp71386
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp71390
                                   (gx#datum->syntax '#f 'vector-ref))
                                  (__tmp71387
                                   (let ((__tmp71388
                                          (let ((__tmp71389
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp71389 '()))))
                                     (declare (not safe))
                                     (cons _L65435_ __tmp71388))))
                              (declare (not safe))
                              (cons __tmp71390 __tmp71387))))
                       (declare (not safe))
                       (cons __tmp71386 '()))))
                (declare (not safe))
                (cons __tmp71391 __tmp71385)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp71291
                                                      (let ((__tmp71292
                                                             (let ((__tmp71383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'cond))
                           (__tmp71293
                            (let ((__tmp71372
                                   (let ((__tmp71376
                                          (let ((__tmp71382
                                                 (gx#datum->syntax '#f 'eq?))
                                                (__tmp71377
                                                 (let ((__tmp71381
                                                        (gx#datum->syntax
                                                         '#f
                                                         'k))
                                                       (__tmp71378
                                                        (let ((__tmp71379
                                                               (let ((__tmp71380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'macro-unused-obj)))
                         (declare (not safe))
                         (cons __tmp71380 '()))))
                  (declare (not safe))
                  (cons __tmp71379 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp71381
                                                         __tmp71378))))
                                            (declare (not safe))
                                            (cons __tmp71382 __tmp71377)))
                                         (__tmp71373
                                          (let ((__tmp71374
                                                 (let ((__tmp71375
                                                        (gx#datum->syntax
                                                         '#f
                                                         'void)))
                                                   (declare (not safe))
                                                   (cons __tmp71375 '()))))
                                            (declare (not safe))
                                            (cons __tmp71374 '()))))
                                     (declare (not safe))
                                     (cons __tmp71376 __tmp71373)))
                                  (__tmp71294
                                   (let ((__tmp71346
                                          (let ((__tmp71365
                                                 (let ((__tmp71371
                                                        (gx#datum->syntax
                                                         '#f
                                                         'eq?))
                                                       (__tmp71366
                                                        (let ((__tmp71370
                                                               (gx#datum->syntax
                                                                '#f
                                                                'k))
                                                              (__tmp71367
                                                               (let ((__tmp71368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp71369
                                     (gx#datum->syntax
                                      '#f
                                      'macro-deleted-obj)))
                                (declare (not safe))
                                (cons __tmp71369 '()))))
                         (declare (not safe))
                         (cons __tmp71368 '()))))
                  (declare (not safe))
                  (cons __tmp71370 __tmp71367))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp71371
                                                         __tmp71366)))
                                                (__tmp71347
                                                 (let ((__tmp71348
                                                        (let ((__tmp71364
                                                               (gx#datum->syntax
                                                                '#f
                                                                'loop))
                                                              (__tmp71349
                                                               (let ((__tmp71356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp71363
                                     (gx#datum->syntax '#f 'probe-step))
                                    (__tmp71357
                                     (let ((__tmp71362
                                            (gx#datum->syntax '#f 'start))
                                           (__tmp71358
                                            (let ((__tmp71361
                                                   (gx#datum->syntax '#f 'i))
                                                  (__tmp71359
                                                   (let ((__tmp71360
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size)))
                                                     (declare (not safe))
                                                     (cons __tmp71360 '()))))
                                              (declare (not safe))
                                              (cons __tmp71361 __tmp71359))))
                                       (declare (not safe))
                                       (cons __tmp71362 __tmp71358))))
                                (declare (not safe))
                                (cons __tmp71363 __tmp71357)))
                             (__tmp71350
                              (let ((__tmp71351
                                     (let ((__tmp71355
                                            (gx#datum->syntax '#f 'fx+))
                                           (__tmp71352
                                            (let ((__tmp71354
                                                   (gx#datum->syntax '#f 'i))
                                                  (__tmp71353
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '1 '()))))
                                              (declare (not safe))
                                              (cons __tmp71354 __tmp71353))))
                                       (declare (not safe))
                                       (cons __tmp71355 __tmp71352))))
                                (declare (not safe))
                                (cons __tmp71351 '()))))
                         (declare (not safe))
                         (cons __tmp71356 __tmp71350))))
                  (declare (not safe))
                  (cons __tmp71364 __tmp71349))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp71348 '()))))
                                            (declare (not safe))
                                            (cons __tmp71365 __tmp71347)))
                                         (__tmp71295
                                          (let ((__tmp71317
                                                 (let ((__tmp71342
                                                        (let ((__tmp71343
                                                               (let ((__tmp71344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp71345 (gx#datum->syntax '#f 'k)))
                                (declare (not safe))
                                (cons __tmp71345 '()))))
                         (declare (not safe))
                         (cons _L65432_ __tmp71344))))
                  (declare (not safe))
                  (cons _L65433_ __tmp71343)))
               (__tmp71318
                (let ((__tmp71334
                       (let ((__tmp71341 (gx#datum->syntax '#f 'vector-set!))
                             (__tmp71335
                              (let ((__tmp71336
                                     (let ((__tmp71340
                                            (gx#datum->syntax '#f 'probe))
                                           (__tmp71337
                                            (let ((__tmp71338
                                                   (let ((__tmp71339
                                                          (gx#datum->syntax
                                                           '#f
                                                           'macro-deleted-obj)))
                                                     (declare (not safe))
                                                     (cons __tmp71339 '()))))
                                              (declare (not safe))
                                              (cons __tmp71338 '()))))
                                       (declare (not safe))
                                       (cons __tmp71340 __tmp71337))))
                                (declare (not safe))
                                (cons _L65435_ __tmp71336))))
                         (declare (not safe))
                         (cons __tmp71341 __tmp71335)))
                      (__tmp71319
                       (let ((__tmp71322
                              (let ((__tmp71333
                                     (gx#datum->syntax '#f 'vector-set!))
                                    (__tmp71323
                                     (let ((__tmp71324
                                            (let ((__tmp71328
                                                   (let ((__tmp71332
                                                          (gx#datum->syntax
                                                           '#f
                                                           'fx+))
                                                         (__tmp71329
                                                          (let ((__tmp71331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'probe))
                        (__tmp71330
                         (let () (declare (not safe)) (cons '1 '()))))
                    (declare (not safe))
                    (cons __tmp71331 __tmp71330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp71332
                                                           __tmp71329)))
                                                  (__tmp71325
                                                   (let ((__tmp71326
                                                          (let ((__tmp71327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'macro-absent-obj)))
                    (declare (not safe))
                    (cons __tmp71327 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp71326 '()))))
                                              (declare (not safe))
                                              (cons __tmp71328 __tmp71325))))
                                       (declare (not safe))
                                       (cons _L65435_ __tmp71324))))
                                (declare (not safe))
                                (cons __tmp71333 __tmp71323)))
                             (__tmp71320
                              (let ((__tmp71321
                                     (let ()
                                       (declare (not safe))
                                       (cons _L65430_ '()))))
                                (declare (not safe))
                                (cons __tmp71321 '()))))
                         (declare (not safe))
                         (cons __tmp71322 __tmp71320))))
                  (declare (not safe))
                  (cons __tmp71334 __tmp71319))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp71342
                                                         __tmp71318)))
                                                (__tmp71296
                                                 (let ((__tmp71297
                                                        (let ((__tmp71316
                                                               (gx#datum->syntax
                                                                '#f
                                                                'else))
                                                              (__tmp71298
                                                               (let ((__tmp71299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp71315 (gx#datum->syntax '#f 'loop))
                                    (__tmp71300
                                     (let ((__tmp71307
                                            (let ((__tmp71314
                                                   (gx#datum->syntax
                                                    '#f
                                                    'probe-step))
                                                  (__tmp71308
                                                   (let ((__tmp71313
                                                          (gx#datum->syntax
                                                           '#f
                                                           'start))
                                                         (__tmp71309
                                                          (let ((__tmp71312
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'i))
                        (__tmp71310
                         (let ((__tmp71311 (gx#datum->syntax '#f 'size)))
                           (declare (not safe))
                           (cons __tmp71311 '()))))
                    (declare (not safe))
                    (cons __tmp71312 __tmp71310))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp71313
                                                           __tmp71309))))
                                              (declare (not safe))
                                              (cons __tmp71314 __tmp71308)))
                                           (__tmp71301
                                            (let ((__tmp71302
                                                   (let ((__tmp71306
                                                          (gx#datum->syntax
                                                           '#f
                                                           'fx+))
                                                         (__tmp71303
                                                          (let ((__tmp71305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'i))
                        (__tmp71304
                         (let () (declare (not safe)) (cons '1 '()))))
                    (declare (not safe))
                    (cons __tmp71305 __tmp71304))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp71306
                                                           __tmp71303))))
                                              (declare (not safe))
                                              (cons __tmp71302 '()))))
                                       (declare (not safe))
                                       (cons __tmp71307 __tmp71301))))
                                (declare (not safe))
                                (cons __tmp71315 __tmp71300))))
                         (declare (not safe))
                         (cons __tmp71299 '()))))
                  (declare (not safe))
                  (cons __tmp71316 __tmp71298))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp71297 '()))))
                                            (declare (not safe))
                                            (cons __tmp71317 __tmp71296))))
                                     (declare (not safe))
                                     (cons __tmp71346 __tmp71295))))
                              (declare (not safe))
                              (cons __tmp71372 __tmp71294))))
                       (declare (not safe))
                       (cons __tmp71383 __tmp71293))))
                (declare (not safe))
                (cons __tmp71292 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp71384
                                                       __tmp71291))))
                                          (declare (not safe))
                                          (cons __tmp71392 __tmp71290))))
                                   (declare (not safe))
                                   (cons __tmp71289 '()))))
                            (declare (not safe))
                            (cons __tmp71393 __tmp71288))))
                     (declare (not safe))
                     (cons __tmp71402 __tmp71287))))
              (declare (not safe))
              (cons __tmp71403 __tmp71286))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp71285 '()))))
                                        (declare (not safe))
                                        (cons __tmp71404 __tmp71284))))
                                 (declare (not safe))
                                 (cons __tmp71440 __tmp71283)))
                             _hd6535665424_
                             _hd6535365414_
                             _hd6535065404_
                             _hd6534765394_
                             _hd6534465384_)
                            (_g6533365363_ _g6533465367_))))
                    (_g6533365363_ _g6533465367_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6533365363_
                                                     _g6533465367_))))
                                            (_g6533365363_ _g6533465367_))))
                                    (_g6533365363_ _g6533465367_))))
                            (_g6533365363_ _g6533465367_))))
                    (_g6533365363_ _g6533465367_)))))
        (_g6533265460_ _$stx65329_)))))
