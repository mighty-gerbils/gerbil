(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_$stx57826_)
      (let* ((_g5783057844_
              (lambda (_g5783157840_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5783157840_)))
             (_g5782957886_
              (lambda (_g5783157848_)
                (if (gx#stx-pair? _g5783157848_)
                    (let ((_e5783557851_ (gx#syntax-e _g5783157848_)))
                      (let ((_hd5783457855_
                             (let ()
                               (declare (not safe))
                               (##car _e5783557851_)))
                            (_tl5783357858_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5783557851_))))
                        (if (gx#stx-pair? _tl5783357858_)
                            (let ((_e5783857861_ (gx#syntax-e _tl5783357858_)))
                              (let ((_hd5783757865_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5783857861_)))
                                    (_tl5783657868_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5783857861_))))
                                (if (gx#stx-null? _tl5783657868_)
                                    ((lambda (_L57871_)
                                       (let ((__tmp60408
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp60406
                                              (let ((__tmp60407
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L57871_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp60407))))
                                         (declare (not safe))
                                         (cons __tmp60408 __tmp60406)))
                                     _hd5783757865_)
                                    (_g5783057844_ _g5783157848_))))
                            (_g5783057844_ _g5783157848_))))
                    (_g5783057844_ _g5783157848_)))))
        (_g5782957886_ _$stx57826_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_$stx57890_)
      (let* ((_g5789457940_
              (lambda (_g5789557936_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5789557936_)))
             (_g5789358093_
              (lambda (_g5789557944_)
                (if (gx#stx-pair? _g5789557944_)
                    (let ((_e5790757947_ (gx#syntax-e _g5789557944_)))
                      (let ((_hd5790657951_
                             (let ()
                               (declare (not safe))
                               (##car _e5790757947_)))
                            (_tl5790557954_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5790757947_))))
                        (if (gx#stx-pair? _tl5790557954_)
                            (let ((_e5791057957_ (gx#syntax-e _tl5790557954_)))
                              (let ((_hd5790957961_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5791057957_)))
                                    (_tl5790857964_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5791057957_))))
                                (if (gx#stx-pair? _tl5790857964_)
                                    (let ((_e5791357967_
                                           (gx#syntax-e _tl5790857964_)))
                                      (let ((_hd5791257971_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5791357967_)))
                                            (_tl5791157974_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5791357967_))))
                                        (if (gx#stx-pair? _tl5791157974_)
                                            (let ((_e5791657977_
                                                   (gx#syntax-e
                                                    _tl5791157974_)))
                                              (let ((_hd5791557981_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5791657977_)))
                                                    (_tl5791457984_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5791657977_))))
                                                (if (gx#stx-pair?
                                                     _tl5791457984_)
                                                    (let ((_e5791957987_
                                                           (gx#syntax-e
                                                            _tl5791457984_)))
                                                      (let ((_hd5791857991_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5791957987_)))
                    (_tl5791757994_
                     (let () (declare (not safe)) (##cdr _e5791957987_))))
                (if (gx#stx-pair? _tl5791757994_)
                    (let ((_e5792257997_ (gx#syntax-e _tl5791757994_)))
                      (let ((_hd5792158001_
                             (let ()
                               (declare (not safe))
                               (##car _e5792257997_)))
                            (_tl5792058004_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5792257997_))))
                        (if (gx#stx-pair? _tl5792058004_)
                            (let ((_e5792558007_ (gx#syntax-e _tl5792058004_)))
                              (let ((_hd5792458011_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5792558007_)))
                                    (_tl5792358014_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5792558007_))))
                                (if (gx#stx-pair? _tl5792358014_)
                                    (let ((_e5792858017_
                                           (gx#syntax-e _tl5792358014_)))
                                      (let ((_hd5792758021_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5792858017_)))
                                            (_tl5792658024_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5792858017_))))
                                        (if (gx#stx-pair? _tl5792658024_)
                                            (let ((_e5793158027_
                                                   (gx#syntax-e
                                                    _tl5792658024_)))
                                              (let ((_hd5793058031_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5793158027_)))
                                                    (_tl5792958034_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5793158027_))))
                                                (if (gx#stx-pair?
                                                     _tl5792958034_)
                                                    (let ((_e5793458037_
                                                           (gx#syntax-e
                                                            _tl5792958034_)))
                                                      (let ((_hd5793358041_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5793458037_)))
                    (_tl5793258044_
                     (let () (declare (not safe)) (##cdr _e5793458037_))))
                (if (gx#stx-null? _tl5793258044_)
                    ((lambda (_L58047_
                              _L58049_
                              _L58050_
                              _L58051_
                              _L58052_
                              _L58053_
                              _L58054_
                              _L58055_
                              _L58056_)
                       (let ((__tmp60840 (gx#datum->syntax '#f 'begin))
                             (__tmp60409
                              (let ((__tmp60819
                                     (let ((__tmp60839
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp60820
                                            (let ((__tmp60830
                                                   (let ((__tmp60831
                                                          (let ((__tmp60836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60838 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60837
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons __tmp60838 __tmp60837)))
                        (__tmp60832
                         (let ((__tmp60833
                                (let ((__tmp60835 (gx#datum->syntax '#f 'seed))
                                      (__tmp60834
                                       (let ()
                                         (declare (not safe))
                                         (cons '0 '()))))
                                  (declare (not safe))
                                  (cons __tmp60835 __tmp60834))))
                           (declare (not safe))
                           (cons __tmp60833 '()))))
                    (declare (not safe))
                    (cons __tmp60836 __tmp60832))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L58056_
                                                           __tmp60831)))
                                                  (__tmp60821
                                                   (let ((__tmp60822
                                                          (let ((__tmp60829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-raw-table))
                        (__tmp60823
                         (let ((__tmp60828 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60824
                                (let ((__tmp60825
                                       (let ((__tmp60826
                                              (let ((__tmp60827
                                                     (gx#datum->syntax
                                                      '#f
                                                      'seed)))
                                                (declare (not safe))
                                                (cons __tmp60827 '()))))
                                         (declare (not safe))
                                         (cons _L58047_ __tmp60826))))
                                  (declare (not safe))
                                  (cons _L58049_ __tmp60825))))
                           (declare (not safe))
                           (cons __tmp60828 __tmp60824))))
                    (declare (not safe))
                    (cons __tmp60829 __tmp60823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60822 '()))))
                                              (declare (not safe))
                                              (cons __tmp60830 __tmp60821))))
                                       (declare (not safe))
                                       (cons __tmp60839 __tmp60820)))
                                    (__tmp60410
                                     (let ((__tmp60776
                                            (let ((__tmp60818
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp60777
                                                   (let ((__tmp60811
                                                          (let ((__tmp60812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60817 (gx#datum->syntax '#f 'tab))
                               (__tmp60813
                                (let ((__tmp60816 (gx#datum->syntax '#f 'key))
                                      (__tmp60814
                                       (let ((__tmp60815
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp60815 '()))))
                                  (declare (not safe))
                                  (cons __tmp60816 __tmp60814))))
                           (declare (not safe))
                           (cons __tmp60817 __tmp60813))))
                    (declare (not safe))
                    (cons _L58055_ __tmp60812)))
                 (__tmp60778
                  (let ((__tmp60779
                         (let ((__tmp60810 (gx#datum->syntax '#f 'let))
                               (__tmp60780
                                (let ((__tmp60794
                                       (let ((__tmp60803
                                              (let ((__tmp60809
                                                     (gx#datum->syntax
                                                      '#f
                                                      'table))
                                                    (__tmp60804
                                                     (let ((__tmp60805
                                                            (let ((__tmp60808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-table))
                          (__tmp60806
                           (let ((__tmp60807 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp60807 '()))))
                      (declare (not safe))
                      (cons __tmp60808 __tmp60806))))
               (declare (not safe))
               (cons __tmp60805 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60809 __tmp60804)))
                                             (__tmp60795
                                              (let ((__tmp60796
                                                     (let ((__tmp60802
                                                            (gx#datum->syntax
                                                             '#f
                                                             'seed))
                                                           (__tmp60797
                                                            (let ((__tmp60798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60801
                                  (gx#datum->syntax '#f '&raw-table-seed))
                                 (__tmp60799
                                  (let ((__tmp60800
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp60800 '()))))
                             (declare (not safe))
                             (cons __tmp60801 __tmp60799))))
                      (declare (not safe))
                      (cons __tmp60798 '()))))
               (declare (not safe))
               (cons __tmp60802 __tmp60797))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60796 '()))))
                                         (declare (not safe))
                                         (cons __tmp60803 __tmp60795)))
                                      (__tmp60781
                                       (let ((__tmp60782
                                              (let ((__tmp60793
                                                     (gx#datum->syntax
                                                      '#f
                                                      '__table-ref))
                                                    (__tmp60783
                                                     (let ((__tmp60792
                                                            (gx#datum->syntax
                                                             '#f
                                                             'table))
                                                           (__tmp60784
                                                            (let ((__tmp60791
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'seed))
                          (__tmp60785
                           (let ((__tmp60786
                                  (let ((__tmp60787
                                         (let ((__tmp60790
                                                (gx#datum->syntax '#f 'key))
                                               (__tmp60788
                                                (let ((__tmp60789
                                                       (gx#datum->syntax
                                                        '#f
                                                        'default)))
                                                  (declare (not safe))
                                                  (cons __tmp60789 '()))))
                                           (declare (not safe))
                                           (cons __tmp60790 __tmp60788))))
                                    (declare (not safe))
                                    (cons _L58047_ __tmp60787))))
                             (declare (not safe))
                             (cons _L58049_ __tmp60786))))
                      (declare (not safe))
                      (cons __tmp60791 __tmp60785))))
               (declare (not safe))
               (cons __tmp60792 __tmp60784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60793 __tmp60783))))
                                         (declare (not safe))
                                         (cons __tmp60782 '()))))
                                  (declare (not safe))
                                  (cons __tmp60794 __tmp60781))))
                           (declare (not safe))
                           (cons __tmp60810 __tmp60780))))
                    (declare (not safe))
                    (cons __tmp60779 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60811
                                                           __tmp60778))))
                                              (declare (not safe))
                                              (cons __tmp60818 __tmp60777)))
                                           (__tmp60411
                                            (let ((__tmp60730
                                                   (let ((__tmp60775
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp60731
                                                          (let ((__tmp60768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60769
                                (let ((__tmp60774 (gx#datum->syntax '#f 'tab))
                                      (__tmp60770
                                       (let ((__tmp60773
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp60771
                                              (let ((__tmp60772
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value)))
                                                (declare (not safe))
                                                (cons __tmp60772 '()))))
                                         (declare (not safe))
                                         (cons __tmp60773 __tmp60771))))
                                  (declare (not safe))
                                  (cons __tmp60774 __tmp60770))))
                           (declare (not safe))
                           (cons _L58054_ __tmp60769)))
                        (__tmp60732
                         (let ((__tmp60741
                                (let ((__tmp60767 (gx#datum->syntax '#f 'when))
                                      (__tmp60742
                                       (let ((__tmp60748
                                              (let ((__tmp60766
                                                     (gx#datum->syntax
                                                      '#f
                                                      'fx<))
                                                    (__tmp60749
                                                     (let ((__tmp60762
                                                            (let ((__tmp60765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-free))
                          (__tmp60763
                           (let ((__tmp60764 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp60764 '()))))
                      (declare (not safe))
                      (cons __tmp60765 __tmp60763)))
                   (__tmp60750
                    (let ((__tmp60751
                           (let ((__tmp60761
                                  (gx#datum->syntax '#f 'fxquotient))
                                 (__tmp60752
                                  (let ((__tmp60754
                                         (let ((__tmp60760
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60755
                                                (let ((__tmp60756
                                                       (let ((__tmp60759
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp60757
                                                              (let ((__tmp60758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60758 '()))))
                 (declare (not safe))
                 (cons __tmp60759 __tmp60757))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60756 '()))))
                                           (declare (not safe))
                                           (cons __tmp60760 __tmp60755)))
                                        (__tmp60753
                                         (let ()
                                           (declare (not safe))
                                           (cons '4 '()))))
                                    (declare (not safe))
                                    (cons __tmp60754 __tmp60753))))
                             (declare (not safe))
                             (cons __tmp60761 __tmp60752))))
                      (declare (not safe))
                      (cons __tmp60751 '()))))
               (declare (not safe))
               (cons __tmp60762 __tmp60750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60766 __tmp60749)))
                                             (__tmp60743
                                              (let ((__tmp60744
                                                     (let ((__tmp60747
                                                            (gx#datum->syntax
                                                             '#f
                                                             '__raw-table-rehash!))
                                                           (__tmp60745
                                                            (let ((__tmp60746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab)))
                      (declare (not safe))
                      (cons __tmp60746 '()))))
               (declare (not safe))
               (cons __tmp60747 __tmp60745))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60744 '()))))
                                         (declare (not safe))
                                         (cons __tmp60748 __tmp60743))))
                                  (declare (not safe))
                                  (cons __tmp60767 __tmp60742)))
                               (__tmp60733
                                (let ((__tmp60734
                                       (let ((__tmp60735
                                              (let ((__tmp60740
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp60736
                                                     (let ((__tmp60739
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp60737
                                                            (let ((__tmp60738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'value)))
                      (declare (not safe))
                      (cons __tmp60738 '()))))
               (declare (not safe))
               (cons __tmp60739 __tmp60737))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60740 __tmp60736))))
                                         (declare (not safe))
                                         (cons _L58053_ __tmp60735))))
                                  (declare (not safe))
                                  (cons __tmp60734 '()))))
                           (declare (not safe))
                           (cons __tmp60741 __tmp60733))))
                    (declare (not safe))
                    (cons __tmp60768 __tmp60732))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60775
                                                           __tmp60731)))
                                                  (__tmp60412
                                                   (let ((__tmp60628
                                                          (let ((__tmp60729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'def))
                        (__tmp60629
                         (let ((__tmp60722
                                (let ((__tmp60723
                                       (let ((__tmp60728
                                              (gx#datum->syntax '#f 'tab))
                                             (__tmp60724
                                              (let ((__tmp60727
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp60725
                                                     (let ((__tmp60726
                                                            (gx#datum->syntax
                                                             '#f
                                                             'value)))
                                                       (declare (not safe))
                                                       (cons __tmp60726 '()))))
                                                (declare (not safe))
                                                (cons __tmp60727 __tmp60725))))
                                         (declare (not safe))
                                         (cons __tmp60728 __tmp60724))))
                                  (declare (not safe))
                                  (cons _L58053_ __tmp60723)))
                               (__tmp60630
                                (let ((__tmp60631
                                       (let ((__tmp60721
                                              (gx#datum->syntax '#f 'let))
                                             (__tmp60632
                                              (let ((__tmp60705
                                                     (let ((__tmp60714
                                                            (let ((__tmp60720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'table))
                          (__tmp60715
                           (let ((__tmp60716
                                  (let ((__tmp60719
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-table))
                                        (__tmp60717
                                         (let ((__tmp60718
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp60718 '()))))
                                    (declare (not safe))
                                    (cons __tmp60719 __tmp60717))))
                             (declare (not safe))
                             (cons __tmp60716 '()))))
                      (declare (not safe))
                      (cons __tmp60720 __tmp60715)))
                   (__tmp60706
                    (let ((__tmp60707
                           (let ((__tmp60713 (gx#datum->syntax '#f 'seed))
                                 (__tmp60708
                                  (let ((__tmp60709
                                         (let ((__tmp60712
                                                (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-seed))
                                               (__tmp60710
                                                (let ((__tmp60711
                                                       (gx#datum->syntax
                                                        '#f
                                                        'tab)))
                                                  (declare (not safe))
                                                  (cons __tmp60711 '()))))
                                           (declare (not safe))
                                           (cons __tmp60712 __tmp60710))))
                                    (declare (not safe))
                                    (cons __tmp60709 '()))))
                             (declare (not safe))
                             (cons __tmp60713 __tmp60708))))
                      (declare (not safe))
                      (cons __tmp60707 '()))))
               (declare (not safe))
               (cons __tmp60714 __tmp60706)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60633
                                                     (let ((__tmp60634
                                                            (let ((__tmp60704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '__table-set!))
                          (__tmp60635
                           (let ((__tmp60703 (gx#datum->syntax '#f 'table))
                                 (__tmp60636
                                  (let ((__tmp60702
                                         (gx#datum->syntax '#f 'seed))
                                        (__tmp60637
                                         (let ((__tmp60638
                                                (let ((__tmp60639
                                                       (let ((__tmp60701
                                                              (gx#datum->syntax
                                                               '#f
                                                               'key))
                                                             (__tmp60640
                                                              (let ((__tmp60700
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'value))
                            (__tmp60641
                             (let ((__tmp60663
                                    (let ((__tmp60699
                                           (gx#datum->syntax '#f 'lambda))
                                          (__tmp60664
                                           (let ((__tmp60665
                                                  (let ((__tmp60683
                                                         (let ((__tmp60698
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'set!))
                       (__tmp60684
                        (let ((__tmp60694
                               (let ((__tmp60697
                                      (gx#datum->syntax '#f '&raw-table-free))
                                     (__tmp60695
                                      (let ((__tmp60696
                                             (gx#datum->syntax '#f 'tab)))
                                        (declare (not safe))
                                        (cons __tmp60696 '()))))
                                 (declare (not safe))
                                 (cons __tmp60697 __tmp60695)))
                              (__tmp60685
                               (let ((__tmp60686
                                      (let ((__tmp60693
                                             (gx#datum->syntax '#f 'fx-))
                                            (__tmp60687
                                             (let ((__tmp60689
                                                    (let ((__tmp60692
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp60690
                                                           (let ((__tmp60691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp60691 '()))))
              (declare (not safe))
              (cons __tmp60692 __tmp60690)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60688
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '1 '()))))
                                               (declare (not safe))
                                               (cons __tmp60689 __tmp60688))))
                                        (declare (not safe))
                                        (cons __tmp60693 __tmp60687))))
                                 (declare (not safe))
                                 (cons __tmp60686 '()))))
                          (declare (not safe))
                          (cons __tmp60694 __tmp60685))))
                   (declare (not safe))
                   (cons __tmp60698 __tmp60684)))
                (__tmp60666
                 (let ((__tmp60667
                        (let ((__tmp60682 (gx#datum->syntax '#f 'set!))
                              (__tmp60668
                               (let ((__tmp60678
                                      (let ((__tmp60681
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp60679
                                             (let ((__tmp60680
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp60680 '()))))
                                        (declare (not safe))
                                        (cons __tmp60681 __tmp60679)))
                                     (__tmp60669
                                      (let ((__tmp60670
                                             (let ((__tmp60677
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60671
                                                    (let ((__tmp60673
                                                           (let ((__tmp60676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60674
                          (let ((__tmp60675 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60675 '()))))
                     (declare (not safe))
                     (cons __tmp60676 __tmp60674)))
                  (__tmp60672 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp60673 __tmp60672))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60677 __tmp60671))))
                                        (declare (not safe))
                                        (cons __tmp60670 '()))))
                                 (declare (not safe))
                                 (cons __tmp60678 __tmp60669))))
                          (declare (not safe))
                          (cons __tmp60682 __tmp60668))))
                   (declare (not safe))
                   (cons __tmp60667 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60683
                                                          __tmp60666))))
                                             (declare (not safe))
                                             (cons '() __tmp60665))))
                                      (declare (not safe))
                                      (cons __tmp60699 __tmp60664)))
                                   (__tmp60642
                                    (let ((__tmp60643
                                           (let ((__tmp60662
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp60644
                                                  (let ((__tmp60645
                                                         (let ((__tmp60646
                                                                (let ((__tmp60661
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'set!))
                              (__tmp60647
                               (let ((__tmp60657
                                      (let ((__tmp60660
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp60658
                                             (let ((__tmp60659
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp60659 '()))))
                                        (declare (not safe))
                                        (cons __tmp60660 __tmp60658)))
                                     (__tmp60648
                                      (let ((__tmp60649
                                             (let ((__tmp60656
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60650
                                                    (let ((__tmp60652
                                                           (let ((__tmp60655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60653
                          (let ((__tmp60654 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60654 '()))))
                     (declare (not safe))
                     (cons __tmp60655 __tmp60653)))
                  (__tmp60651 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp60652 __tmp60651))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60656 __tmp60650))))
                                        (declare (not safe))
                                        (cons __tmp60649 '()))))
                                 (declare (not safe))
                                 (cons __tmp60657 __tmp60648))))
                          (declare (not safe))
                          (cons __tmp60661 __tmp60647))))
                   (declare (not safe))
                   (cons __tmp60646 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '() __tmp60645))))
                                             (declare (not safe))
                                             (cons __tmp60662 __tmp60644))))
                                      (declare (not safe))
                                      (cons __tmp60643 '()))))
                               (declare (not safe))
                               (cons __tmp60663 __tmp60642))))
                        (declare (not safe))
                        (cons __tmp60700 __tmp60641))))
                 (declare (not safe))
                 (cons __tmp60701 __tmp60640))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L58047_ __tmp60639))))
                                           (declare (not safe))
                                           (cons _L58049_ __tmp60638))))
                                    (declare (not safe))
                                    (cons __tmp60702 __tmp60637))))
                             (declare (not safe))
                             (cons __tmp60703 __tmp60636))))
                      (declare (not safe))
                      (cons __tmp60704 __tmp60635))))
               (declare (not safe))
               (cons __tmp60634 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60705 __tmp60633))))
                                         (declare (not safe))
                                         (cons __tmp60721 __tmp60632))))
                                  (declare (not safe))
                                  (cons __tmp60631 '()))))
                           (declare (not safe))
                           (cons __tmp60722 __tmp60630))))
                    (declare (not safe))
                    (cons __tmp60729 __tmp60629)))
                 (__tmp60413
                  (let ((__tmp60580
                         (let ((__tmp60627 (gx#datum->syntax '#f 'def))
                               (__tmp60581
                                (let ((__tmp60619
                                       (let ((__tmp60620
                                              (let ((__tmp60626
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp60621
                                                     (let ((__tmp60625
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp60622
                                                            (let ((__tmp60623
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60624 (gx#datum->syntax '#f 'default)))
                             (declare (not safe))
                             (cons __tmp60624 '()))))
                      (declare (not safe))
                      (cons _L58052_ __tmp60623))))
               (declare (not safe))
               (cons __tmp60625 __tmp60622))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60626 __tmp60621))))
                                         (declare (not safe))
                                         (cons _L58052_ __tmp60620)))
                                      (__tmp60582
                                       (let ((__tmp60592
                                              (let ((__tmp60618
                                                     (gx#datum->syntax
                                                      '#f
                                                      'when))
                                                    (__tmp60593
                                                     (let ((__tmp60599
                                                            (let ((__tmp60617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'fx<))
                          (__tmp60600
                           (let ((__tmp60613
                                  (let ((__tmp60616
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-free))
                                        (__tmp60614
                                         (let ((__tmp60615
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp60615 '()))))
                                    (declare (not safe))
                                    (cons __tmp60616 __tmp60614)))
                                 (__tmp60601
                                  (let ((__tmp60602
                                         (let ((__tmp60612
                                                (gx#datum->syntax
                                                 '#f
                                                 'fxquotient))
                                               (__tmp60603
                                                (let ((__tmp60605
                                                       (let ((__tmp60611
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-length))
                                                             (__tmp60606
                                                              (let ((__tmp60607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60610
                                    (gx#datum->syntax '#f '&raw-table-table))
                                   (__tmp60608
                                    (let ((__tmp60609
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp60609 '()))))
                               (declare (not safe))
                               (cons __tmp60610 __tmp60608))))
                        (declare (not safe))
                        (cons __tmp60607 '()))))
                 (declare (not safe))
                 (cons __tmp60611 __tmp60606)))
              (__tmp60604 (let () (declare (not safe)) (cons '4 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60605
                                                        __tmp60604))))
                                           (declare (not safe))
                                           (cons __tmp60612 __tmp60603))))
                                    (declare (not safe))
                                    (cons __tmp60602 '()))))
                             (declare (not safe))
                             (cons __tmp60613 __tmp60601))))
                      (declare (not safe))
                      (cons __tmp60617 __tmp60600)))
                   (__tmp60594
                    (let ((__tmp60595
                           (let ((__tmp60598
                                  (gx#datum->syntax '#f '__raw-table-rehash!))
                                 (__tmp60596
                                  (let ((__tmp60597
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp60597 '()))))
                             (declare (not safe))
                             (cons __tmp60598 __tmp60596))))
                      (declare (not safe))
                      (cons __tmp60595 '()))))
               (declare (not safe))
               (cons __tmp60599 __tmp60594))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60618 __tmp60593)))
                                             (__tmp60583
                                              (let ((__tmp60584
                                                     (let ((__tmp60585
                                                            (let ((__tmp60591
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp60586
                           (let ((__tmp60590 (gx#datum->syntax '#f 'key))
                                 (__tmp60587
                                  (let ((__tmp60588
                                         (let ((__tmp60589
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp60589 '()))))
                                    (declare (not safe))
                                    (cons _L58052_ __tmp60588))))
                             (declare (not safe))
                             (cons __tmp60590 __tmp60587))))
                      (declare (not safe))
                      (cons __tmp60591 __tmp60586))))
               (declare (not safe))
               (cons _L58051_ __tmp60585))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60584 '()))))
                                         (declare (not safe))
                                         (cons __tmp60592 __tmp60583))))
                                  (declare (not safe))
                                  (cons __tmp60619 __tmp60582))))
                           (declare (not safe))
                           (cons __tmp60627 __tmp60581)))
                        (__tmp60414
                         (let ((__tmp60476
                                (let ((__tmp60579 (gx#datum->syntax '#f 'def))
                                      (__tmp60477
                                       (let ((__tmp60571
                                              (let ((__tmp60572
                                                     (let ((__tmp60578
                                                            (gx#datum->syntax
                                                             '#f
                                                             'tab))
                                                           (__tmp60573
                                                            (let ((__tmp60577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'key))
                          (__tmp60574
                           (let ((__tmp60575
                                  (let ((__tmp60576
                                         (gx#datum->syntax '#f 'default)))
                                    (declare (not safe))
                                    (cons __tmp60576 '()))))
                             (declare (not safe))
                             (cons _L58052_ __tmp60575))))
                      (declare (not safe))
                      (cons __tmp60577 __tmp60574))))
               (declare (not safe))
               (cons __tmp60578 __tmp60573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L58051_ __tmp60572)))
                                             (__tmp60478
                                              (let ((__tmp60479
                                                     (let ((__tmp60570
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp60480
                                                            (let ((__tmp60554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60563
                                  (let ((__tmp60569
                                         (gx#datum->syntax '#f 'table))
                                        (__tmp60564
                                         (let ((__tmp60565
                                                (let ((__tmp60568
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table))
                                                      (__tmp60566
                                                       (let ((__tmp60567
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp60567
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60568
                                                        __tmp60566))))
                                           (declare (not safe))
                                           (cons __tmp60565 '()))))
                                    (declare (not safe))
                                    (cons __tmp60569 __tmp60564)))
                                 (__tmp60555
                                  (let ((__tmp60556
                                         (let ((__tmp60562
                                                (gx#datum->syntax '#f 'seed))
                                               (__tmp60557
                                                (let ((__tmp60558
                                                       (let ((__tmp60561
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-seed))
                                                             (__tmp60559
                                                              (let ((__tmp60560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60560 '()))))
                 (declare (not safe))
                 (cons __tmp60561 __tmp60559))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60558 '()))))
                                           (declare (not safe))
                                           (cons __tmp60562 __tmp60557))))
                                    (declare (not safe))
                                    (cons __tmp60556 '()))))
                             (declare (not safe))
                             (cons __tmp60563 __tmp60555)))
                          (__tmp60481
                           (let ((__tmp60482
                                  (let ((__tmp60553
                                         (gx#datum->syntax
                                          '#f
                                          '__table-update!))
                                        (__tmp60483
                                         (let ((__tmp60552
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp60484
                                                (let ((__tmp60551
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp60485
                                                       (let ((__tmp60486
                                                              (let ((__tmp60487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60550 (gx#datum->syntax '#f 'key))
                                   (__tmp60488
                                    (let ((__tmp60489
                                           (let ((__tmp60549
                                                  (gx#datum->syntax
                                                   '#f
                                                   'default))
                                                 (__tmp60490
                                                  (let ((__tmp60512
                                                         (let ((__tmp60548
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda))
                       (__tmp60513
                        (let ((__tmp60514
                               (let ((__tmp60532
                                      (let ((__tmp60547
                                             (gx#datum->syntax '#f 'set!))
                                            (__tmp60533
                                             (let ((__tmp60543
                                                    (let ((__tmp60546
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp60544
                                                           (let ((__tmp60545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp60545 '()))))
              (declare (not safe))
              (cons __tmp60546 __tmp60544)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60534
                                                    (let ((__tmp60535
                                                           (let ((__tmp60542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx-))
                         (__tmp60536
                          (let ((__tmp60538
                                 (let ((__tmp60541
                                        (gx#datum->syntax
                                         '#f
                                         '&raw-table-free))
                                       (__tmp60539
                                        (let ((__tmp60540
                                               (gx#datum->syntax '#f 'tab)))
                                          (declare (not safe))
                                          (cons __tmp60540 '()))))
                                   (declare (not safe))
                                   (cons __tmp60541 __tmp60539)))
                                (__tmp60537
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60538 __tmp60537))))
                     (declare (not safe))
                     (cons __tmp60542 __tmp60536))))
              (declare (not safe))
              (cons __tmp60535 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60543 __tmp60534))))
                                        (declare (not safe))
                                        (cons __tmp60547 __tmp60533)))
                                     (__tmp60515
                                      (let ((__tmp60516
                                             (let ((__tmp60531
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp60517
                                                    (let ((__tmp60527
                                                           (let ((__tmp60530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60528
                          (let ((__tmp60529 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60529 '()))))
                     (declare (not safe))
                     (cons __tmp60530 __tmp60528)))
                  (__tmp60518
                   (let ((__tmp60519
                          (let ((__tmp60526 (gx#datum->syntax '#f 'fx+))
                                (__tmp60520
                                 (let ((__tmp60522
                                        (let ((__tmp60525
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp60523
                                               (let ((__tmp60524
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp60524 '()))))
                                          (declare (not safe))
                                          (cons __tmp60525 __tmp60523)))
                                       (__tmp60521
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp60522 __tmp60521))))
                            (declare (not safe))
                            (cons __tmp60526 __tmp60520))))
                     (declare (not safe))
                     (cons __tmp60519 '()))))
              (declare (not safe))
              (cons __tmp60527 __tmp60518))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60531 __tmp60517))))
                                        (declare (not safe))
                                        (cons __tmp60516 '()))))
                                 (declare (not safe))
                                 (cons __tmp60532 __tmp60515))))
                          (declare (not safe))
                          (cons '() __tmp60514))))
                   (declare (not safe))
                   (cons __tmp60548 __tmp60513)))
                (__tmp60491
                 (let ((__tmp60492
                        (let ((__tmp60511 (gx#datum->syntax '#f 'lambda))
                              (__tmp60493
                               (let ((__tmp60494
                                      (let ((__tmp60495
                                             (let ((__tmp60510
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp60496
                                                    (let ((__tmp60506
                                                           (let ((__tmp60509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60507
                          (let ((__tmp60508 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60508 '()))))
                     (declare (not safe))
                     (cons __tmp60509 __tmp60507)))
                  (__tmp60497
                   (let ((__tmp60498
                          (let ((__tmp60505 (gx#datum->syntax '#f 'fx+))
                                (__tmp60499
                                 (let ((__tmp60501
                                        (let ((__tmp60504
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp60502
                                               (let ((__tmp60503
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp60503 '()))))
                                          (declare (not safe))
                                          (cons __tmp60504 __tmp60502)))
                                       (__tmp60500
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp60501 __tmp60500))))
                            (declare (not safe))
                            (cons __tmp60505 __tmp60499))))
                     (declare (not safe))
                     (cons __tmp60498 '()))))
              (declare (not safe))
              (cons __tmp60506 __tmp60497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60510 __tmp60496))))
                                        (declare (not safe))
                                        (cons __tmp60495 '()))))
                                 (declare (not safe))
                                 (cons '() __tmp60494))))
                          (declare (not safe))
                          (cons __tmp60511 __tmp60493))))
                   (declare (not safe))
                   (cons __tmp60492 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60512
                                                          __tmp60491))))
                                             (declare (not safe))
                                             (cons __tmp60549 __tmp60490))))
                                      (declare (not safe))
                                      (cons _L58052_ __tmp60489))))
                               (declare (not safe))
                               (cons __tmp60550 __tmp60488))))
                        (declare (not safe))
                        (cons _L58047_ __tmp60487))))
                 (declare (not safe))
                 (cons _L58049_ __tmp60486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60551
                                                        __tmp60485))))
                                           (declare (not safe))
                                           (cons __tmp60552 __tmp60484))))
                                    (declare (not safe))
                                    (cons __tmp60553 __tmp60483))))
                             (declare (not safe))
                             (cons __tmp60482 '()))))
                      (declare (not safe))
                      (cons __tmp60554 __tmp60481))))
               (declare (not safe))
               (cons __tmp60570 __tmp60480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60479 '()))))
                                         (declare (not safe))
                                         (cons __tmp60571 __tmp60478))))
                                  (declare (not safe))
                                  (cons __tmp60579 __tmp60477)))
                               (__tmp60415
                                (let ((__tmp60416
                                       (let ((__tmp60475
                                              (gx#datum->syntax '#f 'def))
                                             (__tmp60417
                                              (let ((__tmp60470
                                                     (let ((__tmp60471
                                                            (let ((__tmp60474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp60472
                           (let ((__tmp60473 (gx#datum->syntax '#f 'key)))
                             (declare (not safe))
                             (cons __tmp60473 '()))))
                      (declare (not safe))
                      (cons __tmp60474 __tmp60472))))
               (declare (not safe))
               (cons _L58050_ __tmp60471)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60418
                                                     (let ((__tmp60419
                                                            (let ((__tmp60469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60420
                           (let ((__tmp60453
                                  (let ((__tmp60462
                                         (let ((__tmp60468
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp60463
                                                (let ((__tmp60464
                                                       (let ((__tmp60467
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp60465
                                                              (let ((__tmp60466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60466 '()))))
                 (declare (not safe))
                 (cons __tmp60467 __tmp60465))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60464 '()))))
                                           (declare (not safe))
                                           (cons __tmp60468 __tmp60463)))
                                        (__tmp60454
                                         (let ((__tmp60455
                                                (let ((__tmp60461
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp60456
                                                       (let ((__tmp60457
                                                              (let ((__tmp60460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-seed))
                            (__tmp60458
                             (let ((__tmp60459 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp60459 '()))))
                        (declare (not safe))
                        (cons __tmp60460 __tmp60458))))
                 (declare (not safe))
                 (cons __tmp60457 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60461
                                                        __tmp60456))))
                                           (declare (not safe))
                                           (cons __tmp60455 '()))))
                                    (declare (not safe))
                                    (cons __tmp60462 __tmp60454)))
                                 (__tmp60421
                                  (let ((__tmp60422
                                         (let ((__tmp60452
                                                (gx#datum->syntax
                                                 '#f
                                                 '__table-del!))
                                               (__tmp60423
                                                (let ((__tmp60451
                                                       (gx#datum->syntax
                                                        '#f
                                                        'table))
                                                      (__tmp60424
                                                       (let ((__tmp60450
                                                              (gx#datum->syntax
                                                               '#f
                                                               'seed))
                                                             (__tmp60425
                                                              (let ((__tmp60426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60427
                                    (let ((__tmp60449
                                           (gx#datum->syntax '#f 'key))
                                          (__tmp60428
                                           (let ((__tmp60429
                                                  (let ((__tmp60448
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp60430
                                                         (let ((__tmp60431
                                                                (let ((__tmp60432
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60447 (gx#datum->syntax '#f 'set!))
                                     (__tmp60433
                                      (let ((__tmp60443
                                             (let ((__tmp60446
                                                    (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-count))
                                                   (__tmp60444
                                                    (let ((__tmp60445
                                                           (gx#datum->syntax
                                                            '#f
                                                            'tab)))
                                                      (declare (not safe))
                                                      (cons __tmp60445 '()))))
                                               (declare (not safe))
                                               (cons __tmp60446 __tmp60444)))
                                            (__tmp60434
                                             (let ((__tmp60435
                                                    (let ((__tmp60442
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx-))
                                                          (__tmp60436
                                                           (let ((__tmp60438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60441
                                 (gx#datum->syntax '#f '&raw-table-count))
                                (__tmp60439
                                 (let ((__tmp60440
                                        (gx#datum->syntax '#f 'tab)))
                                   (declare (not safe))
                                   (cons __tmp60440 '()))))
                            (declare (not safe))
                            (cons __tmp60441 __tmp60439)))
                         (__tmp60437
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp60438 __tmp60437))))
              (declare (not safe))
              (cons __tmp60442 __tmp60436))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60435 '()))))
                                        (declare (not safe))
                                        (cons __tmp60443 __tmp60434))))
                                 (declare (not safe))
                                 (cons __tmp60447 __tmp60433))))
                          (declare (not safe))
                          (cons __tmp60432 '()))))
                   (declare (not safe))
                   (cons '() __tmp60431))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60448
                                                          __tmp60430))))
                                             (declare (not safe))
                                             (cons __tmp60429 '()))))
                                      (declare (not safe))
                                      (cons __tmp60449 __tmp60428))))
                               (declare (not safe))
                               (cons _L58047_ __tmp60427))))
                        (declare (not safe))
                        (cons _L58049_ __tmp60426))))
                 (declare (not safe))
                 (cons __tmp60450 __tmp60425))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60451
                                                        __tmp60424))))
                                           (declare (not safe))
                                           (cons __tmp60452 __tmp60423))))
                                    (declare (not safe))
                                    (cons __tmp60422 '()))))
                             (declare (not safe))
                             (cons __tmp60453 __tmp60421))))
                      (declare (not safe))
                      (cons __tmp60469 __tmp60420))))
               (declare (not safe))
               (cons __tmp60419 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60470 __tmp60418))))
                                         (declare (not safe))
                                         (cons __tmp60475 __tmp60417))))
                                  (declare (not safe))
                                  (cons __tmp60416 '()))))
                           (declare (not safe))
                           (cons __tmp60476 __tmp60415))))
                    (declare (not safe))
                    (cons __tmp60580 __tmp60414))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60628
                                                           __tmp60413))))
                                              (declare (not safe))
                                              (cons __tmp60730 __tmp60412))))
                                       (declare (not safe))
                                       (cons __tmp60776 __tmp60411))))
                                (declare (not safe))
                                (cons __tmp60819 __tmp60410))))
                         (declare (not safe))
                         (cons __tmp60840 __tmp60409)))
                     _hd5793358041_
                     _hd5793058031_
                     _hd5792758021_
                     _hd5792458011_
                     _hd5792158001_
                     _hd5791857991_
                     _hd5791557981_
                     _hd5791257971_
                     _hd5790957961_)
                    (_g5789457940_ _g5789557944_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5789457940_
                                                     _g5789557944_))))
                                            (_g5789457940_ _g5789557944_))))
                                    (_g5789457940_ _g5789557944_))))
                            (_g5789457940_ _g5789557944_))))
                    (_g5789457940_ _g5789557944_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5789457940_
                                                     _g5789557944_))))
                                            (_g5789457940_ _g5789557944_))))
                                    (_g5789457940_ _g5789557944_))))
                            (_g5789457940_ _g5789557944_))))
                    (_g5789457940_ _g5789557944_)))))
        (_g5789358093_ _$stx57890_))))
  (define |[:0:]#probe-step|
    (lambda (_$stx58097_)
      (let* ((_g5810158123_
              (lambda (_g5810258119_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5810258119_)))
             (_g5810058192_
              (lambda (_g5810258127_)
                (if (gx#stx-pair? _g5810258127_)
                    (let ((_e5810858130_ (gx#syntax-e _g5810258127_)))
                      (let ((_hd5810758134_
                             (let ()
                               (declare (not safe))
                               (##car _e5810858130_)))
                            (_tl5810658137_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5810858130_))))
                        (if (gx#stx-pair? _tl5810658137_)
                            (let ((_e5811158140_ (gx#syntax-e _tl5810658137_)))
                              (let ((_hd5811058144_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5811158140_)))
                                    (_tl5810958147_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5811158140_))))
                                (if (gx#stx-pair? _tl5810958147_)
                                    (let ((_e5811458150_
                                           (gx#syntax-e _tl5810958147_)))
                                      (let ((_hd5811358154_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5811458150_)))
                                            (_tl5811258157_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5811458150_))))
                                        (if (gx#stx-pair? _tl5811258157_)
                                            (let ((_e5811758160_
                                                   (gx#syntax-e
                                                    _tl5811258157_)))
                                              (let ((_hd5811658164_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5811758160_)))
                                                    (_tl5811558167_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5811758160_))))
                                                (if (gx#stx-null?
                                                     _tl5811558167_)
                                                    ((lambda (_L58170_
                                                              _L58172_
                                                              _L58173_)
                                                       (let ((__tmp60860
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp60841
                                                              (let ((__tmp60848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60859
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp60849
                                    (let ((__tmp60850
                                           (let ((__tmp60858
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60851
                                                  (let ((__tmp60852
                                                         (let ((__tmp60853
                                                                (let ((__tmp60854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60857 (gx#datum->syntax '#f 'fx*))
                                     (__tmp60855
                                      (let ((__tmp60856
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58172_ '()))))
                                        (declare (not safe))
                                        (cons _L58172_ __tmp60856))))
                                 (declare (not safe))
                                 (cons __tmp60857 __tmp60855))))
                          (declare (not safe))
                          (cons __tmp60854 '()))))
                   (declare (not safe))
                   (cons _L58172_ __tmp60853))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58173_
                                                          __tmp60852))))
                                             (declare (not safe))
                                             (cons __tmp60858 __tmp60851))))
                                      (declare (not safe))
                                      (cons __tmp60850 '()))))
                               (declare (not safe))
                               (cons __tmp60859 __tmp60849)))
                            (__tmp60842
                             (let ((__tmp60843
                                    (let ((__tmp60847
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp60844
                                           (let ((__tmp60846
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp60845
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L58170_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60846 __tmp60845))))
                                      (declare (not safe))
                                      (cons __tmp60847 __tmp60844))))
                               (declare (not safe))
                               (cons __tmp60843 '()))))
                        (declare (not safe))
                        (cons __tmp60848 __tmp60842))))
                 (declare (not safe))
                 (cons __tmp60860 __tmp60841)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5811658164_
                                                     _hd5811358154_
                                                     _hd5811058144_)
                                                    (_g5810158123_
                                                     _g5810258127_))))
                                            (_g5810158123_ _g5810258127_))))
                                    (_g5810158123_ _g5810258127_))))
                            (_g5810158123_ _g5810258127_))))
                    (_g5810158123_ _g5810258127_)))))
        (_g5810058192_ _$stx58097_))))
  (define |[:0:]#__table-ref|
    (lambda (_$stx58196_)
      (let* ((_g5820058234_
              (lambda (_g5820158230_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5820158230_)))
             (_g5819958345_
              (lambda (_g5820158238_)
                (if (gx#stx-pair? _g5820158238_)
                    (let ((_e5821058241_ (gx#syntax-e _g5820158238_)))
                      (let ((_hd5820958245_
                             (let ()
                               (declare (not safe))
                               (##car _e5821058241_)))
                            (_tl5820858248_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5821058241_))))
                        (if (gx#stx-pair? _tl5820858248_)
                            (let ((_e5821358251_ (gx#syntax-e _tl5820858248_)))
                              (let ((_hd5821258255_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5821358251_)))
                                    (_tl5821158258_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5821358251_))))
                                (if (gx#stx-pair? _tl5821158258_)
                                    (let ((_e5821658261_
                                           (gx#syntax-e _tl5821158258_)))
                                      (let ((_hd5821558265_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5821658261_)))
                                            (_tl5821458268_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5821658261_))))
                                        (if (gx#stx-pair? _tl5821458268_)
                                            (let ((_e5821958271_
                                                   (gx#syntax-e
                                                    _tl5821458268_)))
                                              (let ((_hd5821858275_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5821958271_)))
                                                    (_tl5821758278_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5821958271_))))
                                                (if (gx#stx-pair?
                                                     _tl5821758278_)
                                                    (let ((_e5822258281_
                                                           (gx#syntax-e
                                                            _tl5821758278_)))
                                                      (let ((_hd5822158285_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5822258281_)))
                    (_tl5822058288_
                     (let () (declare (not safe)) (##cdr _e5822258281_))))
                (if (gx#stx-pair? _tl5822058288_)
                    (let ((_e5822558291_ (gx#syntax-e _tl5822058288_)))
                      (let ((_hd5822458295_
                             (let ()
                               (declare (not safe))
                               (##car _e5822558291_)))
                            (_tl5822358298_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5822558291_))))
                        (if (gx#stx-pair? _tl5822358298_)
                            (let ((_e5822858301_ (gx#syntax-e _tl5822358298_)))
                              (let ((_hd5822758305_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5822858301_)))
                                    (_tl5822658308_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5822858301_))))
                                (if (gx#stx-null? _tl5822658308_)
                                    ((lambda (_L58311_
                                              _L58313_
                                              _L58314_
                                              _L58315_
                                              _L58316_
                                              _L58317_)
                                       (let ((__tmp61019
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp60861
                                              (let ((__tmp60979
                                                     (let ((__tmp61010
                                                            (let ((__tmp61018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp61011
                           (let ((__tmp61012
                                  (let ((__tmp61017
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp61013
                                         (let ((__tmp61015
                                                (let ((__tmp61016
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L58313_ '()))))
                                                  (declare (not safe))
                                                  (cons _L58315_ __tmp61016)))
                                               (__tmp61014
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58316_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61015 __tmp61014))))
                                    (declare (not safe))
                                    (cons __tmp61017 __tmp61013))))
                             (declare (not safe))
                             (cons __tmp61012 '()))))
                      (declare (not safe))
                      (cons __tmp61018 __tmp61011)))
                   (__tmp60980
                    (let ((__tmp61004
                           (let ((__tmp61009 (gx#datum->syntax '#f 'size))
                                 (__tmp61005
                                  (let ((__tmp61006
                                         (let ((__tmp61008
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp61007
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58317_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61008 __tmp61007))))
                                    (declare (not safe))
                                    (cons __tmp61006 '()))))
                             (declare (not safe))
                             (cons __tmp61009 __tmp61005)))
                          (__tmp60981
                           (let ((__tmp60996
                                  (let ((__tmp61003
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp60997
                                         (let ((__tmp60998
                                                (let ((__tmp61002
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp60999
                                                       (let ((__tmp61001
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp61000
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp61001 __tmp61000))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61002
                                                        __tmp60999))))
                                           (declare (not safe))
                                           (cons __tmp60998 '()))))
                                    (declare (not safe))
                                    (cons __tmp61003 __tmp60997)))
                                 (__tmp60982
                                  (let ((__tmp60983
                                         (let ((__tmp60995
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp60984
                                                (let ((__tmp60985
                                                       (let ((__tmp60994
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp60986
                                                              (let ((__tmp60988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60993
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp60989
                                    (let ((__tmp60992
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60990
                                           (let ((__tmp60991
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp60991 '()))))
                                      (declare (not safe))
                                      (cons __tmp60992 __tmp60990))))
                               (declare (not safe))
                               (cons __tmp60993 __tmp60989)))
                            (__tmp60987
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp60988 __tmp60987))))
                 (declare (not safe))
                 (cons __tmp60994 __tmp60986))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60985 '()))))
                                           (declare (not safe))
                                           (cons __tmp60995 __tmp60984))))
                                    (declare (not safe))
                                    (cons __tmp60983 '()))))
                             (declare (not safe))
                             (cons __tmp60996 __tmp60982))))
                      (declare (not safe))
                      (cons __tmp61004 __tmp60981))))
               (declare (not safe))
               (cons __tmp61010 __tmp60980)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60862
                                                     (let ((__tmp60863
                                                            (let ((__tmp60978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60864
                           (let ((__tmp60977 (gx#datum->syntax '#f 'loop))
                                 (__tmp60865
                                  (let ((__tmp60964
                                         (let ((__tmp60973
                                                (let ((__tmp60976
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp60974
                                                       (let ((__tmp60975
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp60975
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60976
                                                        __tmp60974)))
                                               (__tmp60965
                                                (let ((__tmp60970
                                                       (let ((__tmp60972
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp60971
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp60972 __tmp60971)))
              (__tmp60966
               (let ((__tmp60967
                      (let ((__tmp60969 (gx#datum->syntax '#f 'deleted))
                            (__tmp60968
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp60969 __tmp60968))))
                 (declare (not safe))
                 (cons __tmp60967 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60970
                                                        __tmp60966))))
                                           (declare (not safe))
                                           (cons __tmp60973 __tmp60965)))
                                        (__tmp60866
                                         (let ((__tmp60867
                                                (let ((__tmp60963
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp60868
                                                       (let ((__tmp60955
                                                              (let ((__tmp60962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp60956
                             (let ((__tmp60957
                                    (let ((__tmp60961
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp60958
                                           (let ((__tmp60959
                                                  (let ((__tmp60960
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60960 '()))))
                                             (declare (not safe))
                                             (cons _L58317_ __tmp60959))))
                                      (declare (not safe))
                                      (cons __tmp60961 __tmp60958))))
                               (declare (not safe))
                               (cons __tmp60957 '()))))
                        (declare (not safe))
                        (cons __tmp60962 __tmp60956)))
                     (__tmp60869
                      (let ((__tmp60870
                             (let ((__tmp60954 (gx#datum->syntax '#f 'cond))
                                   (__tmp60871
                                    (let ((__tmp60945
                                           (let ((__tmp60947
                                                  (let ((__tmp60953
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp60948
                                                         (let ((__tmp60952
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp60949
                        (let ((__tmp60950
                               (let ((__tmp60951
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp60951 '()))))
                          (declare (not safe))
                          (cons __tmp60950 '()))))
                   (declare (not safe))
                   (cons __tmp60952 __tmp60949))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60953
                                                          __tmp60948)))
                                                 (__tmp60946
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L58311_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60947 __tmp60946)))
                                          (__tmp60872
                                           (let ((__tmp60912
                                                  (let ((__tmp60938
                                                         (let ((__tmp60944
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp60939
                        (let ((__tmp60943 (gx#datum->syntax '#f 'k))
                              (__tmp60940
                               (let ((__tmp60941
                                      (let ((__tmp60942
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp60942 '()))))
                                 (declare (not safe))
                                 (cons __tmp60941 '()))))
                          (declare (not safe))
                          (cons __tmp60943 __tmp60940))))
                   (declare (not safe))
                   (cons __tmp60944 __tmp60939)))
                (__tmp60913
                 (let ((__tmp60914
                        (let ((__tmp60937 (gx#datum->syntax '#f 'loop))
                              (__tmp60915
                               (let ((__tmp60929
                                      (let ((__tmp60936
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp60930
                                             (let ((__tmp60935
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp60931
                                                    (let ((__tmp60934
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60932
                                                           (let ((__tmp60933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp60933 '()))))
              (declare (not safe))
              (cons __tmp60934 __tmp60932))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60935 __tmp60931))))
                                        (declare (not safe))
                                        (cons __tmp60936 __tmp60930)))
                                     (__tmp60916
                                      (let ((__tmp60924
                                             (let ((__tmp60928
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60925
                                                    (let ((__tmp60927
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60926
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60927
                                                            __tmp60926))))
                                               (declare (not safe))
                                               (cons __tmp60928 __tmp60925)))
                                            (__tmp60917
                                             (let ((__tmp60918
                                                    (let ((__tmp60923
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp60919
                                                           (let ((__tmp60922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp60920
                          (let ((__tmp60921 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp60921 '()))))
                     (declare (not safe))
                     (cons __tmp60922 __tmp60920))))
              (declare (not safe))
              (cons __tmp60923 __tmp60919))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60918 '()))))
                                        (declare (not safe))
                                        (cons __tmp60924 __tmp60917))))
                                 (declare (not safe))
                                 (cons __tmp60929 __tmp60916))))
                          (declare (not safe))
                          (cons __tmp60937 __tmp60915))))
                   (declare (not safe))
                   (cons __tmp60914 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60938
                                                          __tmp60913)))
                                                 (__tmp60873
                                                  (let ((__tmp60897
                                                         (let ((__tmp60908
                                                                (let ((__tmp60909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60910
                                      (let ((__tmp60911
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp60911 '()))))
                                 (declare (not safe))
                                 (cons _L58313_ __tmp60910))))
                          (declare (not safe))
                          (cons _L58314_ __tmp60909)))
                       (__tmp60898
                        (let ((__tmp60899
                               (let ((__tmp60907
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp60900
                                      (let ((__tmp60901
                                             (let ((__tmp60902
                                                    (let ((__tmp60906
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp60903
                                                           (let ((__tmp60905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp60904
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp60905 __tmp60904))))
              (declare (not safe))
              (cons __tmp60906 __tmp60903))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60902 '()))))
                                        (declare (not safe))
                                        (cons _L58317_ __tmp60901))))
                                 (declare (not safe))
                                 (cons __tmp60907 __tmp60900))))
                          (declare (not safe))
                          (cons __tmp60899 '()))))
                   (declare (not safe))
                   (cons __tmp60908 __tmp60898)))
                (__tmp60874
                 (let ((__tmp60875
                        (let ((__tmp60896 (gx#datum->syntax '#f 'else))
                              (__tmp60876
                               (let ((__tmp60877
                                      (let ((__tmp60895
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp60878
                                             (let ((__tmp60887
                                                    (let ((__tmp60894
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp60888
                                                           (let ((__tmp60893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp60889
                          (let ((__tmp60892 (gx#datum->syntax '#f 'i))
                                (__tmp60890
                                 (let ((__tmp60891
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp60891 '()))))
                            (declare (not safe))
                            (cons __tmp60892 __tmp60890))))
                     (declare (not safe))
                     (cons __tmp60893 __tmp60889))))
              (declare (not safe))
              (cons __tmp60894 __tmp60888)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60879
                                                    (let ((__tmp60882
                                                           (let ((__tmp60886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60883
                          (let ((__tmp60885 (gx#datum->syntax '#f 'i))
                                (__tmp60884
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60885 __tmp60884))))
                     (declare (not safe))
                     (cons __tmp60886 __tmp60883)))
                  (__tmp60880
                   (let ((__tmp60881 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp60881 '()))))
              (declare (not safe))
              (cons __tmp60882 __tmp60880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60887 __tmp60879))))
                                        (declare (not safe))
                                        (cons __tmp60895 __tmp60878))))
                                 (declare (not safe))
                                 (cons __tmp60877 '()))))
                          (declare (not safe))
                          (cons __tmp60896 __tmp60876))))
                   (declare (not safe))
                   (cons __tmp60875 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60897
                                                          __tmp60874))))
                                             (declare (not safe))
                                             (cons __tmp60912 __tmp60873))))
                                      (declare (not safe))
                                      (cons __tmp60945 __tmp60872))))
                               (declare (not safe))
                               (cons __tmp60954 __tmp60871))))
                        (declare (not safe))
                        (cons __tmp60870 '()))))
                 (declare (not safe))
                 (cons __tmp60955 __tmp60869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60963
                                                        __tmp60868))))
                                           (declare (not safe))
                                           (cons __tmp60867 '()))))
                                    (declare (not safe))
                                    (cons __tmp60964 __tmp60866))))
                             (declare (not safe))
                             (cons __tmp60977 __tmp60865))))
                      (declare (not safe))
                      (cons __tmp60978 __tmp60864))))
               (declare (not safe))
               (cons __tmp60863 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60979 __tmp60862))))
                                         (declare (not safe))
                                         (cons __tmp61019 __tmp60861)))
                                     _hd5822758305_
                                     _hd5822458295_
                                     _hd5822158285_
                                     _hd5821858275_
                                     _hd5821558265_
                                     _hd5821258255_)
                                    (_g5820058234_ _g5820158238_))))
                            (_g5820058234_ _g5820158238_))))
                    (_g5820058234_ _g5820158238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5820058234_
                                                     _g5820158238_))))
                                            (_g5820058234_ _g5820158238_))))
                                    (_g5820058234_ _g5820158238_))))
                            (_g5820058234_ _g5820158238_))))
                    (_g5820058234_ _g5820158238_)))))
        (_g5819958345_ _$stx58196_))))
  (define |[:0:]#__table-set!|
    (lambda (_$stx58349_)
      (let* ((_g5835358395_
              (lambda (_g5835458391_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5835458391_)))
             (_g5835258534_
              (lambda (_g5835458399_)
                (if (gx#stx-pair? _g5835458399_)
                    (let ((_e5836558402_ (gx#syntax-e _g5835458399_)))
                      (let ((_hd5836458406_
                             (let ()
                               (declare (not safe))
                               (##car _e5836558402_)))
                            (_tl5836358409_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5836558402_))))
                        (if (gx#stx-pair? _tl5836358409_)
                            (let ((_e5836858412_ (gx#syntax-e _tl5836358409_)))
                              (let ((_hd5836758416_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5836858412_)))
                                    (_tl5836658419_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5836858412_))))
                                (if (gx#stx-pair? _tl5836658419_)
                                    (let ((_e5837158422_
                                           (gx#syntax-e _tl5836658419_)))
                                      (let ((_hd5837058426_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5837158422_)))
                                            (_tl5836958429_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5837158422_))))
                                        (if (gx#stx-pair? _tl5836958429_)
                                            (let ((_e5837458432_
                                                   (gx#syntax-e
                                                    _tl5836958429_)))
                                              (let ((_hd5837358436_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5837458432_)))
                                                    (_tl5837258439_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5837458432_))))
                                                (if (gx#stx-pair?
                                                     _tl5837258439_)
                                                    (let ((_e5837758442_
                                                           (gx#syntax-e
                                                            _tl5837258439_)))
                                                      (let ((_hd5837658446_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5837758442_)))
                    (_tl5837558449_
                     (let () (declare (not safe)) (##cdr _e5837758442_))))
                (if (gx#stx-pair? _tl5837558449_)
                    (let ((_e5838058452_ (gx#syntax-e _tl5837558449_)))
                      (let ((_hd5837958456_
                             (let ()
                               (declare (not safe))
                               (##car _e5838058452_)))
                            (_tl5837858459_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5838058452_))))
                        (if (gx#stx-pair? _tl5837858459_)
                            (let ((_e5838358462_ (gx#syntax-e _tl5837858459_)))
                              (let ((_hd5838258466_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5838358462_)))
                                    (_tl5838158469_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5838358462_))))
                                (if (gx#stx-pair? _tl5838158469_)
                                    (let ((_e5838658472_
                                           (gx#syntax-e _tl5838158469_)))
                                      (let ((_hd5838558476_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5838658472_)))
                                            (_tl5838458479_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5838658472_))))
                                        (if (gx#stx-pair? _tl5838458479_)
                                            (let ((_e5838958482_
                                                   (gx#syntax-e
                                                    _tl5838458479_)))
                                              (let ((_hd5838858486_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5838958482_)))
                                                    (_tl5838758489_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5838958482_))))
                                                (if (gx#stx-null?
                                                     _tl5838758489_)
                                                    ((lambda (_L58492_
                                                              _L58494_
                                                              _L58495_
                                                              _L58496_
                                                              _L58497_
                                                              _L58498_
                                                              _L58499_
                                                              _L58500_)
                                                       (let ((__tmp61236
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp61020
                                                              (let ((__tmp61196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp61227
                                    (let ((__tmp61235
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp61228
                                           (let ((__tmp61229
                                                  (let ((__tmp61234
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp61230
                                                         (let ((__tmp61232
                                                                (let ((__tmp61233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L58496_ '()))))
                          (declare (not safe))
                          (cons _L58498_ __tmp61233)))
                       (__tmp61231
                        (let () (declare (not safe)) (cons _L58499_ '()))))
                   (declare (not safe))
                   (cons __tmp61232 __tmp61231))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61234
                                                          __tmp61230))))
                                             (declare (not safe))
                                             (cons __tmp61229 '()))))
                                      (declare (not safe))
                                      (cons __tmp61235 __tmp61228)))
                                   (__tmp61197
                                    (let ((__tmp61221
                                           (let ((__tmp61226
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp61222
                                                  (let ((__tmp61223
                                                         (let ((__tmp61225
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp61224
                        (let () (declare (not safe)) (cons _L58500_ '()))))
                   (declare (not safe))
                   (cons __tmp61225 __tmp61224))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61223 '()))))
                                             (declare (not safe))
                                             (cons __tmp61226 __tmp61222)))
                                          (__tmp61198
                                           (let ((__tmp61213
                                                  (let ((__tmp61220
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp61214
                                                         (let ((__tmp61215
                                                                (let ((__tmp61219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp61216
                               (let ((__tmp61218 (gx#datum->syntax '#f 'size))
                                     (__tmp61217
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp61218 __tmp61217))))
                          (declare (not safe))
                          (cons __tmp61219 __tmp61216))))
                   (declare (not safe))
                   (cons __tmp61215 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61220
                                                          __tmp61214)))
                                                 (__tmp61199
                                                  (let ((__tmp61200
                                                         (let ((__tmp61212
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp61201
                        (let ((__tmp61202
                               (let ((__tmp61211
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp61203
                                      (let ((__tmp61205
                                             (let ((__tmp61210
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp61206
                                                    (let ((__tmp61209
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp61207
                                                           (let ((__tmp61208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp61208 '()))))
              (declare (not safe))
              (cons __tmp61209 __tmp61207))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61210 __tmp61206)))
                                            (__tmp61204
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp61205 __tmp61204))))
                                 (declare (not safe))
                                 (cons __tmp61211 __tmp61203))))
                          (declare (not safe))
                          (cons __tmp61202 '()))))
                   (declare (not safe))
                   (cons __tmp61212 __tmp61201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61200 '()))))
                                             (declare (not safe))
                                             (cons __tmp61213 __tmp61199))))
                                      (declare (not safe))
                                      (cons __tmp61221 __tmp61198))))
                               (declare (not safe))
                               (cons __tmp61227 __tmp61197)))
                            (__tmp61021
                             (let ((__tmp61022
                                    (let ((__tmp61195
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp61023
                                           (let ((__tmp61194
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp61024
                                                  (let ((__tmp61181
                                                         (let ((__tmp61190
                                                                (let ((__tmp61193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp61191
                               (let ((__tmp61192
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp61192 '()))))
                          (declare (not safe))
                          (cons __tmp61193 __tmp61191)))
                       (__tmp61182
                        (let ((__tmp61187
                               (let ((__tmp61189 (gx#datum->syntax '#f 'i))
                                     (__tmp61188
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp61189 __tmp61188)))
                              (__tmp61183
                               (let ((__tmp61184
                                      (let ((__tmp61186
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp61185
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp61186 __tmp61185))))
                                 (declare (not safe))
                                 (cons __tmp61184 '()))))
                          (declare (not safe))
                          (cons __tmp61187 __tmp61183))))
                   (declare (not safe))
                   (cons __tmp61190 __tmp61182)))
                (__tmp61025
                 (let ((__tmp61026
                        (let ((__tmp61180 (gx#datum->syntax '#f 'let))
                              (__tmp61027
                               (let ((__tmp61172
                                      (let ((__tmp61179
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp61173
                                             (let ((__tmp61174
                                                    (let ((__tmp61178
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp61175
                                                           (let ((__tmp61176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp61177 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp61177 '()))))
                     (declare (not safe))
                     (cons _L58500_ __tmp61176))))
              (declare (not safe))
              (cons __tmp61178 __tmp61175))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61174 '()))))
                                        (declare (not safe))
                                        (cons __tmp61179 __tmp61173)))
                                     (__tmp61028
                                      (let ((__tmp61029
                                             (let ((__tmp61171
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp61030
                                                    (let ((__tmp61112
                                                           (let ((__tmp61164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp61170 (gx#datum->syntax '#f 'eq?))
                                (__tmp61165
                                 (let ((__tmp61169 (gx#datum->syntax '#f 'k))
                                       (__tmp61166
                                        (let ((__tmp61167
                                               (let ((__tmp61168
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp61168 '()))))
                                          (declare (not safe))
                                          (cons __tmp61167 '()))))
                                   (declare (not safe))
                                   (cons __tmp61169 __tmp61166))))
                            (declare (not safe))
                            (cons __tmp61170 __tmp61165)))
                         (__tmp61113
                          (let ((__tmp61114
                                 (let ((__tmp61163 (gx#datum->syntax '#f 'if))
                                       (__tmp61115
                                        (let ((__tmp61162
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp61116
                                               (let ((__tmp61140
                                                      (let ((__tmp61161
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp61141
                                                             (let ((__tmp61155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp61160
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp61156
                                   (let ((__tmp61157
                                          (let ((__tmp61159
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp61158
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58496_ '()))))
                                            (declare (not safe))
                                            (cons __tmp61159 __tmp61158))))
                                     (declare (not safe))
                                     (cons _L58500_ __tmp61157))))
                              (declare (not safe))
                              (cons __tmp61160 __tmp61156)))
                           (__tmp61142
                            (let ((__tmp61145
                                   (let ((__tmp61154
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp61146
                                          (let ((__tmp61147
                                                 (let ((__tmp61149
                                                        (let ((__tmp61153
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp61150
                                                               (let ((__tmp61152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp61151
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp61152 __tmp61151))))
                  (declare (not safe))
                  (cons __tmp61153 __tmp61150)))
               (__tmp61148 (let () (declare (not safe)) (cons _L58495_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp61149
                                                         __tmp61148))))
                                            (declare (not safe))
                                            (cons _L58500_ __tmp61147))))
                                     (declare (not safe))
                                     (cons __tmp61154 __tmp61146)))
                                  (__tmp61143
                                   (let ((__tmp61144
                                          (let ()
                                            (declare (not safe))
                                            (cons _L58492_ '()))))
                                     (declare (not safe))
                                     (cons __tmp61144 '()))))
                              (declare (not safe))
                              (cons __tmp61145 __tmp61143))))
                       (declare (not safe))
                       (cons __tmp61155 __tmp61142))))
                (declare (not safe))
                (cons __tmp61161 __tmp61141)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp61117
                                                      (let ((__tmp61118
                                                             (let ((__tmp61139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp61119
                            (let ((__tmp61133
                                   (let ((__tmp61138
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp61134
                                          (let ((__tmp61135
                                                 (let ((__tmp61137
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp61136
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L58496_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp61137
                                                         __tmp61136))))
                                            (declare (not safe))
                                            (cons _L58500_ __tmp61135))))
                                     (declare (not safe))
                                     (cons __tmp61138 __tmp61134)))
                                  (__tmp61120
                                   (let ((__tmp61123
                                          (let ((__tmp61132
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp61124
                                                 (let ((__tmp61125
                                                        (let ((__tmp61127
                                                               (let ((__tmp61131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp61128
                              (let ((__tmp61130 (gx#datum->syntax '#f 'probe))
                                    (__tmp61129
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp61130 __tmp61129))))
                         (declare (not safe))
                         (cons __tmp61131 __tmp61128)))
                      (__tmp61126
                       (let () (declare (not safe)) (cons _L58495_ '()))))
                  (declare (not safe))
                  (cons __tmp61127 __tmp61126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L58500_
                                                         __tmp61125))))
                                            (declare (not safe))
                                            (cons __tmp61132 __tmp61124)))
                                         (__tmp61121
                                          (let ((__tmp61122
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58494_ '()))))
                                            (declare (not safe))
                                            (cons __tmp61122 '()))))
                                     (declare (not safe))
                                     (cons __tmp61123 __tmp61121))))
                              (declare (not safe))
                              (cons __tmp61133 __tmp61120))))
                       (declare (not safe))
                       (cons __tmp61139 __tmp61119))))
                (declare (not safe))
                (cons __tmp61118 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp61140
                                                       __tmp61117))))
                                          (declare (not safe))
                                          (cons __tmp61162 __tmp61116))))
                                   (declare (not safe))
                                   (cons __tmp61163 __tmp61115))))
                            (declare (not safe))
                            (cons __tmp61114 '()))))
                     (declare (not safe))
                     (cons __tmp61164 __tmp61113)))
                  (__tmp61031
                   (let ((__tmp61079
                          (let ((__tmp61105
                                 (let ((__tmp61111 (gx#datum->syntax '#f 'eq?))
                                       (__tmp61106
                                        (let ((__tmp61110
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp61107
                                               (let ((__tmp61108
                                                      (let ((__tmp61109
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp61109
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp61108 '()))))
                                          (declare (not safe))
                                          (cons __tmp61110 __tmp61107))))
                                   (declare (not safe))
                                   (cons __tmp61111 __tmp61106)))
                                (__tmp61080
                                 (let ((__tmp61081
                                        (let ((__tmp61104
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp61082
                                               (let ((__tmp61096
                                                      (let ((__tmp61103
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp61097
                                                             (let ((__tmp61102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp61098
                            (let ((__tmp61101 (gx#datum->syntax '#f 'i))
                                  (__tmp61099
                                   (let ((__tmp61100
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp61100 '()))))
                              (declare (not safe))
                              (cons __tmp61101 __tmp61099))))
                       (declare (not safe))
                       (cons __tmp61102 __tmp61098))))
                (declare (not safe))
                (cons __tmp61103 __tmp61097)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp61083
                                                      (let ((__tmp61091
                                                             (let ((__tmp61095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp61092
                            (let ((__tmp61094 (gx#datum->syntax '#f 'i))
                                  (__tmp61093
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp61094 __tmp61093))))
                       (declare (not safe))
                       (cons __tmp61095 __tmp61092)))
                    (__tmp61084
                     (let ((__tmp61085
                            (let ((__tmp61090 (gx#datum->syntax '#f 'or))
                                  (__tmp61086
                                   (let ((__tmp61089
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp61087
                                          (let ((__tmp61088
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp61088 '()))))
                                     (declare (not safe))
                                     (cons __tmp61089 __tmp61087))))
                              (declare (not safe))
                              (cons __tmp61090 __tmp61086))))
                       (declare (not safe))
                       (cons __tmp61085 '()))))
                (declare (not safe))
                (cons __tmp61091 __tmp61084))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp61096
                                                       __tmp61083))))
                                          (declare (not safe))
                                          (cons __tmp61104 __tmp61082))))
                                   (declare (not safe))
                                   (cons __tmp61081 '()))))
                            (declare (not safe))
                            (cons __tmp61105 __tmp61080)))
                         (__tmp61032
                          (let ((__tmp61056
                                 (let ((__tmp61075
                                        (let ((__tmp61076
                                               (let ((__tmp61077
                                                      (let ((__tmp61078
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp61078
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L58496_ __tmp61077))))
                                          (declare (not safe))
                                          (cons _L58497_ __tmp61076)))
                                       (__tmp61057
                                        (let ((__tmp61069
                                               (let ((__tmp61074
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp61070
                                                      (let ((__tmp61071
                                                             (let ((__tmp61073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp61072
                            (let () (declare (not safe)) (cons _L58496_ '()))))
                       (declare (not safe))
                       (cons __tmp61073 __tmp61072))))
                (declare (not safe))
                (cons _L58500_ __tmp61071))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp61074 __tmp61070)))
                                              (__tmp61058
                                               (let ((__tmp61059
                                                      (let ((__tmp61068
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp61060
                                                             (let ((__tmp61061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp61063
                                   (let ((__tmp61067
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp61064
                                          (let ((__tmp61066
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp61065
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp61066 __tmp61065))))
                                     (declare (not safe))
                                     (cons __tmp61067 __tmp61064)))
                                  (__tmp61062
                                   (let ()
                                     (declare (not safe))
                                     (cons _L58495_ '()))))
                              (declare (not safe))
                              (cons __tmp61063 __tmp61062))))
                       (declare (not safe))
                       (cons _L58500_ __tmp61061))))
                (declare (not safe))
                (cons __tmp61068 __tmp61060))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp61059 '()))))
                                          (declare (not safe))
                                          (cons __tmp61069 __tmp61058))))
                                   (declare (not safe))
                                   (cons __tmp61075 __tmp61057)))
                                (__tmp61033
                                 (let ((__tmp61034
                                        (let ((__tmp61055
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp61035
                                               (let ((__tmp61036
                                                      (let ((__tmp61054
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp61037
                                                             (let ((__tmp61046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp61053
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp61047
                                   (let ((__tmp61052
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp61048
                                          (let ((__tmp61051
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp61049
                                                 (let ((__tmp61050
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp61050 '()))))
                                            (declare (not safe))
                                            (cons __tmp61051 __tmp61049))))
                                     (declare (not safe))
                                     (cons __tmp61052 __tmp61048))))
                              (declare (not safe))
                              (cons __tmp61053 __tmp61047)))
                           (__tmp61038
                            (let ((__tmp61041
                                   (let ((__tmp61045
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp61042
                                          (let ((__tmp61044
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp61043
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp61044 __tmp61043))))
                                     (declare (not safe))
                                     (cons __tmp61045 __tmp61042)))
                                  (__tmp61039
                                   (let ((__tmp61040
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp61040 '()))))
                              (declare (not safe))
                              (cons __tmp61041 __tmp61039))))
                       (declare (not safe))
                       (cons __tmp61046 __tmp61038))))
                (declare (not safe))
                (cons __tmp61054 __tmp61037))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp61036 '()))))
                                          (declare (not safe))
                                          (cons __tmp61055 __tmp61035))))
                                   (declare (not safe))
                                   (cons __tmp61034 '()))))
                            (declare (not safe))
                            (cons __tmp61056 __tmp61033))))
                     (declare (not safe))
                     (cons __tmp61079 __tmp61032))))
              (declare (not safe))
              (cons __tmp61112 __tmp61031))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61171 __tmp61030))))
                                        (declare (not safe))
                                        (cons __tmp61029 '()))))
                                 (declare (not safe))
                                 (cons __tmp61172 __tmp61028))))
                          (declare (not safe))
                          (cons __tmp61180 __tmp61027))))
                   (declare (not safe))
                   (cons __tmp61026 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61181
                                                          __tmp61025))))
                                             (declare (not safe))
                                             (cons __tmp61194 __tmp61024))))
                                      (declare (not safe))
                                      (cons __tmp61195 __tmp61023))))
                               (declare (not safe))
                               (cons __tmp61022 '()))))
                        (declare (not safe))
                        (cons __tmp61196 __tmp61021))))
                 (declare (not safe))
                 (cons __tmp61236 __tmp61020)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5838858486_
                                                     _hd5838558476_
                                                     _hd5838258466_
                                                     _hd5837958456_
                                                     _hd5837658446_
                                                     _hd5837358436_
                                                     _hd5837058426_
                                                     _hd5836758416_)
                                                    (_g5835358395_
                                                     _g5835458399_))))
                                            (_g5835358395_ _g5835458399_))))
                                    (_g5835358395_ _g5835458399_))))
                            (_g5835358395_ _g5835458399_))))
                    (_g5835358395_ _g5835458399_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5835358395_
                                                     _g5835458399_))))
                                            (_g5835358395_ _g5835458399_))))
                                    (_g5835358395_ _g5835458399_))))
                            (_g5835358395_ _g5835458399_))))
                    (_g5835358395_ _g5835458399_)))))
        (_g5835258534_ _$stx58349_))))
  (define |[:0:]#__table-update!|
    (lambda (_$stx58538_)
      (let* ((_g5854258588_
              (lambda (_g5854358584_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5854358584_)))
             (_g5854158741_
              (lambda (_g5854358592_)
                (if (gx#stx-pair? _g5854358592_)
                    (let ((_e5855558595_ (gx#syntax-e _g5854358592_)))
                      (let ((_hd5855458599_
                             (let ()
                               (declare (not safe))
                               (##car _e5855558595_)))
                            (_tl5855358602_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5855558595_))))
                        (if (gx#stx-pair? _tl5855358602_)
                            (let ((_e5855858605_ (gx#syntax-e _tl5855358602_)))
                              (let ((_hd5855758609_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5855858605_)))
                                    (_tl5855658612_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5855858605_))))
                                (if (gx#stx-pair? _tl5855658612_)
                                    (let ((_e5856158615_
                                           (gx#syntax-e _tl5855658612_)))
                                      (let ((_hd5856058619_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5856158615_)))
                                            (_tl5855958622_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5856158615_))))
                                        (if (gx#stx-pair? _tl5855958622_)
                                            (let ((_e5856458625_
                                                   (gx#syntax-e
                                                    _tl5855958622_)))
                                              (let ((_hd5856358629_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5856458625_)))
                                                    (_tl5856258632_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5856458625_))))
                                                (if (gx#stx-pair?
                                                     _tl5856258632_)
                                                    (let ((_e5856758635_
                                                           (gx#syntax-e
                                                            _tl5856258632_)))
                                                      (let ((_hd5856658639_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5856758635_)))
                    (_tl5856558642_
                     (let () (declare (not safe)) (##cdr _e5856758635_))))
                (if (gx#stx-pair? _tl5856558642_)
                    (let ((_e5857058645_ (gx#syntax-e _tl5856558642_)))
                      (let ((_hd5856958649_
                             (let ()
                               (declare (not safe))
                               (##car _e5857058645_)))
                            (_tl5856858652_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5857058645_))))
                        (if (gx#stx-pair? _tl5856858652_)
                            (let ((_e5857358655_ (gx#syntax-e _tl5856858652_)))
                              (let ((_hd5857258659_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5857358655_)))
                                    (_tl5857158662_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5857358655_))))
                                (if (gx#stx-pair? _tl5857158662_)
                                    (let ((_e5857658665_
                                           (gx#syntax-e _tl5857158662_)))
                                      (let ((_hd5857558669_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5857658665_)))
                                            (_tl5857458672_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5857658665_))))
                                        (if (gx#stx-pair? _tl5857458672_)
                                            (let ((_e5857958675_
                                                   (gx#syntax-e
                                                    _tl5857458672_)))
                                              (let ((_hd5857858679_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5857958675_)))
                                                    (_tl5857758682_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5857958675_))))
                                                (if (gx#stx-pair?
                                                     _tl5857758682_)
                                                    (let ((_e5858258685_
                                                           (gx#syntax-e
                                                            _tl5857758682_)))
                                                      (let ((_hd5858158689_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5858258685_)))
                    (_tl5858058692_
                     (let () (declare (not safe)) (##cdr _e5858258685_))))
                (if (gx#stx-null? _tl5858058692_)
                    ((lambda (_L58695_
                              _L58697_
                              _L58698_
                              _L58699_
                              _L58700_
                              _L58701_
                              _L58702_
                              _L58703_
                              _L58704_)
                       (let ((__tmp61468 (gx#datum->syntax '#f 'let*))
                             (__tmp61237
                              (let ((__tmp61428
                                     (let ((__tmp61459
                                            (let ((__tmp61467
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp61460
                                                   (let ((__tmp61461
                                                          (let ((__tmp61466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'fxxor))
                        (__tmp61462
                         (let ((__tmp61464
                                (let ((__tmp61465
                                       (let ()
                                         (declare (not safe))
                                         (cons _L58700_ '()))))
                                  (declare (not safe))
                                  (cons _L58702_ __tmp61465)))
                               (__tmp61463
                                (let ()
                                  (declare (not safe))
                                  (cons _L58703_ '()))))
                           (declare (not safe))
                           (cons __tmp61464 __tmp61463))))
                    (declare (not safe))
                    (cons __tmp61466 __tmp61462))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61461 '()))))
                                              (declare (not safe))
                                              (cons __tmp61467 __tmp61460)))
                                           (__tmp61429
                                            (let ((__tmp61453
                                                   (let ((__tmp61458
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size))
                                                         (__tmp61454
                                                          (let ((__tmp61455
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61457
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp61456
                                (let ()
                                  (declare (not safe))
                                  (cons _L58704_ '()))))
                           (declare (not safe))
                           (cons __tmp61457 __tmp61456))))
                    (declare (not safe))
                    (cons __tmp61455 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61458
                                                           __tmp61454)))
                                                  (__tmp61430
                                                   (let ((__tmp61445
                                                          (let ((__tmp61452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'entries))
                        (__tmp61446
                         (let ((__tmp61447
                                (let ((__tmp61451
                                       (gx#datum->syntax '#f 'fxquotient))
                                      (__tmp61448
                                       (let ((__tmp61450
                                              (gx#datum->syntax '#f 'size))
                                             (__tmp61449
                                              (let ()
                                                (declare (not safe))
                                                (cons '2 '()))))
                                         (declare (not safe))
                                         (cons __tmp61450 __tmp61449))))
                                  (declare (not safe))
                                  (cons __tmp61451 __tmp61448))))
                           (declare (not safe))
                           (cons __tmp61447 '()))))
                    (declare (not safe))
                    (cons __tmp61452 __tmp61446)))
                 (__tmp61431
                  (let ((__tmp61432
                         (let ((__tmp61444 (gx#datum->syntax '#f 'start))
                               (__tmp61433
                                (let ((__tmp61434
                                       (let ((__tmp61443
                                              (gx#datum->syntax
                                               '#f
                                               'fxarithmetic-shift-left))
                                             (__tmp61435
                                              (let ((__tmp61437
                                                     (let ((__tmp61442
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fxmodulo))
                                                           (__tmp61438
                                                            (let ((__tmp61441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp61439
                           (let ((__tmp61440 (gx#datum->syntax '#f 'entries)))
                             (declare (not safe))
                             (cons __tmp61440 '()))))
                      (declare (not safe))
                      (cons __tmp61441 __tmp61439))))
               (declare (not safe))
               (cons __tmp61442 __tmp61438)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp61436
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '1 '()))))
                                                (declare (not safe))
                                                (cons __tmp61437 __tmp61436))))
                                         (declare (not safe))
                                         (cons __tmp61443 __tmp61435))))
                                  (declare (not safe))
                                  (cons __tmp61434 '()))))
                           (declare (not safe))
                           (cons __tmp61444 __tmp61433))))
                    (declare (not safe))
                    (cons __tmp61432 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61445
                                                           __tmp61431))))
                                              (declare (not safe))
                                              (cons __tmp61453 __tmp61430))))
                                       (declare (not safe))
                                       (cons __tmp61459 __tmp61429)))
                                    (__tmp61238
                                     (let ((__tmp61239
                                            (let ((__tmp61427
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp61240
                                                   (let ((__tmp61426
                                                          (gx#datum->syntax
                                                           '#f
                                                           'loop))
                                                         (__tmp61241
                                                          (let ((__tmp61413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61422
                                (let ((__tmp61425
                                       (gx#datum->syntax '#f 'probe))
                                      (__tmp61423
                                       (let ((__tmp61424
                                              (gx#datum->syntax '#f 'start)))
                                         (declare (not safe))
                                         (cons __tmp61424 '()))))
                                  (declare (not safe))
                                  (cons __tmp61425 __tmp61423)))
                               (__tmp61414
                                (let ((__tmp61419
                                       (let ((__tmp61421
                                              (gx#datum->syntax '#f 'i))
                                             (__tmp61420
                                              (let ()
                                                (declare (not safe))
                                                (cons '1 '()))))
                                         (declare (not safe))
                                         (cons __tmp61421 __tmp61420)))
                                      (__tmp61415
                                       (let ((__tmp61416
                                              (let ((__tmp61418
                                                     (gx#datum->syntax
                                                      '#f
                                                      'deleted))
                                                    (__tmp61417
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons __tmp61418 __tmp61417))))
                                         (declare (not safe))
                                         (cons __tmp61416 '()))))
                                  (declare (not safe))
                                  (cons __tmp61419 __tmp61415))))
                           (declare (not safe))
                           (cons __tmp61422 __tmp61414)))
                        (__tmp61242
                         (let ((__tmp61243
                                (let ((__tmp61412 (gx#datum->syntax '#f 'let))
                                      (__tmp61244
                                       (let ((__tmp61404
                                              (let ((__tmp61411
                                                     (gx#datum->syntax '#f 'k))
                                                    (__tmp61405
                                                     (let ((__tmp61406
                                                            (let ((__tmp61410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-ref))
                          (__tmp61407
                           (let ((__tmp61408
                                  (let ((__tmp61409
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp61409 '()))))
                             (declare (not safe))
                             (cons _L58704_ __tmp61408))))
                      (declare (not safe))
                      (cons __tmp61410 __tmp61407))))
               (declare (not safe))
               (cons __tmp61406 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61411 __tmp61405)))
                                             (__tmp61245
                                              (let ((__tmp61246
                                                     (let ((__tmp61403
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cond))
                                                           (__tmp61247
                                                            (let ((__tmp61340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp61396
                                  (let ((__tmp61402
                                         (gx#datum->syntax '#f 'eq?))
                                        (__tmp61397
                                         (let ((__tmp61401
                                                (gx#datum->syntax '#f 'k))
                                               (__tmp61398
                                                (let ((__tmp61399
                                                       (let ((__tmp61400
                                                              (gx#datum->syntax
                                                               '#f
                                                               'macro-unused-obj)))
                                                         (declare (not safe))
                                                         (cons __tmp61400
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp61399 '()))))
                                           (declare (not safe))
                                           (cons __tmp61401 __tmp61398))))
                                    (declare (not safe))
                                    (cons __tmp61402 __tmp61397)))
                                 (__tmp61341
                                  (let ((__tmp61342
                                         (let ((__tmp61395
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp61343
                                                (let ((__tmp61394
                                                       (gx#datum->syntax
                                                        '#f
                                                        'deleted))
                                                      (__tmp61344
                                                       (let ((__tmp61370
                                                              (let ((__tmp61393
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin))
                            (__tmp61371
                             (let ((__tmp61387
                                    (let ((__tmp61392
                                           (gx#datum->syntax '#f 'vector-set!))
                                          (__tmp61388
                                           (let ((__tmp61389
                                                  (let ((__tmp61391
                                                         (gx#datum->syntax
                                                          '#f
                                                          'deleted))
                                                        (__tmp61390
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61391
                                                          __tmp61390))))
                                             (declare (not safe))
                                             (cons _L58704_ __tmp61389))))
                                      (declare (not safe))
                                      (cons __tmp61392 __tmp61388)))
                                   (__tmp61372
                                    (let ((__tmp61375
                                           (let ((__tmp61386
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp61376
                                                  (let ((__tmp61377
                                                         (let ((__tmp61381
                                                                (let ((__tmp61385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fx+))
                              (__tmp61382
                               (let ((__tmp61384
                                      (gx#datum->syntax '#f 'deleted))
                                     (__tmp61383
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp61384 __tmp61383))))
                          (declare (not safe))
                          (cons __tmp61385 __tmp61382)))
                       (__tmp61378
                        (let ((__tmp61379
                               (let ((__tmp61380
                                      (let ()
                                        (declare (not safe))
                                        (cons _L58698_ '()))))
                                 (declare (not safe))
                                 (cons _L58699_ __tmp61380))))
                          (declare (not safe))
                          (cons __tmp61379 '()))))
                   (declare (not safe))
                   (cons __tmp61381 __tmp61378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58704_
                                                          __tmp61377))))
                                             (declare (not safe))
                                             (cons __tmp61386 __tmp61376)))
                                          (__tmp61373
                                           (let ((__tmp61374
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L58695_ '()))))
                                             (declare (not safe))
                                             (cons __tmp61374 '()))))
                                      (declare (not safe))
                                      (cons __tmp61375 __tmp61373))))
                               (declare (not safe))
                               (cons __tmp61387 __tmp61372))))
                        (declare (not safe))
                        (cons __tmp61393 __tmp61371)))
                     (__tmp61345
                      (let ((__tmp61346
                             (let ((__tmp61369 (gx#datum->syntax '#f 'begin))
                                   (__tmp61347
                                    (let ((__tmp61363
                                           (let ((__tmp61368
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp61364
                                                  (let ((__tmp61365
                                                         (let ((__tmp61367
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe))
                       (__tmp61366
                        (let () (declare (not safe)) (cons _L58700_ '()))))
                   (declare (not safe))
                   (cons __tmp61367 __tmp61366))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58704_
                                                          __tmp61365))))
                                             (declare (not safe))
                                             (cons __tmp61368 __tmp61364)))
                                          (__tmp61348
                                           (let ((__tmp61351
                                                  (let ((__tmp61362
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-set!))
                                                        (__tmp61352
                                                         (let ((__tmp61353
                                                                (let ((__tmp61357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp61361 (gx#datum->syntax '#f 'fx+))
                                     (__tmp61358
                                      (let ((__tmp61360
                                             (gx#datum->syntax '#f 'probe))
                                            (__tmp61359
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp61360 __tmp61359))))
                                 (declare (not safe))
                                 (cons __tmp61361 __tmp61358)))
                              (__tmp61354
                               (let ((__tmp61355
                                      (let ((__tmp61356
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58698_ '()))))
                                        (declare (not safe))
                                        (cons _L58699_ __tmp61356))))
                                 (declare (not safe))
                                 (cons __tmp61355 '()))))
                          (declare (not safe))
                          (cons __tmp61357 __tmp61354))))
                   (declare (not safe))
                   (cons _L58704_ __tmp61353))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61362
                                                          __tmp61352)))
                                                 (__tmp61349
                                                  (let ((__tmp61350
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61350 '()))))
                                             (declare (not safe))
                                             (cons __tmp61351 __tmp61349))))
                                      (declare (not safe))
                                      (cons __tmp61363 __tmp61348))))
                               (declare (not safe))
                               (cons __tmp61369 __tmp61347))))
                        (declare (not safe))
                        (cons __tmp61346 '()))))
                 (declare (not safe))
                 (cons __tmp61370 __tmp61345))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61394
                                                        __tmp61344))))
                                           (declare (not safe))
                                           (cons __tmp61395 __tmp61343))))
                                    (declare (not safe))
                                    (cons __tmp61342 '()))))
                             (declare (not safe))
                             (cons __tmp61396 __tmp61341)))
                          (__tmp61248
                           (let ((__tmp61307
                                  (let ((__tmp61333
                                         (let ((__tmp61339
                                                (gx#datum->syntax '#f 'eq?))
                                               (__tmp61334
                                                (let ((__tmp61338
                                                       (gx#datum->syntax
                                                        '#f
                                                        'k))
                                                      (__tmp61335
                                                       (let ((__tmp61336
                                                              (let ((__tmp61337
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'macro-deleted-obj)))
                        (declare (not safe))
                        (cons __tmp61337 '()))))
                 (declare (not safe))
                 (cons __tmp61336 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61338
                                                        __tmp61335))))
                                           (declare (not safe))
                                           (cons __tmp61339 __tmp61334)))
                                        (__tmp61308
                                         (let ((__tmp61309
                                                (let ((__tmp61332
                                                       (gx#datum->syntax
                                                        '#f
                                                        'loop))
                                                      (__tmp61310
                                                       (let ((__tmp61324
                                                              (let ((__tmp61331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe-step))
                            (__tmp61325
                             (let ((__tmp61330 (gx#datum->syntax '#f 'start))
                                   (__tmp61326
                                    (let ((__tmp61329
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp61327
                                           (let ((__tmp61328
                                                  (gx#datum->syntax
                                                   '#f
                                                   'size)))
                                             (declare (not safe))
                                             (cons __tmp61328 '()))))
                                      (declare (not safe))
                                      (cons __tmp61329 __tmp61327))))
                               (declare (not safe))
                               (cons __tmp61330 __tmp61326))))
                        (declare (not safe))
                        (cons __tmp61331 __tmp61325)))
                     (__tmp61311
                      (let ((__tmp61319
                             (let ((__tmp61323 (gx#datum->syntax '#f 'fx+))
                                   (__tmp61320
                                    (let ((__tmp61322
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp61321
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp61322 __tmp61321))))
                               (declare (not safe))
                               (cons __tmp61323 __tmp61320)))
                            (__tmp61312
                             (let ((__tmp61313
                                    (let ((__tmp61318
                                           (gx#datum->syntax '#f 'or))
                                          (__tmp61314
                                           (let ((__tmp61317
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted))
                                                 (__tmp61315
                                                  (let ((__tmp61316
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp61316 '()))))
                                             (declare (not safe))
                                             (cons __tmp61317 __tmp61315))))
                                      (declare (not safe))
                                      (cons __tmp61318 __tmp61314))))
                               (declare (not safe))
                               (cons __tmp61313 '()))))
                        (declare (not safe))
                        (cons __tmp61319 __tmp61312))))
                 (declare (not safe))
                 (cons __tmp61324 __tmp61311))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61332
                                                        __tmp61310))))
                                           (declare (not safe))
                                           (cons __tmp61309 '()))))
                                    (declare (not safe))
                                    (cons __tmp61333 __tmp61308)))
                                 (__tmp61249
                                  (let ((__tmp61273
                                         (let ((__tmp61303
                                                (let ((__tmp61304
                                                       (let ((__tmp61305
                                                              (let ((__tmp61306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k)))
                        (declare (not safe))
                        (cons __tmp61306 '()))))
                 (declare (not safe))
                 (cons _L58700_ __tmp61305))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L58701_ __tmp61304)))
                                               (__tmp61274
                                                (let ((__tmp61297
                                                       (let ((__tmp61302
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-set!))
                                                             (__tmp61298
                                                              (let ((__tmp61299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp61301 (gx#datum->syntax '#f 'probe))
                                   (__tmp61300
                                    (let ()
                                      (declare (not safe))
                                      (cons _L58700_ '()))))
                               (declare (not safe))
                               (cons __tmp61301 __tmp61300))))
                        (declare (not safe))
                        (cons _L58704_ __tmp61299))))
                 (declare (not safe))
                 (cons __tmp61302 __tmp61298)))
              (__tmp61275
               (let ((__tmp61276
                      (let ((__tmp61296 (gx#datum->syntax '#f 'vector-set!))
                            (__tmp61277
                             (let ((__tmp61278
                                    (let ((__tmp61291
                                           (let ((__tmp61295
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp61292
                                                  (let ((__tmp61294
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe))
                                                        (__tmp61293
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp61294
                                                          __tmp61293))))
                                             (declare (not safe))
                                             (cons __tmp61295 __tmp61292)))
                                          (__tmp61279
                                           (let ((__tmp61280
                                                  (let ((__tmp61281
                                                         (let ((__tmp61282
                                                                (let ((__tmp61290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'vector-ref))
                              (__tmp61283
                               (let ((__tmp61284
                                      (let ((__tmp61285
                                             (let ((__tmp61289
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp61286
                                                    (let ((__tmp61288
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp61287
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp61288
                                                            __tmp61287))))
                                               (declare (not safe))
                                               (cons __tmp61289 __tmp61286))))
                                        (declare (not safe))
                                        (cons __tmp61285 '()))))
                                 (declare (not safe))
                                 (cons _L58704_ __tmp61284))))
                          (declare (not safe))
                          (cons __tmp61290 __tmp61283))))
                   (declare (not safe))
                   (cons __tmp61282 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58699_
                                                          __tmp61281))))
                                             (declare (not safe))
                                             (cons __tmp61280 '()))))
                                      (declare (not safe))
                                      (cons __tmp61291 __tmp61279))))
                               (declare (not safe))
                               (cons _L58704_ __tmp61278))))
                        (declare (not safe))
                        (cons __tmp61296 __tmp61277))))
                 (declare (not safe))
                 (cons __tmp61276 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61297
                                                        __tmp61275))))
                                           (declare (not safe))
                                           (cons __tmp61303 __tmp61274)))
                                        (__tmp61250
                                         (let ((__tmp61251
                                                (let ((__tmp61272
                                                       (gx#datum->syntax
                                                        '#f
                                                        'else))
                                                      (__tmp61252
                                                       (let ((__tmp61253
                                                              (let ((__tmp61271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'loop))
                            (__tmp61254
                             (let ((__tmp61263
                                    (let ((__tmp61270
                                           (gx#datum->syntax '#f 'probe-step))
                                          (__tmp61264
                                           (let ((__tmp61269
                                                  (gx#datum->syntax
                                                   '#f
                                                   'start))
                                                 (__tmp61265
                                                  (let ((__tmp61268
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp61266
                                                         (let ((__tmp61267
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'size)))
                   (declare (not safe))
                   (cons __tmp61267 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61268
                                                          __tmp61266))))
                                             (declare (not safe))
                                             (cons __tmp61269 __tmp61265))))
                                      (declare (not safe))
                                      (cons __tmp61270 __tmp61264)))
                                   (__tmp61255
                                    (let ((__tmp61258
                                           (let ((__tmp61262
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp61259
                                                  (let ((__tmp61261
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp61260
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp61261
                                                          __tmp61260))))
                                             (declare (not safe))
                                             (cons __tmp61262 __tmp61259)))
                                          (__tmp61256
                                           (let ((__tmp61257
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted)))
                                             (declare (not safe))
                                             (cons __tmp61257 '()))))
                                      (declare (not safe))
                                      (cons __tmp61258 __tmp61256))))
                               (declare (not safe))
                               (cons __tmp61263 __tmp61255))))
                        (declare (not safe))
                        (cons __tmp61271 __tmp61254))))
                 (declare (not safe))
                 (cons __tmp61253 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61272
                                                        __tmp61252))))
                                           (declare (not safe))
                                           (cons __tmp61251 '()))))
                                    (declare (not safe))
                                    (cons __tmp61273 __tmp61250))))
                             (declare (not safe))
                             (cons __tmp61307 __tmp61249))))
                      (declare (not safe))
                      (cons __tmp61340 __tmp61248))))
               (declare (not safe))
               (cons __tmp61403 __tmp61247))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61246 '()))))
                                         (declare (not safe))
                                         (cons __tmp61404 __tmp61245))))
                                  (declare (not safe))
                                  (cons __tmp61412 __tmp61244))))
                           (declare (not safe))
                           (cons __tmp61243 '()))))
                    (declare (not safe))
                    (cons __tmp61413 __tmp61242))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61426
                                                           __tmp61241))))
                                              (declare (not safe))
                                              (cons __tmp61427 __tmp61240))))
                                       (declare (not safe))
                                       (cons __tmp61239 '()))))
                                (declare (not safe))
                                (cons __tmp61428 __tmp61238))))
                         (declare (not safe))
                         (cons __tmp61468 __tmp61237)))
                     _hd5858158689_
                     _hd5857858679_
                     _hd5857558669_
                     _hd5857258659_
                     _hd5856958649_
                     _hd5856658639_
                     _hd5856358629_
                     _hd5856058619_
                     _hd5855758609_)
                    (_g5854258588_ _g5854358592_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5854258588_
                                                     _g5854358592_))))
                                            (_g5854258588_ _g5854358592_))))
                                    (_g5854258588_ _g5854358592_))))
                            (_g5854258588_ _g5854358592_))))
                    (_g5854258588_ _g5854358592_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5854258588_
                                                     _g5854358592_))))
                                            (_g5854258588_ _g5854358592_))))
                                    (_g5854258588_ _g5854358592_))))
                            (_g5854258588_ _g5854358592_))))
                    (_g5854258588_ _g5854358592_)))))
        (_g5854158741_ _$stx58538_))))
  (define |[:0:]#__table-del!|
    (lambda (_$stx58745_)
      (let* ((_g5874958783_
              (lambda (_g5875058779_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5875058779_)))
             (_g5874858894_
              (lambda (_g5875058787_)
                (if (gx#stx-pair? _g5875058787_)
                    (let ((_e5875958790_ (gx#syntax-e _g5875058787_)))
                      (let ((_hd5875858794_
                             (let ()
                               (declare (not safe))
                               (##car _e5875958790_)))
                            (_tl5875758797_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5875958790_))))
                        (if (gx#stx-pair? _tl5875758797_)
                            (let ((_e5876258800_ (gx#syntax-e _tl5875758797_)))
                              (let ((_hd5876158804_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5876258800_)))
                                    (_tl5876058807_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5876258800_))))
                                (if (gx#stx-pair? _tl5876058807_)
                                    (let ((_e5876558810_
                                           (gx#syntax-e _tl5876058807_)))
                                      (let ((_hd5876458814_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5876558810_)))
                                            (_tl5876358817_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5876558810_))))
                                        (if (gx#stx-pair? _tl5876358817_)
                                            (let ((_e5876858820_
                                                   (gx#syntax-e
                                                    _tl5876358817_)))
                                              (let ((_hd5876758824_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5876858820_)))
                                                    (_tl5876658827_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5876858820_))))
                                                (if (gx#stx-pair?
                                                     _tl5876658827_)
                                                    (let ((_e5877158830_
                                                           (gx#syntax-e
                                                            _tl5876658827_)))
                                                      (let ((_hd5877058834_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5877158830_)))
                    (_tl5876958837_
                     (let () (declare (not safe)) (##cdr _e5877158830_))))
                (if (gx#stx-pair? _tl5876958837_)
                    (let ((_e5877458840_ (gx#syntax-e _tl5876958837_)))
                      (let ((_hd5877358844_
                             (let ()
                               (declare (not safe))
                               (##car _e5877458840_)))
                            (_tl5877258847_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5877458840_))))
                        (if (gx#stx-pair? _tl5877258847_)
                            (let ((_e5877758850_ (gx#syntax-e _tl5877258847_)))
                              (let ((_hd5877658854_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5877758850_)))
                                    (_tl5877558857_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5877758850_))))
                                (if (gx#stx-null? _tl5877558857_)
                                    ((lambda (_L58860_
                                              _L58862_
                                              _L58863_
                                              _L58864_
                                              _L58865_
                                              _L58866_)
                                       (let ((__tmp61630
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp61469
                                              (let ((__tmp61590
                                                     (let ((__tmp61621
                                                            (let ((__tmp61629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp61622
                           (let ((__tmp61623
                                  (let ((__tmp61628
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp61624
                                         (let ((__tmp61626
                                                (let ((__tmp61627
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L58862_ '()))))
                                                  (declare (not safe))
                                                  (cons _L58864_ __tmp61627)))
                                               (__tmp61625
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58865_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61626 __tmp61625))))
                                    (declare (not safe))
                                    (cons __tmp61628 __tmp61624))))
                             (declare (not safe))
                             (cons __tmp61623 '()))))
                      (declare (not safe))
                      (cons __tmp61629 __tmp61622)))
                   (__tmp61591
                    (let ((__tmp61615
                           (let ((__tmp61620 (gx#datum->syntax '#f 'size))
                                 (__tmp61616
                                  (let ((__tmp61617
                                         (let ((__tmp61619
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp61618
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58866_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61619 __tmp61618))))
                                    (declare (not safe))
                                    (cons __tmp61617 '()))))
                             (declare (not safe))
                             (cons __tmp61620 __tmp61616)))
                          (__tmp61592
                           (let ((__tmp61607
                                  (let ((__tmp61614
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp61608
                                         (let ((__tmp61609
                                                (let ((__tmp61613
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp61610
                                                       (let ((__tmp61612
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp61611
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp61612 __tmp61611))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61613
                                                        __tmp61610))))
                                           (declare (not safe))
                                           (cons __tmp61609 '()))))
                                    (declare (not safe))
                                    (cons __tmp61614 __tmp61608)))
                                 (__tmp61593
                                  (let ((__tmp61594
                                         (let ((__tmp61606
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp61595
                                                (let ((__tmp61596
                                                       (let ((__tmp61605
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp61597
                                                              (let ((__tmp61599
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp61604
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp61600
                                    (let ((__tmp61603
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp61601
                                           (let ((__tmp61602
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp61602 '()))))
                                      (declare (not safe))
                                      (cons __tmp61603 __tmp61601))))
                               (declare (not safe))
                               (cons __tmp61604 __tmp61600)))
                            (__tmp61598
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp61599 __tmp61598))))
                 (declare (not safe))
                 (cons __tmp61605 __tmp61597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61596 '()))))
                                           (declare (not safe))
                                           (cons __tmp61606 __tmp61595))))
                                    (declare (not safe))
                                    (cons __tmp61594 '()))))
                             (declare (not safe))
                             (cons __tmp61607 __tmp61593))))
                      (declare (not safe))
                      (cons __tmp61615 __tmp61592))))
               (declare (not safe))
               (cons __tmp61621 __tmp61591)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp61470
                                                     (let ((__tmp61471
                                                            (let ((__tmp61589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp61472
                           (let ((__tmp61588 (gx#datum->syntax '#f 'loop))
                                 (__tmp61473
                                  (let ((__tmp61579
                                         (let ((__tmp61584
                                                (let ((__tmp61587
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp61585
                                                       (let ((__tmp61586
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp61586
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp61587
                                                        __tmp61585)))
                                               (__tmp61580
                                                (let ((__tmp61581
                                                       (let ((__tmp61583
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp61582
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp61583 __tmp61582))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61581 '()))))
                                           (declare (not safe))
                                           (cons __tmp61584 __tmp61580)))
                                        (__tmp61474
                                         (let ((__tmp61475
                                                (let ((__tmp61578
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp61476
                                                       (let ((__tmp61570
                                                              (let ((__tmp61577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp61571
                             (let ((__tmp61572
                                    (let ((__tmp61576
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp61573
                                           (let ((__tmp61574
                                                  (let ((__tmp61575
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp61575 '()))))
                                             (declare (not safe))
                                             (cons _L58866_ __tmp61574))))
                                      (declare (not safe))
                                      (cons __tmp61576 __tmp61573))))
                               (declare (not safe))
                               (cons __tmp61572 '()))))
                        (declare (not safe))
                        (cons __tmp61577 __tmp61571)))
                     (__tmp61477
                      (let ((__tmp61478
                             (let ((__tmp61569 (gx#datum->syntax '#f 'cond))
                                   (__tmp61479
                                    (let ((__tmp61558
                                           (let ((__tmp61562
                                                  (let ((__tmp61568
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp61563
                                                         (let ((__tmp61567
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp61564
                        (let ((__tmp61565
                               (let ((__tmp61566
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp61566 '()))))
                          (declare (not safe))
                          (cons __tmp61565 '()))))
                   (declare (not safe))
                   (cons __tmp61567 __tmp61564))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61568
                                                          __tmp61563)))
                                                 (__tmp61559
                                                  (let ((__tmp61560
                                                         (let ((__tmp61561
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp61561 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61560 '()))))
                                             (declare (not safe))
                                             (cons __tmp61562 __tmp61559)))
                                          (__tmp61480
                                           (let ((__tmp61532
                                                  (let ((__tmp61551
                                                         (let ((__tmp61557
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp61552
                        (let ((__tmp61556 (gx#datum->syntax '#f 'k))
                              (__tmp61553
                               (let ((__tmp61554
                                      (let ((__tmp61555
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp61555 '()))))
                                 (declare (not safe))
                                 (cons __tmp61554 '()))))
                          (declare (not safe))
                          (cons __tmp61556 __tmp61553))))
                   (declare (not safe))
                   (cons __tmp61557 __tmp61552)))
                (__tmp61533
                 (let ((__tmp61534
                        (let ((__tmp61550 (gx#datum->syntax '#f 'loop))
                              (__tmp61535
                               (let ((__tmp61542
                                      (let ((__tmp61549
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp61543
                                             (let ((__tmp61548
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp61544
                                                    (let ((__tmp61547
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp61545
                                                           (let ((__tmp61546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp61546 '()))))
              (declare (not safe))
              (cons __tmp61547 __tmp61545))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61548 __tmp61544))))
                                        (declare (not safe))
                                        (cons __tmp61549 __tmp61543)))
                                     (__tmp61536
                                      (let ((__tmp61537
                                             (let ((__tmp61541
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp61538
                                                    (let ((__tmp61540
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp61539
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp61540
                                                            __tmp61539))))
                                               (declare (not safe))
                                               (cons __tmp61541 __tmp61538))))
                                        (declare (not safe))
                                        (cons __tmp61537 '()))))
                                 (declare (not safe))
                                 (cons __tmp61542 __tmp61536))))
                          (declare (not safe))
                          (cons __tmp61550 __tmp61535))))
                   (declare (not safe))
                   (cons __tmp61534 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61551
                                                          __tmp61533)))
                                                 (__tmp61481
                                                  (let ((__tmp61503
                                                         (let ((__tmp61528
                                                                (let ((__tmp61529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp61530
                                      (let ((__tmp61531
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp61531 '()))))
                                 (declare (not safe))
                                 (cons _L58862_ __tmp61530))))
                          (declare (not safe))
                          (cons _L58863_ __tmp61529)))
                       (__tmp61504
                        (let ((__tmp61520
                               (let ((__tmp61527
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp61521
                                      (let ((__tmp61522
                                             (let ((__tmp61526
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp61523
                                                    (let ((__tmp61524
                                                           (let ((__tmp61525
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp61525 '()))))
              (declare (not safe))
              (cons __tmp61524 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61526 __tmp61523))))
                                        (declare (not safe))
                                        (cons _L58866_ __tmp61522))))
                                 (declare (not safe))
                                 (cons __tmp61527 __tmp61521)))
                              (__tmp61505
                               (let ((__tmp61508
                                      (let ((__tmp61519
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp61509
                                             (let ((__tmp61510
                                                    (let ((__tmp61514
                                                           (let ((__tmp61518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp61515
                          (let ((__tmp61517 (gx#datum->syntax '#f 'probe))
                                (__tmp61516
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp61517 __tmp61516))))
                     (declare (not safe))
                     (cons __tmp61518 __tmp61515)))
                  (__tmp61511
                   (let ((__tmp61512
                          (let ((__tmp61513
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp61513 '()))))
                     (declare (not safe))
                     (cons __tmp61512 '()))))
              (declare (not safe))
              (cons __tmp61514 __tmp61511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L58866_ __tmp61510))))
                                        (declare (not safe))
                                        (cons __tmp61519 __tmp61509)))
                                     (__tmp61506
                                      (let ((__tmp61507
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58860_ '()))))
                                        (declare (not safe))
                                        (cons __tmp61507 '()))))
                                 (declare (not safe))
                                 (cons __tmp61508 __tmp61506))))
                          (declare (not safe))
                          (cons __tmp61520 __tmp61505))))
                   (declare (not safe))
                   (cons __tmp61528 __tmp61504)))
                (__tmp61482
                 (let ((__tmp61483
                        (let ((__tmp61502 (gx#datum->syntax '#f 'else))
                              (__tmp61484
                               (let ((__tmp61485
                                      (let ((__tmp61501
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp61486
                                             (let ((__tmp61493
                                                    (let ((__tmp61500
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp61494
                                                           (let ((__tmp61499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp61495
                          (let ((__tmp61498 (gx#datum->syntax '#f 'i))
                                (__tmp61496
                                 (let ((__tmp61497
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp61497 '()))))
                            (declare (not safe))
                            (cons __tmp61498 __tmp61496))))
                     (declare (not safe))
                     (cons __tmp61499 __tmp61495))))
              (declare (not safe))
              (cons __tmp61500 __tmp61494)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp61487
                                                    (let ((__tmp61488
                                                           (let ((__tmp61492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp61489
                          (let ((__tmp61491 (gx#datum->syntax '#f 'i))
                                (__tmp61490
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp61491 __tmp61490))))
                     (declare (not safe))
                     (cons __tmp61492 __tmp61489))))
              (declare (not safe))
              (cons __tmp61488 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61493 __tmp61487))))
                                        (declare (not safe))
                                        (cons __tmp61501 __tmp61486))))
                                 (declare (not safe))
                                 (cons __tmp61485 '()))))
                          (declare (not safe))
                          (cons __tmp61502 __tmp61484))))
                   (declare (not safe))
                   (cons __tmp61483 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61503
                                                          __tmp61482))))
                                             (declare (not safe))
                                             (cons __tmp61532 __tmp61481))))
                                      (declare (not safe))
                                      (cons __tmp61558 __tmp61480))))
                               (declare (not safe))
                               (cons __tmp61569 __tmp61479))))
                        (declare (not safe))
                        (cons __tmp61478 '()))))
                 (declare (not safe))
                 (cons __tmp61570 __tmp61477))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61578
                                                        __tmp61476))))
                                           (declare (not safe))
                                           (cons __tmp61475 '()))))
                                    (declare (not safe))
                                    (cons __tmp61579 __tmp61474))))
                             (declare (not safe))
                             (cons __tmp61588 __tmp61473))))
                      (declare (not safe))
                      (cons __tmp61589 __tmp61472))))
               (declare (not safe))
               (cons __tmp61471 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61590 __tmp61470))))
                                         (declare (not safe))
                                         (cons __tmp61630 __tmp61469)))
                                     _hd5877658854_
                                     _hd5877358844_
                                     _hd5877058834_
                                     _hd5876758824_
                                     _hd5876458814_
                                     _hd5876158804_)
                                    (_g5874958783_ _g5875058787_))))
                            (_g5874958783_ _g5875058787_))))
                    (_g5874958783_ _g5875058787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5874958783_
                                                     _g5875058787_))))
                                            (_g5874958783_ _g5875058787_))))
                                    (_g5874958783_ _g5875058787_))))
                            (_g5874958783_ _g5875058787_))))
                    (_g5874958783_ _g5875058787_)))))
        (_g5874858894_ _$stx58745_)))))
