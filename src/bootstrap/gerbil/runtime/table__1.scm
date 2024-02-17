(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#defspecialized-table|
    (lambda (_$stx63238_)
      (let* ((_g6324263280_
              (lambda (_g6324363276_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6324363276_)))
             (_g6324163406_
              (lambda (_g6324363284_)
                (if (gx#stx-pair? _g6324363284_)
                    (let ((_e6325163287_ (gx#syntax-e _g6324363284_)))
                      (let ((_hd6325263291_
                             (let ()
                               (declare (not safe))
                               (##car _e6325163287_)))
                            (_tl6325363294_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6325163287_))))
                        (if (gx#stx-pair? _tl6325363294_)
                            (let ((_e6325463297_ (gx#syntax-e _tl6325363294_)))
                              (let ((_hd6325563301_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6325463297_)))
                                    (_tl6325663304_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6325463297_))))
                                (if (gx#stx-pair? _tl6325663304_)
                                    (let ((_e6325763307_
                                           (gx#syntax-e _tl6325663304_)))
                                      (let ((_hd6325863311_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6325763307_)))
                                            (_tl6325963314_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6325763307_))))
                                        (if (gx#stx-pair? _tl6325963314_)
                                            (let ((_e6326063317_
                                                   (gx#syntax-e
                                                    _tl6325963314_)))
                                              (let ((_hd6326163321_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6326063317_)))
                                                    (_tl6326263324_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6326063317_))))
                                                (if (gx#stx-pair?
                                                     _tl6326263324_)
                                                    (let ((_e6326363327_
                                                           (gx#syntax-e
                                                            _tl6326263324_)))
                                                      (let ((_hd6326463331_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6326363327_)))
                    (_tl6326563334_
                     (let () (declare (not safe)) (##cdr _e6326363327_))))
                (if (gx#stx-pair? _tl6326563334_)
                    (let ((_e6326663337_ (gx#syntax-e _tl6326563334_)))
                      (let ((_hd6326763341_
                             (let ()
                               (declare (not safe))
                               (##car _e6326663337_)))
                            (_tl6326863344_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6326663337_))))
                        (if (gx#stx-pair? _tl6326863344_)
                            (let ((_e6326963347_ (gx#syntax-e _tl6326863344_)))
                              (let ((_hd6327063351_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6326963347_)))
                                    (_tl6327163354_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6326963347_))))
                                (if (gx#stx-pair? _tl6327163354_)
                                    (let ((_e6327263357_
                                           (gx#syntax-e _tl6327163354_)))
                                      (let ((_hd6327363361_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6327263357_)))
                                            (_tl6327463364_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6327263357_))))
                                        (if (gx#stx-null? _tl6327463364_)
                                            ((lambda (_L63367_
                                                      _L63369_
                                                      _L63370_
                                                      _L63371_
                                                      _L63372_
                                                      _L63373_
                                                      _L63374_)
                                               (let ((__tmp68895
                                                      (gx#datum->syntax
                                                       '#f
                                                       'begin))
                                                     (__tmp68657
                                                      (let ((__tmp68880
                                                             (let ((__tmp68894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'def))
                           (__tmp68881
                            (let ((__tmp68889
                                   (let ((__tmp68890
                                          (let ((__tmp68891
                                                 (let ((__tmp68893
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size-hint))
                                                       (__tmp68892
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#f '()))))
                                                   (declare (not safe))
                                                   (cons __tmp68893
                                                         __tmp68892))))
                                            (declare (not safe))
                                            (cons __tmp68891 '()))))
                                     (declare (not safe))
                                     (cons _L63374_ __tmp68890)))
                                  (__tmp68882
                                   (let ((__tmp68883
                                          (let ((__tmp68888
                                                 (gx#datum->syntax
                                                  '#f
                                                  'make-raw-table))
                                                (__tmp68884
                                                 (let ((__tmp68887
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size-hint))
                                                       (__tmp68885
                                                        (let ((__tmp68886
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L63367_ '()))))
                  (declare (not safe))
                  (cons _L63369_ __tmp68886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp68887
                                                         __tmp68885))))
                                            (declare (not safe))
                                            (cons __tmp68888 __tmp68884))))
                                     (declare (not safe))
                                     (cons __tmp68883 '()))))
                              (declare (not safe))
                              (cons __tmp68889 __tmp68882))))
                       (declare (not safe))
                       (cons __tmp68894 __tmp68881)))
                    (__tmp68658
                     (let ((__tmp68848
                            (let ((__tmp68879 (gx#datum->syntax '#f 'def))
                                  (__tmp68849
                                   (let ((__tmp68872
                                          (let ((__tmp68873
                                                 (let ((__tmp68878
                                                        (gx#datum->syntax
                                                         '#f
                                                         'tab))
                                                       (__tmp68874
                                                        (let ((__tmp68877
                                                               (gx#datum->syntax
                                                                '#f
                                                                'key))
                                                              (__tmp68875
                                                               (let ((__tmp68876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'default)))
                         (declare (not safe))
                         (cons __tmp68876 '()))))
                  (declare (not safe))
                  (cons __tmp68877 __tmp68875))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp68878
                                                         __tmp68874))))
                                            (declare (not safe))
                                            (cons _L63373_ __tmp68873)))
                                         (__tmp68850
                                          (let ((__tmp68851
                                                 (let ((__tmp68871
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let))
                                                       (__tmp68852
                                                        (let ((__tmp68864
                                                               (let ((__tmp68870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'table))
                             (__tmp68865
                              (let ((__tmp68866
                                     (let ((__tmp68869
                                            (gx#datum->syntax
                                             '#f
                                             '&raw-table-table))
                                           (__tmp68867
                                            (let ((__tmp68868
                                                   (gx#datum->syntax
                                                    '#f
                                                    'tab)))
                                              (declare (not safe))
                                              (cons __tmp68868 '()))))
                                       (declare (not safe))
                                       (cons __tmp68869 __tmp68867))))
                                (declare (not safe))
                                (cons __tmp68866 '()))))
                         (declare (not safe))
                         (cons __tmp68870 __tmp68865)))
                      (__tmp68853
                       (let ((__tmp68854
                              (let ((__tmp68863
                                     (gx#datum->syntax '#f '__table-ref))
                                    (__tmp68855
                                     (let ((__tmp68862
                                            (gx#datum->syntax '#f 'table))
                                           (__tmp68856
                                            (let ((__tmp68857
                                                   (let ((__tmp68858
                                                          (let ((__tmp68861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'key))
                        (__tmp68859
                         (let ((__tmp68860 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp68860 '()))))
                    (declare (not safe))
                    (cons __tmp68861 __tmp68859))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L63367_
                                                           __tmp68858))))
                                              (declare (not safe))
                                              (cons _L63369_ __tmp68857))))
                                       (declare (not safe))
                                       (cons __tmp68862 __tmp68856))))
                                (declare (not safe))
                                (cons __tmp68863 __tmp68855))))
                         (declare (not safe))
                         (cons __tmp68854 '()))))
                  (declare (not safe))
                  (cons __tmp68864 __tmp68853))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp68871
                                                         __tmp68852))))
                                            (declare (not safe))
                                            (cons __tmp68851 '()))))
                                     (declare (not safe))
                                     (cons __tmp68872 __tmp68850))))
                              (declare (not safe))
                              (cons __tmp68879 __tmp68849)))
                           (__tmp68659
                            (let ((__tmp68802
                                   (let ((__tmp68847
                                          (gx#datum->syntax '#f 'def))
                                         (__tmp68803
                                          (let ((__tmp68840
                                                 (let ((__tmp68841
                                                        (let ((__tmp68846
                                                               (gx#datum->syntax
                                                                '#f
                                                                'tab))
                                                              (__tmp68842
                                                               (let ((__tmp68845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'key))
                             (__tmp68843
                              (let ((__tmp68844 (gx#datum->syntax '#f 'value)))
                                (declare (not safe))
                                (cons __tmp68844 '()))))
                         (declare (not safe))
                         (cons __tmp68845 __tmp68843))))
                  (declare (not safe))
                  (cons __tmp68846 __tmp68842))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L63372_ __tmp68841)))
                                                (__tmp68804
                                                 (let ((__tmp68813
                                                        (let ((__tmp68839
                                                               (gx#datum->syntax
                                                                '#f
                                                                'when))
                                                              (__tmp68814
                                                               (let ((__tmp68820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp68838 (gx#datum->syntax '#f 'fx<))
                                    (__tmp68821
                                     (let ((__tmp68834
                                            (let ((__tmp68837
                                                   (gx#datum->syntax
                                                    '#f
                                                    '&raw-table-free))
                                                  (__tmp68835
                                                   (let ((__tmp68836
                                                          (gx#datum->syntax
                                                           '#f
                                                           'tab)))
                                                     (declare (not safe))
                                                     (cons __tmp68836 '()))))
                                              (declare (not safe))
                                              (cons __tmp68837 __tmp68835)))
                                           (__tmp68822
                                            (let ((__tmp68823
                                                   (let ((__tmp68833
                                                          (gx#datum->syntax
                                                           '#f
                                                           'fxquotient))
                                                         (__tmp68824
                                                          (let ((__tmp68826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp68832
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp68827
                                (let ((__tmp68828
                                       (let ((__tmp68831
                                              (gx#datum->syntax
                                               '#f
                                               '&raw-table-table))
                                             (__tmp68829
                                              (let ((__tmp68830
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab)))
                                                (declare (not safe))
                                                (cons __tmp68830 '()))))
                                         (declare (not safe))
                                         (cons __tmp68831 __tmp68829))))
                                  (declare (not safe))
                                  (cons __tmp68828 '()))))
                           (declare (not safe))
                           (cons __tmp68832 __tmp68827)))
                        (__tmp68825
                         (let () (declare (not safe)) (cons '4 '()))))
                    (declare (not safe))
                    (cons __tmp68826 __tmp68825))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68833
                                                           __tmp68824))))
                                              (declare (not safe))
                                              (cons __tmp68823 '()))))
                                       (declare (not safe))
                                       (cons __tmp68834 __tmp68822))))
                                (declare (not safe))
                                (cons __tmp68838 __tmp68821)))
                             (__tmp68815
                              (let ((__tmp68816
                                     (let ((__tmp68819
                                            (gx#datum->syntax
                                             '#f
                                             '__raw-table-rehash!))
                                           (__tmp68817
                                            (let ((__tmp68818
                                                   (gx#datum->syntax
                                                    '#f
                                                    'tab)))
                                              (declare (not safe))
                                              (cons __tmp68818 '()))))
                                       (declare (not safe))
                                       (cons __tmp68819 __tmp68817))))
                                (declare (not safe))
                                (cons __tmp68816 '()))))
                         (declare (not safe))
                         (cons __tmp68820 __tmp68815))))
                  (declare (not safe))
                  (cons __tmp68839 __tmp68814)))
               (__tmp68805
                (let ((__tmp68806
                       (let ((__tmp68807
                              (let ((__tmp68812 (gx#datum->syntax '#f 'tab))
                                    (__tmp68808
                                     (let ((__tmp68811
                                            (gx#datum->syntax '#f 'key))
                                           (__tmp68809
                                            (let ((__tmp68810
                                                   (gx#datum->syntax
                                                    '#f
                                                    'value)))
                                              (declare (not safe))
                                              (cons __tmp68810 '()))))
                                       (declare (not safe))
                                       (cons __tmp68811 __tmp68809))))
                                (declare (not safe))
                                (cons __tmp68812 __tmp68808))))
                         (declare (not safe))
                         (cons _L63371_ __tmp68807))))
                  (declare (not safe))
                  (cons __tmp68806 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp68813
                                                         __tmp68805))))
                                            (declare (not safe))
                                            (cons __tmp68840 __tmp68804))))
                                     (declare (not safe))
                                     (cons __tmp68847 __tmp68803)))
                                  (__tmp68660
                                   (let ((__tmp68711
                                          (let ((__tmp68801
                                                 (gx#datum->syntax '#f 'def))
                                                (__tmp68712
                                                 (let ((__tmp68794
                                                        (let ((__tmp68795
                                                               (let ((__tmp68800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'tab))
                             (__tmp68796
                              (let ((__tmp68799 (gx#datum->syntax '#f 'key))
                                    (__tmp68797
                                     (let ((__tmp68798
                                            (gx#datum->syntax '#f 'value)))
                                       (declare (not safe))
                                       (cons __tmp68798 '()))))
                                (declare (not safe))
                                (cons __tmp68799 __tmp68797))))
                         (declare (not safe))
                         (cons __tmp68800 __tmp68796))))
                  (declare (not safe))
                  (cons _L63371_ __tmp68795)))
               (__tmp68713
                (let ((__tmp68714
                       (let ((__tmp68793 (gx#datum->syntax '#f 'let))
                             (__tmp68715
                              (let ((__tmp68786
                                     (let ((__tmp68792
                                            (gx#datum->syntax '#f 'table))
                                           (__tmp68787
                                            (let ((__tmp68788
                                                   (let ((__tmp68791
                                                          (gx#datum->syntax
                                                           '#f
                                                           '&raw-table-table))
                                                         (__tmp68789
                                                          (let ((__tmp68790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'tab)))
                    (declare (not safe))
                    (cons __tmp68790 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68791
                                                           __tmp68789))))
                                              (declare (not safe))
                                              (cons __tmp68788 '()))))
                                       (declare (not safe))
                                       (cons __tmp68792 __tmp68787)))
                                    (__tmp68716
                                     (let ((__tmp68717
                                            (let ((__tmp68785
                                                   (gx#datum->syntax
                                                    '#f
                                                    '__table-set!))
                                                  (__tmp68718
                                                   (let ((__tmp68784
                                                          (gx#datum->syntax
                                                           '#f
                                                           'table))
                                                         (__tmp68719
                                                          (let ((__tmp68720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp68721
                                (let ((__tmp68783 (gx#datum->syntax '#f 'key))
                                      (__tmp68722
                                       (let ((__tmp68782
                                              (gx#datum->syntax '#f 'value))
                                             (__tmp68723
                                              (let ((__tmp68745
                                                     (let ((__tmp68781
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp68746
                                                            (let ((__tmp68747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp68765
                                  (let ((__tmp68780
                                         (gx#datum->syntax '#f 'set!))
                                        (__tmp68766
                                         (let ((__tmp68776
                                                (let ((__tmp68779
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-free))
                                                      (__tmp68777
                                                       (let ((__tmp68778
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp68778
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp68779
                                                        __tmp68777)))
                                               (__tmp68767
                                                (let ((__tmp68768
                                                       (let ((__tmp68775
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fx-))
                                                             (__tmp68769
                                                              (let ((__tmp68771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp68774
                                    (gx#datum->syntax '#f '&raw-table-free))
                                   (__tmp68772
                                    (let ((__tmp68773
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp68773 '()))))
                               (declare (not safe))
                               (cons __tmp68774 __tmp68772)))
                            (__tmp68770
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp68771 __tmp68770))))
                 (declare (not safe))
                 (cons __tmp68775 __tmp68769))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp68768 '()))))
                                           (declare (not safe))
                                           (cons __tmp68776 __tmp68767))))
                                    (declare (not safe))
                                    (cons __tmp68780 __tmp68766)))
                                 (__tmp68748
                                  (let ((__tmp68749
                                         (let ((__tmp68764
                                                (gx#datum->syntax '#f 'set!))
                                               (__tmp68750
                                                (let ((__tmp68760
                                                       (let ((__tmp68763
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-count))
                                                             (__tmp68761
                                                              (let ((__tmp68762
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp68762 '()))))
                 (declare (not safe))
                 (cons __tmp68763 __tmp68761)))
              (__tmp68751
               (let ((__tmp68752
                      (let ((__tmp68759 (gx#datum->syntax '#f 'fx+))
                            (__tmp68753
                             (let ((__tmp68755
                                    (let ((__tmp68758
                                           (gx#datum->syntax
                                            '#f
                                            '&raw-table-count))
                                          (__tmp68756
                                           (let ((__tmp68757
                                                  (gx#datum->syntax '#f 'tab)))
                                             (declare (not safe))
                                             (cons __tmp68757 '()))))
                                      (declare (not safe))
                                      (cons __tmp68758 __tmp68756)))
                                   (__tmp68754
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 '()))))
                               (declare (not safe))
                               (cons __tmp68755 __tmp68754))))
                        (declare (not safe))
                        (cons __tmp68759 __tmp68753))))
                 (declare (not safe))
                 (cons __tmp68752 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp68760
                                                        __tmp68751))))
                                           (declare (not safe))
                                           (cons __tmp68764 __tmp68750))))
                                    (declare (not safe))
                                    (cons __tmp68749 '()))))
                             (declare (not safe))
                             (cons __tmp68765 __tmp68748))))
                      (declare (not safe))
                      (cons '() __tmp68747))))
               (declare (not safe))
               (cons __tmp68781 __tmp68746)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp68724
                                                     (let ((__tmp68725
                                                            (let ((__tmp68744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'lambda))
                          (__tmp68726
                           (let ((__tmp68727
                                  (let ((__tmp68728
                                         (let ((__tmp68743
                                                (gx#datum->syntax '#f 'set!))
                                               (__tmp68729
                                                (let ((__tmp68739
                                                       (let ((__tmp68742
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-count))
                                                             (__tmp68740
                                                              (let ((__tmp68741
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp68741 '()))))
                 (declare (not safe))
                 (cons __tmp68742 __tmp68740)))
              (__tmp68730
               (let ((__tmp68731
                      (let ((__tmp68738 (gx#datum->syntax '#f 'fx+))
                            (__tmp68732
                             (let ((__tmp68734
                                    (let ((__tmp68737
                                           (gx#datum->syntax
                                            '#f
                                            '&raw-table-count))
                                          (__tmp68735
                                           (let ((__tmp68736
                                                  (gx#datum->syntax '#f 'tab)))
                                             (declare (not safe))
                                             (cons __tmp68736 '()))))
                                      (declare (not safe))
                                      (cons __tmp68737 __tmp68735)))
                                   (__tmp68733
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 '()))))
                               (declare (not safe))
                               (cons __tmp68734 __tmp68733))))
                        (declare (not safe))
                        (cons __tmp68738 __tmp68732))))
                 (declare (not safe))
                 (cons __tmp68731 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp68739
                                                        __tmp68730))))
                                           (declare (not safe))
                                           (cons __tmp68743 __tmp68729))))
                                    (declare (not safe))
                                    (cons __tmp68728 '()))))
                             (declare (not safe))
                             (cons '() __tmp68727))))
                      (declare (not safe))
                      (cons __tmp68744 __tmp68726))))
               (declare (not safe))
               (cons __tmp68725 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp68745 __tmp68724))))
                                         (declare (not safe))
                                         (cons __tmp68782 __tmp68723))))
                                  (declare (not safe))
                                  (cons __tmp68783 __tmp68722))))
                           (declare (not safe))
                           (cons _L63367_ __tmp68721))))
                    (declare (not safe))
                    (cons _L63369_ __tmp68720))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68784
                                                           __tmp68719))))
                                              (declare (not safe))
                                              (cons __tmp68785 __tmp68718))))
                                       (declare (not safe))
                                       (cons __tmp68717 '()))))
                                (declare (not safe))
                                (cons __tmp68786 __tmp68716))))
                         (declare (not safe))
                         (cons __tmp68793 __tmp68715))))
                  (declare (not safe))
                  (cons __tmp68714 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp68794
                                                         __tmp68713))))
                                            (declare (not safe))
                                            (cons __tmp68801 __tmp68712)))
                                         (__tmp68661
                                          (let ((__tmp68662
                                                 (let ((__tmp68710
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp68663
                                                        (let ((__tmp68705
                                                               (let ((__tmp68706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp68709 (gx#datum->syntax '#f 'tab))
                                    (__tmp68707
                                     (let ((__tmp68708
                                            (gx#datum->syntax '#f 'key)))
                                       (declare (not safe))
                                       (cons __tmp68708 '()))))
                                (declare (not safe))
                                (cons __tmp68709 __tmp68707))))
                         (declare (not safe))
                         (cons _L63370_ __tmp68706)))
                      (__tmp68664
                       (let ((__tmp68665
                              (let ((__tmp68704 (gx#datum->syntax '#f 'let))
                                    (__tmp68666
                                     (let ((__tmp68697
                                            (let ((__tmp68703
                                                   (gx#datum->syntax
                                                    '#f
                                                    'table))
                                                  (__tmp68698
                                                   (let ((__tmp68699
                                                          (let ((__tmp68702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '&raw-table-table))
                        (__tmp68700
                         (let ((__tmp68701 (gx#datum->syntax '#f 'tab)))
                           (declare (not safe))
                           (cons __tmp68701 '()))))
                    (declare (not safe))
                    (cons __tmp68702 __tmp68700))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68699 '()))))
                                              (declare (not safe))
                                              (cons __tmp68703 __tmp68698)))
                                           (__tmp68667
                                            (let ((__tmp68668
                                                   (let ((__tmp68696
                                                          (gx#datum->syntax
                                                           '#f
                                                           '__table-del!))
                                                         (__tmp68669
                                                          (let ((__tmp68695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'table))
                        (__tmp68670
                         (let ((__tmp68671
                                (let ((__tmp68672
                                       (let ((__tmp68694
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp68673
                                              (let ((__tmp68674
                                                     (let ((__tmp68693
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp68675
                                                            (let ((__tmp68676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp68677
                                  (let ((__tmp68692
                                         (gx#datum->syntax '#f 'set!))
                                        (__tmp68678
                                         (let ((__tmp68688
                                                (let ((__tmp68691
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-count))
                                                      (__tmp68689
                                                       (let ((__tmp68690
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp68690
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp68691
                                                        __tmp68689)))
                                               (__tmp68679
                                                (let ((__tmp68680
                                                       (let ((__tmp68687
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fx-))
                                                             (__tmp68681
                                                              (let ((__tmp68683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp68686
                                    (gx#datum->syntax '#f '&raw-table-count))
                                   (__tmp68684
                                    (let ((__tmp68685
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp68685 '()))))
                               (declare (not safe))
                               (cons __tmp68686 __tmp68684)))
                            (__tmp68682
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp68683 __tmp68682))))
                 (declare (not safe))
                 (cons __tmp68687 __tmp68681))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp68680 '()))))
                                           (declare (not safe))
                                           (cons __tmp68688 __tmp68679))))
                                    (declare (not safe))
                                    (cons __tmp68692 __tmp68678))))
                             (declare (not safe))
                             (cons __tmp68677 '()))))
                      (declare (not safe))
                      (cons '() __tmp68676))))
               (declare (not safe))
               (cons __tmp68693 __tmp68675))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp68674 '()))))
                                         (declare (not safe))
                                         (cons __tmp68694 __tmp68673))))
                                  (declare (not safe))
                                  (cons _L63367_ __tmp68672))))
                           (declare (not safe))
                           (cons _L63369_ __tmp68671))))
                    (declare (not safe))
                    (cons __tmp68695 __tmp68670))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68696
                                                           __tmp68669))))
                                              (declare (not safe))
                                              (cons __tmp68668 '()))))
                                       (declare (not safe))
                                       (cons __tmp68697 __tmp68667))))
                                (declare (not safe))
                                (cons __tmp68704 __tmp68666))))
                         (declare (not safe))
                         (cons __tmp68665 '()))))
                  (declare (not safe))
                  (cons __tmp68705 __tmp68664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp68710
                                                         __tmp68663))))
                                            (declare (not safe))
                                            (cons __tmp68662 '()))))
                                     (declare (not safe))
                                     (cons __tmp68711 __tmp68661))))
                              (declare (not safe))
                              (cons __tmp68802 __tmp68660))))
                       (declare (not safe))
                       (cons __tmp68848 __tmp68659))))
                (declare (not safe))
                (cons __tmp68880 __tmp68658))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp68895 __tmp68657)))
                                             _hd6327363361_
                                             _hd6327063351_
                                             _hd6326763341_
                                             _hd6326463331_
                                             _hd6326163321_
                                             _hd6325863311_
                                             _hd6325563301_)
                                            (_g6324263280_ _g6324363284_))))
                                    (_g6324263280_ _g6324363284_))))
                            (_g6324263280_ _g6324363284_))))
                    (_g6324263280_ _g6324363284_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6324263280_
                                                     _g6324363284_))))
                                            (_g6324263280_ _g6324363284_))))
                                    (_g6324263280_ _g6324363284_))))
                            (_g6324263280_ _g6324363284_))))
                    (_g6324263280_ _g6324363284_)))))
        (_g6324163406_ _$stx63238_))))
  (define |[:0:]#probe-step|
    (lambda (_$stx63410_)
      (let* ((_g6341463436_
              (lambda (_g6341563432_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6341563432_)))
             (_g6341363505_
              (lambda (_g6341563440_)
                (if (gx#stx-pair? _g6341563440_)
                    (let ((_e6341963443_ (gx#syntax-e _g6341563440_)))
                      (let ((_hd6342063447_
                             (let ()
                               (declare (not safe))
                               (##car _e6341963443_)))
                            (_tl6342163450_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6341963443_))))
                        (if (gx#stx-pair? _tl6342163450_)
                            (let ((_e6342263453_ (gx#syntax-e _tl6342163450_)))
                              (let ((_hd6342363457_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6342263453_)))
                                    (_tl6342463460_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6342263453_))))
                                (if (gx#stx-pair? _tl6342463460_)
                                    (let ((_e6342563463_
                                           (gx#syntax-e _tl6342463460_)))
                                      (let ((_hd6342663467_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6342563463_)))
                                            (_tl6342763470_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6342563463_))))
                                        (if (gx#stx-pair? _tl6342763470_)
                                            (let ((_e6342863473_
                                                   (gx#syntax-e
                                                    _tl6342763470_)))
                                              (let ((_hd6342963477_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6342863473_)))
                                                    (_tl6343063480_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6342863473_))))
                                                (if (gx#stx-null?
                                                     _tl6343063480_)
                                                    ((lambda (_L63483_
                                                              _L63485_
                                                              _L63486_)
                                                       (let ((__tmp68915
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp68896
                                                              (let ((__tmp68903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp68914
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp68904
                                    (let ((__tmp68905
                                           (let ((__tmp68913
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp68906
                                                  (let ((__tmp68907
                                                         (let ((__tmp68908
                                                                (let ((__tmp68909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp68912 (gx#datum->syntax '#f 'fx*))
                                     (__tmp68910
                                      (let ((__tmp68911
                                             (let ()
                                               (declare (not safe))
                                               (cons _L63485_ '()))))
                                        (declare (not safe))
                                        (cons _L63485_ __tmp68911))))
                                 (declare (not safe))
                                 (cons __tmp68912 __tmp68910))))
                          (declare (not safe))
                          (cons __tmp68909 '()))))
                   (declare (not safe))
                   (cons _L63485_ __tmp68908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L63486_
                                                          __tmp68907))))
                                             (declare (not safe))
                                             (cons __tmp68913 __tmp68906))))
                                      (declare (not safe))
                                      (cons __tmp68905 '()))))
                               (declare (not safe))
                               (cons __tmp68914 __tmp68904)))
                            (__tmp68897
                             (let ((__tmp68898
                                    (let ((__tmp68902
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp68899
                                           (let ((__tmp68901
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp68900
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L63483_ '()))))
                                             (declare (not safe))
                                             (cons __tmp68901 __tmp68900))))
                                      (declare (not safe))
                                      (cons __tmp68902 __tmp68899))))
                               (declare (not safe))
                               (cons __tmp68898 '()))))
                        (declare (not safe))
                        (cons __tmp68903 __tmp68897))))
                 (declare (not safe))
                 (cons __tmp68915 __tmp68896)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd6342963477_
                                                     _hd6342663467_
                                                     _hd6342363457_)
                                                    (_g6341463436_
                                                     _g6341563440_))))
                                            (_g6341463436_ _g6341563440_))))
                                    (_g6341463436_ _g6341563440_))))
                            (_g6341463436_ _g6341563440_))))
                    (_g6341463436_ _g6341563440_)))))
        (_g6341363505_ _$stx63410_))))
  (define |[:0:]#__table-ref|
    (lambda (_$stx63509_)
      (let* ((_g6351363543_
              (lambda (_g6351463539_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6351463539_)))
             (_g6351263640_
              (lambda (_g6351463547_)
                (if (gx#stx-pair? _g6351463547_)
                    (let ((_e6352063550_ (gx#syntax-e _g6351463547_)))
                      (let ((_hd6352163554_
                             (let ()
                               (declare (not safe))
                               (##car _e6352063550_)))
                            (_tl6352263557_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6352063550_))))
                        (if (gx#stx-pair? _tl6352263557_)
                            (let ((_e6352363560_ (gx#syntax-e _tl6352263557_)))
                              (let ((_hd6352463564_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6352363560_)))
                                    (_tl6352563567_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6352363560_))))
                                (if (gx#stx-pair? _tl6352563567_)
                                    (let ((_e6352663570_
                                           (gx#syntax-e _tl6352563567_)))
                                      (let ((_hd6352763574_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6352663570_)))
                                            (_tl6352863577_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6352663570_))))
                                        (if (gx#stx-pair? _tl6352863577_)
                                            (let ((_e6352963580_
                                                   (gx#syntax-e
                                                    _tl6352863577_)))
                                              (let ((_hd6353063584_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6352963580_)))
                                                    (_tl6353163587_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6352963580_))))
                                                (if (gx#stx-pair?
                                                     _tl6353163587_)
                                                    (let ((_e6353263590_
                                                           (gx#syntax-e
                                                            _tl6353163587_)))
                                                      (let ((_hd6353363594_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6353263590_)))
                    (_tl6353463597_
                     (let () (declare (not safe)) (##cdr _e6353263590_))))
                (if (gx#stx-pair? _tl6353463597_)
                    (let ((_e6353563600_ (gx#syntax-e _tl6353463597_)))
                      (let ((_hd6353663604_
                             (let ()
                               (declare (not safe))
                               (##car _e6353563600_)))
                            (_tl6353763607_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6353563600_))))
                        (if (gx#stx-null? _tl6353763607_)
                            ((lambda (_L63610_
                                      _L63612_
                                      _L63613_
                                      _L63614_
                                      _L63615_)
                               (let ((__tmp69070 (gx#datum->syntax '#f 'let*))
                                     (__tmp68916
                                      (let ((__tmp69034
                                             (let ((__tmp69065
                                                    (let ((__tmp69069
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp69066
                                                           (let ((__tmp69067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp69068
                                 (let ()
                                   (declare (not safe))
                                   (cons _L63612_ '()))))
                            (declare (not safe))
                            (cons _L63614_ __tmp69068))))
                     (declare (not safe))
                     (cons __tmp69067 '()))))
              (declare (not safe))
              (cons __tmp69069 __tmp69066)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp69035
                                                    (let ((__tmp69059
                                                           (let ((__tmp69064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size))
                         (__tmp69060
                          (let ((__tmp69061
                                 (let ((__tmp69063
                                        (gx#datum->syntax '#f 'vector-length))
                                       (__tmp69062
                                        (let ()
                                          (declare (not safe))
                                          (cons _L63615_ '()))))
                                   (declare (not safe))
                                   (cons __tmp69063 __tmp69062))))
                            (declare (not safe))
                            (cons __tmp69061 '()))))
                     (declare (not safe))
                     (cons __tmp69064 __tmp69060)))
                  (__tmp69036
                   (let ((__tmp69051
                          (let ((__tmp69058 (gx#datum->syntax '#f 'entries))
                                (__tmp69052
                                 (let ((__tmp69053
                                        (let ((__tmp69057
                                               (gx#datum->syntax
                                                '#f
                                                'fxquotient))
                                              (__tmp69054
                                               (let ((__tmp69056
                                                      (gx#datum->syntax
                                                       '#f
                                                       'size))
                                                     (__tmp69055
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '2 '()))))
                                                 (declare (not safe))
                                                 (cons __tmp69056
                                                       __tmp69055))))
                                          (declare (not safe))
                                          (cons __tmp69057 __tmp69054))))
                                   (declare (not safe))
                                   (cons __tmp69053 '()))))
                            (declare (not safe))
                            (cons __tmp69058 __tmp69052)))
                         (__tmp69037
                          (let ((__tmp69038
                                 (let ((__tmp69050
                                        (gx#datum->syntax '#f 'start))
                                       (__tmp69039
                                        (let ((__tmp69040
                                               (let ((__tmp69049
                                                      (gx#datum->syntax
                                                       '#f
                                                       'fxarithmetic-shift-left))
                                                     (__tmp69041
                                                      (let ((__tmp69043
                                                             (let ((__tmp69048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fxmodulo))
                           (__tmp69044
                            (let ((__tmp69047 (gx#datum->syntax '#f 'h))
                                  (__tmp69045
                                   (let ((__tmp69046
                                          (gx#datum->syntax '#f 'entries)))
                                     (declare (not safe))
                                     (cons __tmp69046 '()))))
                              (declare (not safe))
                              (cons __tmp69047 __tmp69045))))
                       (declare (not safe))
                       (cons __tmp69048 __tmp69044)))
                    (__tmp69042 (let () (declare (not safe)) (cons '1 '()))))
                (declare (not safe))
                (cons __tmp69043 __tmp69042))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69049
                                                       __tmp69041))))
                                          (declare (not safe))
                                          (cons __tmp69040 '()))))
                                   (declare (not safe))
                                   (cons __tmp69050 __tmp69039))))
                            (declare (not safe))
                            (cons __tmp69038 '()))))
                     (declare (not safe))
                     (cons __tmp69051 __tmp69037))))
              (declare (not safe))
              (cons __tmp69059 __tmp69036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69065 __tmp69035)))
                                            (__tmp68917
                                             (let ((__tmp68918
                                                    (let ((__tmp69033
                                                           (gx#datum->syntax
                                                            '#f
                                                            'let))
                                                          (__tmp68919
                                                           (let ((__tmp69032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'loop))
                         (__tmp68920
                          (let ((__tmp69019
                                 (let ((__tmp69028
                                        (let ((__tmp69031
                                               (gx#datum->syntax '#f 'probe))
                                              (__tmp69029
                                               (let ((__tmp69030
                                                      (gx#datum->syntax
                                                       '#f
                                                       'start)))
                                                 (declare (not safe))
                                                 (cons __tmp69030 '()))))
                                          (declare (not safe))
                                          (cons __tmp69031 __tmp69029)))
                                       (__tmp69020
                                        (let ((__tmp69025
                                               (let ((__tmp69027
                                                      (gx#datum->syntax
                                                       '#f
                                                       'i))
                                                     (__tmp69026
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '1 '()))))
                                                 (declare (not safe))
                                                 (cons __tmp69027 __tmp69026)))
                                              (__tmp69021
                                               (let ((__tmp69022
                                                      (let ((__tmp69024
                                                             (gx#datum->syntax
                                                              '#f
                                                              'deleted))
                                                            (__tmp69023
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons '#f '()))))
                (declare (not safe))
                (cons __tmp69024 __tmp69023))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69022 '()))))
                                          (declare (not safe))
                                          (cons __tmp69025 __tmp69021))))
                                   (declare (not safe))
                                   (cons __tmp69028 __tmp69020)))
                                (__tmp68921
                                 (let ((__tmp68922
                                        (let ((__tmp69018
                                               (gx#datum->syntax '#f 'let))
                                              (__tmp68923
                                               (let ((__tmp69010
                                                      (let ((__tmp69017
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k))
                                                            (__tmp69011
                                                             (let ((__tmp69012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp69016
                                   (gx#datum->syntax '#f 'vector-ref))
                                  (__tmp69013
                                   (let ((__tmp69014
                                          (let ((__tmp69015
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp69015 '()))))
                                     (declare (not safe))
                                     (cons _L63615_ __tmp69014))))
                              (declare (not safe))
                              (cons __tmp69016 __tmp69013))))
                       (declare (not safe))
                       (cons __tmp69012 '()))))
                (declare (not safe))
                (cons __tmp69017 __tmp69011)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp68924
                                                      (let ((__tmp68925
                                                             (let ((__tmp69009
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'cond))
                           (__tmp68926
                            (let ((__tmp69000
                                   (let ((__tmp69002
                                          (let ((__tmp69008
                                                 (gx#datum->syntax '#f 'eq?))
                                                (__tmp69003
                                                 (let ((__tmp69007
                                                        (gx#datum->syntax
                                                         '#f
                                                         'k))
                                                       (__tmp69004
                                                        (let ((__tmp69005
                                                               (let ((__tmp69006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'macro-unused-obj)))
                         (declare (not safe))
                         (cons __tmp69006 '()))))
                  (declare (not safe))
                  (cons __tmp69005 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69007
                                                         __tmp69004))))
                                            (declare (not safe))
                                            (cons __tmp69008 __tmp69003)))
                                         (__tmp69001
                                          (let ()
                                            (declare (not safe))
                                            (cons _L63610_ '()))))
                                     (declare (not safe))
                                     (cons __tmp69002 __tmp69001)))
                                  (__tmp68927
                                   (let ((__tmp68967
                                          (let ((__tmp68993
                                                 (let ((__tmp68999
                                                        (gx#datum->syntax
                                                         '#f
                                                         'eq?))
                                                       (__tmp68994
                                                        (let ((__tmp68998
                                                               (gx#datum->syntax
                                                                '#f
                                                                'k))
                                                              (__tmp68995
                                                               (let ((__tmp68996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp68997
                                     (gx#datum->syntax
                                      '#f
                                      'macro-deleted-obj)))
                                (declare (not safe))
                                (cons __tmp68997 '()))))
                         (declare (not safe))
                         (cons __tmp68996 '()))))
                  (declare (not safe))
                  (cons __tmp68998 __tmp68995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp68999
                                                         __tmp68994)))
                                                (__tmp68968
                                                 (let ((__tmp68969
                                                        (let ((__tmp68992
                                                               (gx#datum->syntax
                                                                '#f
                                                                'loop))
                                                              (__tmp68970
                                                               (let ((__tmp68984
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp68991
                                     (gx#datum->syntax '#f 'probe-step))
                                    (__tmp68985
                                     (let ((__tmp68990
                                            (gx#datum->syntax '#f 'start))
                                           (__tmp68986
                                            (let ((__tmp68989
                                                   (gx#datum->syntax '#f 'i))
                                                  (__tmp68987
                                                   (let ((__tmp68988
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size)))
                                                     (declare (not safe))
                                                     (cons __tmp68988 '()))))
                                              (declare (not safe))
                                              (cons __tmp68989 __tmp68987))))
                                       (declare (not safe))
                                       (cons __tmp68990 __tmp68986))))
                                (declare (not safe))
                                (cons __tmp68991 __tmp68985)))
                             (__tmp68971
                              (let ((__tmp68979
                                     (let ((__tmp68983
                                            (gx#datum->syntax '#f 'fx+))
                                           (__tmp68980
                                            (let ((__tmp68982
                                                   (gx#datum->syntax '#f 'i))
                                                  (__tmp68981
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '1 '()))))
                                              (declare (not safe))
                                              (cons __tmp68982 __tmp68981))))
                                       (declare (not safe))
                                       (cons __tmp68983 __tmp68980)))
                                    (__tmp68972
                                     (let ((__tmp68973
                                            (let ((__tmp68978
                                                   (gx#datum->syntax '#f 'or))
                                                  (__tmp68974
                                                   (let ((__tmp68977
                                                          (gx#datum->syntax
                                                           '#f
                                                           'deleted))
                                                         (__tmp68975
                                                          (let ((__tmp68976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'probe)))
                    (declare (not safe))
                    (cons __tmp68976 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68977
                                                           __tmp68975))))
                                              (declare (not safe))
                                              (cons __tmp68978 __tmp68974))))
                                       (declare (not safe))
                                       (cons __tmp68973 '()))))
                                (declare (not safe))
                                (cons __tmp68979 __tmp68972))))
                         (declare (not safe))
                         (cons __tmp68984 __tmp68971))))
                  (declare (not safe))
                  (cons __tmp68992 __tmp68970))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp68969 '()))))
                                            (declare (not safe))
                                            (cons __tmp68993 __tmp68968)))
                                         (__tmp68928
                                          (let ((__tmp68952
                                                 (let ((__tmp68963
                                                        (let ((__tmp68964
                                                               (let ((__tmp68965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp68966 (gx#datum->syntax '#f 'k)))
                                (declare (not safe))
                                (cons __tmp68966 '()))))
                         (declare (not safe))
                         (cons _L63612_ __tmp68965))))
                  (declare (not safe))
                  (cons _L63613_ __tmp68964)))
               (__tmp68953
                (let ((__tmp68954
                       (let ((__tmp68962 (gx#datum->syntax '#f 'vector-ref))
                             (__tmp68955
                              (let ((__tmp68956
                                     (let ((__tmp68957
                                            (let ((__tmp68961
                                                   (gx#datum->syntax '#f 'fx+))
                                                  (__tmp68958
                                                   (let ((__tmp68960
                                                          (gx#datum->syntax
                                                           '#f
                                                           'probe))
                                                         (__tmp68959
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '1 '()))))
                                                     (declare (not safe))
                                                     (cons __tmp68960
                                                           __tmp68959))))
                                              (declare (not safe))
                                              (cons __tmp68961 __tmp68958))))
                                       (declare (not safe))
                                       (cons __tmp68957 '()))))
                                (declare (not safe))
                                (cons _L63615_ __tmp68956))))
                         (declare (not safe))
                         (cons __tmp68962 __tmp68955))))
                  (declare (not safe))
                  (cons __tmp68954 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp68963
                                                         __tmp68953)))
                                                (__tmp68929
                                                 (let ((__tmp68930
                                                        (let ((__tmp68951
                                                               (gx#datum->syntax
                                                                '#f
                                                                'else))
                                                              (__tmp68931
                                                               (let ((__tmp68932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp68950 (gx#datum->syntax '#f 'loop))
                                    (__tmp68933
                                     (let ((__tmp68942
                                            (let ((__tmp68949
                                                   (gx#datum->syntax
                                                    '#f
                                                    'probe-step))
                                                  (__tmp68943
                                                   (let ((__tmp68948
                                                          (gx#datum->syntax
                                                           '#f
                                                           'start))
                                                         (__tmp68944
                                                          (let ((__tmp68947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'i))
                        (__tmp68945
                         (let ((__tmp68946 (gx#datum->syntax '#f 'size)))
                           (declare (not safe))
                           (cons __tmp68946 '()))))
                    (declare (not safe))
                    (cons __tmp68947 __tmp68945))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68948
                                                           __tmp68944))))
                                              (declare (not safe))
                                              (cons __tmp68949 __tmp68943)))
                                           (__tmp68934
                                            (let ((__tmp68937
                                                   (let ((__tmp68941
                                                          (gx#datum->syntax
                                                           '#f
                                                           'fx+))
                                                         (__tmp68938
                                                          (let ((__tmp68940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'i))
                        (__tmp68939
                         (let () (declare (not safe)) (cons '1 '()))))
                    (declare (not safe))
                    (cons __tmp68940 __tmp68939))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp68941
                                                           __tmp68938)))
                                                  (__tmp68935
                                                   (let ((__tmp68936
                                                          (gx#datum->syntax
                                                           '#f
                                                           'deleted)))
                                                     (declare (not safe))
                                                     (cons __tmp68936 '()))))
                                              (declare (not safe))
                                              (cons __tmp68937 __tmp68935))))
                                       (declare (not safe))
                                       (cons __tmp68942 __tmp68934))))
                                (declare (not safe))
                                (cons __tmp68950 __tmp68933))))
                         (declare (not safe))
                         (cons __tmp68932 '()))))
                  (declare (not safe))
                  (cons __tmp68951 __tmp68931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp68930 '()))))
                                            (declare (not safe))
                                            (cons __tmp68952 __tmp68929))))
                                     (declare (not safe))
                                     (cons __tmp68967 __tmp68928))))
                              (declare (not safe))
                              (cons __tmp69000 __tmp68927))))
                       (declare (not safe))
                       (cons __tmp69009 __tmp68926))))
                (declare (not safe))
                (cons __tmp68925 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69010
                                                       __tmp68924))))
                                          (declare (not safe))
                                          (cons __tmp69018 __tmp68923))))
                                   (declare (not safe))
                                   (cons __tmp68922 '()))))
                            (declare (not safe))
                            (cons __tmp69019 __tmp68921))))
                     (declare (not safe))
                     (cons __tmp69032 __tmp68920))))
              (declare (not safe))
              (cons __tmp69033 __tmp68919))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp68918 '()))))
                                        (declare (not safe))
                                        (cons __tmp69034 __tmp68917))))
                                 (declare (not safe))
                                 (cons __tmp69070 __tmp68916)))
                             _hd6353663604_
                             _hd6353363594_
                             _hd6353063584_
                             _hd6352763574_
                             _hd6352463564_)
                            (_g6351363543_ _g6351463547_))))
                    (_g6351363543_ _g6351463547_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6351363543_
                                                     _g6351463547_))))
                                            (_g6351363543_ _g6351463547_))))
                                    (_g6351363543_ _g6351463547_))))
                            (_g6351363543_ _g6351463547_))))
                    (_g6351363543_ _g6351463547_)))))
        (_g6351263640_ _$stx63509_))))
  (define |[:0:]#__table-set!|
    (lambda (_$stx63644_)
      (let* ((_g6364863686_
              (lambda (_g6364963682_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6364963682_)))
             (_g6364763811_
              (lambda (_g6364963690_)
                (if (gx#stx-pair? _g6364963690_)
                    (let ((_e6365763693_ (gx#syntax-e _g6364963690_)))
                      (let ((_hd6365863697_
                             (let ()
                               (declare (not safe))
                               (##car _e6365763693_)))
                            (_tl6365963700_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6365763693_))))
                        (if (gx#stx-pair? _tl6365963700_)
                            (let ((_e6366063703_ (gx#syntax-e _tl6365963700_)))
                              (let ((_hd6366163707_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6366063703_)))
                                    (_tl6366263710_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6366063703_))))
                                (if (gx#stx-pair? _tl6366263710_)
                                    (let ((_e6366363713_
                                           (gx#syntax-e _tl6366263710_)))
                                      (let ((_hd6366463717_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6366363713_)))
                                            (_tl6366563720_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6366363713_))))
                                        (if (gx#stx-pair? _tl6366563720_)
                                            (let ((_e6366663723_
                                                   (gx#syntax-e
                                                    _tl6366563720_)))
                                              (let ((_hd6366763727_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6366663723_)))
                                                    (_tl6366863730_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6366663723_))))
                                                (if (gx#stx-pair?
                                                     _tl6366863730_)
                                                    (let ((_e6366963733_
                                                           (gx#syntax-e
                                                            _tl6366863730_)))
                                                      (let ((_hd6367063737_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6366963733_)))
                    (_tl6367163740_
                     (let () (declare (not safe)) (##cdr _e6366963733_))))
                (if (gx#stx-pair? _tl6367163740_)
                    (let ((_e6367263743_ (gx#syntax-e _tl6367163740_)))
                      (let ((_hd6367363747_
                             (let ()
                               (declare (not safe))
                               (##car _e6367263743_)))
                            (_tl6367463750_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6367263743_))))
                        (if (gx#stx-pair? _tl6367463750_)
                            (let ((_e6367563753_ (gx#syntax-e _tl6367463750_)))
                              (let ((_hd6367663757_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6367563753_)))
                                    (_tl6367763760_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6367563753_))))
                                (if (gx#stx-pair? _tl6367763760_)
                                    (let ((_e6367863763_
                                           (gx#syntax-e _tl6367763760_)))
                                      (let ((_hd6367963767_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6367863763_)))
                                            (_tl6368063770_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6367863763_))))
                                        (if (gx#stx-null? _tl6368063770_)
                                            ((lambda (_L63773_
                                                      _L63775_
                                                      _L63776_
                                                      _L63777_
                                                      _L63778_
                                                      _L63779_
                                                      _L63780_)
                                               (let ((__tmp69283
                                                      (gx#datum->syntax
                                                       '#f
                                                       'let*))
                                                     (__tmp69071
                                                      (let ((__tmp69247
                                                             (let ((__tmp69278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp69282 (gx#datum->syntax '#f 'h))
                                  (__tmp69279
                                   (let ((__tmp69280
                                          (let ((__tmp69281
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L63777_ '()))))
                                            (declare (not safe))
                                            (cons _L63779_ __tmp69281))))
                                     (declare (not safe))
                                     (cons __tmp69280 '()))))
                              (declare (not safe))
                              (cons __tmp69282 __tmp69279)))
                           (__tmp69248
                            (let ((__tmp69272
                                   (let ((__tmp69277
                                          (gx#datum->syntax '#f 'size))
                                         (__tmp69273
                                          (let ((__tmp69274
                                                 (let ((__tmp69276
                                                        (gx#datum->syntax
                                                         '#f
                                                         'vector-length))
                                                       (__tmp69275
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L63780_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp69276
                                                         __tmp69275))))
                                            (declare (not safe))
                                            (cons __tmp69274 '()))))
                                     (declare (not safe))
                                     (cons __tmp69277 __tmp69273)))
                                  (__tmp69249
                                   (let ((__tmp69264
                                          (let ((__tmp69271
                                                 (gx#datum->syntax
                                                  '#f
                                                  'entries))
                                                (__tmp69265
                                                 (let ((__tmp69266
                                                        (let ((__tmp69270
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fxquotient))
                                                              (__tmp69267
                                                               (let ((__tmp69269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'size))
                             (__tmp69268
                              (let () (declare (not safe)) (cons '2 '()))))
                         (declare (not safe))
                         (cons __tmp69269 __tmp69268))))
                  (declare (not safe))
                  (cons __tmp69270 __tmp69267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69266 '()))))
                                            (declare (not safe))
                                            (cons __tmp69271 __tmp69265)))
                                         (__tmp69250
                                          (let ((__tmp69251
                                                 (let ((__tmp69263
                                                        (gx#datum->syntax
                                                         '#f
                                                         'start))
                                                       (__tmp69252
                                                        (let ((__tmp69253
                                                               (let ((__tmp69262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fxarithmetic-shift-left))
                             (__tmp69254
                              (let ((__tmp69256
                                     (let ((__tmp69261
                                            (gx#datum->syntax '#f 'fxmodulo))
                                           (__tmp69257
                                            (let ((__tmp69260
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp69258
                                                   (let ((__tmp69259
                                                          (gx#datum->syntax
                                                           '#f
                                                           'entries)))
                                                     (declare (not safe))
                                                     (cons __tmp69259 '()))))
                                              (declare (not safe))
                                              (cons __tmp69260 __tmp69258))))
                                       (declare (not safe))
                                       (cons __tmp69261 __tmp69257)))
                                    (__tmp69255
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp69256 __tmp69255))))
                         (declare (not safe))
                         (cons __tmp69262 __tmp69254))))
                  (declare (not safe))
                  (cons __tmp69253 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69263
                                                         __tmp69252))))
                                            (declare (not safe))
                                            (cons __tmp69251 '()))))
                                     (declare (not safe))
                                     (cons __tmp69264 __tmp69250))))
                              (declare (not safe))
                              (cons __tmp69272 __tmp69249))))
                       (declare (not safe))
                       (cons __tmp69278 __tmp69248)))
                    (__tmp69072
                     (let ((__tmp69073
                            (let ((__tmp69246 (gx#datum->syntax '#f 'let))
                                  (__tmp69074
                                   (let ((__tmp69245
                                          (gx#datum->syntax '#f 'loop))
                                         (__tmp69075
                                          (let ((__tmp69232
                                                 (let ((__tmp69241
                                                        (let ((__tmp69244
                                                               (gx#datum->syntax
                                                                '#f
                                                                'probe))
                                                              (__tmp69242
                                                               (let ((__tmp69243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'start)))
                         (declare (not safe))
                         (cons __tmp69243 '()))))
                  (declare (not safe))
                  (cons __tmp69244 __tmp69242)))
               (__tmp69233
                (let ((__tmp69238
                       (let ((__tmp69240 (gx#datum->syntax '#f 'i))
                             (__tmp69239
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp69240 __tmp69239)))
                      (__tmp69234
                       (let ((__tmp69235
                              (let ((__tmp69237
                                     (gx#datum->syntax '#f 'deleted))
                                    (__tmp69236
                                     (let ()
                                       (declare (not safe))
                                       (cons '#f '()))))
                                (declare (not safe))
                                (cons __tmp69237 __tmp69236))))
                         (declare (not safe))
                         (cons __tmp69235 '()))))
                  (declare (not safe))
                  (cons __tmp69238 __tmp69234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69241
                                                         __tmp69233)))
                                                (__tmp69076
                                                 (let ((__tmp69077
                                                        (let ((__tmp69231
                                                               (gx#datum->syntax
                                                                '#f
                                                                'let))
                                                              (__tmp69078
                                                               (let ((__tmp69223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp69230 (gx#datum->syntax '#f 'k))
                                    (__tmp69224
                                     (let ((__tmp69225
                                            (let ((__tmp69229
                                                   (gx#datum->syntax
                                                    '#f
                                                    'vector-ref))
                                                  (__tmp69226
                                                   (let ((__tmp69227
                                                          (let ((__tmp69228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'probe)))
                    (declare (not safe))
                    (cons __tmp69228 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L63780_
                                                           __tmp69227))))
                                              (declare (not safe))
                                              (cons __tmp69229 __tmp69226))))
                                       (declare (not safe))
                                       (cons __tmp69225 '()))))
                                (declare (not safe))
                                (cons __tmp69230 __tmp69224)))
                             (__tmp69079
                              (let ((__tmp69080
                                     (let ((__tmp69222
                                            (gx#datum->syntax '#f 'cond))
                                           (__tmp69081
                                            (let ((__tmp69163
                                                   (let ((__tmp69215
                                                          (let ((__tmp69221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'eq?))
                        (__tmp69216
                         (let ((__tmp69220 (gx#datum->syntax '#f 'k))
                               (__tmp69217
                                (let ((__tmp69218
                                       (let ((__tmp69219
                                              (gx#datum->syntax
                                               '#f
                                               'macro-unused-obj)))
                                         (declare (not safe))
                                         (cons __tmp69219 '()))))
                                  (declare (not safe))
                                  (cons __tmp69218 '()))))
                           (declare (not safe))
                           (cons __tmp69220 __tmp69217))))
                    (declare (not safe))
                    (cons __tmp69221 __tmp69216)))
                 (__tmp69164
                  (let ((__tmp69165
                         (let ((__tmp69214 (gx#datum->syntax '#f 'if))
                               (__tmp69166
                                (let ((__tmp69213
                                       (gx#datum->syntax '#f 'deleted))
                                      (__tmp69167
                                       (let ((__tmp69191
                                              (let ((__tmp69212
                                                     (gx#datum->syntax
                                                      '#f
                                                      'begin))
                                                    (__tmp69192
                                                     (let ((__tmp69206
                                                            (let ((__tmp69211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-set!))
                          (__tmp69207
                           (let ((__tmp69208
                                  (let ((__tmp69210
                                         (gx#datum->syntax '#f 'deleted))
                                        (__tmp69209
                                         (let ()
                                           (declare (not safe))
                                           (cons _L63777_ '()))))
                                    (declare (not safe))
                                    (cons __tmp69210 __tmp69209))))
                             (declare (not safe))
                             (cons _L63780_ __tmp69208))))
                      (declare (not safe))
                      (cons __tmp69211 __tmp69207)))
                   (__tmp69193
                    (let ((__tmp69196
                           (let ((__tmp69205
                                  (gx#datum->syntax '#f 'vector-set!))
                                 (__tmp69197
                                  (let ((__tmp69198
                                         (let ((__tmp69200
                                                (let ((__tmp69204
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fx+))
                                                      (__tmp69201
                                                       (let ((__tmp69203
                                                              (gx#datum->syntax
                                                               '#f
                                                               'deleted))
                                                             (__tmp69202
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp69203 __tmp69202))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69204
                                                        __tmp69201)))
                                               (__tmp69199
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L63776_ '()))))
                                           (declare (not safe))
                                           (cons __tmp69200 __tmp69199))))
                                    (declare (not safe))
                                    (cons _L63780_ __tmp69198))))
                             (declare (not safe))
                             (cons __tmp69205 __tmp69197)))
                          (__tmp69194
                           (let ((__tmp69195
                                  (let ()
                                    (declare (not safe))
                                    (cons _L63773_ '()))))
                             (declare (not safe))
                             (cons __tmp69195 '()))))
                      (declare (not safe))
                      (cons __tmp69196 __tmp69194))))
               (declare (not safe))
               (cons __tmp69206 __tmp69193))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69212 __tmp69192)))
                                             (__tmp69168
                                              (let ((__tmp69169
                                                     (let ((__tmp69190
                                                            (gx#datum->syntax
                                                             '#f
                                                             'begin))
                                                           (__tmp69170
                                                            (let ((__tmp69184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp69189
                                  (gx#datum->syntax '#f 'vector-set!))
                                 (__tmp69185
                                  (let ((__tmp69186
                                         (let ((__tmp69188
                                                (gx#datum->syntax '#f 'probe))
                                               (__tmp69187
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L63777_ '()))))
                                           (declare (not safe))
                                           (cons __tmp69188 __tmp69187))))
                                    (declare (not safe))
                                    (cons _L63780_ __tmp69186))))
                             (declare (not safe))
                             (cons __tmp69189 __tmp69185)))
                          (__tmp69171
                           (let ((__tmp69174
                                  (let ((__tmp69183
                                         (gx#datum->syntax '#f 'vector-set!))
                                        (__tmp69175
                                         (let ((__tmp69176
                                                (let ((__tmp69178
                                                       (let ((__tmp69182
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fx+))
                                                             (__tmp69179
                                                              (let ((__tmp69181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe))
                            (__tmp69180
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp69181 __tmp69180))))
                 (declare (not safe))
                 (cons __tmp69182 __tmp69179)))
              (__tmp69177 (let () (declare (not safe)) (cons _L63776_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp69178
                                                        __tmp69177))))
                                           (declare (not safe))
                                           (cons _L63780_ __tmp69176))))
                                    (declare (not safe))
                                    (cons __tmp69183 __tmp69175)))
                                 (__tmp69172
                                  (let ((__tmp69173
                                         (let ()
                                           (declare (not safe))
                                           (cons _L63775_ '()))))
                                    (declare (not safe))
                                    (cons __tmp69173 '()))))
                             (declare (not safe))
                             (cons __tmp69174 __tmp69172))))
                      (declare (not safe))
                      (cons __tmp69184 __tmp69171))))
               (declare (not safe))
               (cons __tmp69190 __tmp69170))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69169 '()))))
                                         (declare (not safe))
                                         (cons __tmp69191 __tmp69168))))
                                  (declare (not safe))
                                  (cons __tmp69213 __tmp69167))))
                           (declare (not safe))
                           (cons __tmp69214 __tmp69166))))
                    (declare (not safe))
                    (cons __tmp69165 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69215
                                                           __tmp69164)))
                                                  (__tmp69082
                                                   (let ((__tmp69130
                                                          (let ((__tmp69156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp69162 (gx#datum->syntax '#f 'eq?))
                               (__tmp69157
                                (let ((__tmp69161 (gx#datum->syntax '#f 'k))
                                      (__tmp69158
                                       (let ((__tmp69159
                                              (let ((__tmp69160
                                                     (gx#datum->syntax
                                                      '#f
                                                      'macro-deleted-obj)))
                                                (declare (not safe))
                                                (cons __tmp69160 '()))))
                                         (declare (not safe))
                                         (cons __tmp69159 '()))))
                                  (declare (not safe))
                                  (cons __tmp69161 __tmp69158))))
                           (declare (not safe))
                           (cons __tmp69162 __tmp69157)))
                        (__tmp69131
                         (let ((__tmp69132
                                (let ((__tmp69155 (gx#datum->syntax '#f 'loop))
                                      (__tmp69133
                                       (let ((__tmp69147
                                              (let ((__tmp69154
                                                     (gx#datum->syntax
                                                      '#f
                                                      'probe-step))
                                                    (__tmp69148
                                                     (let ((__tmp69153
                                                            (gx#datum->syntax
                                                             '#f
                                                             'start))
                                                           (__tmp69149
                                                            (let ((__tmp69152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'i))
                          (__tmp69150
                           (let ((__tmp69151 (gx#datum->syntax '#f 'size)))
                             (declare (not safe))
                             (cons __tmp69151 '()))))
                      (declare (not safe))
                      (cons __tmp69152 __tmp69150))))
               (declare (not safe))
               (cons __tmp69153 __tmp69149))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69154 __tmp69148)))
                                             (__tmp69134
                                              (let ((__tmp69142
                                                     (let ((__tmp69146
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fx+))
                                                           (__tmp69143
                                                            (let ((__tmp69145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'i))
                          (__tmp69144
                           (let () (declare (not safe)) (cons '1 '()))))
                      (declare (not safe))
                      (cons __tmp69145 __tmp69144))))
               (declare (not safe))
               (cons __tmp69146 __tmp69143)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp69135
                                                     (let ((__tmp69136
                                                            (let ((__tmp69141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'or))
                          (__tmp69137
                           (let ((__tmp69140 (gx#datum->syntax '#f 'deleted))
                                 (__tmp69138
                                  (let ((__tmp69139
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp69139 '()))))
                             (declare (not safe))
                             (cons __tmp69140 __tmp69138))))
                      (declare (not safe))
                      (cons __tmp69141 __tmp69137))))
               (declare (not safe))
               (cons __tmp69136 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69142 __tmp69135))))
                                         (declare (not safe))
                                         (cons __tmp69147 __tmp69134))))
                                  (declare (not safe))
                                  (cons __tmp69155 __tmp69133))))
                           (declare (not safe))
                           (cons __tmp69132 '()))))
                    (declare (not safe))
                    (cons __tmp69156 __tmp69131)))
                 (__tmp69083
                  (let ((__tmp69107
                         (let ((__tmp69126
                                (let ((__tmp69127
                                       (let ((__tmp69128
                                              (let ((__tmp69129
                                                     (gx#datum->syntax
                                                      '#f
                                                      'k)))
                                                (declare (not safe))
                                                (cons __tmp69129 '()))))
                                         (declare (not safe))
                                         (cons _L63777_ __tmp69128))))
                                  (declare (not safe))
                                  (cons _L63778_ __tmp69127)))
                               (__tmp69108
                                (let ((__tmp69120
                                       (let ((__tmp69125
                                              (gx#datum->syntax
                                               '#f
                                               'vector-set!))
                                             (__tmp69121
                                              (let ((__tmp69122
                                                     (let ((__tmp69124
                                                            (gx#datum->syntax
                                                             '#f
                                                             'probe))
                                                           (__tmp69123
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L63777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp69124 __tmp69123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L63780_ __tmp69122))))
                                         (declare (not safe))
                                         (cons __tmp69125 __tmp69121)))
                                      (__tmp69109
                                       (let ((__tmp69110
                                              (let ((__tmp69119
                                                     (gx#datum->syntax
                                                      '#f
                                                      'vector-set!))
                                                    (__tmp69111
                                                     (let ((__tmp69112
                                                            (let ((__tmp69114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp69118 (gx#datum->syntax '#f 'fx+))
                                 (__tmp69115
                                  (let ((__tmp69117
                                         (gx#datum->syntax '#f 'probe))
                                        (__tmp69116
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp69117 __tmp69116))))
                             (declare (not safe))
                             (cons __tmp69118 __tmp69115)))
                          (__tmp69113
                           (let () (declare (not safe)) (cons _L63776_ '()))))
                      (declare (not safe))
                      (cons __tmp69114 __tmp69113))))
               (declare (not safe))
               (cons _L63780_ __tmp69112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69119 __tmp69111))))
                                         (declare (not safe))
                                         (cons __tmp69110 '()))))
                                  (declare (not safe))
                                  (cons __tmp69120 __tmp69109))))
                           (declare (not safe))
                           (cons __tmp69126 __tmp69108)))
                        (__tmp69084
                         (let ((__tmp69085
                                (let ((__tmp69106 (gx#datum->syntax '#f 'else))
                                      (__tmp69086
                                       (let ((__tmp69087
                                              (let ((__tmp69105
                                                     (gx#datum->syntax
                                                      '#f
                                                      'loop))
                                                    (__tmp69088
                                                     (let ((__tmp69097
                                                            (let ((__tmp69104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'probe-step))
                          (__tmp69098
                           (let ((__tmp69103 (gx#datum->syntax '#f 'start))
                                 (__tmp69099
                                  (let ((__tmp69102 (gx#datum->syntax '#f 'i))
                                        (__tmp69100
                                         (let ((__tmp69101
                                                (gx#datum->syntax '#f 'size)))
                                           (declare (not safe))
                                           (cons __tmp69101 '()))))
                                    (declare (not safe))
                                    (cons __tmp69102 __tmp69100))))
                             (declare (not safe))
                             (cons __tmp69103 __tmp69099))))
                      (declare (not safe))
                      (cons __tmp69104 __tmp69098)))
                   (__tmp69089
                    (let ((__tmp69092
                           (let ((__tmp69096 (gx#datum->syntax '#f 'fx+))
                                 (__tmp69093
                                  (let ((__tmp69095 (gx#datum->syntax '#f 'i))
                                        (__tmp69094
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp69095 __tmp69094))))
                             (declare (not safe))
                             (cons __tmp69096 __tmp69093)))
                          (__tmp69090
                           (let ((__tmp69091 (gx#datum->syntax '#f 'deleted)))
                             (declare (not safe))
                             (cons __tmp69091 '()))))
                      (declare (not safe))
                      (cons __tmp69092 __tmp69090))))
               (declare (not safe))
               (cons __tmp69097 __tmp69089))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69105 __tmp69088))))
                                         (declare (not safe))
                                         (cons __tmp69087 '()))))
                                  (declare (not safe))
                                  (cons __tmp69106 __tmp69086))))
                           (declare (not safe))
                           (cons __tmp69085 '()))))
                    (declare (not safe))
                    (cons __tmp69107 __tmp69084))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69130
                                                           __tmp69083))))
                                              (declare (not safe))
                                              (cons __tmp69163 __tmp69082))))
                                       (declare (not safe))
                                       (cons __tmp69222 __tmp69081))))
                                (declare (not safe))
                                (cons __tmp69080 '()))))
                         (declare (not safe))
                         (cons __tmp69223 __tmp69079))))
                  (declare (not safe))
                  (cons __tmp69231 __tmp69078))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69077 '()))))
                                            (declare (not safe))
                                            (cons __tmp69232 __tmp69076))))
                                     (declare (not safe))
                                     (cons __tmp69245 __tmp69075))))
                              (declare (not safe))
                              (cons __tmp69246 __tmp69074))))
                       (declare (not safe))
                       (cons __tmp69073 '()))))
                (declare (not safe))
                (cons __tmp69247 __tmp69072))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69283 __tmp69071)))
                                             _hd6367963767_
                                             _hd6367663757_
                                             _hd6367363747_
                                             _hd6367063737_
                                             _hd6366763727_
                                             _hd6366463717_
                                             _hd6366163707_)
                                            (_g6364863686_ _g6364963690_))))
                                    (_g6364863686_ _g6364963690_))))
                            (_g6364863686_ _g6364963690_))))
                    (_g6364863686_ _g6364963690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6364863686_
                                                     _g6364963690_))))
                                            (_g6364863686_ _g6364963690_))))
                                    (_g6364863686_ _g6364963690_))))
                            (_g6364863686_ _g6364963690_))))
                    (_g6364863686_ _g6364963690_)))))
        (_g6364763811_ _$stx63644_))))
  (define |[:0:]#__table-del!|
    (lambda (_$stx63815_)
      (let* ((_g6381963849_
              (lambda (_g6382063845_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g6382063845_)))
             (_g6381863946_
              (lambda (_g6382063853_)
                (if (gx#stx-pair? _g6382063853_)
                    (let ((_e6382663856_ (gx#syntax-e _g6382063853_)))
                      (let ((_hd6382763860_
                             (let ()
                               (declare (not safe))
                               (##car _e6382663856_)))
                            (_tl6382863863_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6382663856_))))
                        (if (gx#stx-pair? _tl6382863863_)
                            (let ((_e6382963866_ (gx#syntax-e _tl6382863863_)))
                              (let ((_hd6383063870_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6382963866_)))
                                    (_tl6383163873_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6382963866_))))
                                (if (gx#stx-pair? _tl6383163873_)
                                    (let ((_e6383263876_
                                           (gx#syntax-e _tl6383163873_)))
                                      (let ((_hd6383363880_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6383263876_)))
                                            (_tl6383463883_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6383263876_))))
                                        (if (gx#stx-pair? _tl6383463883_)
                                            (let ((_e6383563886_
                                                   (gx#syntax-e
                                                    _tl6383463883_)))
                                              (let ((_hd6383663890_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6383563886_)))
                                                    (_tl6383763893_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6383563886_))))
                                                (if (gx#stx-pair?
                                                     _tl6383763893_)
                                                    (let ((_e6383863896_
                                                           (gx#syntax-e
                                                            _tl6383763893_)))
                                                      (let ((_hd6383963900_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6383863896_)))
                    (_tl6384063903_
                     (let () (declare (not safe)) (##cdr _e6383863896_))))
                (if (gx#stx-pair? _tl6384063903_)
                    (let ((_e6384163906_ (gx#syntax-e _tl6384063903_)))
                      (let ((_hd6384263910_
                             (let ()
                               (declare (not safe))
                               (##car _e6384163906_)))
                            (_tl6384363913_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6384163906_))))
                        (if (gx#stx-null? _tl6384363913_)
                            ((lambda (_L63916_
                                      _L63918_
                                      _L63919_
                                      _L63920_
                                      _L63921_)
                               (let ((__tmp69441 (gx#datum->syntax '#f 'let*))
                                     (__tmp69284
                                      (let ((__tmp69405
                                             (let ((__tmp69436
                                                    (let ((__tmp69440
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp69437
                                                           (let ((__tmp69438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp69439
                                 (let ()
                                   (declare (not safe))
                                   (cons _L63918_ '()))))
                            (declare (not safe))
                            (cons _L63920_ __tmp69439))))
                     (declare (not safe))
                     (cons __tmp69438 '()))))
              (declare (not safe))
              (cons __tmp69440 __tmp69437)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp69406
                                                    (let ((__tmp69430
                                                           (let ((__tmp69435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size))
                         (__tmp69431
                          (let ((__tmp69432
                                 (let ((__tmp69434
                                        (gx#datum->syntax '#f 'vector-length))
                                       (__tmp69433
                                        (let ()
                                          (declare (not safe))
                                          (cons _L63921_ '()))))
                                   (declare (not safe))
                                   (cons __tmp69434 __tmp69433))))
                            (declare (not safe))
                            (cons __tmp69432 '()))))
                     (declare (not safe))
                     (cons __tmp69435 __tmp69431)))
                  (__tmp69407
                   (let ((__tmp69422
                          (let ((__tmp69429 (gx#datum->syntax '#f 'entries))
                                (__tmp69423
                                 (let ((__tmp69424
                                        (let ((__tmp69428
                                               (gx#datum->syntax
                                                '#f
                                                'fxquotient))
                                              (__tmp69425
                                               (let ((__tmp69427
                                                      (gx#datum->syntax
                                                       '#f
                                                       'size))
                                                     (__tmp69426
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '2 '()))))
                                                 (declare (not safe))
                                                 (cons __tmp69427
                                                       __tmp69426))))
                                          (declare (not safe))
                                          (cons __tmp69428 __tmp69425))))
                                   (declare (not safe))
                                   (cons __tmp69424 '()))))
                            (declare (not safe))
                            (cons __tmp69429 __tmp69423)))
                         (__tmp69408
                          (let ((__tmp69409
                                 (let ((__tmp69421
                                        (gx#datum->syntax '#f 'start))
                                       (__tmp69410
                                        (let ((__tmp69411
                                               (let ((__tmp69420
                                                      (gx#datum->syntax
                                                       '#f
                                                       'fxarithmetic-shift-left))
                                                     (__tmp69412
                                                      (let ((__tmp69414
                                                             (let ((__tmp69419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fxmodulo))
                           (__tmp69415
                            (let ((__tmp69418 (gx#datum->syntax '#f 'h))
                                  (__tmp69416
                                   (let ((__tmp69417
                                          (gx#datum->syntax '#f 'entries)))
                                     (declare (not safe))
                                     (cons __tmp69417 '()))))
                              (declare (not safe))
                              (cons __tmp69418 __tmp69416))))
                       (declare (not safe))
                       (cons __tmp69419 __tmp69415)))
                    (__tmp69413 (let () (declare (not safe)) (cons '1 '()))))
                (declare (not safe))
                (cons __tmp69414 __tmp69413))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69420
                                                       __tmp69412))))
                                          (declare (not safe))
                                          (cons __tmp69411 '()))))
                                   (declare (not safe))
                                   (cons __tmp69421 __tmp69410))))
                            (declare (not safe))
                            (cons __tmp69409 '()))))
                     (declare (not safe))
                     (cons __tmp69422 __tmp69408))))
              (declare (not safe))
              (cons __tmp69430 __tmp69407))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69436 __tmp69406)))
                                            (__tmp69285
                                             (let ((__tmp69286
                                                    (let ((__tmp69404
                                                           (gx#datum->syntax
                                                            '#f
                                                            'let))
                                                          (__tmp69287
                                                           (let ((__tmp69403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'loop))
                         (__tmp69288
                          (let ((__tmp69394
                                 (let ((__tmp69399
                                        (let ((__tmp69402
                                               (gx#datum->syntax '#f 'probe))
                                              (__tmp69400
                                               (let ((__tmp69401
                                                      (gx#datum->syntax
                                                       '#f
                                                       'start)))
                                                 (declare (not safe))
                                                 (cons __tmp69401 '()))))
                                          (declare (not safe))
                                          (cons __tmp69402 __tmp69400)))
                                       (__tmp69395
                                        (let ((__tmp69396
                                               (let ((__tmp69398
                                                      (gx#datum->syntax
                                                       '#f
                                                       'i))
                                                     (__tmp69397
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '1 '()))))
                                                 (declare (not safe))
                                                 (cons __tmp69398
                                                       __tmp69397))))
                                          (declare (not safe))
                                          (cons __tmp69396 '()))))
                                   (declare (not safe))
                                   (cons __tmp69399 __tmp69395)))
                                (__tmp69289
                                 (let ((__tmp69290
                                        (let ((__tmp69393
                                               (gx#datum->syntax '#f 'let))
                                              (__tmp69291
                                               (let ((__tmp69385
                                                      (let ((__tmp69392
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k))
                                                            (__tmp69386
                                                             (let ((__tmp69387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp69391
                                   (gx#datum->syntax '#f 'vector-ref))
                                  (__tmp69388
                                   (let ((__tmp69389
                                          (let ((__tmp69390
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp69390 '()))))
                                     (declare (not safe))
                                     (cons _L63921_ __tmp69389))))
                              (declare (not safe))
                              (cons __tmp69391 __tmp69388))))
                       (declare (not safe))
                       (cons __tmp69387 '()))))
                (declare (not safe))
                (cons __tmp69392 __tmp69386)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp69292
                                                      (let ((__tmp69293
                                                             (let ((__tmp69384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'cond))
                           (__tmp69294
                            (let ((__tmp69373
                                   (let ((__tmp69377
                                          (let ((__tmp69383
                                                 (gx#datum->syntax '#f 'eq?))
                                                (__tmp69378
                                                 (let ((__tmp69382
                                                        (gx#datum->syntax
                                                         '#f
                                                         'k))
                                                       (__tmp69379
                                                        (let ((__tmp69380
                                                               (let ((__tmp69381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'macro-unused-obj)))
                         (declare (not safe))
                         (cons __tmp69381 '()))))
                  (declare (not safe))
                  (cons __tmp69380 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69382
                                                         __tmp69379))))
                                            (declare (not safe))
                                            (cons __tmp69383 __tmp69378)))
                                         (__tmp69374
                                          (let ((__tmp69375
                                                 (let ((__tmp69376
                                                        (gx#datum->syntax
                                                         '#f
                                                         'void)))
                                                   (declare (not safe))
                                                   (cons __tmp69376 '()))))
                                            (declare (not safe))
                                            (cons __tmp69375 '()))))
                                     (declare (not safe))
                                     (cons __tmp69377 __tmp69374)))
                                  (__tmp69295
                                   (let ((__tmp69347
                                          (let ((__tmp69366
                                                 (let ((__tmp69372
                                                        (gx#datum->syntax
                                                         '#f
                                                         'eq?))
                                                       (__tmp69367
                                                        (let ((__tmp69371
                                                               (gx#datum->syntax
                                                                '#f
                                                                'k))
                                                              (__tmp69368
                                                               (let ((__tmp69369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp69370
                                     (gx#datum->syntax
                                      '#f
                                      'macro-deleted-obj)))
                                (declare (not safe))
                                (cons __tmp69370 '()))))
                         (declare (not safe))
                         (cons __tmp69369 '()))))
                  (declare (not safe))
                  (cons __tmp69371 __tmp69368))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69372
                                                         __tmp69367)))
                                                (__tmp69348
                                                 (let ((__tmp69349
                                                        (let ((__tmp69365
                                                               (gx#datum->syntax
                                                                '#f
                                                                'loop))
                                                              (__tmp69350
                                                               (let ((__tmp69357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp69364
                                     (gx#datum->syntax '#f 'probe-step))
                                    (__tmp69358
                                     (let ((__tmp69363
                                            (gx#datum->syntax '#f 'start))
                                           (__tmp69359
                                            (let ((__tmp69362
                                                   (gx#datum->syntax '#f 'i))
                                                  (__tmp69360
                                                   (let ((__tmp69361
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size)))
                                                     (declare (not safe))
                                                     (cons __tmp69361 '()))))
                                              (declare (not safe))
                                              (cons __tmp69362 __tmp69360))))
                                       (declare (not safe))
                                       (cons __tmp69363 __tmp69359))))
                                (declare (not safe))
                                (cons __tmp69364 __tmp69358)))
                             (__tmp69351
                              (let ((__tmp69352
                                     (let ((__tmp69356
                                            (gx#datum->syntax '#f 'fx+))
                                           (__tmp69353
                                            (let ((__tmp69355
                                                   (gx#datum->syntax '#f 'i))
                                                  (__tmp69354
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '1 '()))))
                                              (declare (not safe))
                                              (cons __tmp69355 __tmp69354))))
                                       (declare (not safe))
                                       (cons __tmp69356 __tmp69353))))
                                (declare (not safe))
                                (cons __tmp69352 '()))))
                         (declare (not safe))
                         (cons __tmp69357 __tmp69351))))
                  (declare (not safe))
                  (cons __tmp69365 __tmp69350))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69349 '()))))
                                            (declare (not safe))
                                            (cons __tmp69366 __tmp69348)))
                                         (__tmp69296
                                          (let ((__tmp69318
                                                 (let ((__tmp69343
                                                        (let ((__tmp69344
                                                               (let ((__tmp69345
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp69346 (gx#datum->syntax '#f 'k)))
                                (declare (not safe))
                                (cons __tmp69346 '()))))
                         (declare (not safe))
                         (cons _L63918_ __tmp69345))))
                  (declare (not safe))
                  (cons _L63919_ __tmp69344)))
               (__tmp69319
                (let ((__tmp69335
                       (let ((__tmp69342 (gx#datum->syntax '#f 'vector-set!))
                             (__tmp69336
                              (let ((__tmp69337
                                     (let ((__tmp69341
                                            (gx#datum->syntax '#f 'probe))
                                           (__tmp69338
                                            (let ((__tmp69339
                                                   (let ((__tmp69340
                                                          (gx#datum->syntax
                                                           '#f
                                                           'macro-deleted-obj)))
                                                     (declare (not safe))
                                                     (cons __tmp69340 '()))))
                                              (declare (not safe))
                                              (cons __tmp69339 '()))))
                                       (declare (not safe))
                                       (cons __tmp69341 __tmp69338))))
                                (declare (not safe))
                                (cons _L63921_ __tmp69337))))
                         (declare (not safe))
                         (cons __tmp69342 __tmp69336)))
                      (__tmp69320
                       (let ((__tmp69323
                              (let ((__tmp69334
                                     (gx#datum->syntax '#f 'vector-set!))
                                    (__tmp69324
                                     (let ((__tmp69325
                                            (let ((__tmp69329
                                                   (let ((__tmp69333
                                                          (gx#datum->syntax
                                                           '#f
                                                           'fx+))
                                                         (__tmp69330
                                                          (let ((__tmp69332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'probe))
                        (__tmp69331
                         (let () (declare (not safe)) (cons '1 '()))))
                    (declare (not safe))
                    (cons __tmp69332 __tmp69331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69333
                                                           __tmp69330)))
                                                  (__tmp69326
                                                   (let ((__tmp69327
                                                          (let ((__tmp69328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'macro-absent-obj)))
                    (declare (not safe))
                    (cons __tmp69328 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69327 '()))))
                                              (declare (not safe))
                                              (cons __tmp69329 __tmp69326))))
                                       (declare (not safe))
                                       (cons _L63921_ __tmp69325))))
                                (declare (not safe))
                                (cons __tmp69334 __tmp69324)))
                             (__tmp69321
                              (let ((__tmp69322
                                     (let ()
                                       (declare (not safe))
                                       (cons _L63916_ '()))))
                                (declare (not safe))
                                (cons __tmp69322 '()))))
                         (declare (not safe))
                         (cons __tmp69323 __tmp69321))))
                  (declare (not safe))
                  (cons __tmp69335 __tmp69320))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69343
                                                         __tmp69319)))
                                                (__tmp69297
                                                 (let ((__tmp69298
                                                        (let ((__tmp69317
                                                               (gx#datum->syntax
                                                                '#f
                                                                'else))
                                                              (__tmp69299
                                                               (let ((__tmp69300
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp69316 (gx#datum->syntax '#f 'loop))
                                    (__tmp69301
                                     (let ((__tmp69308
                                            (let ((__tmp69315
                                                   (gx#datum->syntax
                                                    '#f
                                                    'probe-step))
                                                  (__tmp69309
                                                   (let ((__tmp69314
                                                          (gx#datum->syntax
                                                           '#f
                                                           'start))
                                                         (__tmp69310
                                                          (let ((__tmp69313
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'i))
                        (__tmp69311
                         (let ((__tmp69312 (gx#datum->syntax '#f 'size)))
                           (declare (not safe))
                           (cons __tmp69312 '()))))
                    (declare (not safe))
                    (cons __tmp69313 __tmp69311))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69314
                                                           __tmp69310))))
                                              (declare (not safe))
                                              (cons __tmp69315 __tmp69309)))
                                           (__tmp69302
                                            (let ((__tmp69303
                                                   (let ((__tmp69307
                                                          (gx#datum->syntax
                                                           '#f
                                                           'fx+))
                                                         (__tmp69304
                                                          (let ((__tmp69306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'i))
                        (__tmp69305
                         (let () (declare (not safe)) (cons '1 '()))))
                    (declare (not safe))
                    (cons __tmp69306 __tmp69305))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69307
                                                           __tmp69304))))
                                              (declare (not safe))
                                              (cons __tmp69303 '()))))
                                       (declare (not safe))
                                       (cons __tmp69308 __tmp69302))))
                                (declare (not safe))
                                (cons __tmp69316 __tmp69301))))
                         (declare (not safe))
                         (cons __tmp69300 '()))))
                  (declare (not safe))
                  (cons __tmp69317 __tmp69299))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69298 '()))))
                                            (declare (not safe))
                                            (cons __tmp69318 __tmp69297))))
                                     (declare (not safe))
                                     (cons __tmp69347 __tmp69296))))
                              (declare (not safe))
                              (cons __tmp69373 __tmp69295))))
                       (declare (not safe))
                       (cons __tmp69384 __tmp69294))))
                (declare (not safe))
                (cons __tmp69293 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp69385
                                                       __tmp69292))))
                                          (declare (not safe))
                                          (cons __tmp69393 __tmp69291))))
                                   (declare (not safe))
                                   (cons __tmp69290 '()))))
                            (declare (not safe))
                            (cons __tmp69394 __tmp69289))))
                     (declare (not safe))
                     (cons __tmp69403 __tmp69288))))
              (declare (not safe))
              (cons __tmp69404 __tmp69287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69286 '()))))
                                        (declare (not safe))
                                        (cons __tmp69405 __tmp69285))))
                                 (declare (not safe))
                                 (cons __tmp69441 __tmp69284)))
                             _hd6384263910_
                             _hd6383963900_
                             _hd6383663890_
                             _hd6383363880_
                             _hd6383063870_)
                            (_g6381963849_ _g6382063853_))))
                    (_g6381963849_ _g6382063853_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6381963849_
                                                     _g6382063853_))))
                                            (_g6381963849_ _g6382063853_))))
                                    (_g6381963849_ _g6382063853_))))
                            (_g6381963849_ _g6382063853_))))
                    (_g6381963849_ _g6382063853_)))))
        (_g6381863946_ _$stx63815_)))))
