(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g57041_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g57042_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#__lock-inline!|
      (lambda (_$stx52769_)
        (let* ((_g5277352787_
                (lambda (_g5277452783_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5277452783_)))
               (_g5277252829_
                (lambda (_g5277452791_)
                  (if (gx#stx-pair? _g5277452791_)
                      (let ((_e5277852794_ (gx#syntax-e _g5277452791_)))
                        (let ((_hd5277752798_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5277852794_)))
                              (_tl5277652801_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5277852794_))))
                          (if (gx#stx-pair? _tl5277652801_)
                              (let ((_e5278152804_
                                     (gx#syntax-e _tl5277652801_)))
                                (let ((_hd5278052808_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5278152804_)))
                                      (_tl5277952811_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5278152804_))))
                                  (if (gx#stx-null? _tl5277952811_)
                                      ((lambda (_L52814_)
                                         (let ((__tmp56746
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp56711
                                                (let ((__tmp56712
                                                       (let ((__tmp56739
                                                              (let ((__tmp56745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'declare))
                            (__tmp56740
                             (let ((__tmp56741
                                    (let ((__tmp56744
                                           (gx#datum->syntax '#f 'not))
                                          (__tmp56742
                                           (let ((__tmp56743
                                                  (gx#datum->syntax
                                                   '#f
                                                   'interrupts-enabled)))
                                             (declare (not safe))
                                             (cons __tmp56743 '()))))
                                      (declare (not safe))
                                      (cons __tmp56744 __tmp56742))))
                               (declare (not safe))
                               (cons __tmp56741 '()))))
                        (declare (not safe))
                        (cons __tmp56745 __tmp56740)))
                     (__tmp56713
                      (let ((__tmp56714
                             (let ((__tmp56738 (gx#datum->syntax '#f 'let))
                                   (__tmp56715
                                    (let ((__tmp56737
                                           (gx#datum->syntax '#f 'again))
                                          (__tmp56716
                                           (let ((__tmp56717
                                                  (let ((__tmp56718
                                                         (let ((__tmp56736
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'unless))
                       (__tmp56719
                        (let ((__tmp56726
                               (let ((__tmp56735 (gx#datum->syntax '#f '##fx=))
                                     (__tmp56727
                                      (let ((__tmp56729
                                             (let ((__tmp56734
                                                    (gx#datum->syntax
                                                     '#f
                                                     '##vector-cas!))
                                                   (__tmp56730
                                                    (let ((__tmp56731
                                                           (let ((__tmp56732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp56733
                                 (let () (declare (not safe)) (cons '0 '()))))
                            (declare (not safe))
                            (cons '1 __tmp56733))))
                     (declare (not safe))
                     (cons '0 __tmp56732))))
              (declare (not safe))
              (cons _L52814_ __tmp56731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp56734 __tmp56730)))
                                            (__tmp56728
                                             (let ()
                                               (declare (not safe))
                                               (cons '0 '()))))
                                        (declare (not safe))
                                        (cons __tmp56729 __tmp56728))))
                                 (declare (not safe))
                                 (cons __tmp56735 __tmp56727)))
                              (__tmp56720
                               (let ((__tmp56724
                                      (let ((__tmp56725
                                             (gx#datum->syntax
                                              '#f
                                              '##thread-yield!)))
                                        (declare (not safe))
                                        (cons __tmp56725 '())))
                                     (__tmp56721
                                      (let ((__tmp56722
                                             (let ((__tmp56723
                                                    (gx#datum->syntax
                                                     '#f
                                                     'again)))
                                               (declare (not safe))
                                               (cons __tmp56723 '()))))
                                        (declare (not safe))
                                        (cons __tmp56722 '()))))
                                 (declare (not safe))
                                 (cons __tmp56724 __tmp56721))))
                          (declare (not safe))
                          (cons __tmp56726 __tmp56720))))
                   (declare (not safe))
                   (cons __tmp56736 __tmp56719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp56718 '()))))
                                             (declare (not safe))
                                             (cons '() __tmp56717))))
                                      (declare (not safe))
                                      (cons __tmp56737 __tmp56716))))
                               (declare (not safe))
                               (cons __tmp56738 __tmp56715))))
                        (declare (not safe))
                        (cons __tmp56714 '()))))
                 (declare (not safe))
                 (cons __tmp56739 __tmp56713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '() __tmp56712))))
                                           (declare (not safe))
                                           (cons __tmp56746 __tmp56711)))
                                       _hd5278052808_)
                                      (_g5277352787_ _g5277452791_))))
                              (_g5277352787_ _g5277452791_))))
                      (_g5277352787_ _g5277452791_)))))
          (_g5277252829_ _$stx52769_))))
    (define |[:0:]#__unlock-inline!|
      (lambda (_$stx52833_)
        (let* ((_g5283752851_
                (lambda (_g5283852847_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5283852847_)))
               (_g5283652892_
                (lambda (_g5283852855_)
                  (if (gx#stx-pair? _g5283852855_)
                      (let ((_e5284252858_ (gx#syntax-e _g5283852855_)))
                        (let ((_hd5284152862_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5284252858_)))
                              (_tl5284052865_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5284252858_))))
                          (if (gx#stx-pair? _tl5284052865_)
                              (let ((_e5284552868_
                                     (gx#syntax-e _tl5284052865_)))
                                (let ((_hd5284452872_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5284552868_)))
                                      (_tl5284352875_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5284552868_))))
                                  (if (gx#stx-null? _tl5284352875_)
                                      ((lambda (_L52878_)
                                         (let ((__tmp56751
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-cas!))
                                               (__tmp56747
                                                (let ((__tmp56748
                                                       (let ((__tmp56749
                                                              (let ((__tmp56750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons '0 __tmp56750))))
                 (declare (not safe))
                 (cons '0 __tmp56749))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L52878_ __tmp56748))))
                                           (declare (not safe))
                                           (cons __tmp56751 __tmp56747)))
                                       _hd5284452872_)
                                      (_g5283752851_ _g5283852855_))))
                              (_g5283752851_ _g5283852855_))))
                      (_g5283752851_ _g5283852855_)))))
          (_g5283652892_ _$stx52833_))))
    (define |[:0:]#__make-inline-lock|
      (lambda (_$stx52896_)
        (let* ((_g5290052910_
                (lambda (_g5290152906_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5290152906_)))
               (_g5289952931_
                (lambda (_g5290152914_)
                  (if (gx#stx-pair? _g5290152914_)
                      (let ((_e5290452917_ (gx#syntax-e _g5290152914_)))
                        (let ((_hd5290352921_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5290452917_)))
                              (_tl5290252924_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5290452917_))))
                          (if (gx#stx-null? _tl5290252924_)
                              ((lambda ()
                                 (let ((__tmp56753
                                        (gx#datum->syntax '#f 'vector))
                                       (__tmp56752
                                        (let ()
                                          (declare (not safe))
                                          (cons '0 '()))))
                                   (declare (not safe))
                                   (cons __tmp56753 __tmp56752))))
                              (_g5290052910_ _g5290152914_))))
                      (_g5290052910_ _g5290152914_)))))
          (_g5289952931_ _$stx52896_))))
    (define |[:0:]#defassget|
      (lambda (_$stx52935_)
        (let* ((_g5293952957_
                (lambda (_g5294052953_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5294052953_)))
               (_g5293853012_
                (lambda (_g5294052961_)
                  (if (gx#stx-pair? _g5294052961_)
                      (let ((_e5294552964_ (gx#syntax-e _g5294052961_)))
                        (let ((_hd5294452968_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5294552964_)))
                              (_tl5294352971_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5294552964_))))
                          (if (gx#stx-pair? _tl5294352971_)
                              (let ((_e5294852974_
                                     (gx#syntax-e _tl5294352971_)))
                                (let ((_hd5294752978_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5294852974_)))
                                      (_tl5294652981_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5294852974_))))
                                  (if (gx#stx-pair? _tl5294652981_)
                                      (let ((_e5295152984_
                                             (gx#syntax-e _tl5294652981_)))
                                        (let ((_hd5295052988_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5295152984_)))
                                              (_tl5294952991_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5295152984_))))
                                          (if (gx#stx-null? _tl5294952991_)
                                              ((lambda (_L52994_ _L52996_)
                                                 (let ((__tmp56802
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp56754
                                                        (let ((__tmp56793
                                                               (let ((__tmp56794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp56801 (gx#datum->syntax '#f 'key))
                                    (__tmp56795
                                     (let ((__tmp56800
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp56796
                                            (let ((__tmp56797
                                                   (let ((__tmp56799
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp56798
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp56799
                                                           __tmp56798))))
                                              (declare (not safe))
                                              (cons __tmp56797 '()))))
                                       (declare (not safe))
                                       (cons __tmp56800 __tmp56796))))
                                (declare (not safe))
                                (cons __tmp56801 __tmp56795))))
                         (declare (not safe))
                         (cons _L52996_ __tmp56794)))
                      (__tmp56755
                       (let ((__tmp56756
                              (let ((__tmp56792 (gx#datum->syntax '#f 'cond))
                                    (__tmp56757
                                     (let ((__tmp56774
                                            (let ((__tmp56779
                                                   (let ((__tmp56791
                                                          (gx#datum->syntax
                                                           '#f
                                                           'and))
                                                         (__tmp56780
                                                          (let ((__tmp56787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp56790 (gx#datum->syntax '#f 'pair?))
                               (__tmp56788
                                (let ((__tmp56789 (gx#datum->syntax '#f 'lst)))
                                  (declare (not safe))
                                  (cons __tmp56789 '()))))
                           (declare (not safe))
                           (cons __tmp56790 __tmp56788)))
                        (__tmp56781
                         (let ((__tmp56782
                                (let ((__tmp56783
                                       (let ((__tmp56786
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp56784
                                              (let ((__tmp56785
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lst)))
                                                (declare (not safe))
                                                (cons __tmp56785 '()))))
                                         (declare (not safe))
                                         (cons __tmp56786 __tmp56784))))
                                  (declare (not safe))
                                  (cons _L52994_ __tmp56783))))
                           (declare (not safe))
                           (cons __tmp56782 '()))))
                    (declare (not safe))
                    (cons __tmp56787 __tmp56781))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp56791
                                                           __tmp56780)))
                                                  (__tmp56775
                                                   (let ((__tmp56778
                                                          (gx#datum->syntax
                                                           '#f
                                                           '=>))
                                                         (__tmp56776
                                                          (let ((__tmp56777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'cdr)))
                    (declare (not safe))
                    (cons __tmp56777 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp56778
                                                           __tmp56776))))
                                              (declare (not safe))
                                              (cons __tmp56779 __tmp56775)))
                                           (__tmp56758
                                            (let ((__tmp56764
                                                   (let ((__tmp56770
                                                          (let ((__tmp56773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'procedure?))
                        (__tmp56771
                         (let ((__tmp56772 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp56772 '()))))
                    (declare (not safe))
                    (cons __tmp56773 __tmp56771)))
                 (__tmp56765
                  (let ((__tmp56766
                         (let ((__tmp56769 (gx#datum->syntax '#f 'default))
                               (__tmp56767
                                (let ((__tmp56768 (gx#datum->syntax '#f 'key)))
                                  (declare (not safe))
                                  (cons __tmp56768 '()))))
                           (declare (not safe))
                           (cons __tmp56769 __tmp56767))))
                    (declare (not safe))
                    (cons __tmp56766 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp56770
                                                           __tmp56765)))
                                                  (__tmp56759
                                                   (let ((__tmp56760
                                                          (let ((__tmp56763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'else))
                        (__tmp56761
                         (let ((__tmp56762 (gx#datum->syntax '#f 'default)))
                           (declare (not safe))
                           (cons __tmp56762 '()))))
                    (declare (not safe))
                    (cons __tmp56763 __tmp56761))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp56760 '()))))
                                              (declare (not safe))
                                              (cons __tmp56764 __tmp56759))))
                                       (declare (not safe))
                                       (cons __tmp56774 __tmp56758))))
                                (declare (not safe))
                                (cons __tmp56792 __tmp56757))))
                         (declare (not safe))
                         (cons __tmp56756 '()))))
                  (declare (not safe))
                  (cons __tmp56793 __tmp56755))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp56802
                                                         __tmp56754)))
                                               _hd5295052988_
                                               _hd5294752978_)
                                              (_g5293952957_ _g5294052961_))))
                                      (_g5293952957_ _g5294052961_))))
                              (_g5293952957_ _g5294052961_))))
                      (_g5293952957_ _g5294052961_)))))
          (_g5293853012_ _$stx52935_))))
    (define |[:0:]#defpget|
      (lambda (_$stx53016_)
        (let* ((_g5302053038_
                (lambda (_g5302153034_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5302153034_)))
               (_g5301953093_
                (lambda (_g5302153042_)
                  (if (gx#stx-pair? _g5302153042_)
                      (let ((_e5302653045_ (gx#syntax-e _g5302153042_)))
                        (let ((_hd5302553049_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5302653045_)))
                              (_tl5302453052_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5302653045_))))
                          (if (gx#stx-pair? _tl5302453052_)
                              (let ((_e5302953055_
                                     (gx#syntax-e _tl5302453052_)))
                                (let ((_hd5302853059_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5302953055_)))
                                      (_tl5302753062_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5302953055_))))
                                  (if (gx#stx-pair? _tl5302753062_)
                                      (let ((_e5303253065_
                                             (gx#syntax-e _tl5302753062_)))
                                        (let ((_hd5303153069_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5303253065_)))
                                              (_tl5303053072_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5303253065_))))
                                          (if (gx#stx-null? _tl5303053072_)
                                              ((lambda (_L53075_ _L53077_)
                                                 (let ((__tmp56872
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp56803
                                                        (let ((__tmp56863
                                                               (let ((__tmp56864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp56871 (gx#datum->syntax '#f 'key))
                                    (__tmp56865
                                     (let ((__tmp56870
                                            (gx#datum->syntax '#f 'lst))
                                           (__tmp56866
                                            (let ((__tmp56867
                                                   (let ((__tmp56869
                                                          (gx#datum->syntax
                                                           '#f
                                                           'default))
                                                         (__tmp56868
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons __tmp56869
                                                           __tmp56868))))
                                              (declare (not safe))
                                              (cons __tmp56867 '()))))
                                       (declare (not safe))
                                       (cons __tmp56870 __tmp56866))))
                                (declare (not safe))
                                (cons __tmp56871 __tmp56865))))
                         (declare (not safe))
                         (cons _L53077_ __tmp56864)))
                      (__tmp56804
                       (let ((__tmp56805
                              (let ((__tmp56862 (gx#datum->syntax '#f 'let))
                                    (__tmp56806
                                     (let ((__tmp56861
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp56807
                                            (let ((__tmp56856
                                                   (let ((__tmp56857
                                                          (let ((__tmp56860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp56858
                         (let ((__tmp56859 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp56859 '()))))
                    (declare (not safe))
                    (cons __tmp56860 __tmp56858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp56857 '())))
                                                  (__tmp56808
                                                   (let ((__tmp56809
                                                          (let ((__tmp56855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp56810
                         (let ((__tmp56854 (gx#datum->syntax '#f 'rest))
                               (__tmp56811
                                (let ((__tmp56830
                                       (let ((__tmp56847
                                              (let ((__tmp56853
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp56848
                                                     (let ((__tmp56852
                                                            (gx#datum->syntax
                                                             '#f
                                                             'k))
                                                           (__tmp56849
                                                            (let ((__tmp56851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'v))
                          (__tmp56850 (gx#datum->syntax '#f 'rest)))
                      (declare (not safe))
                      (cons __tmp56851 __tmp56850))))
               (declare (not safe))
               (cons __tmp56852 __tmp56849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp56853 __tmp56848)))
                                             (__tmp56831
                                              (let ((__tmp56832
                                                     (let ((__tmp56846
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp56833
                                                            (let ((__tmp56841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp56842
                                  (let ((__tmp56845 (gx#datum->syntax '#f 'k))
                                        (__tmp56843
                                         (let ((__tmp56844
                                                (gx#datum->syntax '#f 'key)))
                                           (declare (not safe))
                                           (cons __tmp56844 '()))))
                                    (declare (not safe))
                                    (cons __tmp56845 __tmp56843))))
                             (declare (not safe))
                             (cons _L53075_ __tmp56842)))
                          (__tmp56834
                           (let ((__tmp56840 (gx#datum->syntax '#f 'v))
                                 (__tmp56835
                                  (let ((__tmp56836
                                         (let ((__tmp56839
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp56837
                                                (let ((__tmp56838
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest)))
                                                  (declare (not safe))
                                                  (cons __tmp56838 '()))))
                                           (declare (not safe))
                                           (cons __tmp56839 __tmp56837))))
                                    (declare (not safe))
                                    (cons __tmp56836 '()))))
                             (declare (not safe))
                             (cons __tmp56840 __tmp56835))))
                      (declare (not safe))
                      (cons __tmp56841 __tmp56834))))
               (declare (not safe))
               (cons __tmp56846 __tmp56833))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp56832 '()))))
                                         (declare (not safe))
                                         (cons __tmp56847 __tmp56831)))
                                      (__tmp56812
                                       (let ((__tmp56813
                                              (let ((__tmp56829
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp56814
                                                     (let ((__tmp56815
                                                            (let ((__tmp56828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'if))
                          (__tmp56816
                           (let ((__tmp56824
                                  (let ((__tmp56827
                                         (gx#datum->syntax '#f 'procedure?))
                                        (__tmp56825
                                         (let ((__tmp56826
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp56826 '()))))
                                    (declare (not safe))
                                    (cons __tmp56827 __tmp56825)))
                                 (__tmp56817
                                  (let ((__tmp56820
                                         (let ((__tmp56823
                                                (gx#datum->syntax
                                                 '#f
                                                 'default))
                                               (__tmp56821
                                                (let ((__tmp56822
                                                       (gx#datum->syntax
                                                        '#f
                                                        'key)))
                                                  (declare (not safe))
                                                  (cons __tmp56822 '()))))
                                           (declare (not safe))
                                           (cons __tmp56823 __tmp56821)))
                                        (__tmp56818
                                         (let ((__tmp56819
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp56819 '()))))
                                    (declare (not safe))
                                    (cons __tmp56820 __tmp56818))))
                             (declare (not safe))
                             (cons __tmp56824 __tmp56817))))
                      (declare (not safe))
                      (cons __tmp56828 __tmp56816))))
               (declare (not safe))
               (cons __tmp56815 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp56829 __tmp56814))))
                                         (declare (not safe))
                                         (cons __tmp56813 '()))))
                                  (declare (not safe))
                                  (cons __tmp56830 __tmp56812))))
                           (declare (not safe))
                           (cons __tmp56854 __tmp56811))))
                    (declare (not safe))
                    (cons __tmp56855 __tmp56810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp56809 '()))))
                                              (declare (not safe))
                                              (cons __tmp56856 __tmp56808))))
                                       (declare (not safe))
                                       (cons __tmp56861 __tmp56807))))
                                (declare (not safe))
                                (cons __tmp56862 __tmp56806))))
                         (declare (not safe))
                         (cons __tmp56805 '()))))
                  (declare (not safe))
                  (cons __tmp56863 __tmp56804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp56872
                                                         __tmp56803)))
                                               _hd5303153069_
                                               _hd5302853059_)
                                              (_g5302053038_ _g5302153042_))))
                                      (_g5302053038_ _g5302153042_))))
                              (_g5302053038_ _g5302153042_))))
                      (_g5302053038_ _g5302153042_)))))
          (_g5301953093_ _$stx53016_))))
    (define |[:0:]#defremove1|
      (lambda (_$stx53097_)
        (let* ((_g5310153119_
                (lambda (_g5310253115_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5310253115_)))
               (_g5310053174_
                (lambda (_g5310253123_)
                  (if (gx#stx-pair? _g5310253123_)
                      (let ((_e5310753126_ (gx#syntax-e _g5310253123_)))
                        (let ((_hd5310653130_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5310753126_)))
                              (_tl5310553133_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5310753126_))))
                          (if (gx#stx-pair? _tl5310553133_)
                              (let ((_e5311053136_
                                     (gx#syntax-e _tl5310553133_)))
                                (let ((_hd5310953140_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5311053136_)))
                                      (_tl5310853143_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5311053136_))))
                                  (if (gx#stx-pair? _tl5310853143_)
                                      (let ((_e5311353146_
                                             (gx#syntax-e _tl5310853143_)))
                                        (let ((_hd5311253150_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5311353146_)))
                                              (_tl5311153153_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5311353146_))))
                                          (if (gx#stx-null? _tl5311153153_)
                                              ((lambda (_L53156_ _L53158_)
                                                 (let ((__tmp56943
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp56873
                                                        (let ((__tmp56938
                                                               (let ((__tmp56939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp56942 (gx#datum->syntax '#f 'el))
                                    (__tmp56940
                                     (let ((__tmp56941
                                            (gx#datum->syntax '#f 'lst)))
                                       (declare (not safe))
                                       (cons __tmp56941 '()))))
                                (declare (not safe))
                                (cons __tmp56942 __tmp56940))))
                         (declare (not safe))
                         (cons _L53158_ __tmp56939)))
                      (__tmp56874
                       (let ((__tmp56875
                              (let ((__tmp56937 (gx#datum->syntax '#f 'let))
                                    (__tmp56876
                                     (let ((__tmp56936
                                            (gx#datum->syntax '#f 'lp))
                                           (__tmp56877
                                            (let ((__tmp56925
                                                   (let ((__tmp56932
                                                          (let ((__tmp56935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'rest))
                        (__tmp56933
                         (let ((__tmp56934 (gx#datum->syntax '#f 'lst)))
                           (declare (not safe))
                           (cons __tmp56934 '()))))
                    (declare (not safe))
                    (cons __tmp56935 __tmp56933)))
                 (__tmp56926
                  (let ((__tmp56927
                         (let ((__tmp56931 (gx#datum->syntax '#f 'r))
                               (__tmp56928
                                (let ((__tmp56929
                                       (let ((__tmp56930
                                              (gx#datum->syntax '#f '@list)))
                                         (declare (not safe))
                                         (cons __tmp56930 '()))))
                                  (declare (not safe))
                                  (cons __tmp56929 '()))))
                           (declare (not safe))
                           (cons __tmp56931 __tmp56928))))
                    (declare (not safe))
                    (cons __tmp56927 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp56932
                                                           __tmp56926)))
                                                  (__tmp56878
                                                   (let ((__tmp56879
                                                          (let ((__tmp56924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'match))
                        (__tmp56880
                         (let ((__tmp56923 (gx#datum->syntax '#f 'rest))
                               (__tmp56881
                                (let ((__tmp56887
                                       (let ((__tmp56918
                                              (let ((__tmp56922
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp56919
                                                     (let ((__tmp56921
                                                            (gx#datum->syntax
                                                             '#f
                                                             'hd))
                                                           (__tmp56920
                                                            (gx#datum->syntax
                                                             '#f
                                                             'rest)))
                                                       (declare (not safe))
                                                       (cons __tmp56921
                                                             __tmp56920))))
                                                (declare (not safe))
                                                (cons __tmp56922 __tmp56919)))
                                             (__tmp56888
                                              (let ((__tmp56889
                                                     (let ((__tmp56917
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp56890
                                                            (let ((__tmp56912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp56913
                                  (let ((__tmp56916 (gx#datum->syntax '#f 'el))
                                        (__tmp56914
                                         (let ((__tmp56915
                                                (gx#datum->syntax '#f 'hd)))
                                           (declare (not safe))
                                           (cons __tmp56915 '()))))
                                    (declare (not safe))
                                    (cons __tmp56916 __tmp56914))))
                             (declare (not safe))
                             (cons _L53156_ __tmp56913)))
                          (__tmp56891
                           (let ((__tmp56904
                                  (let ((__tmp56911
                                         (gx#datum->syntax '#f 'foldl1))
                                        (__tmp56905
                                         (let ((__tmp56910
                                                (gx#datum->syntax '#f 'cons))
                                               (__tmp56906
                                                (let ((__tmp56909
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp56907
                                                       (let ((__tmp56908
                                                              (gx#datum->syntax
                                                               '#f
                                                               'r)))
                                                         (declare (not safe))
                                                         (cons __tmp56908
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp56909
                                                        __tmp56907))))
                                           (declare (not safe))
                                           (cons __tmp56910 __tmp56906))))
                                    (declare (not safe))
                                    (cons __tmp56911 __tmp56905)))
                                 (__tmp56892
                                  (let ((__tmp56893
                                         (let ((__tmp56903
                                                (gx#datum->syntax '#f 'lp))
                                               (__tmp56894
                                                (let ((__tmp56902
                                                       (gx#datum->syntax
                                                        '#f
                                                        'rest))
                                                      (__tmp56895
                                                       (let ((__tmp56896
                                                              (let ((__tmp56901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'cons))
                            (__tmp56897
                             (let ((__tmp56900 (gx#datum->syntax '#f 'hd))
                                   (__tmp56898
                                    (let ((__tmp56899
                                           (gx#datum->syntax '#f 'r)))
                                      (declare (not safe))
                                      (cons __tmp56899 '()))))
                               (declare (not safe))
                               (cons __tmp56900 __tmp56898))))
                        (declare (not safe))
                        (cons __tmp56901 __tmp56897))))
                 (declare (not safe))
                 (cons __tmp56896 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp56902
                                                        __tmp56895))))
                                           (declare (not safe))
                                           (cons __tmp56903 __tmp56894))))
                                    (declare (not safe))
                                    (cons __tmp56893 '()))))
                             (declare (not safe))
                             (cons __tmp56904 __tmp56892))))
                      (declare (not safe))
                      (cons __tmp56912 __tmp56891))))
               (declare (not safe))
               (cons __tmp56917 __tmp56890))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp56889 '()))))
                                         (declare (not safe))
                                         (cons __tmp56918 __tmp56888)))
                                      (__tmp56882
                                       (let ((__tmp56883
                                              (let ((__tmp56886
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp56884
                                                     (let ((__tmp56885
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lst)))
                                                       (declare (not safe))
                                                       (cons __tmp56885 '()))))
                                                (declare (not safe))
                                                (cons __tmp56886 __tmp56884))))
                                         (declare (not safe))
                                         (cons __tmp56883 '()))))
                                  (declare (not safe))
                                  (cons __tmp56887 __tmp56882))))
                           (declare (not safe))
                           (cons __tmp56923 __tmp56881))))
                    (declare (not safe))
                    (cons __tmp56924 __tmp56880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp56879 '()))))
                                              (declare (not safe))
                                              (cons __tmp56925 __tmp56878))))
                                       (declare (not safe))
                                       (cons __tmp56936 __tmp56877))))
                                (declare (not safe))
                                (cons __tmp56937 __tmp56876))))
                         (declare (not safe))
                         (cons __tmp56875 '()))))
                  (declare (not safe))
                  (cons __tmp56938 __tmp56874))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp56943
                                                         __tmp56873)))
                                               _hd5311253150_
                                               _hd5310953140_)
                                              (_g5310153119_ _g5310253123_))))
                                      (_g5310153119_ _g5310253123_))))
                              (_g5310153119_ _g5310253123_))))
                      (_g5310153119_ _g5310253123_)))))
          (_g5310053174_ _$stx53097_))))
    (define |[:0:]#DBG|
      (lambda (_$stx53178_)
        (let* ((_g5318253193_
                (lambda (_g5318353189_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g5318353189_)))
               (_g5318153222_
                (lambda (_g5318353197_)
                  (if (gx#stx-pair? _g5318353197_)
                      (let ((_e5318753200_ (gx#syntax-e _g5318353197_)))
                        (let ((_hd5318653204_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5318753200_)))
                              (_tl5318553207_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5318753200_))))
                          ((lambda (_L53210_)
                             (let ((__tmp56945 (gx#datum->syntax '#f 'DBG/1))
                                   (__tmp56944
                                    (let ()
                                      (declare (not safe))
                                      (cons '1 _L53210_))))
                               (declare (not safe))
                               (cons __tmp56945 __tmp56944)))
                           _tl5318553207_)))
                      (_g5318253193_ _g5318353197_)))))
          (_g5318153222_ _$stx53178_))))
    (define |[:0:]#DBG/1|
      (lambda (_$stx53226_)
        (let* ((___stx5625256253_ _$stx53226_)
               (_g5323753451_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx5625256253_))))
          (let ((___kont5625556256_
                 (lambda (_L54304_ _L54306_ _L54307_ _L54308_ _L54309_)
                   (let ((__tmp56946
                          (let ((__tmp56947
                                 (let ((__tmp56948
                                        (let ((__tmp56952
                                               (let ((__tmp56953
                                                      (lambda (_g5433954342_
                                                               _g5434054345_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5433954342_
                                                                _g5434054345_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp56953
                                                         '()
                                                         _L54307_)))
                                              (__tmp56949
                                               (let ((__tmp56950
                                                      (let ((__tmp56951
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L54304_ '()))))
                (declare (not safe))
                (cons _L54306_ __tmp56951))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L54308_ __tmp56950))))
                                          (declare (not safe))
                                          (cons __tmp56952 __tmp56949))))
                                   (declare (not safe))
                                   (cons '() __tmp56948))))
                            (declare (not safe))
                            (cons '2 __tmp56947))))
                     (declare (not safe))
                     (cons _L54309_ __tmp56946))))
                (___kont5625956260_
                 (lambda (_L54157_ _L54159_ _L54160_ _L54161_)
                   (let ((__tmp56954
                          (let ((__tmp56955
                                 (let ((__tmp56956
                                        (let ((__tmp56960
                                               (let ((__tmp56961
                                                      (lambda (_g5418454187_
                                                               _g5418554190_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g5418454187_
                                                                _g5418554190_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp56961
                                                         '()
                                                         _L54159_)))
                                              (__tmp56957
                                               (let ((__tmp56958
                                                      (let ((__tmp56959
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L54157_ '()))))
                (declare (not safe))
                (cons _L54157_ __tmp56959))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L54160_ __tmp56958))))
                                          (declare (not safe))
                                          (cons __tmp56960 __tmp56957))))
                                   (declare (not safe))
                                   (cons '() __tmp56956))))
                            (declare (not safe))
                            (cons '2 __tmp56955))))
                     (declare (not safe))
                     (cons _L54161_ __tmp56954))))
                (___kont5626356264_
                 (lambda (_L54060_)
                   (let ((__tmp56973 (gx#datum->syntax '#f 'DBG-helper))
                         (__tmp56962
                          (let ((__tmp56963
                                 (let ((__tmp56970
                                        (let ((__tmp56972
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp56971
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '() '()))))
                                          (declare (not safe))
                                          (cons __tmp56972 __tmp56971)))
                                       (__tmp56964
                                        (let ((__tmp56967
                                               (let ((__tmp56969
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp56968
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '() '()))))
                                                 (declare (not safe))
                                                 (cons __tmp56969 __tmp56968)))
                                              (__tmp56965
                                               (let ((__tmp56966
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#f '()))))
                                                 (declare (not safe))
                                                 (cons '#f __tmp56966))))
                                          (declare (not safe))
                                          (cons __tmp56967 __tmp56965))))
                                   (declare (not safe))
                                   (cons __tmp56970 __tmp56964))))
                            (declare (not safe))
                            (cons _L54060_ __tmp56963))))
                     (declare (not safe))
                     (cons __tmp56973 __tmp56962))))
                (___kont5626556266_
                 (lambda (_L53983_
                          _L53985_
                          _L53986_
                          _L53987_
                          _L53988_
                          _L53989_)
                   (let ((__tmp56974
                          (let ((__tmp56975
                                 (let ((__tmp56977
                                        (let ((__tmp56978
                                               (let ((__tmp56979
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L53986_ '()))))
                                                 (declare (not safe))
                                                 (cons _L53987_ __tmp56979))))
                                          (declare (not safe))
                                          (cons __tmp56978 _L53988_)))
                                       (__tmp56976
                                        (let ()
                                          (declare (not safe))
                                          (cons _L53985_ _L53983_))))
                                   (declare (not safe))
                                   (cons __tmp56977 __tmp56976))))
                            (declare (not safe))
                            (cons '2 __tmp56975))))
                     (declare (not safe))
                     (cons _L53989_ __tmp56974))))
                (___kont5626756268_
                 (lambda (_L53864_ _L53866_ _L53867_ _L53868_ _L53869_)
                   (let ((__tmp56980
                          (let ((__tmp56981
                                 (let ((__tmp56983
                                        (let ((__tmp56984
                                               (let ((__tmp56985
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L53867_ '()))))
                                                 (declare (not safe))
                                                 (cons _L53867_ __tmp56985))))
                                          (declare (not safe))
                                          (cons __tmp56984 _L53868_)))
                                       (__tmp56982
                                        (let ()
                                          (declare (not safe))
                                          (cons _L53866_ _L53864_))))
                                   (declare (not safe))
                                   (cons __tmp56983 __tmp56982))))
                            (declare (not safe))
                            (cons '2 __tmp56981))))
                     (declare (not safe))
                     (cons _L53869_ __tmp56980))))
                (___kont5626956270_
                 (lambda (_L53781_ _L53783_ _L53784_)
                   (let ((__tmp56986
                          (let ((__tmp56987
                                 (let ((__tmp56988
                                        (let ()
                                          (declare (not safe))
                                          (cons _L53783_ _L53781_))))
                                   (declare (not safe))
                                   (cons '() __tmp56988))))
                            (declare (not safe))
                            (cons '3 __tmp56987))))
                     (declare (not safe))
                     (cons _L53784_ __tmp56986))))
                (___kont5627156272_
                 (lambda (_L53702_ _L53704_ _L53705_ _L53706_ _L53707_)
                   (let ((__tmp56989
                          (let ((__tmp56990
                                 (let ((__tmp56992
                                        (let ()
                                          (declare (not safe))
                                          (cons _L53705_ _L53706_)))
                                       (__tmp56991
                                        (let ()
                                          (declare (not safe))
                                          (cons _L53704_ _L53702_))))
                                   (declare (not safe))
                                   (cons __tmp56992 __tmp56991))))
                            (declare (not safe))
                            (cons '3 __tmp56990))))
                     (declare (not safe))
                     (cons _L53707_ __tmp56989))))
                (___kont5627356274_
                 (lambda (_L53586_
                          _L53588_
                          _L53589_
                          _L53590_
                          _L53591_
                          _L53592_)
                   (let ((__tmp57040 (gx#datum->syntax '#f 'let))
                         (__tmp56993
                          (let ((__tmp57028
                                 (let ((__tmp57037
                                        (let ((__tmp57039
                                               (gx#datum->syntax '#f 'tagval))
                                              (__tmp57038
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L53589_ '()))))
                                          (declare (not safe))
                                          (cons __tmp57039 __tmp57038)))
                                       (__tmp57029
                                        (let ((__tmp57030
                                               (let ((__tmp57036
                                                      (gx#datum->syntax
                                                       '#f
                                                       'thunk))
                                                     (__tmp57031
                                                      (let ((__tmp57032
                                                             (let ((__tmp57035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda))
                           (__tmp57033
                            (let ((__tmp57034
                                   (let ()
                                     (declare (not safe))
                                     (cons _L53586_ '()))))
                              (declare (not safe))
                              (cons '() __tmp57034))))
                       (declare (not safe))
                       (cons __tmp57035 __tmp57033))))
                (declare (not safe))
                (cons __tmp57032 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57036
                                                       __tmp57031))))
                                          (declare (not safe))
                                          (cons __tmp57030 '()))))
                                   (declare (not safe))
                                   (cons __tmp57037 __tmp57029)))
                                (__tmp56994
                                 (let ((__tmp56995
                                        (let ((__tmp57027
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp56996
                                               (let ((__tmp57026
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tagval))
                                                     (__tmp56997
                                                      (let ((__tmp57001
                                                             (let ((__tmp57025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'DBG-helper))
                           (__tmp57002
                            (let ((__tmp57024 (gx#datum->syntax '#f 'tagval))
                                  (__tmp57003
                                   (let ((__tmp57019
                                          (let ((__tmp57023
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp57020
                                                 (let ((__tmp57021
                                                        (let ((__tmp57022
                                                               (lambda (_g5362653629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5362753632_)
                         (let ()
                           (declare (not safe))
                           (cons _g5362653629_ _g5362753632_)))))
                  (declare (not safe))
                  (foldr1 __tmp57022 '() _L53591_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57021 '()))))
                                            (declare (not safe))
                                            (cons __tmp57023 __tmp57020)))
                                         (__tmp57004
                                          (let ((__tmp57011
                                                 (let ((__tmp57018
                                                        (gx#datum->syntax
                                                         '#f
                                                         'list))
                                                       (__tmp57012
                                                        (let ((__tmp57013
                                                               (lambda (_g5362453635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5362553638_)
                         (let ((__tmp57014
                                (let ((__tmp57017
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp57015
                                       (let ((__tmp57016
                                              (let ()
                                                (declare (not safe))
                                                (cons _g5362453635_ '()))))
                                         (declare (not safe))
                                         (cons '() __tmp57016))))
                                  (declare (not safe))
                                  (cons __tmp57017 __tmp57015))))
                           (declare (not safe))
                           (cons __tmp57014 _g5362553638_)))))
                  (declare (not safe))
                  (foldr1 __tmp57013 '() _L53590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57018
                                                         __tmp57012)))
                                                (__tmp57005
                                                 (let ((__tmp57008
                                                        (let ((__tmp57010
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp57009
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L53588_ '()))))
                  (declare (not safe))
                  (cons __tmp57010 __tmp57009)))
               (__tmp57006
                (let ((__tmp57007 (gx#datum->syntax '#f 'thunk)))
                  (declare (not safe))
                  (cons __tmp57007 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp57008
                                                         __tmp57006))))
                                            (declare (not safe))
                                            (cons __tmp57011 __tmp57005))))
                                     (declare (not safe))
                                     (cons __tmp57019 __tmp57004))))
                              (declare (not safe))
                              (cons __tmp57024 __tmp57003))))
                       (declare (not safe))
                       (cons __tmp57025 __tmp57002)))
                    (__tmp56998
                     (let ((__tmp56999
                            (let ((__tmp57000 (gx#datum->syntax '#f 'thunk)))
                              (declare (not safe))
                              (cons __tmp57000 '()))))
                       (declare (not safe))
                       (cons __tmp56999 '()))))
                (declare (not safe))
                (cons __tmp57001 __tmp56998))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp57026
                                                       __tmp56997))))
                                          (declare (not safe))
                                          (cons __tmp57027 __tmp56996))))
                                   (declare (not safe))
                                   (cons __tmp56995 '()))))
                            (declare (not safe))
                            (cons __tmp57028 __tmp56994))))
                     (declare (not safe))
                     (cons __tmp57040 __tmp56993)))))
            (let* ((___match5660356604_
                    (lambda (_e5340953458_
                             _hd5340853462_
                             _tl5340753465_
                             _e5341253468_
                             _hd5341153472_
                             _tl5341053475_
                             _e5341353478_
                             _e5341653482_
                             _hd5341553486_
                             _tl5341453489_
                             ___splice5627556276_
                             _target5341753492_
                             _tl5341953495_)
                      (letrec ((_loop5342053498_
                                (lambda (_hd5341853502_
                                         _exprs5342453505_
                                         _names5342553507_)
                                  (if (gx#stx-pair? _hd5341853502_)
                                      (let ((_e5342153510_
                                             (gx#syntax-e _hd5341853502_)))
                                        (let ((_lp-tl5342353517_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5342153510_)))
                                              (_lp-hd5342253514_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5342153510_))))
                                          (if (gx#stx-pair? _lp-hd5342253514_)
                                              (let ((_e5343053520_
                                                     (gx#syntax-e
                                                      _lp-hd5342253514_)))
                                                (let ((_tl5342853527_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5343053520_)))
                                                      (_hd5342953524_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5343053520_))))
                                                  (if (gx#stx-pair?
                                                       _tl5342853527_)
                                                      (let ((_e5343353530_
                                                             (gx#syntax-e
                                                              _tl5342853527_)))
                                                        (let ((_tl5343153537_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5343353530_)))
                      (_hd5343253534_
                       (let () (declare (not safe)) (##car _e5343353530_))))
                  (if (gx#stx-null? _tl5343153537_)
                      (_loop5342053498_
                       _lp-tl5342353517_
                       (let ()
                         (declare (not safe))
                         (cons _hd5343253534_ _exprs5342453505_))
                       (let ()
                         (declare (not safe))
                         (cons _hd5342953524_ _names5342553507_)))
                      (let () (declare (not safe)) (_g5323753451_)))))
              (let () (declare (not safe)) (_g5323753451_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g5323753451_)))))
                                      (let ((_names5342753543_
                                             (reverse _names5342553507_))
                                            (_exprs5342653540_
                                             (reverse _exprs5342453505_)))
                                        (if (gx#stx-pair? _tl5341453489_)
                                            (let ((_e5343653546_
                                                   (gx#syntax-e
                                                    _tl5341453489_)))
                                              (let ((_tl5343453553_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5343653546_)))
                                                    (_hd5343553550_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5343653546_))))
                                                (if (gx#stx-null?
                                                     _hd5343553550_)
                                                    (if (gx#stx-pair?
                                                         _tl5343453553_)
                                                        (let ((_e5343953556_
                                                               (gx#syntax-e
                                                                _tl5343453553_)))
                                                          (let ((_tl5343753563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5343953556_)))
                        (_hd5343853560_
                         (let () (declare (not safe)) (##car _e5343953556_))))
                    (if (gx#stx-pair? _tl5343753563_)
                        (let ((_e5344253566_ (gx#syntax-e _tl5343753563_)))
                          (let ((_tl5344053573_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5344253566_)))
                                (_hd5344153570_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5344253566_))))
                            (if (gx#stx-pair? _tl5344053573_)
                                (let ((_e5344553576_
                                       (gx#syntax-e _tl5344053573_)))
                                  (let ((_tl5344353583_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5344553576_)))
                                        (_hd5344453580_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5344553576_))))
                                    (if (gx#stx-null? _tl5344353583_)
                                        (___kont5627356274_
                                         _hd5344453580_
                                         _hd5344153570_
                                         _hd5343853560_
                                         _exprs5342653540_
                                         _names5342753543_
                                         _hd5340853462_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5323753451_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5323753451_)))))
                        (let () (declare (not safe)) (_g5323753451_)))))
                (let () (declare (not safe)) (_g5323753451_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5323753451_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5323753451_))))))))
                        (_loop5342053498_ _target5341753492_ '() '()))))
                   (___match5638156382_
                    (lambda (_e5328154083_
                             _hd5328054087_
                             _tl5327954090_
                             _e5328454093_
                             _hd5328354097_
                             _tl5328254100_
                             _e5328554103_
                             _e5328854107_
                             _hd5328754111_
                             _tl5328654114_
                             ___splice5626156262_
                             _target5328954117_
                             _tl5329154120_
                             _e5330054123_
                             _hd5329954127_
                             _tl5329854130_)
                      (letrec ((_loop5329254133_
                                (lambda (_hd5329054137_ _exprs5329654140_)
                                  (if (gx#stx-pair? _hd5329054137_)
                                      (let ((_e5329354143_
                                             (gx#syntax-e _hd5329054137_)))
                                        (let ((_lp-tl5329554150_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5329354143_)))
                                              (_lp-hd5329454147_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5329354143_))))
                                          (_loop5329254133_
                                           _lp-tl5329554150_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5329454147_
                                                   _exprs5329654140_)))))
                                      (let ((_exprs5329754153_
                                             (reverse _exprs5329654140_)))
                                        (___kont5625956260_
                                         _hd5329954127_
                                         _exprs5329754153_
                                         _hd5328754111_
                                         _hd5328054087_))))))
                        (_loop5329254133_ _target5328954117_ '()))))
                   (___match5634156342_
                    (lambda (_e5324654200_
                             _hd5324554204_
                             _tl5324454207_
                             _e5324954210_
                             _hd5324854214_
                             _tl5324754217_
                             _e5325054220_
                             _e5325354224_
                             _hd5325254228_
                             _tl5325154231_
                             ___splice5625756258_
                             _target5325454234_
                             _tl5325654237_
                             _e5326554240_
                             _hd5326454244_
                             _tl5326354247_
                             _e5326854250_
                             _hd5326754254_
                             _tl5326654257_
                             _e5327154260_
                             _hd5327054264_
                             _tl5326954267_
                             _e5327454270_
                             _hd5327354274_
                             _tl5327254277_)
                      (letrec ((_loop5325754280_
                                (lambda (_hd5325554284_ _exprs5326154287_)
                                  (if (gx#stx-pair? _hd5325554284_)
                                      (let ((_e5325854290_
                                             (gx#syntax-e _hd5325554284_)))
                                        (let ((_lp-tl5326054297_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5325854290_)))
                                              (_lp-hd5325954294_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5325854290_))))
                                          (_loop5325754280_
                                           _lp-tl5326054297_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd5325954294_
                                                   _exprs5326154287_)))))
                                      (let ((_exprs5326254300_
                                             (reverse _exprs5326154287_)))
                                        (___kont5625556256_
                                         _hd5327354274_
                                         _hd5327054264_
                                         _exprs5326254300_
                                         _hd5325254228_
                                         _hd5324554204_))))))
                        (_loop5325754280_ _target5325454234_ '())))))
              (if (gx#stx-pair? ___stx5625256253_)
                  (let ((_e5324654200_ (gx#syntax-e ___stx5625256253_)))
                    (let ((_tl5324454207_
                           (let () (declare (not safe)) (##cdr _e5324654200_)))
                          (_hd5324554204_
                           (let ()
                             (declare (not safe))
                             (##car _e5324654200_))))
                      (if (gx#stx-pair? _tl5324454207_)
                          (let ((_e5324954210_ (gx#syntax-e _tl5324454207_)))
                            (let ((_tl5324754217_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5324954210_)))
                                  (_hd5324854214_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5324954210_))))
                              (if (gx#stx-datum? _hd5324854214_)
                                  (let ((_e5325054220_
                                         (gx#stx-e _hd5324854214_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e5325054220_ '1))
                                        (if (gx#stx-pair? _tl5324754217_)
                                            (let ((_e5325354224_
                                                   (gx#syntax-e
                                                    _tl5324754217_)))
                                              (let ((_tl5325154231_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5325354224_)))
                                                    (_hd5325254228_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5325354224_))))
                                                (if (gx#stx-pair/null?
                                                     _tl5325154231_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl5325154231_)
                                                              '2)
                                                        (let ((___splice5625756258_
                                                               (gx#syntax-split-splice
                                                                _tl5325154231_
                                                                '2)))
                                                          (let ((_tl5325654237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5625756258_ '1)))
                        (_target5325454234_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice5625756258_ '0))))
                    (if (gx#stx-pair? _tl5325654237_)
                        (let ((_e5326554240_ (gx#syntax-e _tl5325654237_)))
                          (let ((_tl5326354247_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5326554240_)))
                                (_hd5326454244_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5326554240_))))
                            (if (gx#stx-pair? _hd5326454244_)
                                (let ((_e5326854250_
                                       (gx#syntax-e _hd5326454244_)))
                                  (let ((_tl5326654257_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5326854250_)))
                                        (_hd5326754254_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5326854250_))))
                                    (if (gx#identifier? _hd5326754254_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g57042_|
                                             _hd5326754254_)
                                            (if (gx#stx-pair? _tl5326654257_)
                                                (let ((_e5327154260_
                                                       (gx#syntax-e
                                                        _tl5326654257_)))
                                                  (let ((_tl5326954267_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5327154260_)))
                                                        (_hd5327054264_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5327154260_))))
                                                    (if (gx#stx-null?
                                                         _tl5326954267_)
                                                        (if (gx#stx-pair?
                                                             _tl5326354247_)
                                                            (let ((_e5327454270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5326354247_)))
                      (let ((_tl5327254277_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5327454270_)))
                            (_hd5327354274_
                             (let ()
                               (declare (not safe))
                               (##car _e5327454270_))))
                        (if (gx#stx-null? _tl5327254277_)
                            (___match5634156342_
                             _e5324654200_
                             _hd5324554204_
                             _tl5324454207_
                             _e5324954210_
                             _hd5324854214_
                             _tl5324754217_
                             _e5325054220_
                             _e5325354224_
                             _hd5325254228_
                             _tl5325154231_
                             ___splice5625756258_
                             _target5325454234_
                             _tl5325654237_
                             _e5326554240_
                             _hd5326454244_
                             _tl5326354247_
                             _e5326854250_
                             _hd5326754254_
                             _tl5326654257_
                             _e5327154260_
                             _hd5327054264_
                             _tl5326954267_
                             _e5327454270_
                             _hd5327354274_
                             _tl5327254277_)
                            (if (fx>= (gx#stx-length _tl5325154231_) '1)
                                (let ((___splice5626156262_
                                       (gx#syntax-split-splice
                                        _tl5325154231_
                                        '1)))
                                  (let ((_tl5329154120_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5626156262_
                                            '1)))
                                        (_target5328954117_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5626156262_
                                            '0))))
                                    (if (gx#stx-pair? _tl5329154120_)
                                        (let ((_e5330054123_
                                               (gx#syntax-e _tl5329154120_)))
                                          (let ((_tl5329854130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e5330054123_)))
                                                (_hd5329954127_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e5330054123_))))
                                            (if (gx#stx-null? _tl5329854130_)
                                                (___match5638156382_
                                                 _e5324654200_
                                                 _hd5324554204_
                                                 _tl5324454207_
                                                 _e5324954210_
                                                 _hd5324854214_
                                                 _tl5324754217_
                                                 _e5325054220_
                                                 _e5325354224_
                                                 _hd5325254228_
                                                 _tl5325154231_
                                                 ___splice5626156262_
                                                 _target5328954117_
                                                 _tl5329154120_
                                                 _e5330054123_
                                                 _hd5329954127_
                                                 _tl5329854130_)
                                                (if (gx#stx-null?
                                                     _tl5325154231_)
                                                    (___kont5626356264_
                                                     _hd5325254228_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5323753451_))))))
                                        (if (gx#stx-null? _tl5325154231_)
                                            (___kont5626356264_ _hd5325254228_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5323753451_))))))
                                (if (gx#stx-null? _tl5325154231_)
                                    (___kont5626356264_ _hd5325254228_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5323753451_)))))))
                    (if (fx>= (gx#stx-length _tl5325154231_) '1)
                        (let ((___splice5626156262_
                               (gx#syntax-split-splice _tl5325154231_ '1)))
                          (let ((_tl5329154120_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5626156262_ '1)))
                                (_target5328954117_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5626156262_ '0))))
                            (if (gx#stx-pair? _tl5329154120_)
                                (let ((_e5330054123_
                                       (gx#syntax-e _tl5329154120_)))
                                  (let ((_tl5329854130_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5330054123_)))
                                        (_hd5329954127_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5330054123_))))
                                    (if (gx#stx-null? _tl5329854130_)
                                        (___match5638156382_
                                         _e5324654200_
                                         _hd5324554204_
                                         _tl5324454207_
                                         _e5324954210_
                                         _hd5324854214_
                                         _tl5324754217_
                                         _e5325054220_
                                         _e5325354224_
                                         _hd5325254228_
                                         _tl5325154231_
                                         ___splice5626156262_
                                         _target5328954117_
                                         _tl5329154120_
                                         _e5330054123_
                                         _hd5329954127_
                                         _tl5329854130_)
                                        (if (gx#stx-null? _tl5325154231_)
                                            (___kont5626356264_ _hd5325254228_)
                                            (let ()
                                              (declare (not safe))
                                              (_g5323753451_))))))
                                (if (gx#stx-null? _tl5325154231_)
                                    (___kont5626356264_ _hd5325254228_)
                                    (let ()
                                      (declare (not safe))
                                      (_g5323753451_))))))
                        (if (gx#stx-null? _tl5325154231_)
                            (___kont5626356264_ _hd5325254228_)
                            (let () (declare (not safe)) (_g5323753451_)))))
                (if (fx>= (gx#stx-length _tl5325154231_) '1)
                    (let ((___splice5626156262_
                           (gx#syntax-split-splice _tl5325154231_ '1)))
                      (let ((_tl5329154120_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5626156262_ '1)))
                            (_target5328954117_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5626156262_ '0))))
                        (if (gx#stx-pair? _tl5329154120_)
                            (let ((_e5330054123_ (gx#syntax-e _tl5329154120_)))
                              (let ((_tl5329854130_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5330054123_)))
                                    (_hd5329954127_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5330054123_))))
                                (if (gx#stx-null? _tl5329854130_)
                                    (___match5638156382_
                                     _e5324654200_
                                     _hd5324554204_
                                     _tl5324454207_
                                     _e5324954210_
                                     _hd5324854214_
                                     _tl5324754217_
                                     _e5325054220_
                                     _e5325354224_
                                     _hd5325254228_
                                     _tl5325154231_
                                     ___splice5626156262_
                                     _target5328954117_
                                     _tl5329154120_
                                     _e5330054123_
                                     _hd5329954127_
                                     _tl5329854130_)
                                    (if (gx#stx-null? _tl5325154231_)
                                        (___kont5626356264_ _hd5325254228_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5323753451_))))))
                            (if (gx#stx-null? _tl5325154231_)
                                (___kont5626356264_ _hd5325254228_)
                                (let ()
                                  (declare (not safe))
                                  (_g5323753451_))))))
                    (if (gx#stx-null? _tl5325154231_)
                        (___kont5626356264_ _hd5325254228_)
                        (let () (declare (not safe)) (_g5323753451_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (fx>= (gx#stx-length
                                                           _tl5325154231_)
                                                          '1)
                                                    (let ((___splice5626156262_
                                                           (gx#syntax-split-splice
                                                            _tl5325154231_
                                                            '1)))
                                                      (let ((_tl5329154120_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice5626156262_ '1)))
                    (_target5328954117_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice5626156262_ '0))))
                (if (gx#stx-pair? _tl5329154120_)
                    (let ((_e5330054123_ (gx#syntax-e _tl5329154120_)))
                      (let ((_tl5329854130_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5330054123_)))
                            (_hd5329954127_
                             (let ()
                               (declare (not safe))
                               (##car _e5330054123_))))
                        (if (gx#stx-null? _tl5329854130_)
                            (___match5638156382_
                             _e5324654200_
                             _hd5324554204_
                             _tl5324454207_
                             _e5324954210_
                             _hd5324854214_
                             _tl5324754217_
                             _e5325054220_
                             _e5325354224_
                             _hd5325254228_
                             _tl5325154231_
                             ___splice5626156262_
                             _target5328954117_
                             _tl5329154120_
                             _e5330054123_
                             _hd5329954127_
                             _tl5329854130_)
                            (if (gx#stx-null? _tl5325154231_)
                                (___kont5626356264_ _hd5325254228_)
                                (let ()
                                  (declare (not safe))
                                  (_g5323753451_))))))
                    (if (gx#stx-null? _tl5325154231_)
                        (___kont5626356264_ _hd5325254228_)
                        (let () (declare (not safe)) (_g5323753451_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5325154231_)
                                                        (___kont5626356264_
                                                         _hd5325254228_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5323753451_)))))
                                            (if (fx>= (gx#stx-length
                                                       _tl5325154231_)
                                                      '1)
                                                (let ((___splice5626156262_
                                                       (gx#syntax-split-splice
                                                        _tl5325154231_
                                                        '1)))
                                                  (let ((_tl5329154120_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5626156262_
                                                            '1)))
                                                        (_target5328954117_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice5626156262_
                                                            '0))))
                                                    (if (gx#stx-pair?
                                                         _tl5329154120_)
                                                        (let ((_e5330054123_
                                                               (gx#syntax-e
                                                                _tl5329154120_)))
                                                          (let ((_tl5329854130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5330054123_)))
                        (_hd5329954127_
                         (let () (declare (not safe)) (##car _e5330054123_))))
                    (if (gx#stx-null? _tl5329854130_)
                        (___match5638156382_
                         _e5324654200_
                         _hd5324554204_
                         _tl5324454207_
                         _e5324954210_
                         _hd5324854214_
                         _tl5324754217_
                         _e5325054220_
                         _e5325354224_
                         _hd5325254228_
                         _tl5325154231_
                         ___splice5626156262_
                         _target5328954117_
                         _tl5329154120_
                         _e5330054123_
                         _hd5329954127_
                         _tl5329854130_)
                        (if (gx#stx-null? _tl5325154231_)
                            (___kont5626356264_ _hd5325254228_)
                            (let () (declare (not safe)) (_g5323753451_))))))
                (if (gx#stx-null? _tl5325154231_)
                    (___kont5626356264_ _hd5325254228_)
                    (let () (declare (not safe)) (_g5323753451_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl5325154231_)
                                                    (___kont5626356264_
                                                     _hd5325254228_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5323753451_)))))
                                        (if (fx>= (gx#stx-length
                                                   _tl5325154231_)
                                                  '1)
                                            (let ((___splice5626156262_
                                                   (gx#syntax-split-splice
                                                    _tl5325154231_
                                                    '1)))
                                              (let ((_tl5329154120_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5626156262_
                                                        '1)))
                                                    (_target5328954117_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5626156262_
                                                        '0))))
                                                (if (gx#stx-pair?
                                                     _tl5329154120_)
                                                    (let ((_e5330054123_
                                                           (gx#syntax-e
                                                            _tl5329154120_)))
                                                      (let ((_tl5329854130_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5330054123_)))
                    (_hd5329954127_
                     (let () (declare (not safe)) (##car _e5330054123_))))
                (if (gx#stx-null? _tl5329854130_)
                    (___match5638156382_
                     _e5324654200_
                     _hd5324554204_
                     _tl5324454207_
                     _e5324954210_
                     _hd5324854214_
                     _tl5324754217_
                     _e5325054220_
                     _e5325354224_
                     _hd5325254228_
                     _tl5325154231_
                     ___splice5626156262_
                     _target5328954117_
                     _tl5329154120_
                     _e5330054123_
                     _hd5329954127_
                     _tl5329854130_)
                    (if (gx#stx-null? _tl5325154231_)
                        (___kont5626356264_ _hd5325254228_)
                        (let () (declare (not safe)) (_g5323753451_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5325154231_)
                                                        (___kont5626356264_
                                                         _hd5325254228_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5323753451_))))))
                                            (if (gx#stx-null? _tl5325154231_)
                                                (___kont5626356264_
                                                 _hd5325254228_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5323753451_)))))))
                                (if (fx>= (gx#stx-length _tl5325154231_) '1)
                                    (let ((___splice5626156262_
                                           (gx#syntax-split-splice
                                            _tl5325154231_
                                            '1)))
                                      (let ((_tl5329154120_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5626156262_
                                                '1)))
                                            (_target5328954117_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5626156262_
                                                '0))))
                                        (if (gx#stx-pair? _tl5329154120_)
                                            (let ((_e5330054123_
                                                   (gx#syntax-e
                                                    _tl5329154120_)))
                                              (let ((_tl5329854130_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5330054123_)))
                                                    (_hd5329954127_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5330054123_))))
                                                (if (gx#stx-null?
                                                     _tl5329854130_)
                                                    (___match5638156382_
                                                     _e5324654200_
                                                     _hd5324554204_
                                                     _tl5324454207_
                                                     _e5324954210_
                                                     _hd5324854214_
                                                     _tl5324754217_
                                                     _e5325054220_
                                                     _e5325354224_
                                                     _hd5325254228_
                                                     _tl5325154231_
                                                     ___splice5626156262_
                                                     _target5328954117_
                                                     _tl5329154120_
                                                     _e5330054123_
                                                     _hd5329954127_
                                                     _tl5329854130_)
                                                    (if (gx#stx-null?
                                                         _tl5325154231_)
                                                        (___kont5626356264_
                                                         _hd5325254228_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5323753451_))))))
                                            (if (gx#stx-null? _tl5325154231_)
                                                (___kont5626356264_
                                                 _hd5325254228_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5323753451_))))))
                                    (if (gx#stx-null? _tl5325154231_)
                                        (___kont5626356264_ _hd5325254228_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5323753451_)))))))
                        (if (fx>= (gx#stx-length _tl5325154231_) '1)
                            (let ((___splice5626156262_
                                   (gx#syntax-split-splice _tl5325154231_ '1)))
                              (let ((_tl5329154120_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice5626156262_ '1)))
                                    (_target5328954117_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice5626156262_
                                        '0))))
                                (if (gx#stx-pair? _tl5329154120_)
                                    (let ((_e5330054123_
                                           (gx#syntax-e _tl5329154120_)))
                                      (let ((_tl5329854130_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5330054123_)))
                                            (_hd5329954127_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5330054123_))))
                                        (if (gx#stx-null? _tl5329854130_)
                                            (___match5638156382_
                                             _e5324654200_
                                             _hd5324554204_
                                             _tl5324454207_
                                             _e5324954210_
                                             _hd5324854214_
                                             _tl5324754217_
                                             _e5325054220_
                                             _e5325354224_
                                             _hd5325254228_
                                             _tl5325154231_
                                             ___splice5626156262_
                                             _target5328954117_
                                             _tl5329154120_
                                             _e5330054123_
                                             _hd5329954127_
                                             _tl5329854130_)
                                            (if (gx#stx-null? _tl5325154231_)
                                                (___kont5626356264_
                                                 _hd5325254228_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5323753451_))))))
                                    (if (gx#stx-null? _tl5325154231_)
                                        (___kont5626356264_ _hd5325254228_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5323753451_))))))
                            (if (gx#stx-null? _tl5325154231_)
                                (___kont5626356264_ _hd5325254228_)
                                (let ()
                                  (declare (not safe))
                                  (_g5323753451_)))))))
                (if (fx>= (gx#stx-length _tl5325154231_) '1)
                    (let ((___splice5626156262_
                           (gx#syntax-split-splice _tl5325154231_ '1)))
                      (let ((_tl5329154120_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5626156262_ '1)))
                            (_target5328954117_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice5626156262_ '0))))
                        (if (gx#stx-pair? _tl5329154120_)
                            (let ((_e5330054123_ (gx#syntax-e _tl5329154120_)))
                              (let ((_tl5329854130_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5330054123_)))
                                    (_hd5329954127_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5330054123_))))
                                (if (gx#stx-null? _tl5329854130_)
                                    (___match5638156382_
                                     _e5324654200_
                                     _hd5324554204_
                                     _tl5324454207_
                                     _e5324954210_
                                     _hd5324854214_
                                     _tl5324754217_
                                     _e5325054220_
                                     _e5325354224_
                                     _hd5325254228_
                                     _tl5325154231_
                                     ___splice5626156262_
                                     _target5328954117_
                                     _tl5329154120_
                                     _e5330054123_
                                     _hd5329954127_
                                     _tl5329854130_)
                                    (if (gx#stx-null? _tl5325154231_)
                                        (___kont5626356264_ _hd5325254228_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5323753451_))))))
                            (if (gx#stx-null? _tl5325154231_)
                                (___kont5626356264_ _hd5325254228_)
                                (let ()
                                  (declare (not safe))
                                  (_g5323753451_))))))
                    (if (gx#stx-null? _tl5325154231_)
                        (___kont5626356264_ _hd5325254228_)
                        (let () (declare (not safe)) (_g5323753451_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5325154231_)
                                                        (___kont5626356264_
                                                         _hd5325254228_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g5323753451_))))))
                                            (let ()
                                              (declare (not safe))
                                              (_g5323753451_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e5325054220_ '2))
                                            (if (gx#stx-pair? _tl5324754217_)
                                                (let ((_e5332753923_
                                                       (gx#syntax-e
                                                        _tl5324754217_)))
                                                  (let ((_tl5332553930_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5332753923_)))
                                                        (_hd5332653927_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5332753923_))))
                                                    (if (gx#stx-pair?
                                                         _tl5332553930_)
                                                        (let ((_e5333053933_
                                                               (gx#syntax-e
                                                                _tl5332553930_)))
                                                          (let ((_tl5332853940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5333053933_)))
                        (_hd5332953937_
                         (let () (declare (not safe)) (##car _e5333053933_))))
                    (if (gx#stx-pair? _hd5332953937_)
                        (let ((_e5333353943_ (gx#syntax-e _hd5332953937_)))
                          (let ((_tl5333153950_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5333353943_)))
                                (_hd5333253947_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5333353943_))))
                            (if (gx#stx-pair? _hd5333253947_)
                                (let ((_e5333653953_
                                       (gx#syntax-e _hd5333253947_)))
                                  (let ((_tl5333453960_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5333653953_)))
                                        (_hd5333553957_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5333653953_))))
                                    (if (gx#identifier? _hd5333553957_)
                                        (if (gx#free-identifier=?
                                             |[1]#_g57041_|
                                             _hd5333553957_)
                                            (if (gx#stx-pair? _tl5333453960_)
                                                (let ((_e5333953963_
                                                       (gx#syntax-e
                                                        _tl5333453960_)))
                                                  (let ((_tl5333753970_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5333953963_)))
                                                        (_hd5333853967_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5333953963_))))
                                                    (if (gx#stx-null?
                                                         _tl5333753970_)
                                                        (if (gx#stx-pair?
                                                             _tl5333153950_)
                                                            (let ((_e5334253973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl5333153950_)))
                      (let ((_tl5334053980_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5334253973_)))
                            (_hd5334153977_
                             (let ()
                               (declare (not safe))
                               (##car _e5334253973_))))
                        (___kont5626556266_
                         _tl5332853940_
                         _tl5334053980_
                         _hd5334153977_
                         _hd5333853967_
                         _hd5332653927_
                         _hd5324554204_)))
                    (___kont5626756268_
                     _tl5332853940_
                     _tl5333153950_
                     _hd5333253947_
                     _hd5332653927_
                     _hd5324554204_))
                (___kont5626756268_
                 _tl5332853940_
                 _tl5333153950_
                 _hd5333253947_
                 _hd5332653927_
                 _hd5324554204_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont5626756268_
                                                 _tl5332853940_
                                                 _tl5333153950_
                                                 _hd5333253947_
                                                 _hd5332653927_
                                                 _hd5324554204_))
                                            (___kont5626756268_
                                             _tl5332853940_
                                             _tl5333153950_
                                             _hd5333253947_
                                             _hd5332653927_
                                             _hd5324554204_))
                                        (___kont5626756268_
                                         _tl5332853940_
                                         _tl5333153950_
                                         _hd5333253947_
                                         _hd5332653927_
                                         _hd5324554204_))))
                                (___kont5626756268_
                                 _tl5332853940_
                                 _tl5333153950_
                                 _hd5333253947_
                                 _hd5332653927_
                                 _hd5324554204_))))
                        (if (gx#stx-null? _hd5332953937_)
                            (___kont5626956270_
                             _tl5332853940_
                             _hd5332653927_
                             _hd5324554204_)
                            (let () (declare (not safe)) (_g5323753451_))))))
                (let () (declare (not safe)) (_g5323753451_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5323753451_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e5325054220_ '3))
                                                (if (gx#stx-pair?
                                                     _tl5324754217_)
                                                    (let ((_e5339453672_
                                                           (gx#syntax-e
                                                            _tl5324754217_)))
                                                      (let ((_tl5339253679_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e5339453672_)))
                    (_hd5339353676_
                     (let () (declare (not safe)) (##car _e5339453672_))))
                (if (gx#stx-pair? _tl5339253679_)
                    (let ((_e5339753682_ (gx#syntax-e _tl5339253679_)))
                      (let ((_tl5339553689_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5339753682_)))
                            (_hd5339653686_
                             (let ()
                               (declare (not safe))
                               (##car _e5339753682_))))
                        (if (gx#stx-pair? _hd5339653686_)
                            (let ((_e5340053692_ (gx#syntax-e _hd5339653686_)))
                              (let ((_tl5339853699_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5340053692_)))
                                    (_hd5339953696_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5340053692_))))
                                (___kont5627156272_
                                 _tl5339553689_
                                 _tl5339853699_
                                 _hd5339953696_
                                 _hd5339353676_
                                 _hd5324554204_)))
                            (if (gx#stx-pair/null? _hd5339353676_)
                                (let ((___splice5627556276_
                                       (gx#syntax-split-splice
                                        _hd5339353676_
                                        '0)))
                                  (let ((_tl5341953495_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5627556276_
                                            '1)))
                                        (_target5341753492_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice5627556276_
                                            '0))))
                                    (if (gx#stx-null? _tl5341953495_)
                                        (___match5660356604_
                                         _e5324654200_
                                         _hd5324554204_
                                         _tl5324454207_
                                         _e5324954210_
                                         _hd5324854214_
                                         _tl5324754217_
                                         _e5325054220_
                                         _e5339453672_
                                         _hd5339353676_
                                         _tl5339253679_
                                         ___splice5627556276_
                                         _target5341753492_
                                         _tl5341953495_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5323753451_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5323753451_))))))
                    (if (gx#stx-pair/null? _hd5339353676_)
                        (let ((___splice5627556276_
                               (gx#syntax-split-splice _hd5339353676_ '0)))
                          (let ((_tl5341953495_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5627556276_ '1)))
                                (_target5341753492_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice5627556276_ '0))))
                            (if (gx#stx-null? _tl5341953495_)
                                (___match5660356604_
                                 _e5324654200_
                                 _hd5324554204_
                                 _tl5324454207_
                                 _e5324954210_
                                 _hd5324854214_
                                 _tl5324754217_
                                 _e5325054220_
                                 _e5339453672_
                                 _hd5339353676_
                                 _tl5339253679_
                                 ___splice5627556276_
                                 _target5341753492_
                                 _tl5341953495_)
                                (let ()
                                  (declare (not safe))
                                  (_g5323753451_)))))
                        (let () (declare (not safe)) (_g5323753451_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g5323753451_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g5323753451_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g5323753451_)))))
                          (let () (declare (not safe)) (_g5323753451_)))))
                  (let () (declare (not safe)) (_g5323753451_))))))))))
