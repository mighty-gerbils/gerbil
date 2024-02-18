(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g63024_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g63025_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#defassget|
      (lambda (_$stx54753_)
        (let* ((_g5475754775_
                (lambda (_g5475854771_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5475854771_)))
               (_g5475654831_
                (lambda (_g5475854779_)
                  (if (gx#stx-pair? _g5475854779_)
                      (let ((_e5476154782_ (gx#syntax-e _g5475854779_)))
                        (let ((_hd5476254786_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5476154782_)))
                              (_tl5476354789_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5476154782_))))
                          (if (gx#stx-pair? _tl5476354789_)
                              (let ((_e5476454792_
                                     (gx#syntax-e _tl5476354789_)))
                                (let ((_hd5476554796_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5476454792_)))
                                      (_tl5476654799_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5476454792_))))
                                  (if (gx#stx-pair? _tl5476654799_)
                                      (let ((_e5476754802_
                                             (gx#syntax-e _tl5476654799_)))
                                        (let ((_hd5476854806_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5476754802_)))
                                              (_tl5476954809_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5476754802_))))
                                          (if (gx#stx-null? _tl5476954809_)
                                              ((lambda (_L54812_ _L54814_)
                                                 (let ((__tmp62785
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp62737
                                                        (let ((__tmp62776
                                                               (let ((__tmp62777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp62784 (gx#datum->syntax '#f 'key))
                                    (__tmp62778
                                     (let ((__tmp62783
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp62779
                                            (let ((__tmp62780
                                                   (let ((__tmp62782
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp62781
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp62782
                                                           __tmp62781))))
                                              (declare (not safe))
                                              (cons __tmp62780 '()))))
                                       (declare (not safe))
                                       (cons __tmp62783 __tmp62779))))
                                (declare (not safe))
                                (cons __tmp62784 __tmp62778))))
                         (declare (not safe))
                         (cons _L54814_ __tmp62777)))
                      (__tmp62738
                       (let ((__tmp62739
                              (let ((__tmp62775 (gx#datum->syntax '#f 'cond))
                                    (__tmp62740
                                     (let ((__tmp62757
                                            (let ((__tmp62762
                                                   (let ((__tmp62774
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp62763
                                                          (let ((__tmp62770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp62773 (gx#datum->syntax '#f 'pair?))
                               (__tmp62771
                                (let ((__tmp62772 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp62772 '()))))
                           (declare (not safe))
                           (cons __tmp62773 __tmp62771)))
                        (__tmp62764
                         (let ((__tmp62765
                                (let ((__tmp62766
                                       (let ((__tmp62769
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp62767
                                              (let ((__tmp62768
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp62768 '()))))
                                         (declare (not safe))
                                         (cons __tmp62769 __tmp62767))))
                                  (declare (not safe))
                                  (cons _L54812_ __tmp62766))))
                           (declare (not safe))
                           (cons __tmp62765 '()))))
                    (declare (not safe))
                    (cons __tmp62770 __tmp62764))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp62774
                                                           __tmp62763)))
                                                  (__tmp62758
                                                   (let ((__tmp62761
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp62759
                                                          (let ((__tmp62760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp62760 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp62761
                                                           __tmp62759))))
                                              (declare (not safe))
                                              (cons __tmp62762 __tmp62758)))
                                           (__tmp62741
                                            (let ((__tmp62747
                                                   (let ((__tmp62753
                                                          (let ((__tmp62756
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp62754
                         (let ((__tmp62755 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp62755 '()))))
                    (declare (not safe))
                    (cons __tmp62756 __tmp62754)))
                 (__tmp62748
                  (let ((__tmp62749
                         (let ((__tmp62752 (gx#datum->syntax '#f 'default))
                               (__tmp62750
                                (let ((__tmp62751 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp62751 '()))))
                           (declare (not safe))
                           (cons __tmp62752 __tmp62750))))
                    (declare (not safe))
                    (cons __tmp62749 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp62753
                                                           __tmp62748)))
                                                  (__tmp62742
                                                   (let ((__tmp62743
                                                          (let ((__tmp62746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp62744
                         (let ((__tmp62745 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp62745 '()))))
                    (declare (not safe))
                    (cons __tmp62746 __tmp62744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp62743 '()))))
                                              (declare (not safe))
                                              (cons __tmp62747 __tmp62742))))
                                       (declare (not safe))
                                       (cons __tmp62757 __tmp62741))))
                                (declare (not safe))
                                (cons __tmp62775 __tmp62740))))
                         (declare (not safe))
                         (cons __tmp62739 '()))))
                  (declare (not safe))
                  (cons __tmp62776 __tmp62738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp62785
                                                         __tmp62737)))
                                               _hd5476854806_
                                               _hd5476554796_)
                                              (_g5475754775_ _g5475854779_))))
                                      (_g5475754775_ _g5475854779_))))
                              (_g5475754775_ _g5475854779_))))
                      (_g5475754775_ _g5475854779_)))))
          (_g5475654831_ _$stx54753_))))
    (define |[:0:]#defpget|
      (lambda (_$stx54835_)
        (let* ((_g5483954857_
                (lambda (_g5484054853_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5484054853_)))
               (_g5483854912_
                (lambda (_g5484054861_)
                  (if (gx#stx-pair? _g5484054861_)
                      (let ((_e5484354864_ (gx#syntax-e _g5484054861_)))
                        (let ((_hd5484454868_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5484354864_)))
                              (_tl5484554871_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5484354864_))))
                          (if (gx#stx-pair? _tl5484554871_)
                              (let ((_e5484654874_
                                     (gx#syntax-e _tl5484554871_)))
                                (let ((_hd5484754878_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5484654874_)))
                                      (_tl5484854881_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5484654874_))))
                                  (if (gx#stx-pair? _tl5484854881_)
                                      (let ((_e5484954884_
                                             (gx#syntax-e _tl5484854881_)))
                                        (let ((_hd5485054888_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5484954884_)))
                                              (_tl5485154891_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5484954884_))))
                                          (if (gx#stx-null? _tl5485154891_)
                                              ((lambda (_L54894_ _L54896_)
                                                 (let ((__tmp62855
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp62786
                                                        (let ((__tmp62846
                                                               (let ((__tmp62847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp62854 (gx#datum->syntax '#f 'key))
                                    (__tmp62848
                                     (let ((__tmp62853
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp62849
                                            (let ((__tmp62850
                                                   (let ((__tmp62852
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp62851
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp62852
                                                           __tmp62851))))
                                              (declare (not safe))
                                              (cons __tmp62850 '()))))
                                       (declare (not safe))
                                       (cons __tmp62853 __tmp62849))))
                                (declare (not safe))
                                (cons __tmp62854 __tmp62848))))
                         (declare (not safe))
                         (cons _L54896_ __tmp62847)))
                      (__tmp62787
                       (let ((__tmp62788
                              (let ((__tmp62845 (gx#datum->syntax '#f 'let))
                                    (__tmp62789
                                     (let ((__tmp62844
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp62790
                                            (let ((__tmp62839
                                                   (let ((__tmp62840
                                                          (let ((__tmp62843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp62841
                         (let ((__tmp62842 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp62842 '()))))
                    (declare (not safe))
                    (cons __tmp62843 __tmp62841))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp62840 '())))
                                                  (__tmp62791
                                                   (let ((__tmp62792
                                                          (let ((__tmp62838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp62793
                         (let ((__tmp62837 (gx#datum->syntax '#f 'rest))
                               (__tmp62794
                                (let ((__tmp62813
                                       (let ((__tmp62830
                                              (let ((__tmp62836
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp62831
                                                     (let ((__tmp62835
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp62832
                                                            (let ((__tmp62834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp62833 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp62834 __tmp62833))))
               (declare (not safe))
               (cons __tmp62835 __tmp62832))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp62836 __tmp62831)))
                                             (__tmp62814
                                              (let ((__tmp62815
                                                     (let ((__tmp62829
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp62816
                                                            (let ((__tmp62824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp62825
                                  (let ((__tmp62828 (gx#datum->syntax '#f 'k))
                                        (__tmp62826
                                         (let ((__tmp62827
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp62827 '()))))
                                    (declare (not safe))
                                    (cons __tmp62828 __tmp62826))))
                             (declare (not safe))
                             (cons _L54894_ __tmp62825)))
                          (__tmp62817
                           (let ((__tmp62823 (gx#datum->syntax '#f 'v))
                                 (__tmp62818
                                  (let ((__tmp62819
                                         (let ((__tmp62822
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp62820
                                                (let ((__tmp62821
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp62821 '()))))
                                           (declare (not safe))
                                           (cons __tmp62822 __tmp62820))))
                                    (declare (not safe))
                                    (cons __tmp62819 '()))))
                             (declare (not safe))
                             (cons __tmp62823 __tmp62818))))
                      (declare (not safe))
                      (cons __tmp62824 __tmp62817))))
               (declare (not safe))
               (cons __tmp62829 __tmp62816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp62815 '()))))
                                         (declare (not safe))
                                         (cons __tmp62830 __tmp62814)))
                                      (__tmp62795
                                       (let ((__tmp62796
                                              (let ((__tmp62812
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp62797
                                                     (let ((__tmp62798
                                                            (let ((__tmp62811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp62799
                           (let ((__tmp62807
                                  (let ((__tmp62810
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp62808
                                         (let ((__tmp62809
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp62809 '()))))
                                    (declare (not safe))
                                    (cons __tmp62810 __tmp62808)))
                                 (__tmp62800
                                  (let ((__tmp62803
                                         (let ((__tmp62806
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp62804
                                                (let ((__tmp62805
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp62805 '()))))
                                           (declare (not safe))
                                           (cons __tmp62806 __tmp62804)))
                                        (__tmp62801
                                         (let ((__tmp62802
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp62802 '()))))
                                    (declare (not safe))
                                    (cons __tmp62803 __tmp62801))))
                             (declare (not safe))
                             (cons __tmp62807 __tmp62800))))
                      (declare (not safe))
                      (cons __tmp62811 __tmp62799))))
               (declare (not safe))
               (cons __tmp62798 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp62812 __tmp62797))))
                                         (declare (not safe))
                                         (cons __tmp62796 '()))))
                                  (declare (not safe))
                                  (cons __tmp62813 __tmp62795))))
                           (declare (not safe))
                           (cons __tmp62837 __tmp62794))))
                    (declare (not safe))
                    (cons __tmp62838 __tmp62793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp62792 '()))))
                                              (declare (not safe))
                                              (cons __tmp62839 __tmp62791))))
                                       (declare (not safe))
                                       (cons __tmp62844 __tmp62790))))
                                (declare (not safe))
                                (cons __tmp62845 __tmp62789))))
                         (declare (not safe))
                         (cons __tmp62788 '()))))
                  (declare (not safe))
                  (cons __tmp62846 __tmp62787))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp62855
                                                         __tmp62786)))
                                               _hd5485054888_
                                               _hd5484754878_)
                                              (_g5483954857_ _g5484054861_))))
                                      (_g5483954857_ _g5484054861_))))
                              (_g5483954857_ _g5484054861_))))
                      (_g5483954857_ _g5484054861_)))))
          (_g5483854912_ _$stx54835_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx54916_)
        (let* ((_g5492054938_
                (lambda (_g5492154934_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5492154934_)))
               (_g5491954993_
                (lambda (_g5492154942_)
                  (if (gx#stx-pair? _g5492154942_)
                      (let ((_e5492454945_ (gx#syntax-e _g5492154942_)))
                        (let ((_hd5492554949_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5492454945_)))
                              (_tl5492654952_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5492454945_))))
                          (if (gx#stx-pair? _tl5492654952_)
                              (let ((_e5492754955_
                                     (gx#syntax-e _tl5492654952_)))
                                (let ((_hd5492854959_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5492754955_)))
                                      (_tl5492954962_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5492754955_))))
                                  (if (gx#stx-pair? _tl5492954962_)
                                      (let ((_e5493054965_
                                             (gx#syntax-e _tl5492954962_)))
                                        (let ((_hd5493154969_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5493054965_)))
                                              (_tl5493254972_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5493054965_))))
                                          (if (gx#stx-null? _tl5493254972_)
                                              ((lambda (_L54975_ _L54977_)
                                                 (let ((__tmp62926
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp62856
                                                        (let ((__tmp62921
                                                               (let ((__tmp62922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp62925 (gx#datum->syntax '#f 'el))
                                    (__tmp62923
                                     (let ((__tmp62924
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp62924 '()))))
                                (declare (not safe))
                                (cons __tmp62925 __tmp62923))))
                         (declare (not safe))
                         (cons _L54977_ __tmp62922)))
                      (__tmp62857
                       (let ((__tmp62858
                              (let ((__tmp62920 (gx#datum->syntax '#f 'let))
                                    (__tmp62859
                                     (let ((__tmp62919
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp62860
                                            (let ((__tmp62908
                                                   (let ((__tmp62915
                                                          (let ((__tmp62918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp62916
                         (let ((__tmp62917 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp62917 '()))))
                    (declare (not safe))
                    (cons __tmp62918 __tmp62916)))
                 (__tmp62909
                  (let ((__tmp62910
                         (let ((__tmp62914 (gx#datum->syntax '#f 'r))
                               (__tmp62911
                                (let ((__tmp62912
                                       (let ((__tmp62913
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp62913 '()))))
                                  (declare (not safe))
                                  (cons __tmp62912 '()))))
                           (declare (not safe))
                           (cons __tmp62914 __tmp62911))))
                    (declare (not safe))
                    (cons __tmp62910 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp62915
                                                           __tmp62909)))
                                                  (__tmp62861
                                                   (let ((__tmp62862
                                                          (let ((__tmp62907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp62863
                         (let ((__tmp62906 (gx#datum->syntax '#f 'rest))
                               (__tmp62864
                                (let ((__tmp62870
                                       (let ((__tmp62901
                                              (let ((__tmp62905
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp62902
                                                     (let ((__tmp62904
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp62903
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp62904
                                                             __tmp62903))))
                                                (declare (not safe))
                                                (cons __tmp62905 __tmp62902)))
                                             (__tmp62871
                                              (let ((__tmp62872
                                                     (let ((__tmp62900
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp62873
                                                            (let ((__tmp62895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp62896
                                  (let ((__tmp62899 (gx#datum->syntax '#f 'el))
                                        (__tmp62897
                                         (let ((__tmp62898
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp62898 '()))))
                                    (declare (not safe))
                                    (cons __tmp62899 __tmp62897))))
                             (declare (not safe))
                             (cons _L54975_ __tmp62896)))
                          (__tmp62874
                           (let ((__tmp62887
                                  (let ((__tmp62894
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp62888
                                         (let ((__tmp62893
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp62889
                                                (let ((__tmp62892
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp62890
                                                       (let ((__tmp62891
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp62891
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp62892
                                                        __tmp62890))))
                                           (declare (not safe))
                                           (cons __tmp62893 __tmp62889))))
                                    (declare (not safe))
                                    (cons __tmp62894 __tmp62888)))
                                 (__tmp62875
                                  (let ((__tmp62876
                                         (let ((__tmp62886
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp62877
                                                (let ((__tmp62885
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp62878
                                                       (let ((__tmp62879
                                                              (let ((__tmp62884
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp62880
                             (let ((__tmp62883 (gx#datum->syntax '#f 'hd))
                                   (__tmp62881
                                    (let ((__tmp62882
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp62882 '()))))
                               (declare (not safe))
                               (cons __tmp62883 __tmp62881))))
                        (declare (not safe))
                        (cons __tmp62884 __tmp62880))))
                 (declare (not safe))
                 (cons __tmp62879 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp62885
                                                        __tmp62878))))
                                           (declare (not safe))
                                           (cons __tmp62886 __tmp62877))))
                                    (declare (not safe))
                                    (cons __tmp62876 '()))))
                             (declare (not safe))
                             (cons __tmp62887 __tmp62875))))
                      (declare (not safe))
                      (cons __tmp62895 __tmp62874))))
               (declare (not safe))
               (cons __tmp62900 __tmp62873))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp62872 '()))))
                                         (declare (not safe))
                                         (cons __tmp62901 __tmp62871)))
                                      (__tmp62865
                                       (let ((__tmp62866
                                              (let ((__tmp62869
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp62867
                                                     (let ((__tmp62868
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp62868 '()))))
                                                (declare (not safe))
                                                (cons __tmp62869 __tmp62867))))
                                         (declare (not safe))
                                         (cons __tmp62866 '()))))
                                  (declare (not safe))
                                  (cons __tmp62870 __tmp62865))))
                           (declare (not safe))
                           (cons __tmp62906 __tmp62864))))
                    (declare (not safe))
                    (cons __tmp62907 __tmp62863))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp62862 '()))))
                                              (declare (not safe))
                                              (cons __tmp62908 __tmp62861))))
                                       (declare (not safe))
                                       (cons __tmp62919 __tmp62860))))
                                (declare (not safe))
                                (cons __tmp62920 __tmp62859))))
                         (declare (not safe))
                         (cons __tmp62858 '()))))
                  (declare (not safe))
                  (cons __tmp62921 __tmp62857))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp62926
                                                         __tmp62856)))
                                               _hd5493154969_
                                               _hd5492854959_)
                                              (_g5492054938_ _g5492154942_))))
                                      (_g5492054938_ _g5492154942_))))
                              (_g5492054938_ _g5492154942_))))
                      (_g5492054938_ _g5492154942_)))))
          (_g5491954993_ _$stx54916_))))
    (define |[:0:]#DBG|
      (lambda (_$stx54997_)
        (let* ((_g5500155012_
                (lambda (_g5500255008_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5500255008_)))
               (_g5500055041_
                (lambda (_g5500255016_)
                  (if (gx#stx-pair? _g5500255016_)
                      (let ((_e5500455019_ (gx#syntax-e _g5500255016_)))
                        (let ((_hd5500555023_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5500455019_)))
                              (_tl5500655026_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5500455019_))))
                          ((lambda (_L55029_)
                             (let ((__tmp62928 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp62927
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L55029_))))
                               (declare (not safe))
                               (cons __tmp62928 __tmp62927)))
                           _tl5500655026_)))
                      (_g5500155012_ _g5500255016_)))))
          (_g5500055041_ _$stx54997_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx55045_)
        (let* ((___stx6226862269_ _$stx55045_)
               (_g5505655270_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx6226862269_))))
          (let ((___kont6227162272_
                 (lambda (_L56123_ _L56125_ _L56126_ _L56127_ _L56128_)
                   (let ((__tmp62929
                          (let ((__tmp62930
                                 (let ((__tmp62931
                                        (let ((__tmp62935
                                               (let ((__tmp62936
                                                      (lambda (_g5615856161_
                                                               _g5615956164_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5615856161_
                                                                _g5615956164_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp62936
                                                         '()
                                                         _L56126_)))
                                              (__tmp62932
                                               (let ((__tmp62933
                                                      (let ((__tmp62934
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L56123_ '()))))
                (declare (not safe))
                (cons _L56125_ __tmp62934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L56127_ __tmp62933))))
                                          (declare (not safe))
                                          (cons __tmp62935 __tmp62932))))
                                   (declare (not safe))
                                   (cons '() __tmp62931))))
                            (declare (not safe))
                            (cons '2 __tmp62930))))
                     (declare (not safe))
                     (cons _L56128_ __tmp62929))))
                (___kont6227562276_
                 (lambda (_L55976_ _L55978_ _L55979_ _L55980_)
                   (let ((__tmp62937
                          (let ((__tmp62938
                                 (let ((__tmp62939
                                        (let ((__tmp62943
                                               (let ((__tmp62944
                                                      (lambda (_g5600356006_
                                                               _g5600456009_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5600356006_
                                                                _g5600456009_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp62944
                                                         '()
                                                         _L55978_)))
                                              (__tmp62940
                                               (let ((__tmp62941
                                                      (let ((__tmp62942
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L55976_ '()))))
                (declare (not safe))
                (cons _L55976_ __tmp62942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L55979_ __tmp62941))))
                                          (declare (not safe))
                                          (cons __tmp62943 __tmp62940))))
                                   (declare (not safe))
                                   (cons '() __tmp62939))))
                            (declare (not safe))
                            (cons '2 __tmp62938))))
                     (declare (not safe))
                     (cons _L55980_ __tmp62937))))
                (___kont6227962280_
                 (lambda (_L55879_)
                   (let ((__tmp62956 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp62945
                          (let ((__tmp62946
                                 (let ((__tmp62953
                                        (let ((__tmp62955
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp62954
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp62955 __tmp62954)))
                                       (__tmp62947
                                        (let ((__tmp62950
                                               (let ((__tmp62952
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp62951
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp62952 __tmp62951)))
                                              (__tmp62948
                                               (let ((__tmp62949
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp62949))))
                                          (declare (not safe))
                                          (cons __tmp62950 __tmp62948))))
                                   (declare (not safe))
                                   (cons __tmp62953 __tmp62947))))
                            (declare (not safe))
                            (cons _L55879_ __tmp62946))))
                     (declare (not safe))
                     (cons __tmp62956 __tmp62945))))
                (___kont6228162282_
                 (lambda (_L55802_
                          _L55804_
                          _L55805_
                          _L55806_
                          _L55807_
                          _L55808_)
                   (let ((__tmp62957
                          (let ((__tmp62958
                                 (let ((__tmp62960
                                        (let ((__tmp62961
                                               (let ((__tmp62962
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L55805_ '()))))
                                                 (declare (not safe))
                                                 (cons _L55806_ __tmp62962))))
                                          (declare (not safe))
                                          (cons __tmp62961 _L55807_)))
                                       (__tmp62959
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55804_ _L55802_))))
                                   (declare (not safe))
                                   (cons __tmp62960 __tmp62959))))
                            (declare (not safe))
                            (cons '2 __tmp62958))))
                     (declare (not safe))
                     (cons _L55808_ __tmp62957))))
                (___kont6228362284_
                 (lambda (_L55683_ _L55685_ _L55686_ _L55687_ _L55688_)
                   (let ((__tmp62963
                          (let ((__tmp62964
                                 (let ((__tmp62966
                                        (let ((__tmp62967
                                               (let ((__tmp62968
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L55686_ '()))))
                                                 (declare (not safe))
                                                 (cons _L55686_ __tmp62968))))
                                          (declare (not safe))
                                          (cons __tmp62967 _L55687_)))
                                       (__tmp62965
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55685_ _L55683_))))
                                   (declare (not safe))
                                   (cons __tmp62966 __tmp62965))))
                            (declare (not safe))
                            (cons '2 __tmp62964))))
                     (declare (not safe))
                     (cons _L55688_ __tmp62963))))
                (___kont6228562286_
                 (lambda (_L55600_ _L55602_ _L55603_)
                   (let ((__tmp62969
                          (let ((__tmp62970
                                 (let ((__tmp62971
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55602_ _L55600_))))
                                   (declare (not safe))
                                   (cons '() __tmp62971))))
                            (declare (not safe))
                            (cons '3 __tmp62970))))
                     (declare (not safe))
                     (cons _L55603_ __tmp62969))))
                (___kont6228762288_
                 (lambda (_L55521_ _L55523_ _L55524_ _L55525_ _L55526_)
                   (let ((__tmp62972
                          (let ((__tmp62973
                                 (let ((__tmp62975
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55524_ _L55525_)))
                                       (__tmp62974
                                        (let ()
                                          (declare (not safe))
                                          (cons _L55523_ _L55521_))))
                                   (declare (not safe))
                                   (cons __tmp62975 __tmp62974))))
                            (declare (not safe))
                            (cons '3 __tmp62973))))
                     (declare (not safe))
                     (cons _L55526_ __tmp62972))))
                (___kont6228962290_
                 (lambda (_L55405_
                          _L55407_
                          _L55408_
                          _L55409_
                          _L55410_
                          _L55411_)
                   (let ((__tmp63023 (gx#datum->syntax '#f 'let))
                         (__tmp62976
                          (let ((__tmp63011
                                 (let ((__tmp63020
                                        (let ((__tmp63022
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp63021
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L55408_ '()))))
                                          (declare (not safe))
                                          (cons __tmp63022 __tmp63021)))
                                       (__tmp63012
                                        (let ((__tmp63013
                                               (let ((__tmp63019
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp63014
                                                      (let ((__tmp63015
                                                             (let ((__tmp63018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp63016
                            (let ((__tmp63017
                                   (let ()
                                     (declare (not safe))
                                     (cons _L55405_ '()))))
                              (declare (not safe))
                              (cons '() __tmp63017))))
                       (declare (not safe))
                       (cons __tmp63018 __tmp63016))))
                (declare (not safe))
                (cons __tmp63015 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp63019
                                                       __tmp63014))))
                                          (declare (not safe))
                                          (cons __tmp63013 '()))))
                                   (declare (not safe))
                                   (cons __tmp63020 __tmp63012)))
                                (__tmp62977
                                 (let ((__tmp62978
                                        (let ((__tmp63010
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp62979
                                               (let ((__tmp63009
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp62980
                                                      (let ((__tmp62984
                                                             (let ((__tmp63008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp62985
                            (let ((__tmp63007 (gx#datum->syntax '#f 'tagval))
                                  (__tmp62986
                                   (let ((__tmp63002
                                          (let ((__tmp63006
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp63003
                                                 (let ((__tmp63004
                                                        (let ((__tmp63005
                                                               (lambda (_g5544355448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5544455451_)
                         (let ()
                           (declare (not safe))
                           (cons _g5544355448_ _g5544455451_)))))
                  (declare (not safe))
                  (foldr1 __tmp63005 '() _L55410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63004 '()))))
                                            (declare (not safe))
                                            (cons __tmp63006 __tmp63003)))
                                         (__tmp62987
                                          (let ((__tmp62994
                                                 (let ((__tmp63001
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp62995
                                                        (let ((__tmp62996
                                                               (lambda (_g5544555454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5544655457_)
                         (let ((__tmp62997
                                (let ((__tmp63000
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp62998
                                       (let ((__tmp62999
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5544555454_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp62999))))
                                  (declare (not safe))
                                  (cons __tmp63000 __tmp62998))))
                           (declare (not safe))
                           (cons __tmp62997 _g5544655457_)))))
                  (declare (not safe))
                  (foldr1 __tmp62996 '() _L55409_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp63001
                                                         __tmp62995)))
                                                (__tmp62988
                                                 (let ((__tmp62991
                                                        (let ((__tmp62993
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp62992
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L55407_ '()))))
                  (declare (not safe))
                  (cons __tmp62993 __tmp62992)))
               (__tmp62989
                (let ((__tmp62990 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp62990 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp62991
                                                         __tmp62989))))
                                            (declare (not safe))
                                            (cons __tmp62994 __tmp62988))))
                                     (declare (not safe))
                                     (cons __tmp63002 __tmp62987))))
                              (declare (not safe))
                              (cons __tmp63007 __tmp62986))))
                       (declare (not safe))
                       (cons __tmp63008 __tmp62985)))
                    (__tmp62981
                     (let ((__tmp62982
                            (let ((__tmp62983 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp62983 '()))))
                       (declare (not safe))
                       (cons __tmp62982 '()))))
                (declare (not safe))
                (cons __tmp62984 __tmp62981))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp63009
                                                       __tmp62980))))
                                          (declare (not safe))
                                          (cons __tmp63010 __tmp62979))))
                                   (declare (not safe))
                                   (cons __tmp62978 '()))))
                            (declare (not safe))
                            (cons __tmp63011 __tmp62977))))
                     (declare (not safe))
                     (cons __tmp63023 __tmp62976)))))
            (let* ((___match6261962620_
                    (lambda (_e5522655277_
                             _hd5522755281_
                             _tl5522855284_
                             _e5522955287_
                             _hd5523055291_
                             _tl5523155294_
                             _e5523255297_
                             _e5523355301_
                             _hd5523455305_
                             _tl5523555308_
                             ___splice6229162292_
                             _target5523655311_
                             _tl5523855314_)
                      (letrec ((_loop5523955317_
                                (lambda (_hd5523755321_
                                         _exprs5524355324_
                                         _names5524455326_)
                                  (if (gx#stx-pair? _hd5523755321_)
                                      (let ((_e5524055329_
                                             (gx#syntax-e _hd5523755321_)))
                                        (let ((_lp-tl5524255336_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5524055329_)))
                                              (_lp-hd5524155333_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5524055329_))))
                                          (if (gx#stx-pair? _lp-hd5524155333_)
                                              (let ((_e5524755339_
                                                     (gx#syntax-e
                                                      _lp-hd5524155333_)))
                                                (let ((_tl5524955346_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5524755339_)))
                                                      (_hd5524855343_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5524755339_))))
                                                  (if (gx#stx-pair?
                                                       _tl5524955346_)
                                                      (let ((_e5525055349_
                                                             (gx#syntax-e
                                                              _tl5524955346_)))
                                                        (let ((_tl5525255356_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5525055349_)))
                      (_hd5525155353_
                       (let () (declare (not safe)) (##car _e5525055349_))))
                  (if (gx#stx-null? _tl5525255356_)
                      (_loop5523955317_
                       _lp-tl5524255336_
                       (let ()
                         (declare (not safe))
                         (cons _hd5525155353_ _exprs5524355324_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5524855343_ _names5524455326_)))
                      (let () (declare (not safe)) (_g5505655270_)))))
              (let () (declare (not safe)) (_g5505655270_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5505655270_)))))
                                      (let ((_names5524655362_
                                             (reverse _names5524455326_))
                                            (_exprs5524555359_
                                             (reverse _exprs5524355324_)))
                                        (if (gx#stx-pair? _tl5523555308_)
                                            (let ((_e5525355365_
                                                   (gx#syntax-e
                                                    _tl5523555308_)))
                                              (let ((_tl5525555372_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5525355365_)))
                                                    (_hd5525455369_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5525355365_))))
                                                (if (gx#stx-null?
                                                     _hd5525455369_)
                                                    (if (gx#stx-pair?
                                                         _tl5525555372_)
                                                        (let ((_e5525655375_
                                                               (gx#syntax-e
                                                                _tl5525555372_)))
                                                          (let ((_tl5525855382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5525655375_)))
                        (_hd5525755379_
                         (let () (declare (not safe)) (##car _e5525655375_))))
                    (if (gx#stx-pair? _tl5525855382_)
                        (let ((_e5525955385_ (gx#syntax-e _tl5525855382_)))
                          (let ((_tl5526155392_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5525955385_)))
                                (_hd5526055389_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5525955385_))))
                            (if (gx#stx-pair? _tl5526155392_)
                                (let ((_e5526255395_
                                       (gx#syntax-e _tl5526155392_)))
                                  (let ((_tl5526455402_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5526255395_)))
                                        (_hd5526355399_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5526255395_))))
                                    (if (gx#stx-null? _tl5526455402_)
                                        (___kont6228962290_
                                         _hd5526355399_
                                         _hd5526055389_
                                         _hd5525755379_
                                         _exprs5524555359_
                                         _names5524655362_
                                         _hd5522755281_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5505655270_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5505655270_)))))
                        (let () (declare (not safe)) (_g5505655270_)))))
                (let () (declare (not safe)) (_g5505655270_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5505655270_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5505655270_))))))))
                        (_loop5523955317_ _target5523655311_ '() '()))))
                   (___match6239762398_
                    (lambda (_e5509855902_
                             _hd5509955906_
                             _tl5510055909_
                             _e5510155912_
                             _hd5510255916_
                             _tl5510355919_
                             _e5510455922_
                             _e5510555926_
                             _hd5510655930_
                             _tl5510755933_
                             ___splice6227762278_
                             _target5510855936_
                             _tl5511055939_
                             _e5511755942_
                             _hd5511855946_
                             _tl5511955949_)
                      (letrec ((_loop5511155952_
                                (lambda (_hd5510955956_ _exprs5511555959_)
                                  (if (gx#stx-pair? _hd5510955956_)
                                      (let ((_e5511255962_
                                             (gx#syntax-e _hd5510955956_)))
                                        (let ((_lp-tl5511455969_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5511255962_)))
                                              (_lp-hd5511355966_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5511255962_))))
                                          (_loop5511155952_
                                           _lp-tl5511455969_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5511355966_
                                                   _exprs5511555959_)))))
                                      (let ((_exprs5511655972_
                                             (reverse _exprs5511555959_)))
                                        (___kont6227562276_
                                         _hd5511855946_
                                         _exprs5511655972_
                                         _hd5510655930_
                                         _hd5509955906_))))))
                        (_loop5511155952_ _target5510855936_ '()))))
                   (___match6235762358_
                    (lambda (_e5506356019_
                             _hd5506456023_
                             _tl5506556026_
                             _e5506656029_
                             _hd5506756033_
                             _tl5506856036_
                             _e5506956039_
                             _e5507056043_
                             _hd5507156047_
                             _tl5507256050_
                             ___splice6227362274_
                             _target5507356053_
                             _tl5507556056_
                             _e5508256059_
                             _hd5508356063_
                             _tl5508456066_
                             _e5508556069_
                             _hd5508656073_
                             _tl5508756076_
                             _e5508856079_
                             _hd5508956083_
                             _tl5509056086_
                             _e5509156089_
                             _hd5509256093_
                             _tl5509356096_)
                      (letrec ((_loop5507656099_
                                (lambda (_hd5507456103_ _exprs5508056106_)
                                  (if (gx#stx-pair? _hd5507456103_)
                                      (let ((_e5507756109_
                                             (gx#syntax-e _hd5507456103_)))
                                        (let ((_lp-tl5507956116_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5507756109_)))
                                              (_lp-hd5507856113_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5507756109_))))
                                          (_loop5507656099_
                                           _lp-tl5507956116_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5507856113_
                                                   _exprs5508056106_)))))
                                      (let ((_exprs5508156119_
                                             (reverse _exprs5508056106_)))
                                        (___kont6227162272_
                                         _hd5509256093_
                                         _hd5508956083_
                                         _exprs5508156119_
                                         _hd5507156047_
                                         _hd5506456023_))))))
                        (_loop5507656099_ _target5507356053_ '())))))
              (if (gx#stx-pair? ___stx6226862269_)
                  (let ((_e5506356019_ (gx#syntax-e ___stx6226862269_)))
                    (let ((_tl5506556026_
                           (let () (declare (not safe)) (##cdr _e5506356019_)))
                          (_hd5506456023_
                           (let ()
                             (declare (not safe))
                             (##car _e5506356019_))))
                      (if (gx#stx-pair? _tl5506556026_)
                          (let ((_e5506656029_ (gx#syntax-e _tl5506556026_)))
                            (let ((_tl5506856036_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5506656029_)))
                                  (_hd5506756033_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5506656029_))))
                              (if (gx#stx-datum? _hd5506756033_)
                                  (let ((_e5506956039_
                                         (gx#stx-e _hd5506756033_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5506956039_ '1))
                                        (if (gx#stx-pair? _tl5506856036_)
                                            (let ((_e5507056043_
                                                   (gx#syntax-e
                                                    _tl5506856036_)))
                                              (let ((_tl5507256050_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5507056043_)))
                                                    (_hd5507156047_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5507056043_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5507256050_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5507256050_)
                                                              '2)
                                                        (let ((___splice6227362274_
                                                               (gx#syntax-split-splice
                                                                _tl5507256050_
                                                                '2)))
                                                          (let ((_tl5507556056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6227362274_ '1)))
                        (_target5507356053_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice6227362274_ '0))))
                    (if (gx#stx-pair? _tl5507556056_)
                        (let ((_e5508256059_ (gx#syntax-e _tl5507556056_)))
                          (let ((_tl5508456066_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5508256059_)))
                                (_hd5508356063_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5508256059_))))
                            (if (gx#stx-pair? _hd5508356063_)
                                (let ((_e5508556069_
                                       (gx#syntax-e _hd5508356063_)))
                                  (let ((_tl5508756076_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5508556069_)))
                                        (_hd5508656073_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5508556069_))))
                                    (if (gx#identifier? _hd5508656073_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g63024_|
                                             _hd5508656073_)
                                            (if (gx#stx-pair? _tl5508756076_)
                                                (let ((_e5508856079_
                                                       (gx#syntax-e
                                                        _tl5508756076_)))
                                                  (let ((_tl5509056086_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5508856079_)))
                                                        (_hd5508956083_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5508856079_))))
                                                    (if (gx#stx-null?
                                                         _tl5509056086_)
                                                        (if (gx#stx-pair?
                                                             _tl5508456066_)
                                                            (let ((_e5509156089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5508456066_)))
                      (let ((_tl5509356096_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5509156089_)))
                            (_hd5509256093_
                             (let ()
                               (declare (not safe))
                               (##car _e5509156089_))))
                        (if (gx#stx-null? _tl5509356096_)
                            (___match6235762358_
                             _e5506356019_
                             _hd5506456023_
                             _tl5506556026_
                             _e5506656029_
                             _hd5506756033_
                             _tl5506856036_
                             _e5506956039_
                             _e5507056043_
                             _hd5507156047_
                             _tl5507256050_
                             ___splice6227362274_
                             _target5507356053_
                             _tl5507556056_
                             _e5508256059_
                             _hd5508356063_
                             _tl5508456066_
                             _e5508556069_
                             _hd5508656073_
                             _tl5508756076_
                             _e5508856079_
                             _hd5508956083_
                             _tl5509056086_
                             _e5509156089_
                             _hd5509256093_
                             _tl5509356096_)
                            (if (fx>= (gx#stx-length _tl5507256050_) '1)
                                (let ((___splice6227762278_
                                       (gx#syntax-split-splice
                                        _tl5507256050_
                                        '1)))
                                  (let ((_tl5511055939_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6227762278_
                                            '1)))
                                        (_target5510855936_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6227762278_
                                            '0))))
                                    (if (gx#stx-pair? _tl5511055939_)
                                        (let ((_e5511755942_
                                               (gx#syntax-e _tl5511055939_)))
                                          (let ((_tl5511955949_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5511755942_)))
                                                (_hd5511855946_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5511755942_))))
                                            (if (gx#stx-null? _tl5511955949_)
                                                (___match6239762398_
                                                 _e5506356019_
                                                 _hd5506456023_
                                                 _tl5506556026_
                                                 _e5506656029_
                                                 _hd5506756033_
                                                 _tl5506856036_
                                                 _e5506956039_
                                                 _e5507056043_
                                                 _hd5507156047_
                                                 _tl5507256050_
                                                 ___splice6227762278_
                                                 _target5510855936_
                                                 _tl5511055939_
                                                 _e5511755942_
                                                 _hd5511855946_
                                                 _tl5511955949_)
                                                (if (gx#stx-null?
                                                     _tl5507256050_)
                                                    (___kont6227962280_
                                                     _hd5507156047_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5505655270_))))))
                                        (if (gx#stx-null? _tl5507256050_)
                                            (___kont6227962280_ _hd5507156047_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5505655270_))))))
                                (if (gx#stx-null? _tl5507256050_)
                                    (___kont6227962280_ _hd5507156047_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5505655270_)))))))
                    (if (fx>= (gx#stx-length _tl5507256050_) '1)
                        (let ((___splice6227762278_
                               (gx#syntax-split-splice _tl5507256050_ '1)))
                          (let ((_tl5511055939_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6227762278_ '1)))
                                (_target5510855936_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6227762278_ '0))))
                            (if (gx#stx-pair? _tl5511055939_)
                                (let ((_e5511755942_
                                       (gx#syntax-e _tl5511055939_)))
                                  (let ((_tl5511955949_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5511755942_)))
                                        (_hd5511855946_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5511755942_))))
                                    (if (gx#stx-null? _tl5511955949_)
                                        (___match6239762398_
                                         _e5506356019_
                                         _hd5506456023_
                                         _tl5506556026_
                                         _e5506656029_
                                         _hd5506756033_
                                         _tl5506856036_
                                         _e5506956039_
                                         _e5507056043_
                                         _hd5507156047_
                                         _tl5507256050_
                                         ___splice6227762278_
                                         _target5510855936_
                                         _tl5511055939_
                                         _e5511755942_
                                         _hd5511855946_
                                         _tl5511955949_)
                                        (if (gx#stx-null? _tl5507256050_)
                                            (___kont6227962280_ _hd5507156047_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5505655270_))))))
                                (if (gx#stx-null? _tl5507256050_)
                                    (___kont6227962280_ _hd5507156047_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5505655270_))))))
                        (if (gx#stx-null? _tl5507256050_)
                            (___kont6227962280_ _hd5507156047_)
                            (let () (declare (not safe)) (_g5505655270_)))))
                (if (fx>= (gx#stx-length _tl5507256050_) '1)
                    (let ((___splice6227762278_
                           (gx#syntax-split-splice _tl5507256050_ '1)))
                      (let ((_tl5511055939_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6227762278_ '1)))
                            (_target5510855936_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6227762278_ '0))))
                        (if (gx#stx-pair? _tl5511055939_)
                            (let ((_e5511755942_ (gx#syntax-e _tl5511055939_)))
                              (let ((_tl5511955949_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5511755942_)))
                                    (_hd5511855946_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5511755942_))))
                                (if (gx#stx-null? _tl5511955949_)
                                    (___match6239762398_
                                     _e5506356019_
                                     _hd5506456023_
                                     _tl5506556026_
                                     _e5506656029_
                                     _hd5506756033_
                                     _tl5506856036_
                                     _e5506956039_
                                     _e5507056043_
                                     _hd5507156047_
                                     _tl5507256050_
                                     ___splice6227762278_
                                     _target5510855936_
                                     _tl5511055939_
                                     _e5511755942_
                                     _hd5511855946_
                                     _tl5511955949_)
                                    (if (gx#stx-null? _tl5507256050_)
                                        (___kont6227962280_ _hd5507156047_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5505655270_))))))
                            (if (gx#stx-null? _tl5507256050_)
                                (___kont6227962280_ _hd5507156047_)
                                (let ()
                                  (declare (not safe))
                                  (_g5505655270_))))))
                    (if (gx#stx-null? _tl5507256050_)
                        (___kont6227962280_ _hd5507156047_)
                        (let () (declare (not safe)) (_g5505655270_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5507256050_)
                                                          '1)
                                                    (let ((___splice6227762278_
                                                           (gx#syntax-split-splice
                                                            _tl5507256050_
                                                            '1)))
                                                      (let ((_tl5511055939_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6227762278_ '1)))
                    (_target5510855936_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6227762278_ '0))))
                (if (gx#stx-pair? _tl5511055939_)
                    (let ((_e5511755942_ (gx#syntax-e _tl5511055939_)))
                      (let ((_tl5511955949_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5511755942_)))
                            (_hd5511855946_
                             (let ()
                               (declare (not safe))
                               (##car _e5511755942_))))
                        (if (gx#stx-null? _tl5511955949_)
                            (___match6239762398_
                             _e5506356019_
                             _hd5506456023_
                             _tl5506556026_
                             _e5506656029_
                             _hd5506756033_
                             _tl5506856036_
                             _e5506956039_
                             _e5507056043_
                             _hd5507156047_
                             _tl5507256050_
                             ___splice6227762278_
                             _target5510855936_
                             _tl5511055939_
                             _e5511755942_
                             _hd5511855946_
                             _tl5511955949_)
                            (if (gx#stx-null? _tl5507256050_)
                                (___kont6227962280_ _hd5507156047_)
                                (let ()
                                  (declare (not safe))
                                  (_g5505655270_))))))
                    (if (gx#stx-null? _tl5507256050_)
                        (___kont6227962280_ _hd5507156047_)
                        (let () (declare (not safe)) (_g5505655270_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5507256050_)
                                                        (___kont6227962280_
                                                         _hd5507156047_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5505655270_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5507256050_)
                                                      '1)
                                                (let ((___splice6227762278_
                                                       (gx#syntax-split-splice
                                                        _tl5507256050_
                                                        '1)))
                                                  (let ((_tl5511055939_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6227762278_
                                                            '1)))
                                                        (_target5510855936_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6227762278_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5511055939_)
                                                        (let ((_e5511755942_
                                                               (gx#syntax-e
                                                                _tl5511055939_)))
                                                          (let ((_tl5511955949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5511755942_)))
                        (_hd5511855946_
                         (let () (declare (not safe)) (##car _e5511755942_))))
                    (if (gx#stx-null? _tl5511955949_)
                        (___match6239762398_
                         _e5506356019_
                         _hd5506456023_
                         _tl5506556026_
                         _e5506656029_
                         _hd5506756033_
                         _tl5506856036_
                         _e5506956039_
                         _e5507056043_
                         _hd5507156047_
                         _tl5507256050_
                         ___splice6227762278_
                         _target5510855936_
                         _tl5511055939_
                         _e5511755942_
                         _hd5511855946_
                         _tl5511955949_)
                        (if (gx#stx-null? _tl5507256050_)
                            (___kont6227962280_ _hd5507156047_)
                            (let () (declare (not safe)) (_g5505655270_))))))
                (if (gx#stx-null? _tl5507256050_)
                    (___kont6227962280_ _hd5507156047_)
                    (let () (declare (not safe)) (_g5505655270_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5507256050_)
                                                    (___kont6227962280_
                                                     _hd5507156047_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5505655270_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5507256050_)
                                                  '1)
                                            (let ((___splice6227762278_
                                                   (gx#syntax-split-splice
                                                    _tl5507256050_
                                                    '1)))
                                              (let ((_tl5511055939_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6227762278_
                                                        '1)))
                                                    (_target5510855936_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6227762278_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5511055939_)
                                                    (let ((_e5511755942_
                                                           (gx#syntax-e
                                                            _tl5511055939_)))
                                                      (let ((_tl5511955949_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5511755942_)))
                    (_hd5511855946_
                     (let () (declare (not safe)) (##car _e5511755942_))))
                (if (gx#stx-null? _tl5511955949_)
                    (___match6239762398_
                     _e5506356019_
                     _hd5506456023_
                     _tl5506556026_
                     _e5506656029_
                     _hd5506756033_
                     _tl5506856036_
                     _e5506956039_
                     _e5507056043_
                     _hd5507156047_
                     _tl5507256050_
                     ___splice6227762278_
                     _target5510855936_
                     _tl5511055939_
                     _e5511755942_
                     _hd5511855946_
                     _tl5511955949_)
                    (if (gx#stx-null? _tl5507256050_)
                        (___kont6227962280_ _hd5507156047_)
                        (let () (declare (not safe)) (_g5505655270_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5507256050_)
                                                        (___kont6227962280_
                                                         _hd5507156047_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5505655270_))))))
                                            (if (gx#stx-null? _tl5507256050_)
                                                (___kont6227962280_
                                                 _hd5507156047_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5505655270_)))))))
                                (if (fx>= (gx#stx-length _tl5507256050_) '1)
                                    (let ((___splice6227762278_
                                           (gx#syntax-split-splice
                                            _tl5507256050_
                                            '1)))
                                      (let ((_tl5511055939_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6227762278_
                                                '1)))
                                            (_target5510855936_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6227762278_
                                                '0))))
                                        (if (gx#stx-pair? _tl5511055939_)
                                            (let ((_e5511755942_
                                                   (gx#syntax-e
                                                    _tl5511055939_)))
                                              (let ((_tl5511955949_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5511755942_)))
                                                    (_hd5511855946_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5511755942_))))
                                                (if (gx#stx-null?
                                                     _tl5511955949_)
                                                    (___match6239762398_
                                                     _e5506356019_
                                                     _hd5506456023_
                                                     _tl5506556026_
                                                     _e5506656029_
                                                     _hd5506756033_
                                                     _tl5506856036_
                                                     _e5506956039_
                                                     _e5507056043_
                                                     _hd5507156047_
                                                     _tl5507256050_
                                                     ___splice6227762278_
                                                     _target5510855936_
                                                     _tl5511055939_
                                                     _e5511755942_
                                                     _hd5511855946_
                                                     _tl5511955949_)
                                                    (if (gx#stx-null?
                                                         _tl5507256050_)
                                                        (___kont6227962280_
                                                         _hd5507156047_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5505655270_))))))
                                            (if (gx#stx-null? _tl5507256050_)
                                                (___kont6227962280_
                                                 _hd5507156047_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5505655270_))))))
                                    (if (gx#stx-null? _tl5507256050_)
                                        (___kont6227962280_ _hd5507156047_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5505655270_)))))))
                        (if (fx>= (gx#stx-length _tl5507256050_) '1)
                            (let ((___splice6227762278_
                                   (gx#syntax-split-splice _tl5507256050_ '1)))
                              (let ((_tl5511055939_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice6227762278_ '1)))
                                    (_target5510855936_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice6227762278_
                                        '0))))
                                (if (gx#stx-pair? _tl5511055939_)
                                    (let ((_e5511755942_
                                           (gx#syntax-e _tl5511055939_)))
                                      (let ((_tl5511955949_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5511755942_)))
                                            (_hd5511855946_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5511755942_))))
                                        (if (gx#stx-null? _tl5511955949_)
                                            (___match6239762398_
                                             _e5506356019_
                                             _hd5506456023_
                                             _tl5506556026_
                                             _e5506656029_
                                             _hd5506756033_
                                             _tl5506856036_
                                             _e5506956039_
                                             _e5507056043_
                                             _hd5507156047_
                                             _tl5507256050_
                                             ___splice6227762278_
                                             _target5510855936_
                                             _tl5511055939_
                                             _e5511755942_
                                             _hd5511855946_
                                             _tl5511955949_)
                                            (if (gx#stx-null? _tl5507256050_)
                                                (___kont6227962280_
                                                 _hd5507156047_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5505655270_))))))
                                    (if (gx#stx-null? _tl5507256050_)
                                        (___kont6227962280_ _hd5507156047_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5505655270_))))))
                            (if (gx#stx-null? _tl5507256050_)
                                (___kont6227962280_ _hd5507156047_)
                                (let ()
                                  (declare (not safe))
                                  (_g5505655270_)))))))
                (if (fx>= (gx#stx-length _tl5507256050_) '1)
                    (let ((___splice6227762278_
                           (gx#syntax-split-splice _tl5507256050_ '1)))
                      (let ((_tl5511055939_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6227762278_ '1)))
                            (_target5510855936_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6227762278_ '0))))
                        (if (gx#stx-pair? _tl5511055939_)
                            (let ((_e5511755942_ (gx#syntax-e _tl5511055939_)))
                              (let ((_tl5511955949_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5511755942_)))
                                    (_hd5511855946_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5511755942_))))
                                (if (gx#stx-null? _tl5511955949_)
                                    (___match6239762398_
                                     _e5506356019_
                                     _hd5506456023_
                                     _tl5506556026_
                                     _e5506656029_
                                     _hd5506756033_
                                     _tl5506856036_
                                     _e5506956039_
                                     _e5507056043_
                                     _hd5507156047_
                                     _tl5507256050_
                                     ___splice6227762278_
                                     _target5510855936_
                                     _tl5511055939_
                                     _e5511755942_
                                     _hd5511855946_
                                     _tl5511955949_)
                                    (if (gx#stx-null? _tl5507256050_)
                                        (___kont6227962280_ _hd5507156047_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5505655270_))))))
                            (if (gx#stx-null? _tl5507256050_)
                                (___kont6227962280_ _hd5507156047_)
                                (let ()
                                  (declare (not safe))
                                  (_g5505655270_))))))
                    (if (gx#stx-null? _tl5507256050_)
                        (___kont6227962280_ _hd5507156047_)
                        (let () (declare (not safe)) (_g5505655270_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5507256050_)
                                                        (___kont6227962280_
                                                         _hd5507156047_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5505655270_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5505655270_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5506956039_ '2))
                                            (if (gx#stx-pair? _tl5506856036_)
                                                (let ((_e5514455742_
                                                       (gx#syntax-e
                                                        _tl5506856036_)))
                                                  (let ((_tl5514655749_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5514455742_)))
                                                        (_hd5514555746_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5514455742_))))
                                                    (if (gx#stx-pair?
                                                         _tl5514655749_)
                                                        (let ((_e5514755752_
                                                               (gx#syntax-e
                                                                _tl5514655749_)))
                                                          (let ((_tl5514955759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5514755752_)))
                        (_hd5514855756_
                         (let () (declare (not safe)) (##car _e5514755752_))))
                    (if (gx#stx-pair? _hd5514855756_)
                        (let ((_e5515055762_ (gx#syntax-e _hd5514855756_)))
                          (let ((_tl5515255769_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5515055762_)))
                                (_hd5515155766_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5515055762_))))
                            (if (gx#stx-pair? _hd5515155766_)
                                (let ((_e5515355772_
                                       (gx#syntax-e _hd5515155766_)))
                                  (let ((_tl5515555779_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5515355772_)))
                                        (_hd5515455776_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5515355772_))))
                                    (if (gx#identifier? _hd5515455776_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g63025_|
                                             _hd5515455776_)
                                            (if (gx#stx-pair? _tl5515555779_)
                                                (let ((_e5515655782_
                                                       (gx#syntax-e
                                                        _tl5515555779_)))
                                                  (let ((_tl5515855789_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5515655782_)))
                                                        (_hd5515755786_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5515655782_))))
                                                    (if (gx#stx-null?
                                                         _tl5515855789_)
                                                        (if (gx#stx-pair?
                                                             _tl5515255769_)
                                                            (let ((_e5515955792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5515255769_)))
                      (let ((_tl5516155799_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5515955792_)))
                            (_hd5516055796_
                             (let ()
                               (declare (not safe))
                               (##car _e5515955792_))))
                        (___kont6228162282_
                         _tl5514955759_
                         _tl5516155799_
                         _hd5516055796_
                         _hd5515755786_
                         _hd5514555746_
                         _hd5506456023_)))
                    (___kont6228362284_
                     _tl5514955759_
                     _tl5515255769_
                     _hd5515155766_
                     _hd5514555746_
                     _hd5506456023_))
                (___kont6228362284_
                 _tl5514955759_
                 _tl5515255769_
                 _hd5515155766_
                 _hd5514555746_
                 _hd5506456023_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont6228362284_
                                                 _tl5514955759_
                                                 _tl5515255769_
                                                 _hd5515155766_
                                                 _hd5514555746_
                                                 _hd5506456023_))
                                            (___kont6228362284_
                                             _tl5514955759_
                                             _tl5515255769_
                                             _hd5515155766_
                                             _hd5514555746_
                                             _hd5506456023_))
                                        (___kont6228362284_
                                         _tl5514955759_
                                         _tl5515255769_
                                         _hd5515155766_
                                         _hd5514555746_
                                         _hd5506456023_))))
                                (___kont6228362284_
                                 _tl5514955759_
                                 _tl5515255769_
                                 _hd5515155766_
                                 _hd5514555746_
                                 _hd5506456023_))))
                        (if (gx#stx-null? _hd5514855756_)
                            (___kont6228562286_
                             _tl5514955759_
                             _hd5514555746_
                             _hd5506456023_)
                            (let () (declare (not safe)) (_g5505655270_))))))
                (let () (declare (not safe)) (_g5505655270_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5505655270_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5506956039_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5506856036_)
                                                    (let ((_e5521155491_
                                                           (gx#syntax-e
                                                            _tl5506856036_)))
                                                      (let ((_tl5521355498_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5521155491_)))
                    (_hd5521255495_
                     (let () (declare (not safe)) (##car _e5521155491_))))
                (if (gx#stx-pair? _tl5521355498_)
                    (let ((_e5521455501_ (gx#syntax-e _tl5521355498_)))
                      (let ((_tl5521655508_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5521455501_)))
                            (_hd5521555505_
                             (let ()
                               (declare (not safe))
                               (##car _e5521455501_))))
                        (if (gx#stx-pair? _hd5521555505_)
                            (let ((_e5521755511_ (gx#syntax-e _hd5521555505_)))
                              (let ((_tl5521955518_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5521755511_)))
                                    (_hd5521855515_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5521755511_))))
                                (___kont6228762288_
                                 _tl5521655508_
                                 _tl5521955518_
                                 _hd5521855515_
                                 _hd5521255495_
                                 _hd5506456023_)))
                            (if (gx#stx-pair/null? _hd5521255495_)
                                (let ((___splice6229162292_
                                       (gx#syntax-split-splice
                                        _hd5521255495_
                                        '0)))
                                  (let ((_tl5523855314_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6229162292_
                                            '1)))
                                        (_target5523655311_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice6229162292_
                                            '0))))
                                    (if (gx#stx-null? _tl5523855314_)
                                        (___match6261962620_
                                         _e5506356019_
                                         _hd5506456023_
                                         _tl5506556026_
                                         _e5506656029_
                                         _hd5506756033_
                                         _tl5506856036_
                                         _e5506956039_
                                         _e5521155491_
                                         _hd5521255495_
                                         _tl5521355498_
                                         ___splice6229162292_
                                         _target5523655311_
                                         _tl5523855314_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5505655270_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5505655270_))))))
                    (if (gx#stx-pair/null? _hd5521255495_)
                        (let ((___splice6229162292_
                               (gx#syntax-split-splice _hd5521255495_ '0)))
                          (let ((_tl5523855314_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6229162292_ '1)))
                                (_target5523655311_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice6229162292_ '0))))
                            (if (gx#stx-null? _tl5523855314_)
                                (___match6261962620_
                                 _e5506356019_
                                 _hd5506456023_
                                 _tl5506556026_
                                 _e5506656029_
                                 _hd5506756033_
                                 _tl5506856036_
                                 _e5506956039_
                                 _e5521155491_
                                 _hd5521255495_
                                 _tl5521355498_
                                 ___splice6229162292_
                                 _target5523655311_
                                 _tl5523855314_)
                                (let ()
                                  (declare (not safe))
                                  (_g5505655270_)))))
                        (let () (declare (not safe)) (_g5505655270_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5505655270_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5505655270_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5505655270_)))))
                          (let () (declare (not safe)) (_g5505655270_)))))
                  (let () (declare (not safe)) (_g5505655270_))))))))))
