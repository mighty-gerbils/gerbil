(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_$stx57819_)
      (let* ((_g5782357837_
              (lambda (_g5782457833_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5782457833_)))
             (_g5782257879_
              (lambda (_g5782457841_)
                (if (gx#stx-pair? _g5782457841_)
                    (let ((_e5782857844_ (gx#syntax-e _g5782457841_)))
                      (let ((_hd5782757848_
                             (let ()
                               (declare (not safe))
                               (##car _e5782857844_)))
                            (_tl5782657851_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5782857844_))))
                        (if (gx#stx-pair? _tl5782657851_)
                            (let ((_e5783157854_ (gx#syntax-e _tl5782657851_)))
                              (let ((_hd5783057858_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5783157854_)))
                                    (_tl5782957861_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5783157854_))))
                                (if (gx#stx-null? _tl5782957861_)
                                    ((lambda (_L57864_)
                                       (let ((__tmp60401
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp60399
                                              (let ((__tmp60400
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L57864_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp60400))))
                                         (declare (not safe))
                                         (cons __tmp60401 __tmp60399)))
                                     _hd5783057858_)
                                    (_g5782357837_ _g5782457841_))))
                            (_g5782357837_ _g5782457841_))))
                    (_g5782357837_ _g5782457841_)))))
        (_g5782257879_ _$stx57819_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_$stx57883_)
      (let* ((_g5788757933_
              (lambda (_g5788857929_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5788857929_)))
             (_g5788658086_
              (lambda (_g5788857937_)
                (if (gx#stx-pair? _g5788857937_)
                    (let ((_e5790057940_ (gx#syntax-e _g5788857937_)))
                      (let ((_hd5789957944_
                             (let ()
                               (declare (not safe))
                               (##car _e5790057940_)))
                            (_tl5789857947_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5790057940_))))
                        (if (gx#stx-pair? _tl5789857947_)
                            (let ((_e5790357950_ (gx#syntax-e _tl5789857947_)))
                              (let ((_hd5790257954_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5790357950_)))
                                    (_tl5790157957_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5790357950_))))
                                (if (gx#stx-pair? _tl5790157957_)
                                    (let ((_e5790657960_
                                           (gx#syntax-e _tl5790157957_)))
                                      (let ((_hd5790557964_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5790657960_)))
                                            (_tl5790457967_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5790657960_))))
                                        (if (gx#stx-pair? _tl5790457967_)
                                            (let ((_e5790957970_
                                                   (gx#syntax-e
                                                    _tl5790457967_)))
                                              (let ((_hd5790857974_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5790957970_)))
                                                    (_tl5790757977_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5790957970_))))
                                                (if (gx#stx-pair?
                                                     _tl5790757977_)
                                                    (let ((_e5791257980_
                                                           (gx#syntax-e
                                                            _tl5790757977_)))
                                                      (let ((_hd5791157984_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5791257980_)))
                    (_tl5791057987_
                     (let () (declare (not safe)) (##cdr _e5791257980_))))
                (if (gx#stx-pair? _tl5791057987_)
                    (let ((_e5791557990_ (gx#syntax-e _tl5791057987_)))
                      (let ((_hd5791457994_
                             (let ()
                               (declare (not safe))
                               (##car _e5791557990_)))
                            (_tl5791357997_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5791557990_))))
                        (if (gx#stx-pair? _tl5791357997_)
                            (let ((_e5791858000_ (gx#syntax-e _tl5791357997_)))
                              (let ((_hd5791758004_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5791858000_)))
                                    (_tl5791658007_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5791858000_))))
                                (if (gx#stx-pair? _tl5791658007_)
                                    (let ((_e5792158010_
                                           (gx#syntax-e _tl5791658007_)))
                                      (let ((_hd5792058014_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5792158010_)))
                                            (_tl5791958017_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5792158010_))))
                                        (if (gx#stx-pair? _tl5791958017_)
                                            (let ((_e5792458020_
                                                   (gx#syntax-e
                                                    _tl5791958017_)))
                                              (let ((_hd5792358024_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5792458020_)))
                                                    (_tl5792258027_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5792458020_))))
                                                (if (gx#stx-pair?
                                                     _tl5792258027_)
                                                    (let ((_e5792758030_
                                                           (gx#syntax-e
                                                            _tl5792258027_)))
                                                      (let ((_hd5792658034_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5792758030_)))
                    (_tl5792558037_
                     (let () (declare (not safe)) (##cdr _e5792758030_))))
                (if (gx#stx-null? _tl5792558037_)
                    ((lambda (_L58040_
                              _L58042_
                              _L58043_
                              _L58044_
                              _L58045_
                              _L58046_
                              _L58047_
                              _L58048_
                              _L58049_)
                       (let ((__tmp60833 (gx#datum->syntax '#f 'begin))
                             (__tmp60402
                              (let ((__tmp60812
                                     (let ((__tmp60832
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp60813
                                            (let ((__tmp60823
                                                   (let ((__tmp60824
                                                          (let ((__tmp60829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60831 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60830
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons __tmp60831 __tmp60830)))
                        (__tmp60825
                         (let ((__tmp60826
                                (let ((__tmp60828 (gx#datum->syntax '#f 'seed))
                                      (__tmp60827
                                       (let ()
                                         (declare (not safe))
                                         (cons '0 '()))))
                                  (declare (not safe))
                                  (cons __tmp60828 __tmp60827))))
                           (declare (not safe))
                           (cons __tmp60826 '()))))
                    (declare (not safe))
                    (cons __tmp60829 __tmp60825))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L58049_
                                                           __tmp60824)))
                                                  (__tmp60814
                                                   (let ((__tmp60815
                                                          (let ((__tmp60822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-raw-table))
                        (__tmp60816
                         (let ((__tmp60821 (gx#datum->syntax '#f 'size-hint))
                               (__tmp60817
                                (let ((__tmp60818
                                       (let ((__tmp60819
                                              (let ((__tmp60820
                                                     (gx#datum->syntax
                                                      '#f
                                                      'seed)))
                                                (declare (not safe))
                                                (cons __tmp60820 '()))))
                                         (declare (not safe))
                                         (cons _L58040_ __tmp60819))))
                                  (declare (not safe))
                                  (cons _L58042_ __tmp60818))))
                           (declare (not safe))
                           (cons __tmp60821 __tmp60817))))
                    (declare (not safe))
                    (cons __tmp60822 __tmp60816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60815 '()))))
                                              (declare (not safe))
                                              (cons __tmp60823 __tmp60814))))
                                       (declare (not safe))
                                       (cons __tmp60832 __tmp60813)))
                                    (__tmp60403
                                     (let ((__tmp60769
                                            (let ((__tmp60811
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp60770
                                                   (let ((__tmp60804
                                                          (let ((__tmp60805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60810 (gx#datum->syntax '#f 'tab))
                               (__tmp60806
                                (let ((__tmp60809 (gx#datum->syntax '#f 'key))
                                      (__tmp60807
                                       (let ((__tmp60808
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp60808 '()))))
                                  (declare (not safe))
                                  (cons __tmp60809 __tmp60807))))
                           (declare (not safe))
                           (cons __tmp60810 __tmp60806))))
                    (declare (not safe))
                    (cons _L58048_ __tmp60805)))
                 (__tmp60771
                  (let ((__tmp60772
                         (let ((__tmp60803 (gx#datum->syntax '#f 'let))
                               (__tmp60773
                                (let ((__tmp60787
                                       (let ((__tmp60796
                                              (let ((__tmp60802
                                                     (gx#datum->syntax
                                                      '#f
                                                      'table))
                                                    (__tmp60797
                                                     (let ((__tmp60798
                                                            (let ((__tmp60801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-table))
                          (__tmp60799
                           (let ((__tmp60800 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp60800 '()))))
                      (declare (not safe))
                      (cons __tmp60801 __tmp60799))))
               (declare (not safe))
               (cons __tmp60798 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60802 __tmp60797)))
                                             (__tmp60788
                                              (let ((__tmp60789
                                                     (let ((__tmp60795
                                                            (gx#datum->syntax
                                                             '#f
                                                             'seed))
                                                           (__tmp60790
                                                            (let ((__tmp60791
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60794
                                  (gx#datum->syntax '#f '&raw-table-seed))
                                 (__tmp60792
                                  (let ((__tmp60793
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp60793 '()))))
                             (declare (not safe))
                             (cons __tmp60794 __tmp60792))))
                      (declare (not safe))
                      (cons __tmp60791 '()))))
               (declare (not safe))
               (cons __tmp60795 __tmp60790))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60789 '()))))
                                         (declare (not safe))
                                         (cons __tmp60796 __tmp60788)))
                                      (__tmp60774
                                       (let ((__tmp60775
                                              (let ((__tmp60786
                                                     (gx#datum->syntax
                                                      '#f
                                                      '__table-ref))
                                                    (__tmp60776
                                                     (let ((__tmp60785
                                                            (gx#datum->syntax
                                                             '#f
                                                             'table))
                                                           (__tmp60777
                                                            (let ((__tmp60784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'seed))
                          (__tmp60778
                           (let ((__tmp60779
                                  (let ((__tmp60780
                                         (let ((__tmp60783
                                                (gx#datum->syntax '#f 'key))
                                               (__tmp60781
                                                (let ((__tmp60782
                                                       (gx#datum->syntax
                                                        '#f
                                                        'default)))
                                                  (declare (not safe))
                                                  (cons __tmp60782 '()))))
                                           (declare (not safe))
                                           (cons __tmp60783 __tmp60781))))
                                    (declare (not safe))
                                    (cons _L58040_ __tmp60780))))
                             (declare (not safe))
                             (cons _L58042_ __tmp60779))))
                      (declare (not safe))
                      (cons __tmp60784 __tmp60778))))
               (declare (not safe))
               (cons __tmp60785 __tmp60777))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60786 __tmp60776))))
                                         (declare (not safe))
                                         (cons __tmp60775 '()))))
                                  (declare (not safe))
                                  (cons __tmp60787 __tmp60774))))
                           (declare (not safe))
                           (cons __tmp60803 __tmp60773))))
                    (declare (not safe))
                    (cons __tmp60772 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60804
                                                           __tmp60771))))
                                              (declare (not safe))
                                              (cons __tmp60811 __tmp60770)))
                                           (__tmp60404
                                            (let ((__tmp60723
                                                   (let ((__tmp60768
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp60724
                                                          (let ((__tmp60761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60762
                                (let ((__tmp60767 (gx#datum->syntax '#f 'tab))
                                      (__tmp60763
                                       (let ((__tmp60766
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp60764
                                              (let ((__tmp60765
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value)))
                                                (declare (not safe))
                                                (cons __tmp60765 '()))))
                                         (declare (not safe))
                                         (cons __tmp60766 __tmp60764))))
                                  (declare (not safe))
                                  (cons __tmp60767 __tmp60763))))
                           (declare (not safe))
                           (cons _L58047_ __tmp60762)))
                        (__tmp60725
                         (let ((__tmp60734
                                (let ((__tmp60760 (gx#datum->syntax '#f 'when))
                                      (__tmp60735
                                       (let ((__tmp60741
                                              (let ((__tmp60759
                                                     (gx#datum->syntax
                                                      '#f
                                                      'fx<))
                                                    (__tmp60742
                                                     (let ((__tmp60755
                                                            (let ((__tmp60758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-free))
                          (__tmp60756
                           (let ((__tmp60757 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp60757 '()))))
                      (declare (not safe))
                      (cons __tmp60758 __tmp60756)))
                   (__tmp60743
                    (let ((__tmp60744
                           (let ((__tmp60754
                                  (gx#datum->syntax '#f 'fxquotient))
                                 (__tmp60745
                                  (let ((__tmp60747
                                         (let ((__tmp60753
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60748
                                                (let ((__tmp60749
                                                       (let ((__tmp60752
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp60750
                                                              (let ((__tmp60751
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60751 '()))))
                 (declare (not safe))
                 (cons __tmp60752 __tmp60750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60749 '()))))
                                           (declare (not safe))
                                           (cons __tmp60753 __tmp60748)))
                                        (__tmp60746
                                         (let ()
                                           (declare (not safe))
                                           (cons '4 '()))))
                                    (declare (not safe))
                                    (cons __tmp60747 __tmp60746))))
                             (declare (not safe))
                             (cons __tmp60754 __tmp60745))))
                      (declare (not safe))
                      (cons __tmp60744 '()))))
               (declare (not safe))
               (cons __tmp60755 __tmp60743))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60759 __tmp60742)))
                                             (__tmp60736
                                              (let ((__tmp60737
                                                     (let ((__tmp60740
                                                            (gx#datum->syntax
                                                             '#f
                                                             '__raw-table-rehash!))
                                                           (__tmp60738
                                                            (let ((__tmp60739
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab)))
                      (declare (not safe))
                      (cons __tmp60739 '()))))
               (declare (not safe))
               (cons __tmp60740 __tmp60738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60737 '()))))
                                         (declare (not safe))
                                         (cons __tmp60741 __tmp60736))))
                                  (declare (not safe))
                                  (cons __tmp60760 __tmp60735)))
                               (__tmp60726
                                (let ((__tmp60727
                                       (let ((__tmp60728
                                              (let ((__tmp60733
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp60729
                                                     (let ((__tmp60732
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp60730
                                                            (let ((__tmp60731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'value)))
                      (declare (not safe))
                      (cons __tmp60731 '()))))
               (declare (not safe))
               (cons __tmp60732 __tmp60730))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60733 __tmp60729))))
                                         (declare (not safe))
                                         (cons _L58046_ __tmp60728))))
                                  (declare (not safe))
                                  (cons __tmp60727 '()))))
                           (declare (not safe))
                           (cons __tmp60734 __tmp60726))))
                    (declare (not safe))
                    (cons __tmp60761 __tmp60725))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60768
                                                           __tmp60724)))
                                                  (__tmp60405
                                                   (let ((__tmp60621
                                                          (let ((__tmp60722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'def))
                        (__tmp60622
                         (let ((__tmp60715
                                (let ((__tmp60716
                                       (let ((__tmp60721
                                              (gx#datum->syntax '#f 'tab))
                                             (__tmp60717
                                              (let ((__tmp60720
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp60718
                                                     (let ((__tmp60719
                                                            (gx#datum->syntax
                                                             '#f
                                                             'value)))
                                                       (declare (not safe))
                                                       (cons __tmp60719 '()))))
                                                (declare (not safe))
                                                (cons __tmp60720 __tmp60718))))
                                         (declare (not safe))
                                         (cons __tmp60721 __tmp60717))))
                                  (declare (not safe))
                                  (cons _L58046_ __tmp60716)))
                               (__tmp60623
                                (let ((__tmp60624
                                       (let ((__tmp60714
                                              (gx#datum->syntax '#f 'let))
                                             (__tmp60625
                                              (let ((__tmp60698
                                                     (let ((__tmp60707
                                                            (let ((__tmp60713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'table))
                          (__tmp60708
                           (let ((__tmp60709
                                  (let ((__tmp60712
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-table))
                                        (__tmp60710
                                         (let ((__tmp60711
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp60711 '()))))
                                    (declare (not safe))
                                    (cons __tmp60712 __tmp60710))))
                             (declare (not safe))
                             (cons __tmp60709 '()))))
                      (declare (not safe))
                      (cons __tmp60713 __tmp60708)))
                   (__tmp60699
                    (let ((__tmp60700
                           (let ((__tmp60706 (gx#datum->syntax '#f 'seed))
                                 (__tmp60701
                                  (let ((__tmp60702
                                         (let ((__tmp60705
                                                (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-seed))
                                               (__tmp60703
                                                (let ((__tmp60704
                                                       (gx#datum->syntax
                                                        '#f
                                                        'tab)))
                                                  (declare (not safe))
                                                  (cons __tmp60704 '()))))
                                           (declare (not safe))
                                           (cons __tmp60705 __tmp60703))))
                                    (declare (not safe))
                                    (cons __tmp60702 '()))))
                             (declare (not safe))
                             (cons __tmp60706 __tmp60701))))
                      (declare (not safe))
                      (cons __tmp60700 '()))))
               (declare (not safe))
               (cons __tmp60707 __tmp60699)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60626
                                                     (let ((__tmp60627
                                                            (let ((__tmp60697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '__table-set!))
                          (__tmp60628
                           (let ((__tmp60696 (gx#datum->syntax '#f 'table))
                                 (__tmp60629
                                  (let ((__tmp60695
                                         (gx#datum->syntax '#f 'seed))
                                        (__tmp60630
                                         (let ((__tmp60631
                                                (let ((__tmp60632
                                                       (let ((__tmp60694
                                                              (gx#datum->syntax
                                                               '#f
                                                               'key))
                                                             (__tmp60633
                                                              (let ((__tmp60693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'value))
                            (__tmp60634
                             (let ((__tmp60656
                                    (let ((__tmp60692
                                           (gx#datum->syntax '#f 'lambda))
                                          (__tmp60657
                                           (let ((__tmp60658
                                                  (let ((__tmp60676
                                                         (let ((__tmp60691
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'set!))
                       (__tmp60677
                        (let ((__tmp60687
                               (let ((__tmp60690
                                      (gx#datum->syntax '#f '&raw-table-free))
                                     (__tmp60688
                                      (let ((__tmp60689
                                             (gx#datum->syntax '#f 'tab)))
                                        (declare (not safe))
                                        (cons __tmp60689 '()))))
                                 (declare (not safe))
                                 (cons __tmp60690 __tmp60688)))
                              (__tmp60678
                               (let ((__tmp60679
                                      (let ((__tmp60686
                                             (gx#datum->syntax '#f 'fx-))
                                            (__tmp60680
                                             (let ((__tmp60682
                                                    (let ((__tmp60685
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp60683
                                                           (let ((__tmp60684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp60684 '()))))
              (declare (not safe))
              (cons __tmp60685 __tmp60683)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60681
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '1 '()))))
                                               (declare (not safe))
                                               (cons __tmp60682 __tmp60681))))
                                        (declare (not safe))
                                        (cons __tmp60686 __tmp60680))))
                                 (declare (not safe))
                                 (cons __tmp60679 '()))))
                          (declare (not safe))
                          (cons __tmp60687 __tmp60678))))
                   (declare (not safe))
                   (cons __tmp60691 __tmp60677)))
                (__tmp60659
                 (let ((__tmp60660
                        (let ((__tmp60675 (gx#datum->syntax '#f 'set!))
                              (__tmp60661
                               (let ((__tmp60671
                                      (let ((__tmp60674
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp60672
                                             (let ((__tmp60673
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp60673 '()))))
                                        (declare (not safe))
                                        (cons __tmp60674 __tmp60672)))
                                     (__tmp60662
                                      (let ((__tmp60663
                                             (let ((__tmp60670
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60664
                                                    (let ((__tmp60666
                                                           (let ((__tmp60669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60667
                          (let ((__tmp60668 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60668 '()))))
                     (declare (not safe))
                     (cons __tmp60669 __tmp60667)))
                  (__tmp60665 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp60666 __tmp60665))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60670 __tmp60664))))
                                        (declare (not safe))
                                        (cons __tmp60663 '()))))
                                 (declare (not safe))
                                 (cons __tmp60671 __tmp60662))))
                          (declare (not safe))
                          (cons __tmp60675 __tmp60661))))
                   (declare (not safe))
                   (cons __tmp60660 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60676
                                                          __tmp60659))))
                                             (declare (not safe))
                                             (cons '() __tmp60658))))
                                      (declare (not safe))
                                      (cons __tmp60692 __tmp60657)))
                                   (__tmp60635
                                    (let ((__tmp60636
                                           (let ((__tmp60655
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp60637
                                                  (let ((__tmp60638
                                                         (let ((__tmp60639
                                                                (let ((__tmp60654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'set!))
                              (__tmp60640
                               (let ((__tmp60650
                                      (let ((__tmp60653
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp60651
                                             (let ((__tmp60652
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp60652 '()))))
                                        (declare (not safe))
                                        (cons __tmp60653 __tmp60651)))
                                     (__tmp60641
                                      (let ((__tmp60642
                                             (let ((__tmp60649
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60643
                                                    (let ((__tmp60645
                                                           (let ((__tmp60648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60646
                          (let ((__tmp60647 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60647 '()))))
                     (declare (not safe))
                     (cons __tmp60648 __tmp60646)))
                  (__tmp60644 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp60645 __tmp60644))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60649 __tmp60643))))
                                        (declare (not safe))
                                        (cons __tmp60642 '()))))
                                 (declare (not safe))
                                 (cons __tmp60650 __tmp60641))))
                          (declare (not safe))
                          (cons __tmp60654 __tmp60640))))
                   (declare (not safe))
                   (cons __tmp60639 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '() __tmp60638))))
                                             (declare (not safe))
                                             (cons __tmp60655 __tmp60637))))
                                      (declare (not safe))
                                      (cons __tmp60636 '()))))
                               (declare (not safe))
                               (cons __tmp60656 __tmp60635))))
                        (declare (not safe))
                        (cons __tmp60693 __tmp60634))))
                 (declare (not safe))
                 (cons __tmp60694 __tmp60633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L58040_ __tmp60632))))
                                           (declare (not safe))
                                           (cons _L58042_ __tmp60631))))
                                    (declare (not safe))
                                    (cons __tmp60695 __tmp60630))))
                             (declare (not safe))
                             (cons __tmp60696 __tmp60629))))
                      (declare (not safe))
                      (cons __tmp60697 __tmp60628))))
               (declare (not safe))
               (cons __tmp60627 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60698 __tmp60626))))
                                         (declare (not safe))
                                         (cons __tmp60714 __tmp60625))))
                                  (declare (not safe))
                                  (cons __tmp60624 '()))))
                           (declare (not safe))
                           (cons __tmp60715 __tmp60623))))
                    (declare (not safe))
                    (cons __tmp60722 __tmp60622)))
                 (__tmp60406
                  (let ((__tmp60573
                         (let ((__tmp60620 (gx#datum->syntax '#f 'def))
                               (__tmp60574
                                (let ((__tmp60612
                                       (let ((__tmp60613
                                              (let ((__tmp60619
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp60614
                                                     (let ((__tmp60618
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp60615
                                                            (let ((__tmp60616
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60617 (gx#datum->syntax '#f 'default)))
                             (declare (not safe))
                             (cons __tmp60617 '()))))
                      (declare (not safe))
                      (cons _L58045_ __tmp60616))))
               (declare (not safe))
               (cons __tmp60618 __tmp60615))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60619 __tmp60614))))
                                         (declare (not safe))
                                         (cons _L58045_ __tmp60613)))
                                      (__tmp60575
                                       (let ((__tmp60585
                                              (let ((__tmp60611
                                                     (gx#datum->syntax
                                                      '#f
                                                      'when))
                                                    (__tmp60586
                                                     (let ((__tmp60592
                                                            (let ((__tmp60610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'fx<))
                          (__tmp60593
                           (let ((__tmp60606
                                  (let ((__tmp60609
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-free))
                                        (__tmp60607
                                         (let ((__tmp60608
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp60608 '()))))
                                    (declare (not safe))
                                    (cons __tmp60609 __tmp60607)))
                                 (__tmp60594
                                  (let ((__tmp60595
                                         (let ((__tmp60605
                                                (gx#datum->syntax
                                                 '#f
                                                 'fxquotient))
                                               (__tmp60596
                                                (let ((__tmp60598
                                                       (let ((__tmp60604
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-length))
                                                             (__tmp60599
                                                              (let ((__tmp60600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60603
                                    (gx#datum->syntax '#f '&raw-table-table))
                                   (__tmp60601
                                    (let ((__tmp60602
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp60602 '()))))
                               (declare (not safe))
                               (cons __tmp60603 __tmp60601))))
                        (declare (not safe))
                        (cons __tmp60600 '()))))
                 (declare (not safe))
                 (cons __tmp60604 __tmp60599)))
              (__tmp60597 (let () (declare (not safe)) (cons '4 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60598
                                                        __tmp60597))))
                                           (declare (not safe))
                                           (cons __tmp60605 __tmp60596))))
                                    (declare (not safe))
                                    (cons __tmp60595 '()))))
                             (declare (not safe))
                             (cons __tmp60606 __tmp60594))))
                      (declare (not safe))
                      (cons __tmp60610 __tmp60593)))
                   (__tmp60587
                    (let ((__tmp60588
                           (let ((__tmp60591
                                  (gx#datum->syntax '#f '__raw-table-rehash!))
                                 (__tmp60589
                                  (let ((__tmp60590
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp60590 '()))))
                             (declare (not safe))
                             (cons __tmp60591 __tmp60589))))
                      (declare (not safe))
                      (cons __tmp60588 '()))))
               (declare (not safe))
               (cons __tmp60592 __tmp60587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60611 __tmp60586)))
                                             (__tmp60576
                                              (let ((__tmp60577
                                                     (let ((__tmp60578
                                                            (let ((__tmp60584
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp60579
                           (let ((__tmp60583 (gx#datum->syntax '#f 'key))
                                 (__tmp60580
                                  (let ((__tmp60581
                                         (let ((__tmp60582
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp60582 '()))))
                                    (declare (not safe))
                                    (cons _L58045_ __tmp60581))))
                             (declare (not safe))
                             (cons __tmp60583 __tmp60580))))
                      (declare (not safe))
                      (cons __tmp60584 __tmp60579))))
               (declare (not safe))
               (cons _L58044_ __tmp60578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60577 '()))))
                                         (declare (not safe))
                                         (cons __tmp60585 __tmp60576))))
                                  (declare (not safe))
                                  (cons __tmp60612 __tmp60575))))
                           (declare (not safe))
                           (cons __tmp60620 __tmp60574)))
                        (__tmp60407
                         (let ((__tmp60469
                                (let ((__tmp60572 (gx#datum->syntax '#f 'def))
                                      (__tmp60470
                                       (let ((__tmp60564
                                              (let ((__tmp60565
                                                     (let ((__tmp60571
                                                            (gx#datum->syntax
                                                             '#f
                                                             'tab))
                                                           (__tmp60566
                                                            (let ((__tmp60570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'key))
                          (__tmp60567
                           (let ((__tmp60568
                                  (let ((__tmp60569
                                         (gx#datum->syntax '#f 'default)))
                                    (declare (not safe))
                                    (cons __tmp60569 '()))))
                             (declare (not safe))
                             (cons _L58045_ __tmp60568))))
                      (declare (not safe))
                      (cons __tmp60570 __tmp60567))))
               (declare (not safe))
               (cons __tmp60571 __tmp60566))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L58044_ __tmp60565)))
                                             (__tmp60471
                                              (let ((__tmp60472
                                                     (let ((__tmp60563
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp60473
                                                            (let ((__tmp60547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60556
                                  (let ((__tmp60562
                                         (gx#datum->syntax '#f 'table))
                                        (__tmp60557
                                         (let ((__tmp60558
                                                (let ((__tmp60561
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table))
                                                      (__tmp60559
                                                       (let ((__tmp60560
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp60560
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60561
                                                        __tmp60559))))
                                           (declare (not safe))
                                           (cons __tmp60558 '()))))
                                    (declare (not safe))
                                    (cons __tmp60562 __tmp60557)))
                                 (__tmp60548
                                  (let ((__tmp60549
                                         (let ((__tmp60555
                                                (gx#datum->syntax '#f 'seed))
                                               (__tmp60550
                                                (let ((__tmp60551
                                                       (let ((__tmp60554
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-seed))
                                                             (__tmp60552
                                                              (let ((__tmp60553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60553 '()))))
                 (declare (not safe))
                 (cons __tmp60554 __tmp60552))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60551 '()))))
                                           (declare (not safe))
                                           (cons __tmp60555 __tmp60550))))
                                    (declare (not safe))
                                    (cons __tmp60549 '()))))
                             (declare (not safe))
                             (cons __tmp60556 __tmp60548)))
                          (__tmp60474
                           (let ((__tmp60475
                                  (let ((__tmp60546
                                         (gx#datum->syntax
                                          '#f
                                          '__table-update!))
                                        (__tmp60476
                                         (let ((__tmp60545
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp60477
                                                (let ((__tmp60544
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp60478
                                                       (let ((__tmp60479
                                                              (let ((__tmp60480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60543 (gx#datum->syntax '#f 'key))
                                   (__tmp60481
                                    (let ((__tmp60482
                                           (let ((__tmp60542
                                                  (gx#datum->syntax
                                                   '#f
                                                   'default))
                                                 (__tmp60483
                                                  (let ((__tmp60505
                                                         (let ((__tmp60541
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda))
                       (__tmp60506
                        (let ((__tmp60507
                               (let ((__tmp60525
                                      (let ((__tmp60540
                                             (gx#datum->syntax '#f 'set!))
                                            (__tmp60526
                                             (let ((__tmp60536
                                                    (let ((__tmp60539
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp60537
                                                           (let ((__tmp60538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp60538 '()))))
              (declare (not safe))
              (cons __tmp60539 __tmp60537)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60527
                                                    (let ((__tmp60528
                                                           (let ((__tmp60535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx-))
                         (__tmp60529
                          (let ((__tmp60531
                                 (let ((__tmp60534
                                        (gx#datum->syntax
                                         '#f
                                         '&raw-table-free))
                                       (__tmp60532
                                        (let ((__tmp60533
                                               (gx#datum->syntax '#f 'tab)))
                                          (declare (not safe))
                                          (cons __tmp60533 '()))))
                                   (declare (not safe))
                                   (cons __tmp60534 __tmp60532)))
                                (__tmp60530
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60531 __tmp60530))))
                     (declare (not safe))
                     (cons __tmp60535 __tmp60529))))
              (declare (not safe))
              (cons __tmp60528 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60536 __tmp60527))))
                                        (declare (not safe))
                                        (cons __tmp60540 __tmp60526)))
                                     (__tmp60508
                                      (let ((__tmp60509
                                             (let ((__tmp60524
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp60510
                                                    (let ((__tmp60520
                                                           (let ((__tmp60523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60521
                          (let ((__tmp60522 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60522 '()))))
                     (declare (not safe))
                     (cons __tmp60523 __tmp60521)))
                  (__tmp60511
                   (let ((__tmp60512
                          (let ((__tmp60519 (gx#datum->syntax '#f 'fx+))
                                (__tmp60513
                                 (let ((__tmp60515
                                        (let ((__tmp60518
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp60516
                                               (let ((__tmp60517
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp60517 '()))))
                                          (declare (not safe))
                                          (cons __tmp60518 __tmp60516)))
                                       (__tmp60514
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp60515 __tmp60514))))
                            (declare (not safe))
                            (cons __tmp60519 __tmp60513))))
                     (declare (not safe))
                     (cons __tmp60512 '()))))
              (declare (not safe))
              (cons __tmp60520 __tmp60511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60524 __tmp60510))))
                                        (declare (not safe))
                                        (cons __tmp60509 '()))))
                                 (declare (not safe))
                                 (cons __tmp60525 __tmp60508))))
                          (declare (not safe))
                          (cons '() __tmp60507))))
                   (declare (not safe))
                   (cons __tmp60541 __tmp60506)))
                (__tmp60484
                 (let ((__tmp60485
                        (let ((__tmp60504 (gx#datum->syntax '#f 'lambda))
                              (__tmp60486
                               (let ((__tmp60487
                                      (let ((__tmp60488
                                             (let ((__tmp60503
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp60489
                                                    (let ((__tmp60499
                                                           (let ((__tmp60502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp60500
                          (let ((__tmp60501 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp60501 '()))))
                     (declare (not safe))
                     (cons __tmp60502 __tmp60500)))
                  (__tmp60490
                   (let ((__tmp60491
                          (let ((__tmp60498 (gx#datum->syntax '#f 'fx+))
                                (__tmp60492
                                 (let ((__tmp60494
                                        (let ((__tmp60497
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp60495
                                               (let ((__tmp60496
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp60496 '()))))
                                          (declare (not safe))
                                          (cons __tmp60497 __tmp60495)))
                                       (__tmp60493
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp60494 __tmp60493))))
                            (declare (not safe))
                            (cons __tmp60498 __tmp60492))))
                     (declare (not safe))
                     (cons __tmp60491 '()))))
              (declare (not safe))
              (cons __tmp60499 __tmp60490))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60503 __tmp60489))))
                                        (declare (not safe))
                                        (cons __tmp60488 '()))))
                                 (declare (not safe))
                                 (cons '() __tmp60487))))
                          (declare (not safe))
                          (cons __tmp60504 __tmp60486))))
                   (declare (not safe))
                   (cons __tmp60485 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60505
                                                          __tmp60484))))
                                             (declare (not safe))
                                             (cons __tmp60542 __tmp60483))))
                                      (declare (not safe))
                                      (cons _L58045_ __tmp60482))))
                               (declare (not safe))
                               (cons __tmp60543 __tmp60481))))
                        (declare (not safe))
                        (cons _L58040_ __tmp60480))))
                 (declare (not safe))
                 (cons _L58042_ __tmp60479))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60544
                                                        __tmp60478))))
                                           (declare (not safe))
                                           (cons __tmp60545 __tmp60477))))
                                    (declare (not safe))
                                    (cons __tmp60546 __tmp60476))))
                             (declare (not safe))
                             (cons __tmp60475 '()))))
                      (declare (not safe))
                      (cons __tmp60547 __tmp60474))))
               (declare (not safe))
               (cons __tmp60563 __tmp60473))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60472 '()))))
                                         (declare (not safe))
                                         (cons __tmp60564 __tmp60471))))
                                  (declare (not safe))
                                  (cons __tmp60572 __tmp60470)))
                               (__tmp60408
                                (let ((__tmp60409
                                       (let ((__tmp60468
                                              (gx#datum->syntax '#f 'def))
                                             (__tmp60410
                                              (let ((__tmp60463
                                                     (let ((__tmp60464
                                                            (let ((__tmp60467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp60465
                           (let ((__tmp60466 (gx#datum->syntax '#f 'key)))
                             (declare (not safe))
                             (cons __tmp60466 '()))))
                      (declare (not safe))
                      (cons __tmp60467 __tmp60465))))
               (declare (not safe))
               (cons _L58043_ __tmp60464)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60411
                                                     (let ((__tmp60412
                                                            (let ((__tmp60462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60413
                           (let ((__tmp60446
                                  (let ((__tmp60455
                                         (let ((__tmp60461
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp60456
                                                (let ((__tmp60457
                                                       (let ((__tmp60460
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp60458
                                                              (let ((__tmp60459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp60459 '()))))
                 (declare (not safe))
                 (cons __tmp60460 __tmp60458))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60457 '()))))
                                           (declare (not safe))
                                           (cons __tmp60461 __tmp60456)))
                                        (__tmp60447
                                         (let ((__tmp60448
                                                (let ((__tmp60454
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp60449
                                                       (let ((__tmp60450
                                                              (let ((__tmp60453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-seed))
                            (__tmp60451
                             (let ((__tmp60452 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp60452 '()))))
                        (declare (not safe))
                        (cons __tmp60453 __tmp60451))))
                 (declare (not safe))
                 (cons __tmp60450 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60454
                                                        __tmp60449))))
                                           (declare (not safe))
                                           (cons __tmp60448 '()))))
                                    (declare (not safe))
                                    (cons __tmp60455 __tmp60447)))
                                 (__tmp60414
                                  (let ((__tmp60415
                                         (let ((__tmp60445
                                                (gx#datum->syntax
                                                 '#f
                                                 '__table-del!))
                                               (__tmp60416
                                                (let ((__tmp60444
                                                       (gx#datum->syntax
                                                        '#f
                                                        'table))
                                                      (__tmp60417
                                                       (let ((__tmp60443
                                                              (gx#datum->syntax
                                                               '#f
                                                               'seed))
                                                             (__tmp60418
                                                              (let ((__tmp60419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60420
                                    (let ((__tmp60442
                                           (gx#datum->syntax '#f 'key))
                                          (__tmp60421
                                           (let ((__tmp60422
                                                  (let ((__tmp60441
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp60423
                                                         (let ((__tmp60424
                                                                (let ((__tmp60425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60440 (gx#datum->syntax '#f 'set!))
                                     (__tmp60426
                                      (let ((__tmp60436
                                             (let ((__tmp60439
                                                    (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-count))
                                                   (__tmp60437
                                                    (let ((__tmp60438
                                                           (gx#datum->syntax
                                                            '#f
                                                            'tab)))
                                                      (declare (not safe))
                                                      (cons __tmp60438 '()))))
                                               (declare (not safe))
                                               (cons __tmp60439 __tmp60437)))
                                            (__tmp60427
                                             (let ((__tmp60428
                                                    (let ((__tmp60435
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx-))
                                                          (__tmp60429
                                                           (let ((__tmp60431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60434
                                 (gx#datum->syntax '#f '&raw-table-count))
                                (__tmp60432
                                 (let ((__tmp60433
                                        (gx#datum->syntax '#f 'tab)))
                                   (declare (not safe))
                                   (cons __tmp60433 '()))))
                            (declare (not safe))
                            (cons __tmp60434 __tmp60432)))
                         (__tmp60430
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp60431 __tmp60430))))
              (declare (not safe))
              (cons __tmp60435 __tmp60429))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60428 '()))))
                                        (declare (not safe))
                                        (cons __tmp60436 __tmp60427))))
                                 (declare (not safe))
                                 (cons __tmp60440 __tmp60426))))
                          (declare (not safe))
                          (cons __tmp60425 '()))))
                   (declare (not safe))
                   (cons '() __tmp60424))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60441
                                                          __tmp60423))))
                                             (declare (not safe))
                                             (cons __tmp60422 '()))))
                                      (declare (not safe))
                                      (cons __tmp60442 __tmp60421))))
                               (declare (not safe))
                               (cons _L58040_ __tmp60420))))
                        (declare (not safe))
                        (cons _L58042_ __tmp60419))))
                 (declare (not safe))
                 (cons __tmp60443 __tmp60418))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60444
                                                        __tmp60417))))
                                           (declare (not safe))
                                           (cons __tmp60445 __tmp60416))))
                                    (declare (not safe))
                                    (cons __tmp60415 '()))))
                             (declare (not safe))
                             (cons __tmp60446 __tmp60414))))
                      (declare (not safe))
                      (cons __tmp60462 __tmp60413))))
               (declare (not safe))
               (cons __tmp60412 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60463 __tmp60411))))
                                         (declare (not safe))
                                         (cons __tmp60468 __tmp60410))))
                                  (declare (not safe))
                                  (cons __tmp60409 '()))))
                           (declare (not safe))
                           (cons __tmp60469 __tmp60408))))
                    (declare (not safe))
                    (cons __tmp60573 __tmp60407))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60621
                                                           __tmp60406))))
                                              (declare (not safe))
                                              (cons __tmp60723 __tmp60405))))
                                       (declare (not safe))
                                       (cons __tmp60769 __tmp60404))))
                                (declare (not safe))
                                (cons __tmp60812 __tmp60403))))
                         (declare (not safe))
                         (cons __tmp60833 __tmp60402)))
                     _hd5792658034_
                     _hd5792358024_
                     _hd5792058014_
                     _hd5791758004_
                     _hd5791457994_
                     _hd5791157984_
                     _hd5790857974_
                     _hd5790557964_
                     _hd5790257954_)
                    (_g5788757933_ _g5788857937_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5788757933_
                                                     _g5788857937_))))
                                            (_g5788757933_ _g5788857937_))))
                                    (_g5788757933_ _g5788857937_))))
                            (_g5788757933_ _g5788857937_))))
                    (_g5788757933_ _g5788857937_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5788757933_
                                                     _g5788857937_))))
                                            (_g5788757933_ _g5788857937_))))
                                    (_g5788757933_ _g5788857937_))))
                            (_g5788757933_ _g5788857937_))))
                    (_g5788757933_ _g5788857937_)))))
        (_g5788658086_ _$stx57883_))))
  (define |[:0:]#probe-step|
    (lambda (_$stx58090_)
      (let* ((_g5809458116_
              (lambda (_g5809558112_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5809558112_)))
             (_g5809358185_
              (lambda (_g5809558120_)
                (if (gx#stx-pair? _g5809558120_)
                    (let ((_e5810158123_ (gx#syntax-e _g5809558120_)))
                      (let ((_hd5810058127_
                             (let ()
                               (declare (not safe))
                               (##car _e5810158123_)))
                            (_tl5809958130_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5810158123_))))
                        (if (gx#stx-pair? _tl5809958130_)
                            (let ((_e5810458133_ (gx#syntax-e _tl5809958130_)))
                              (let ((_hd5810358137_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5810458133_)))
                                    (_tl5810258140_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5810458133_))))
                                (if (gx#stx-pair? _tl5810258140_)
                                    (let ((_e5810758143_
                                           (gx#syntax-e _tl5810258140_)))
                                      (let ((_hd5810658147_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5810758143_)))
                                            (_tl5810558150_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5810758143_))))
                                        (if (gx#stx-pair? _tl5810558150_)
                                            (let ((_e5811058153_
                                                   (gx#syntax-e
                                                    _tl5810558150_)))
                                              (let ((_hd5810958157_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5811058153_)))
                                                    (_tl5810858160_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5811058153_))))
                                                (if (gx#stx-null?
                                                     _tl5810858160_)
                                                    ((lambda (_L58163_
                                                              _L58165_
                                                              _L58166_)
                                                       (let ((__tmp60853
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp60834
                                                              (let ((__tmp60841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60852
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp60842
                                    (let ((__tmp60843
                                           (let ((__tmp60851
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60844
                                                  (let ((__tmp60845
                                                         (let ((__tmp60846
                                                                (let ((__tmp60847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60850 (gx#datum->syntax '#f 'fx*))
                                     (__tmp60848
                                      (let ((__tmp60849
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58165_ '()))))
                                        (declare (not safe))
                                        (cons _L58165_ __tmp60849))))
                                 (declare (not safe))
                                 (cons __tmp60850 __tmp60848))))
                          (declare (not safe))
                          (cons __tmp60847 '()))))
                   (declare (not safe))
                   (cons _L58165_ __tmp60846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58166_
                                                          __tmp60845))))
                                             (declare (not safe))
                                             (cons __tmp60851 __tmp60844))))
                                      (declare (not safe))
                                      (cons __tmp60843 '()))))
                               (declare (not safe))
                               (cons __tmp60852 __tmp60842)))
                            (__tmp60835
                             (let ((__tmp60836
                                    (let ((__tmp60840
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp60837
                                           (let ((__tmp60839
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp60838
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L58163_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60839 __tmp60838))))
                                      (declare (not safe))
                                      (cons __tmp60840 __tmp60837))))
                               (declare (not safe))
                               (cons __tmp60836 '()))))
                        (declare (not safe))
                        (cons __tmp60841 __tmp60835))))
                 (declare (not safe))
                 (cons __tmp60853 __tmp60834)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5810958157_
                                                     _hd5810658147_
                                                     _hd5810358137_)
                                                    (_g5809458116_
                                                     _g5809558120_))))
                                            (_g5809458116_ _g5809558120_))))
                                    (_g5809458116_ _g5809558120_))))
                            (_g5809458116_ _g5809558120_))))
                    (_g5809458116_ _g5809558120_)))))
        (_g5809358185_ _$stx58090_))))
  (define |[:0:]#__table-ref|
    (lambda (_$stx58189_)
      (let* ((_g5819358227_
              (lambda (_g5819458223_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5819458223_)))
             (_g5819258338_
              (lambda (_g5819458231_)
                (if (gx#stx-pair? _g5819458231_)
                    (let ((_e5820358234_ (gx#syntax-e _g5819458231_)))
                      (let ((_hd5820258238_
                             (let ()
                               (declare (not safe))
                               (##car _e5820358234_)))
                            (_tl5820158241_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5820358234_))))
                        (if (gx#stx-pair? _tl5820158241_)
                            (let ((_e5820658244_ (gx#syntax-e _tl5820158241_)))
                              (let ((_hd5820558248_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5820658244_)))
                                    (_tl5820458251_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5820658244_))))
                                (if (gx#stx-pair? _tl5820458251_)
                                    (let ((_e5820958254_
                                           (gx#syntax-e _tl5820458251_)))
                                      (let ((_hd5820858258_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5820958254_)))
                                            (_tl5820758261_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5820958254_))))
                                        (if (gx#stx-pair? _tl5820758261_)
                                            (let ((_e5821258264_
                                                   (gx#syntax-e
                                                    _tl5820758261_)))
                                              (let ((_hd5821158268_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5821258264_)))
                                                    (_tl5821058271_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5821258264_))))
                                                (if (gx#stx-pair?
                                                     _tl5821058271_)
                                                    (let ((_e5821558274_
                                                           (gx#syntax-e
                                                            _tl5821058271_)))
                                                      (let ((_hd5821458278_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5821558274_)))
                    (_tl5821358281_
                     (let () (declare (not safe)) (##cdr _e5821558274_))))
                (if (gx#stx-pair? _tl5821358281_)
                    (let ((_e5821858284_ (gx#syntax-e _tl5821358281_)))
                      (let ((_hd5821758288_
                             (let ()
                               (declare (not safe))
                               (##car _e5821858284_)))
                            (_tl5821658291_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5821858284_))))
                        (if (gx#stx-pair? _tl5821658291_)
                            (let ((_e5822158294_ (gx#syntax-e _tl5821658291_)))
                              (let ((_hd5822058298_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5822158294_)))
                                    (_tl5821958301_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5822158294_))))
                                (if (gx#stx-null? _tl5821958301_)
                                    ((lambda (_L58304_
                                              _L58306_
                                              _L58307_
                                              _L58308_
                                              _L58309_
                                              _L58310_)
                                       (let ((__tmp61012
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp60854
                                              (let ((__tmp60972
                                                     (let ((__tmp61003
                                                            (let ((__tmp61011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp61004
                           (let ((__tmp61005
                                  (let ((__tmp61010
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp61006
                                         (let ((__tmp61008
                                                (let ((__tmp61009
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L58306_ '()))))
                                                  (declare (not safe))
                                                  (cons _L58308_ __tmp61009)))
                                               (__tmp61007
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58309_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61008 __tmp61007))))
                                    (declare (not safe))
                                    (cons __tmp61010 __tmp61006))))
                             (declare (not safe))
                             (cons __tmp61005 '()))))
                      (declare (not safe))
                      (cons __tmp61011 __tmp61004)))
                   (__tmp60973
                    (let ((__tmp60997
                           (let ((__tmp61002 (gx#datum->syntax '#f 'size))
                                 (__tmp60998
                                  (let ((__tmp60999
                                         (let ((__tmp61001
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp61000
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58310_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61001 __tmp61000))))
                                    (declare (not safe))
                                    (cons __tmp60999 '()))))
                             (declare (not safe))
                             (cons __tmp61002 __tmp60998)))
                          (__tmp60974
                           (let ((__tmp60989
                                  (let ((__tmp60996
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp60990
                                         (let ((__tmp60991
                                                (let ((__tmp60995
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp60992
                                                       (let ((__tmp60994
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp60993
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp60994 __tmp60993))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60995
                                                        __tmp60992))))
                                           (declare (not safe))
                                           (cons __tmp60991 '()))))
                                    (declare (not safe))
                                    (cons __tmp60996 __tmp60990)))
                                 (__tmp60975
                                  (let ((__tmp60976
                                         (let ((__tmp60988
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp60977
                                                (let ((__tmp60978
                                                       (let ((__tmp60987
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp60979
                                                              (let ((__tmp60981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60986
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp60982
                                    (let ((__tmp60985
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60983
                                           (let ((__tmp60984
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp60984 '()))))
                                      (declare (not safe))
                                      (cons __tmp60985 __tmp60983))))
                               (declare (not safe))
                               (cons __tmp60986 __tmp60982)))
                            (__tmp60980
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp60981 __tmp60980))))
                 (declare (not safe))
                 (cons __tmp60987 __tmp60979))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60978 '()))))
                                           (declare (not safe))
                                           (cons __tmp60988 __tmp60977))))
                                    (declare (not safe))
                                    (cons __tmp60976 '()))))
                             (declare (not safe))
                             (cons __tmp60989 __tmp60975))))
                      (declare (not safe))
                      (cons __tmp60997 __tmp60974))))
               (declare (not safe))
               (cons __tmp61003 __tmp60973)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60855
                                                     (let ((__tmp60856
                                                            (let ((__tmp60971
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60857
                           (let ((__tmp60970 (gx#datum->syntax '#f 'loop))
                                 (__tmp60858
                                  (let ((__tmp60957
                                         (let ((__tmp60966
                                                (let ((__tmp60969
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp60967
                                                       (let ((__tmp60968
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp60968
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60969
                                                        __tmp60967)))
                                               (__tmp60958
                                                (let ((__tmp60963
                                                       (let ((__tmp60965
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp60964
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp60965 __tmp60964)))
              (__tmp60959
               (let ((__tmp60960
                      (let ((__tmp60962 (gx#datum->syntax '#f 'deleted))
                            (__tmp60961
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp60962 __tmp60961))))
                 (declare (not safe))
                 (cons __tmp60960 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60963
                                                        __tmp60959))))
                                           (declare (not safe))
                                           (cons __tmp60966 __tmp60958)))
                                        (__tmp60859
                                         (let ((__tmp60860
                                                (let ((__tmp60956
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp60861
                                                       (let ((__tmp60948
                                                              (let ((__tmp60955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp60949
                             (let ((__tmp60950
                                    (let ((__tmp60954
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp60951
                                           (let ((__tmp60952
                                                  (let ((__tmp60953
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60953 '()))))
                                             (declare (not safe))
                                             (cons _L58310_ __tmp60952))))
                                      (declare (not safe))
                                      (cons __tmp60954 __tmp60951))))
                               (declare (not safe))
                               (cons __tmp60950 '()))))
                        (declare (not safe))
                        (cons __tmp60955 __tmp60949)))
                     (__tmp60862
                      (let ((__tmp60863
                             (let ((__tmp60947 (gx#datum->syntax '#f 'cond))
                                   (__tmp60864
                                    (let ((__tmp60938
                                           (let ((__tmp60940
                                                  (let ((__tmp60946
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp60941
                                                         (let ((__tmp60945
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp60942
                        (let ((__tmp60943
                               (let ((__tmp60944
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp60944 '()))))
                          (declare (not safe))
                          (cons __tmp60943 '()))))
                   (declare (not safe))
                   (cons __tmp60945 __tmp60942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60946
                                                          __tmp60941)))
                                                 (__tmp60939
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L58304_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60940 __tmp60939)))
                                          (__tmp60865
                                           (let ((__tmp60905
                                                  (let ((__tmp60931
                                                         (let ((__tmp60937
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp60932
                        (let ((__tmp60936 (gx#datum->syntax '#f 'k))
                              (__tmp60933
                               (let ((__tmp60934
                                      (let ((__tmp60935
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp60935 '()))))
                                 (declare (not safe))
                                 (cons __tmp60934 '()))))
                          (declare (not safe))
                          (cons __tmp60936 __tmp60933))))
                   (declare (not safe))
                   (cons __tmp60937 __tmp60932)))
                (__tmp60906
                 (let ((__tmp60907
                        (let ((__tmp60930 (gx#datum->syntax '#f 'loop))
                              (__tmp60908
                               (let ((__tmp60922
                                      (let ((__tmp60929
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp60923
                                             (let ((__tmp60928
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp60924
                                                    (let ((__tmp60927
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60925
                                                           (let ((__tmp60926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp60926 '()))))
              (declare (not safe))
              (cons __tmp60927 __tmp60925))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60928 __tmp60924))))
                                        (declare (not safe))
                                        (cons __tmp60929 __tmp60923)))
                                     (__tmp60909
                                      (let ((__tmp60917
                                             (let ((__tmp60921
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60918
                                                    (let ((__tmp60920
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60919
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60920
                                                            __tmp60919))))
                                               (declare (not safe))
                                               (cons __tmp60921 __tmp60918)))
                                            (__tmp60910
                                             (let ((__tmp60911
                                                    (let ((__tmp60916
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp60912
                                                           (let ((__tmp60915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp60913
                          (let ((__tmp60914 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp60914 '()))))
                     (declare (not safe))
                     (cons __tmp60915 __tmp60913))))
              (declare (not safe))
              (cons __tmp60916 __tmp60912))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60911 '()))))
                                        (declare (not safe))
                                        (cons __tmp60917 __tmp60910))))
                                 (declare (not safe))
                                 (cons __tmp60922 __tmp60909))))
                          (declare (not safe))
                          (cons __tmp60930 __tmp60908))))
                   (declare (not safe))
                   (cons __tmp60907 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60931
                                                          __tmp60906)))
                                                 (__tmp60866
                                                  (let ((__tmp60890
                                                         (let ((__tmp60901
                                                                (let ((__tmp60902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60903
                                      (let ((__tmp60904
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp60904 '()))))
                                 (declare (not safe))
                                 (cons _L58306_ __tmp60903))))
                          (declare (not safe))
                          (cons _L58307_ __tmp60902)))
                       (__tmp60891
                        (let ((__tmp60892
                               (let ((__tmp60900
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp60893
                                      (let ((__tmp60894
                                             (let ((__tmp60895
                                                    (let ((__tmp60899
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp60896
                                                           (let ((__tmp60898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp60897
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp60898 __tmp60897))))
              (declare (not safe))
              (cons __tmp60899 __tmp60896))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60895 '()))))
                                        (declare (not safe))
                                        (cons _L58310_ __tmp60894))))
                                 (declare (not safe))
                                 (cons __tmp60900 __tmp60893))))
                          (declare (not safe))
                          (cons __tmp60892 '()))))
                   (declare (not safe))
                   (cons __tmp60901 __tmp60891)))
                (__tmp60867
                 (let ((__tmp60868
                        (let ((__tmp60889 (gx#datum->syntax '#f 'else))
                              (__tmp60869
                               (let ((__tmp60870
                                      (let ((__tmp60888
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp60871
                                             (let ((__tmp60880
                                                    (let ((__tmp60887
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp60881
                                                           (let ((__tmp60886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp60882
                          (let ((__tmp60885 (gx#datum->syntax '#f 'i))
                                (__tmp60883
                                 (let ((__tmp60884
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp60884 '()))))
                            (declare (not safe))
                            (cons __tmp60885 __tmp60883))))
                     (declare (not safe))
                     (cons __tmp60886 __tmp60882))))
              (declare (not safe))
              (cons __tmp60887 __tmp60881)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60872
                                                    (let ((__tmp60875
                                                           (let ((__tmp60879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60876
                          (let ((__tmp60878 (gx#datum->syntax '#f 'i))
                                (__tmp60877
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60878 __tmp60877))))
                     (declare (not safe))
                     (cons __tmp60879 __tmp60876)))
                  (__tmp60873
                   (let ((__tmp60874 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp60874 '()))))
              (declare (not safe))
              (cons __tmp60875 __tmp60873))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60880 __tmp60872))))
                                        (declare (not safe))
                                        (cons __tmp60888 __tmp60871))))
                                 (declare (not safe))
                                 (cons __tmp60870 '()))))
                          (declare (not safe))
                          (cons __tmp60889 __tmp60869))))
                   (declare (not safe))
                   (cons __tmp60868 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60890
                                                          __tmp60867))))
                                             (declare (not safe))
                                             (cons __tmp60905 __tmp60866))))
                                      (declare (not safe))
                                      (cons __tmp60938 __tmp60865))))
                               (declare (not safe))
                               (cons __tmp60947 __tmp60864))))
                        (declare (not safe))
                        (cons __tmp60863 '()))))
                 (declare (not safe))
                 (cons __tmp60948 __tmp60862))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60956
                                                        __tmp60861))))
                                           (declare (not safe))
                                           (cons __tmp60860 '()))))
                                    (declare (not safe))
                                    (cons __tmp60957 __tmp60859))))
                             (declare (not safe))
                             (cons __tmp60970 __tmp60858))))
                      (declare (not safe))
                      (cons __tmp60971 __tmp60857))))
               (declare (not safe))
               (cons __tmp60856 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60972 __tmp60855))))
                                         (declare (not safe))
                                         (cons __tmp61012 __tmp60854)))
                                     _hd5822058298_
                                     _hd5821758288_
                                     _hd5821458278_
                                     _hd5821158268_
                                     _hd5820858258_
                                     _hd5820558248_)
                                    (_g5819358227_ _g5819458231_))))
                            (_g5819358227_ _g5819458231_))))
                    (_g5819358227_ _g5819458231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5819358227_
                                                     _g5819458231_))))
                                            (_g5819358227_ _g5819458231_))))
                                    (_g5819358227_ _g5819458231_))))
                            (_g5819358227_ _g5819458231_))))
                    (_g5819358227_ _g5819458231_)))))
        (_g5819258338_ _$stx58189_))))
  (define |[:0:]#__table-set!|
    (lambda (_$stx58342_)
      (let* ((_g5834658388_
              (lambda (_g5834758384_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5834758384_)))
             (_g5834558527_
              (lambda (_g5834758392_)
                (if (gx#stx-pair? _g5834758392_)
                    (let ((_e5835858395_ (gx#syntax-e _g5834758392_)))
                      (let ((_hd5835758399_
                             (let ()
                               (declare (not safe))
                               (##car _e5835858395_)))
                            (_tl5835658402_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5835858395_))))
                        (if (gx#stx-pair? _tl5835658402_)
                            (let ((_e5836158405_ (gx#syntax-e _tl5835658402_)))
                              (let ((_hd5836058409_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5836158405_)))
                                    (_tl5835958412_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5836158405_))))
                                (if (gx#stx-pair? _tl5835958412_)
                                    (let ((_e5836458415_
                                           (gx#syntax-e _tl5835958412_)))
                                      (let ((_hd5836358419_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5836458415_)))
                                            (_tl5836258422_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5836458415_))))
                                        (if (gx#stx-pair? _tl5836258422_)
                                            (let ((_e5836758425_
                                                   (gx#syntax-e
                                                    _tl5836258422_)))
                                              (let ((_hd5836658429_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5836758425_)))
                                                    (_tl5836558432_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5836758425_))))
                                                (if (gx#stx-pair?
                                                     _tl5836558432_)
                                                    (let ((_e5837058435_
                                                           (gx#syntax-e
                                                            _tl5836558432_)))
                                                      (let ((_hd5836958439_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5837058435_)))
                    (_tl5836858442_
                     (let () (declare (not safe)) (##cdr _e5837058435_))))
                (if (gx#stx-pair? _tl5836858442_)
                    (let ((_e5837358445_ (gx#syntax-e _tl5836858442_)))
                      (let ((_hd5837258449_
                             (let ()
                               (declare (not safe))
                               (##car _e5837358445_)))
                            (_tl5837158452_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5837358445_))))
                        (if (gx#stx-pair? _tl5837158452_)
                            (let ((_e5837658455_ (gx#syntax-e _tl5837158452_)))
                              (let ((_hd5837558459_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5837658455_)))
                                    (_tl5837458462_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5837658455_))))
                                (if (gx#stx-pair? _tl5837458462_)
                                    (let ((_e5837958465_
                                           (gx#syntax-e _tl5837458462_)))
                                      (let ((_hd5837858469_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5837958465_)))
                                            (_tl5837758472_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5837958465_))))
                                        (if (gx#stx-pair? _tl5837758472_)
                                            (let ((_e5838258475_
                                                   (gx#syntax-e
                                                    _tl5837758472_)))
                                              (let ((_hd5838158479_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5838258475_)))
                                                    (_tl5838058482_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5838258475_))))
                                                (if (gx#stx-null?
                                                     _tl5838058482_)
                                                    ((lambda (_L58485_
                                                              _L58487_
                                                              _L58488_
                                                              _L58489_
                                                              _L58490_
                                                              _L58491_
                                                              _L58492_
                                                              _L58493_)
                                                       (let ((__tmp61229
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp61013
                                                              (let ((__tmp61189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp61220
                                    (let ((__tmp61228
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp61221
                                           (let ((__tmp61222
                                                  (let ((__tmp61227
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp61223
                                                         (let ((__tmp61225
                                                                (let ((__tmp61226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L58489_ '()))))
                          (declare (not safe))
                          (cons _L58491_ __tmp61226)))
                       (__tmp61224
                        (let () (declare (not safe)) (cons _L58492_ '()))))
                   (declare (not safe))
                   (cons __tmp61225 __tmp61224))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61227
                                                          __tmp61223))))
                                             (declare (not safe))
                                             (cons __tmp61222 '()))))
                                      (declare (not safe))
                                      (cons __tmp61228 __tmp61221)))
                                   (__tmp61190
                                    (let ((__tmp61214
                                           (let ((__tmp61219
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp61215
                                                  (let ((__tmp61216
                                                         (let ((__tmp61218
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp61217
                        (let () (declare (not safe)) (cons _L58493_ '()))))
                   (declare (not safe))
                   (cons __tmp61218 __tmp61217))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61216 '()))))
                                             (declare (not safe))
                                             (cons __tmp61219 __tmp61215)))
                                          (__tmp61191
                                           (let ((__tmp61206
                                                  (let ((__tmp61213
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp61207
                                                         (let ((__tmp61208
                                                                (let ((__tmp61212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp61209
                               (let ((__tmp61211 (gx#datum->syntax '#f 'size))
                                     (__tmp61210
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp61211 __tmp61210))))
                          (declare (not safe))
                          (cons __tmp61212 __tmp61209))))
                   (declare (not safe))
                   (cons __tmp61208 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61213
                                                          __tmp61207)))
                                                 (__tmp61192
                                                  (let ((__tmp61193
                                                         (let ((__tmp61205
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp61194
                        (let ((__tmp61195
                               (let ((__tmp61204
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp61196
                                      (let ((__tmp61198
                                             (let ((__tmp61203
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp61199
                                                    (let ((__tmp61202
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp61200
                                                           (let ((__tmp61201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp61201 '()))))
              (declare (not safe))
              (cons __tmp61202 __tmp61200))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61203 __tmp61199)))
                                            (__tmp61197
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp61198 __tmp61197))))
                                 (declare (not safe))
                                 (cons __tmp61204 __tmp61196))))
                          (declare (not safe))
                          (cons __tmp61195 '()))))
                   (declare (not safe))
                   (cons __tmp61205 __tmp61194))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61193 '()))))
                                             (declare (not safe))
                                             (cons __tmp61206 __tmp61192))))
                                      (declare (not safe))
                                      (cons __tmp61214 __tmp61191))))
                               (declare (not safe))
                               (cons __tmp61220 __tmp61190)))
                            (__tmp61014
                             (let ((__tmp61015
                                    (let ((__tmp61188
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp61016
                                           (let ((__tmp61187
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp61017
                                                  (let ((__tmp61174
                                                         (let ((__tmp61183
                                                                (let ((__tmp61186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp61184
                               (let ((__tmp61185
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp61185 '()))))
                          (declare (not safe))
                          (cons __tmp61186 __tmp61184)))
                       (__tmp61175
                        (let ((__tmp61180
                               (let ((__tmp61182 (gx#datum->syntax '#f 'i))
                                     (__tmp61181
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp61182 __tmp61181)))
                              (__tmp61176
                               (let ((__tmp61177
                                      (let ((__tmp61179
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp61178
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp61179 __tmp61178))))
                                 (declare (not safe))
                                 (cons __tmp61177 '()))))
                          (declare (not safe))
                          (cons __tmp61180 __tmp61176))))
                   (declare (not safe))
                   (cons __tmp61183 __tmp61175)))
                (__tmp61018
                 (let ((__tmp61019
                        (let ((__tmp61173 (gx#datum->syntax '#f 'let))
                              (__tmp61020
                               (let ((__tmp61165
                                      (let ((__tmp61172
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp61166
                                             (let ((__tmp61167
                                                    (let ((__tmp61171
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp61168
                                                           (let ((__tmp61169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp61170 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp61170 '()))))
                     (declare (not safe))
                     (cons _L58493_ __tmp61169))))
              (declare (not safe))
              (cons __tmp61171 __tmp61168))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61167 '()))))
                                        (declare (not safe))
                                        (cons __tmp61172 __tmp61166)))
                                     (__tmp61021
                                      (let ((__tmp61022
                                             (let ((__tmp61164
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp61023
                                                    (let ((__tmp61105
                                                           (let ((__tmp61157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp61163 (gx#datum->syntax '#f 'eq?))
                                (__tmp61158
                                 (let ((__tmp61162 (gx#datum->syntax '#f 'k))
                                       (__tmp61159
                                        (let ((__tmp61160
                                               (let ((__tmp61161
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp61161 '()))))
                                          (declare (not safe))
                                          (cons __tmp61160 '()))))
                                   (declare (not safe))
                                   (cons __tmp61162 __tmp61159))))
                            (declare (not safe))
                            (cons __tmp61163 __tmp61158)))
                         (__tmp61106
                          (let ((__tmp61107
                                 (let ((__tmp61156 (gx#datum->syntax '#f 'if))
                                       (__tmp61108
                                        (let ((__tmp61155
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp61109
                                               (let ((__tmp61133
                                                      (let ((__tmp61154
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp61134
                                                             (let ((__tmp61148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp61153
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp61149
                                   (let ((__tmp61150
                                          (let ((__tmp61152
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp61151
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58489_ '()))))
                                            (declare (not safe))
                                            (cons __tmp61152 __tmp61151))))
                                     (declare (not safe))
                                     (cons _L58493_ __tmp61150))))
                              (declare (not safe))
                              (cons __tmp61153 __tmp61149)))
                           (__tmp61135
                            (let ((__tmp61138
                                   (let ((__tmp61147
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp61139
                                          (let ((__tmp61140
                                                 (let ((__tmp61142
                                                        (let ((__tmp61146
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp61143
                                                               (let ((__tmp61145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp61144
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp61145 __tmp61144))))
                  (declare (not safe))
                  (cons __tmp61146 __tmp61143)))
               (__tmp61141 (let () (declare (not safe)) (cons _L58488_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp61142
                                                         __tmp61141))))
                                            (declare (not safe))
                                            (cons _L58493_ __tmp61140))))
                                     (declare (not safe))
                                     (cons __tmp61147 __tmp61139)))
                                  (__tmp61136
                                   (let ((__tmp61137
                                          (let ()
                                            (declare (not safe))
                                            (cons _L58485_ '()))))
                                     (declare (not safe))
                                     (cons __tmp61137 '()))))
                              (declare (not safe))
                              (cons __tmp61138 __tmp61136))))
                       (declare (not safe))
                       (cons __tmp61148 __tmp61135))))
                (declare (not safe))
                (cons __tmp61154 __tmp61134)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp61110
                                                      (let ((__tmp61111
                                                             (let ((__tmp61132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp61112
                            (let ((__tmp61126
                                   (let ((__tmp61131
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp61127
                                          (let ((__tmp61128
                                                 (let ((__tmp61130
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp61129
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L58489_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp61130
                                                         __tmp61129))))
                                            (declare (not safe))
                                            (cons _L58493_ __tmp61128))))
                                     (declare (not safe))
                                     (cons __tmp61131 __tmp61127)))
                                  (__tmp61113
                                   (let ((__tmp61116
                                          (let ((__tmp61125
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp61117
                                                 (let ((__tmp61118
                                                        (let ((__tmp61120
                                                               (let ((__tmp61124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp61121
                              (let ((__tmp61123 (gx#datum->syntax '#f 'probe))
                                    (__tmp61122
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp61123 __tmp61122))))
                         (declare (not safe))
                         (cons __tmp61124 __tmp61121)))
                      (__tmp61119
                       (let () (declare (not safe)) (cons _L58488_ '()))))
                  (declare (not safe))
                  (cons __tmp61120 __tmp61119))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L58493_
                                                         __tmp61118))))
                                            (declare (not safe))
                                            (cons __tmp61125 __tmp61117)))
                                         (__tmp61114
                                          (let ((__tmp61115
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L58487_ '()))))
                                            (declare (not safe))
                                            (cons __tmp61115 '()))))
                                     (declare (not safe))
                                     (cons __tmp61116 __tmp61114))))
                              (declare (not safe))
                              (cons __tmp61126 __tmp61113))))
                       (declare (not safe))
                       (cons __tmp61132 __tmp61112))))
                (declare (not safe))
                (cons __tmp61111 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp61133
                                                       __tmp61110))))
                                          (declare (not safe))
                                          (cons __tmp61155 __tmp61109))))
                                   (declare (not safe))
                                   (cons __tmp61156 __tmp61108))))
                            (declare (not safe))
                            (cons __tmp61107 '()))))
                     (declare (not safe))
                     (cons __tmp61157 __tmp61106)))
                  (__tmp61024
                   (let ((__tmp61072
                          (let ((__tmp61098
                                 (let ((__tmp61104 (gx#datum->syntax '#f 'eq?))
                                       (__tmp61099
                                        (let ((__tmp61103
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp61100
                                               (let ((__tmp61101
                                                      (let ((__tmp61102
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp61102
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp61101 '()))))
                                          (declare (not safe))
                                          (cons __tmp61103 __tmp61100))))
                                   (declare (not safe))
                                   (cons __tmp61104 __tmp61099)))
                                (__tmp61073
                                 (let ((__tmp61074
                                        (let ((__tmp61097
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp61075
                                               (let ((__tmp61089
                                                      (let ((__tmp61096
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp61090
                                                             (let ((__tmp61095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp61091
                            (let ((__tmp61094 (gx#datum->syntax '#f 'i))
                                  (__tmp61092
                                   (let ((__tmp61093
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp61093 '()))))
                              (declare (not safe))
                              (cons __tmp61094 __tmp61092))))
                       (declare (not safe))
                       (cons __tmp61095 __tmp61091))))
                (declare (not safe))
                (cons __tmp61096 __tmp61090)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp61076
                                                      (let ((__tmp61084
                                                             (let ((__tmp61088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp61085
                            (let ((__tmp61087 (gx#datum->syntax '#f 'i))
                                  (__tmp61086
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp61087 __tmp61086))))
                       (declare (not safe))
                       (cons __tmp61088 __tmp61085)))
                    (__tmp61077
                     (let ((__tmp61078
                            (let ((__tmp61083 (gx#datum->syntax '#f 'or))
                                  (__tmp61079
                                   (let ((__tmp61082
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp61080
                                          (let ((__tmp61081
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp61081 '()))))
                                     (declare (not safe))
                                     (cons __tmp61082 __tmp61080))))
                              (declare (not safe))
                              (cons __tmp61083 __tmp61079))))
                       (declare (not safe))
                       (cons __tmp61078 '()))))
                (declare (not safe))
                (cons __tmp61084 __tmp61077))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp61089
                                                       __tmp61076))))
                                          (declare (not safe))
                                          (cons __tmp61097 __tmp61075))))
                                   (declare (not safe))
                                   (cons __tmp61074 '()))))
                            (declare (not safe))
                            (cons __tmp61098 __tmp61073)))
                         (__tmp61025
                          (let ((__tmp61049
                                 (let ((__tmp61068
                                        (let ((__tmp61069
                                               (let ((__tmp61070
                                                      (let ((__tmp61071
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp61071
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L58489_ __tmp61070))))
                                          (declare (not safe))
                                          (cons _L58490_ __tmp61069)))
                                       (__tmp61050
                                        (let ((__tmp61062
                                               (let ((__tmp61067
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp61063
                                                      (let ((__tmp61064
                                                             (let ((__tmp61066
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp61065
                            (let () (declare (not safe)) (cons _L58489_ '()))))
                       (declare (not safe))
                       (cons __tmp61066 __tmp61065))))
                (declare (not safe))
                (cons _L58493_ __tmp61064))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp61067 __tmp61063)))
                                              (__tmp61051
                                               (let ((__tmp61052
                                                      (let ((__tmp61061
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp61053
                                                             (let ((__tmp61054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp61056
                                   (let ((__tmp61060
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp61057
                                          (let ((__tmp61059
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp61058
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp61059 __tmp61058))))
                                     (declare (not safe))
                                     (cons __tmp61060 __tmp61057)))
                                  (__tmp61055
                                   (let ()
                                     (declare (not safe))
                                     (cons _L58488_ '()))))
                              (declare (not safe))
                              (cons __tmp61056 __tmp61055))))
                       (declare (not safe))
                       (cons _L58493_ __tmp61054))))
                (declare (not safe))
                (cons __tmp61061 __tmp61053))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp61052 '()))))
                                          (declare (not safe))
                                          (cons __tmp61062 __tmp61051))))
                                   (declare (not safe))
                                   (cons __tmp61068 __tmp61050)))
                                (__tmp61026
                                 (let ((__tmp61027
                                        (let ((__tmp61048
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp61028
                                               (let ((__tmp61029
                                                      (let ((__tmp61047
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp61030
                                                             (let ((__tmp61039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp61046
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp61040
                                   (let ((__tmp61045
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp61041
                                          (let ((__tmp61044
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp61042
                                                 (let ((__tmp61043
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp61043 '()))))
                                            (declare (not safe))
                                            (cons __tmp61044 __tmp61042))))
                                     (declare (not safe))
                                     (cons __tmp61045 __tmp61041))))
                              (declare (not safe))
                              (cons __tmp61046 __tmp61040)))
                           (__tmp61031
                            (let ((__tmp61034
                                   (let ((__tmp61038
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp61035
                                          (let ((__tmp61037
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp61036
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp61037 __tmp61036))))
                                     (declare (not safe))
                                     (cons __tmp61038 __tmp61035)))
                                  (__tmp61032
                                   (let ((__tmp61033
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp61033 '()))))
                              (declare (not safe))
                              (cons __tmp61034 __tmp61032))))
                       (declare (not safe))
                       (cons __tmp61039 __tmp61031))))
                (declare (not safe))
                (cons __tmp61047 __tmp61030))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp61029 '()))))
                                          (declare (not safe))
                                          (cons __tmp61048 __tmp61028))))
                                   (declare (not safe))
                                   (cons __tmp61027 '()))))
                            (declare (not safe))
                            (cons __tmp61049 __tmp61026))))
                     (declare (not safe))
                     (cons __tmp61072 __tmp61025))))
              (declare (not safe))
              (cons __tmp61105 __tmp61024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61164 __tmp61023))))
                                        (declare (not safe))
                                        (cons __tmp61022 '()))))
                                 (declare (not safe))
                                 (cons __tmp61165 __tmp61021))))
                          (declare (not safe))
                          (cons __tmp61173 __tmp61020))))
                   (declare (not safe))
                   (cons __tmp61019 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61174
                                                          __tmp61018))))
                                             (declare (not safe))
                                             (cons __tmp61187 __tmp61017))))
                                      (declare (not safe))
                                      (cons __tmp61188 __tmp61016))))
                               (declare (not safe))
                               (cons __tmp61015 '()))))
                        (declare (not safe))
                        (cons __tmp61189 __tmp61014))))
                 (declare (not safe))
                 (cons __tmp61229 __tmp61013)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5838158479_
                                                     _hd5837858469_
                                                     _hd5837558459_
                                                     _hd5837258449_
                                                     _hd5836958439_
                                                     _hd5836658429_
                                                     _hd5836358419_
                                                     _hd5836058409_)
                                                    (_g5834658388_
                                                     _g5834758392_))))
                                            (_g5834658388_ _g5834758392_))))
                                    (_g5834658388_ _g5834758392_))))
                            (_g5834658388_ _g5834758392_))))
                    (_g5834658388_ _g5834758392_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5834658388_
                                                     _g5834758392_))))
                                            (_g5834658388_ _g5834758392_))))
                                    (_g5834658388_ _g5834758392_))))
                            (_g5834658388_ _g5834758392_))))
                    (_g5834658388_ _g5834758392_)))))
        (_g5834558527_ _$stx58342_))))
  (define |[:0:]#__table-update!|
    (lambda (_$stx58531_)
      (let* ((_g5853558581_
              (lambda (_g5853658577_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5853658577_)))
             (_g5853458734_
              (lambda (_g5853658585_)
                (if (gx#stx-pair? _g5853658585_)
                    (let ((_e5854858588_ (gx#syntax-e _g5853658585_)))
                      (let ((_hd5854758592_
                             (let ()
                               (declare (not safe))
                               (##car _e5854858588_)))
                            (_tl5854658595_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5854858588_))))
                        (if (gx#stx-pair? _tl5854658595_)
                            (let ((_e5855158598_ (gx#syntax-e _tl5854658595_)))
                              (let ((_hd5855058602_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5855158598_)))
                                    (_tl5854958605_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5855158598_))))
                                (if (gx#stx-pair? _tl5854958605_)
                                    (let ((_e5855458608_
                                           (gx#syntax-e _tl5854958605_)))
                                      (let ((_hd5855358612_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5855458608_)))
                                            (_tl5855258615_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5855458608_))))
                                        (if (gx#stx-pair? _tl5855258615_)
                                            (let ((_e5855758618_
                                                   (gx#syntax-e
                                                    _tl5855258615_)))
                                              (let ((_hd5855658622_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5855758618_)))
                                                    (_tl5855558625_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5855758618_))))
                                                (if (gx#stx-pair?
                                                     _tl5855558625_)
                                                    (let ((_e5856058628_
                                                           (gx#syntax-e
                                                            _tl5855558625_)))
                                                      (let ((_hd5855958632_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5856058628_)))
                    (_tl5855858635_
                     (let () (declare (not safe)) (##cdr _e5856058628_))))
                (if (gx#stx-pair? _tl5855858635_)
                    (let ((_e5856358638_ (gx#syntax-e _tl5855858635_)))
                      (let ((_hd5856258642_
                             (let ()
                               (declare (not safe))
                               (##car _e5856358638_)))
                            (_tl5856158645_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5856358638_))))
                        (if (gx#stx-pair? _tl5856158645_)
                            (let ((_e5856658648_ (gx#syntax-e _tl5856158645_)))
                              (let ((_hd5856558652_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5856658648_)))
                                    (_tl5856458655_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5856658648_))))
                                (if (gx#stx-pair? _tl5856458655_)
                                    (let ((_e5856958658_
                                           (gx#syntax-e _tl5856458655_)))
                                      (let ((_hd5856858662_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5856958658_)))
                                            (_tl5856758665_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5856958658_))))
                                        (if (gx#stx-pair? _tl5856758665_)
                                            (let ((_e5857258668_
                                                   (gx#syntax-e
                                                    _tl5856758665_)))
                                              (let ((_hd5857158672_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5857258668_)))
                                                    (_tl5857058675_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5857258668_))))
                                                (if (gx#stx-pair?
                                                     _tl5857058675_)
                                                    (let ((_e5857558678_
                                                           (gx#syntax-e
                                                            _tl5857058675_)))
                                                      (let ((_hd5857458682_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5857558678_)))
                    (_tl5857358685_
                     (let () (declare (not safe)) (##cdr _e5857558678_))))
                (if (gx#stx-null? _tl5857358685_)
                    ((lambda (_L58688_
                              _L58690_
                              _L58691_
                              _L58692_
                              _L58693_
                              _L58694_
                              _L58695_
                              _L58696_
                              _L58697_)
                       (let ((__tmp61461 (gx#datum->syntax '#f 'let*))
                             (__tmp61230
                              (let ((__tmp61421
                                     (let ((__tmp61452
                                            (let ((__tmp61460
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp61453
                                                   (let ((__tmp61454
                                                          (let ((__tmp61459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'fxxor))
                        (__tmp61455
                         (let ((__tmp61457
                                (let ((__tmp61458
                                       (let ()
                                         (declare (not safe))
                                         (cons _L58693_ '()))))
                                  (declare (not safe))
                                  (cons _L58695_ __tmp61458)))
                               (__tmp61456
                                (let ()
                                  (declare (not safe))
                                  (cons _L58696_ '()))))
                           (declare (not safe))
                           (cons __tmp61457 __tmp61456))))
                    (declare (not safe))
                    (cons __tmp61459 __tmp61455))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61454 '()))))
                                              (declare (not safe))
                                              (cons __tmp61460 __tmp61453)))
                                           (__tmp61422
                                            (let ((__tmp61446
                                                   (let ((__tmp61451
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size))
                                                         (__tmp61447
                                                          (let ((__tmp61448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61450
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp61449
                                (let ()
                                  (declare (not safe))
                                  (cons _L58697_ '()))))
                           (declare (not safe))
                           (cons __tmp61450 __tmp61449))))
                    (declare (not safe))
                    (cons __tmp61448 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61451
                                                           __tmp61447)))
                                                  (__tmp61423
                                                   (let ((__tmp61438
                                                          (let ((__tmp61445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'entries))
                        (__tmp61439
                         (let ((__tmp61440
                                (let ((__tmp61444
                                       (gx#datum->syntax '#f 'fxquotient))
                                      (__tmp61441
                                       (let ((__tmp61443
                                              (gx#datum->syntax '#f 'size))
                                             (__tmp61442
                                              (let ()
                                                (declare (not safe))
                                                (cons '2 '()))))
                                         (declare (not safe))
                                         (cons __tmp61443 __tmp61442))))
                                  (declare (not safe))
                                  (cons __tmp61444 __tmp61441))))
                           (declare (not safe))
                           (cons __tmp61440 '()))))
                    (declare (not safe))
                    (cons __tmp61445 __tmp61439)))
                 (__tmp61424
                  (let ((__tmp61425
                         (let ((__tmp61437 (gx#datum->syntax '#f 'start))
                               (__tmp61426
                                (let ((__tmp61427
                                       (let ((__tmp61436
                                              (gx#datum->syntax
                                               '#f
                                               'fxarithmetic-shift-left))
                                             (__tmp61428
                                              (let ((__tmp61430
                                                     (let ((__tmp61435
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fxmodulo))
                                                           (__tmp61431
                                                            (let ((__tmp61434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp61432
                           (let ((__tmp61433 (gx#datum->syntax '#f 'entries)))
                             (declare (not safe))
                             (cons __tmp61433 '()))))
                      (declare (not safe))
                      (cons __tmp61434 __tmp61432))))
               (declare (not safe))
               (cons __tmp61435 __tmp61431)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp61429
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '1 '()))))
                                                (declare (not safe))
                                                (cons __tmp61430 __tmp61429))))
                                         (declare (not safe))
                                         (cons __tmp61436 __tmp61428))))
                                  (declare (not safe))
                                  (cons __tmp61427 '()))))
                           (declare (not safe))
                           (cons __tmp61437 __tmp61426))))
                    (declare (not safe))
                    (cons __tmp61425 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61438
                                                           __tmp61424))))
                                              (declare (not safe))
                                              (cons __tmp61446 __tmp61423))))
                                       (declare (not safe))
                                       (cons __tmp61452 __tmp61422)))
                                    (__tmp61231
                                     (let ((__tmp61232
                                            (let ((__tmp61420
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp61233
                                                   (let ((__tmp61419
                                                          (gx#datum->syntax
                                                           '#f
                                                           'loop))
                                                         (__tmp61234
                                                          (let ((__tmp61406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61415
                                (let ((__tmp61418
                                       (gx#datum->syntax '#f 'probe))
                                      (__tmp61416
                                       (let ((__tmp61417
                                              (gx#datum->syntax '#f 'start)))
                                         (declare (not safe))
                                         (cons __tmp61417 '()))))
                                  (declare (not safe))
                                  (cons __tmp61418 __tmp61416)))
                               (__tmp61407
                                (let ((__tmp61412
                                       (let ((__tmp61414
                                              (gx#datum->syntax '#f 'i))
                                             (__tmp61413
                                              (let ()
                                                (declare (not safe))
                                                (cons '1 '()))))
                                         (declare (not safe))
                                         (cons __tmp61414 __tmp61413)))
                                      (__tmp61408
                                       (let ((__tmp61409
                                              (let ((__tmp61411
                                                     (gx#datum->syntax
                                                      '#f
                                                      'deleted))
                                                    (__tmp61410
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons __tmp61411 __tmp61410))))
                                         (declare (not safe))
                                         (cons __tmp61409 '()))))
                                  (declare (not safe))
                                  (cons __tmp61412 __tmp61408))))
                           (declare (not safe))
                           (cons __tmp61415 __tmp61407)))
                        (__tmp61235
                         (let ((__tmp61236
                                (let ((__tmp61405 (gx#datum->syntax '#f 'let))
                                      (__tmp61237
                                       (let ((__tmp61397
                                              (let ((__tmp61404
                                                     (gx#datum->syntax '#f 'k))
                                                    (__tmp61398
                                                     (let ((__tmp61399
                                                            (let ((__tmp61403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-ref))
                          (__tmp61400
                           (let ((__tmp61401
                                  (let ((__tmp61402
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp61402 '()))))
                             (declare (not safe))
                             (cons _L58697_ __tmp61401))))
                      (declare (not safe))
                      (cons __tmp61403 __tmp61400))))
               (declare (not safe))
               (cons __tmp61399 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61404 __tmp61398)))
                                             (__tmp61238
                                              (let ((__tmp61239
                                                     (let ((__tmp61396
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cond))
                                                           (__tmp61240
                                                            (let ((__tmp61333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp61389
                                  (let ((__tmp61395
                                         (gx#datum->syntax '#f 'eq?))
                                        (__tmp61390
                                         (let ((__tmp61394
                                                (gx#datum->syntax '#f 'k))
                                               (__tmp61391
                                                (let ((__tmp61392
                                                       (let ((__tmp61393
                                                              (gx#datum->syntax
                                                               '#f
                                                               'macro-unused-obj)))
                                                         (declare (not safe))
                                                         (cons __tmp61393
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp61392 '()))))
                                           (declare (not safe))
                                           (cons __tmp61394 __tmp61391))))
                                    (declare (not safe))
                                    (cons __tmp61395 __tmp61390)))
                                 (__tmp61334
                                  (let ((__tmp61335
                                         (let ((__tmp61388
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp61336
                                                (let ((__tmp61387
                                                       (gx#datum->syntax
                                                        '#f
                                                        'deleted))
                                                      (__tmp61337
                                                       (let ((__tmp61363
                                                              (let ((__tmp61386
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin))
                            (__tmp61364
                             (let ((__tmp61380
                                    (let ((__tmp61385
                                           (gx#datum->syntax '#f 'vector-set!))
                                          (__tmp61381
                                           (let ((__tmp61382
                                                  (let ((__tmp61384
                                                         (gx#datum->syntax
                                                          '#f
                                                          'deleted))
                                                        (__tmp61383
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61384
                                                          __tmp61383))))
                                             (declare (not safe))
                                             (cons _L58697_ __tmp61382))))
                                      (declare (not safe))
                                      (cons __tmp61385 __tmp61381)))
                                   (__tmp61365
                                    (let ((__tmp61368
                                           (let ((__tmp61379
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp61369
                                                  (let ((__tmp61370
                                                         (let ((__tmp61374
                                                                (let ((__tmp61378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fx+))
                              (__tmp61375
                               (let ((__tmp61377
                                      (gx#datum->syntax '#f 'deleted))
                                     (__tmp61376
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp61377 __tmp61376))))
                          (declare (not safe))
                          (cons __tmp61378 __tmp61375)))
                       (__tmp61371
                        (let ((__tmp61372
                               (let ((__tmp61373
                                      (let ()
                                        (declare (not safe))
                                        (cons _L58691_ '()))))
                                 (declare (not safe))
                                 (cons _L58692_ __tmp61373))))
                          (declare (not safe))
                          (cons __tmp61372 '()))))
                   (declare (not safe))
                   (cons __tmp61374 __tmp61371))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58697_
                                                          __tmp61370))))
                                             (declare (not safe))
                                             (cons __tmp61379 __tmp61369)))
                                          (__tmp61366
                                           (let ((__tmp61367
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L58688_ '()))))
                                             (declare (not safe))
                                             (cons __tmp61367 '()))))
                                      (declare (not safe))
                                      (cons __tmp61368 __tmp61366))))
                               (declare (not safe))
                               (cons __tmp61380 __tmp61365))))
                        (declare (not safe))
                        (cons __tmp61386 __tmp61364)))
                     (__tmp61338
                      (let ((__tmp61339
                             (let ((__tmp61362 (gx#datum->syntax '#f 'begin))
                                   (__tmp61340
                                    (let ((__tmp61356
                                           (let ((__tmp61361
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp61357
                                                  (let ((__tmp61358
                                                         (let ((__tmp61360
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe))
                       (__tmp61359
                        (let () (declare (not safe)) (cons _L58693_ '()))))
                   (declare (not safe))
                   (cons __tmp61360 __tmp61359))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58697_
                                                          __tmp61358))))
                                             (declare (not safe))
                                             (cons __tmp61361 __tmp61357)))
                                          (__tmp61341
                                           (let ((__tmp61344
                                                  (let ((__tmp61355
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-set!))
                                                        (__tmp61345
                                                         (let ((__tmp61346
                                                                (let ((__tmp61350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp61354 (gx#datum->syntax '#f 'fx+))
                                     (__tmp61351
                                      (let ((__tmp61353
                                             (gx#datum->syntax '#f 'probe))
                                            (__tmp61352
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp61353 __tmp61352))))
                                 (declare (not safe))
                                 (cons __tmp61354 __tmp61351)))
                              (__tmp61347
                               (let ((__tmp61348
                                      (let ((__tmp61349
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58691_ '()))))
                                        (declare (not safe))
                                        (cons _L58692_ __tmp61349))))
                                 (declare (not safe))
                                 (cons __tmp61348 '()))))
                          (declare (not safe))
                          (cons __tmp61350 __tmp61347))))
                   (declare (not safe))
                   (cons _L58697_ __tmp61346))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61355
                                                          __tmp61345)))
                                                 (__tmp61342
                                                  (let ((__tmp61343
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61343 '()))))
                                             (declare (not safe))
                                             (cons __tmp61344 __tmp61342))))
                                      (declare (not safe))
                                      (cons __tmp61356 __tmp61341))))
                               (declare (not safe))
                               (cons __tmp61362 __tmp61340))))
                        (declare (not safe))
                        (cons __tmp61339 '()))))
                 (declare (not safe))
                 (cons __tmp61363 __tmp61338))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61387
                                                        __tmp61337))))
                                           (declare (not safe))
                                           (cons __tmp61388 __tmp61336))))
                                    (declare (not safe))
                                    (cons __tmp61335 '()))))
                             (declare (not safe))
                             (cons __tmp61389 __tmp61334)))
                          (__tmp61241
                           (let ((__tmp61300
                                  (let ((__tmp61326
                                         (let ((__tmp61332
                                                (gx#datum->syntax '#f 'eq?))
                                               (__tmp61327
                                                (let ((__tmp61331
                                                       (gx#datum->syntax
                                                        '#f
                                                        'k))
                                                      (__tmp61328
                                                       (let ((__tmp61329
                                                              (let ((__tmp61330
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'macro-deleted-obj)))
                        (declare (not safe))
                        (cons __tmp61330 '()))))
                 (declare (not safe))
                 (cons __tmp61329 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61331
                                                        __tmp61328))))
                                           (declare (not safe))
                                           (cons __tmp61332 __tmp61327)))
                                        (__tmp61301
                                         (let ((__tmp61302
                                                (let ((__tmp61325
                                                       (gx#datum->syntax
                                                        '#f
                                                        'loop))
                                                      (__tmp61303
                                                       (let ((__tmp61317
                                                              (let ((__tmp61324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe-step))
                            (__tmp61318
                             (let ((__tmp61323 (gx#datum->syntax '#f 'start))
                                   (__tmp61319
                                    (let ((__tmp61322
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp61320
                                           (let ((__tmp61321
                                                  (gx#datum->syntax
                                                   '#f
                                                   'size)))
                                             (declare (not safe))
                                             (cons __tmp61321 '()))))
                                      (declare (not safe))
                                      (cons __tmp61322 __tmp61320))))
                               (declare (not safe))
                               (cons __tmp61323 __tmp61319))))
                        (declare (not safe))
                        (cons __tmp61324 __tmp61318)))
                     (__tmp61304
                      (let ((__tmp61312
                             (let ((__tmp61316 (gx#datum->syntax '#f 'fx+))
                                   (__tmp61313
                                    (let ((__tmp61315
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp61314
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp61315 __tmp61314))))
                               (declare (not safe))
                               (cons __tmp61316 __tmp61313)))
                            (__tmp61305
                             (let ((__tmp61306
                                    (let ((__tmp61311
                                           (gx#datum->syntax '#f 'or))
                                          (__tmp61307
                                           (let ((__tmp61310
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted))
                                                 (__tmp61308
                                                  (let ((__tmp61309
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp61309 '()))))
                                             (declare (not safe))
                                             (cons __tmp61310 __tmp61308))))
                                      (declare (not safe))
                                      (cons __tmp61311 __tmp61307))))
                               (declare (not safe))
                               (cons __tmp61306 '()))))
                        (declare (not safe))
                        (cons __tmp61312 __tmp61305))))
                 (declare (not safe))
                 (cons __tmp61317 __tmp61304))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61325
                                                        __tmp61303))))
                                           (declare (not safe))
                                           (cons __tmp61302 '()))))
                                    (declare (not safe))
                                    (cons __tmp61326 __tmp61301)))
                                 (__tmp61242
                                  (let ((__tmp61266
                                         (let ((__tmp61296
                                                (let ((__tmp61297
                                                       (let ((__tmp61298
                                                              (let ((__tmp61299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k)))
                        (declare (not safe))
                        (cons __tmp61299 '()))))
                 (declare (not safe))
                 (cons _L58693_ __tmp61298))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L58694_ __tmp61297)))
                                               (__tmp61267
                                                (let ((__tmp61290
                                                       (let ((__tmp61295
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-set!))
                                                             (__tmp61291
                                                              (let ((__tmp61292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp61294 (gx#datum->syntax '#f 'probe))
                                   (__tmp61293
                                    (let ()
                                      (declare (not safe))
                                      (cons _L58693_ '()))))
                               (declare (not safe))
                               (cons __tmp61294 __tmp61293))))
                        (declare (not safe))
                        (cons _L58697_ __tmp61292))))
                 (declare (not safe))
                 (cons __tmp61295 __tmp61291)))
              (__tmp61268
               (let ((__tmp61269
                      (let ((__tmp61289 (gx#datum->syntax '#f 'vector-set!))
                            (__tmp61270
                             (let ((__tmp61271
                                    (let ((__tmp61284
                                           (let ((__tmp61288
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp61285
                                                  (let ((__tmp61287
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe))
                                                        (__tmp61286
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp61287
                                                          __tmp61286))))
                                             (declare (not safe))
                                             (cons __tmp61288 __tmp61285)))
                                          (__tmp61272
                                           (let ((__tmp61273
                                                  (let ((__tmp61274
                                                         (let ((__tmp61275
                                                                (let ((__tmp61283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'vector-ref))
                              (__tmp61276
                               (let ((__tmp61277
                                      (let ((__tmp61278
                                             (let ((__tmp61282
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp61279
                                                    (let ((__tmp61281
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp61280
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp61281
                                                            __tmp61280))))
                                               (declare (not safe))
                                               (cons __tmp61282 __tmp61279))))
                                        (declare (not safe))
                                        (cons __tmp61278 '()))))
                                 (declare (not safe))
                                 (cons _L58697_ __tmp61277))))
                          (declare (not safe))
                          (cons __tmp61283 __tmp61276))))
                   (declare (not safe))
                   (cons __tmp61275 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58692_
                                                          __tmp61274))))
                                             (declare (not safe))
                                             (cons __tmp61273 '()))))
                                      (declare (not safe))
                                      (cons __tmp61284 __tmp61272))))
                               (declare (not safe))
                               (cons _L58697_ __tmp61271))))
                        (declare (not safe))
                        (cons __tmp61289 __tmp61270))))
                 (declare (not safe))
                 (cons __tmp61269 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61290
                                                        __tmp61268))))
                                           (declare (not safe))
                                           (cons __tmp61296 __tmp61267)))
                                        (__tmp61243
                                         (let ((__tmp61244
                                                (let ((__tmp61265
                                                       (gx#datum->syntax
                                                        '#f
                                                        'else))
                                                      (__tmp61245
                                                       (let ((__tmp61246
                                                              (let ((__tmp61264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'loop))
                            (__tmp61247
                             (let ((__tmp61256
                                    (let ((__tmp61263
                                           (gx#datum->syntax '#f 'probe-step))
                                          (__tmp61257
                                           (let ((__tmp61262
                                                  (gx#datum->syntax
                                                   '#f
                                                   'start))
                                                 (__tmp61258
                                                  (let ((__tmp61261
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp61259
                                                         (let ((__tmp61260
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'size)))
                   (declare (not safe))
                   (cons __tmp61260 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61261
                                                          __tmp61259))))
                                             (declare (not safe))
                                             (cons __tmp61262 __tmp61258))))
                                      (declare (not safe))
                                      (cons __tmp61263 __tmp61257)))
                                   (__tmp61248
                                    (let ((__tmp61251
                                           (let ((__tmp61255
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp61252
                                                  (let ((__tmp61254
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp61253
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp61254
                                                          __tmp61253))))
                                             (declare (not safe))
                                             (cons __tmp61255 __tmp61252)))
                                          (__tmp61249
                                           (let ((__tmp61250
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted)))
                                             (declare (not safe))
                                             (cons __tmp61250 '()))))
                                      (declare (not safe))
                                      (cons __tmp61251 __tmp61249))))
                               (declare (not safe))
                               (cons __tmp61256 __tmp61248))))
                        (declare (not safe))
                        (cons __tmp61264 __tmp61247))))
                 (declare (not safe))
                 (cons __tmp61246 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61265
                                                        __tmp61245))))
                                           (declare (not safe))
                                           (cons __tmp61244 '()))))
                                    (declare (not safe))
                                    (cons __tmp61266 __tmp61243))))
                             (declare (not safe))
                             (cons __tmp61300 __tmp61242))))
                      (declare (not safe))
                      (cons __tmp61333 __tmp61241))))
               (declare (not safe))
               (cons __tmp61396 __tmp61240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61239 '()))))
                                         (declare (not safe))
                                         (cons __tmp61397 __tmp61238))))
                                  (declare (not safe))
                                  (cons __tmp61405 __tmp61237))))
                           (declare (not safe))
                           (cons __tmp61236 '()))))
                    (declare (not safe))
                    (cons __tmp61406 __tmp61235))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61419
                                                           __tmp61234))))
                                              (declare (not safe))
                                              (cons __tmp61420 __tmp61233))))
                                       (declare (not safe))
                                       (cons __tmp61232 '()))))
                                (declare (not safe))
                                (cons __tmp61421 __tmp61231))))
                         (declare (not safe))
                         (cons __tmp61461 __tmp61230)))
                     _hd5857458682_
                     _hd5857158672_
                     _hd5856858662_
                     _hd5856558652_
                     _hd5856258642_
                     _hd5855958632_
                     _hd5855658622_
                     _hd5855358612_
                     _hd5855058602_)
                    (_g5853558581_ _g5853658585_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5853558581_
                                                     _g5853658585_))))
                                            (_g5853558581_ _g5853658585_))))
                                    (_g5853558581_ _g5853658585_))))
                            (_g5853558581_ _g5853658585_))))
                    (_g5853558581_ _g5853658585_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5853558581_
                                                     _g5853658585_))))
                                            (_g5853558581_ _g5853658585_))))
                                    (_g5853558581_ _g5853658585_))))
                            (_g5853558581_ _g5853658585_))))
                    (_g5853558581_ _g5853658585_)))))
        (_g5853458734_ _$stx58531_))))
  (define |[:0:]#__table-del!|
    (lambda (_$stx58738_)
      (let* ((_g5874258776_
              (lambda (_g5874358772_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5874358772_)))
             (_g5874158887_
              (lambda (_g5874358780_)
                (if (gx#stx-pair? _g5874358780_)
                    (let ((_e5875258783_ (gx#syntax-e _g5874358780_)))
                      (let ((_hd5875158787_
                             (let ()
                               (declare (not safe))
                               (##car _e5875258783_)))
                            (_tl5875058790_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5875258783_))))
                        (if (gx#stx-pair? _tl5875058790_)
                            (let ((_e5875558793_ (gx#syntax-e _tl5875058790_)))
                              (let ((_hd5875458797_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5875558793_)))
                                    (_tl5875358800_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5875558793_))))
                                (if (gx#stx-pair? _tl5875358800_)
                                    (let ((_e5875858803_
                                           (gx#syntax-e _tl5875358800_)))
                                      (let ((_hd5875758807_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5875858803_)))
                                            (_tl5875658810_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5875858803_))))
                                        (if (gx#stx-pair? _tl5875658810_)
                                            (let ((_e5876158813_
                                                   (gx#syntax-e
                                                    _tl5875658810_)))
                                              (let ((_hd5876058817_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5876158813_)))
                                                    (_tl5875958820_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5876158813_))))
                                                (if (gx#stx-pair?
                                                     _tl5875958820_)
                                                    (let ((_e5876458823_
                                                           (gx#syntax-e
                                                            _tl5875958820_)))
                                                      (let ((_hd5876358827_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5876458823_)))
                    (_tl5876258830_
                     (let () (declare (not safe)) (##cdr _e5876458823_))))
                (if (gx#stx-pair? _tl5876258830_)
                    (let ((_e5876758833_ (gx#syntax-e _tl5876258830_)))
                      (let ((_hd5876658837_
                             (let ()
                               (declare (not safe))
                               (##car _e5876758833_)))
                            (_tl5876558840_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5876758833_))))
                        (if (gx#stx-pair? _tl5876558840_)
                            (let ((_e5877058843_ (gx#syntax-e _tl5876558840_)))
                              (let ((_hd5876958847_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5877058843_)))
                                    (_tl5876858850_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5877058843_))))
                                (if (gx#stx-null? _tl5876858850_)
                                    ((lambda (_L58853_
                                              _L58855_
                                              _L58856_
                                              _L58857_
                                              _L58858_
                                              _L58859_)
                                       (let ((__tmp61623
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp61462
                                              (let ((__tmp61583
                                                     (let ((__tmp61614
                                                            (let ((__tmp61622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp61615
                           (let ((__tmp61616
                                  (let ((__tmp61621
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp61617
                                         (let ((__tmp61619
                                                (let ((__tmp61620
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L58855_ '()))))
                                                  (declare (not safe))
                                                  (cons _L58857_ __tmp61620)))
                                               (__tmp61618
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58858_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61619 __tmp61618))))
                                    (declare (not safe))
                                    (cons __tmp61621 __tmp61617))))
                             (declare (not safe))
                             (cons __tmp61616 '()))))
                      (declare (not safe))
                      (cons __tmp61622 __tmp61615)))
                   (__tmp61584
                    (let ((__tmp61608
                           (let ((__tmp61613 (gx#datum->syntax '#f 'size))
                                 (__tmp61609
                                  (let ((__tmp61610
                                         (let ((__tmp61612
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp61611
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58859_ '()))))
                                           (declare (not safe))
                                           (cons __tmp61612 __tmp61611))))
                                    (declare (not safe))
                                    (cons __tmp61610 '()))))
                             (declare (not safe))
                             (cons __tmp61613 __tmp61609)))
                          (__tmp61585
                           (let ((__tmp61600
                                  (let ((__tmp61607
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp61601
                                         (let ((__tmp61602
                                                (let ((__tmp61606
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp61603
                                                       (let ((__tmp61605
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp61604
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp61605 __tmp61604))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61606
                                                        __tmp61603))))
                                           (declare (not safe))
                                           (cons __tmp61602 '()))))
                                    (declare (not safe))
                                    (cons __tmp61607 __tmp61601)))
                                 (__tmp61586
                                  (let ((__tmp61587
                                         (let ((__tmp61599
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp61588
                                                (let ((__tmp61589
                                                       (let ((__tmp61598
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp61590
                                                              (let ((__tmp61592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp61597
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp61593
                                    (let ((__tmp61596
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp61594
                                           (let ((__tmp61595
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp61595 '()))))
                                      (declare (not safe))
                                      (cons __tmp61596 __tmp61594))))
                               (declare (not safe))
                               (cons __tmp61597 __tmp61593)))
                            (__tmp61591
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp61592 __tmp61591))))
                 (declare (not safe))
                 (cons __tmp61598 __tmp61590))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61589 '()))))
                                           (declare (not safe))
                                           (cons __tmp61599 __tmp61588))))
                                    (declare (not safe))
                                    (cons __tmp61587 '()))))
                             (declare (not safe))
                             (cons __tmp61600 __tmp61586))))
                      (declare (not safe))
                      (cons __tmp61608 __tmp61585))))
               (declare (not safe))
               (cons __tmp61614 __tmp61584)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp61463
                                                     (let ((__tmp61464
                                                            (let ((__tmp61582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp61465
                           (let ((__tmp61581 (gx#datum->syntax '#f 'loop))
                                 (__tmp61466
                                  (let ((__tmp61572
                                         (let ((__tmp61577
                                                (let ((__tmp61580
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp61578
                                                       (let ((__tmp61579
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp61579
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp61580
                                                        __tmp61578)))
                                               (__tmp61573
                                                (let ((__tmp61574
                                                       (let ((__tmp61576
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp61575
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp61576 __tmp61575))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61574 '()))))
                                           (declare (not safe))
                                           (cons __tmp61577 __tmp61573)))
                                        (__tmp61467
                                         (let ((__tmp61468
                                                (let ((__tmp61571
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp61469
                                                       (let ((__tmp61563
                                                              (let ((__tmp61570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp61564
                             (let ((__tmp61565
                                    (let ((__tmp61569
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp61566
                                           (let ((__tmp61567
                                                  (let ((__tmp61568
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp61568 '()))))
                                             (declare (not safe))
                                             (cons _L58859_ __tmp61567))))
                                      (declare (not safe))
                                      (cons __tmp61569 __tmp61566))))
                               (declare (not safe))
                               (cons __tmp61565 '()))))
                        (declare (not safe))
                        (cons __tmp61570 __tmp61564)))
                     (__tmp61470
                      (let ((__tmp61471
                             (let ((__tmp61562 (gx#datum->syntax '#f 'cond))
                                   (__tmp61472
                                    (let ((__tmp61551
                                           (let ((__tmp61555
                                                  (let ((__tmp61561
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp61556
                                                         (let ((__tmp61560
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp61557
                        (let ((__tmp61558
                               (let ((__tmp61559
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp61559 '()))))
                          (declare (not safe))
                          (cons __tmp61558 '()))))
                   (declare (not safe))
                   (cons __tmp61560 __tmp61557))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61561
                                                          __tmp61556)))
                                                 (__tmp61552
                                                  (let ((__tmp61553
                                                         (let ((__tmp61554
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp61554 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61553 '()))))
                                             (declare (not safe))
                                             (cons __tmp61555 __tmp61552)))
                                          (__tmp61473
                                           (let ((__tmp61525
                                                  (let ((__tmp61544
                                                         (let ((__tmp61550
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp61545
                        (let ((__tmp61549 (gx#datum->syntax '#f 'k))
                              (__tmp61546
                               (let ((__tmp61547
                                      (let ((__tmp61548
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp61548 '()))))
                                 (declare (not safe))
                                 (cons __tmp61547 '()))))
                          (declare (not safe))
                          (cons __tmp61549 __tmp61546))))
                   (declare (not safe))
                   (cons __tmp61550 __tmp61545)))
                (__tmp61526
                 (let ((__tmp61527
                        (let ((__tmp61543 (gx#datum->syntax '#f 'loop))
                              (__tmp61528
                               (let ((__tmp61535
                                      (let ((__tmp61542
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp61536
                                             (let ((__tmp61541
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp61537
                                                    (let ((__tmp61540
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp61538
                                                           (let ((__tmp61539
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp61539 '()))))
              (declare (not safe))
              (cons __tmp61540 __tmp61538))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61541 __tmp61537))))
                                        (declare (not safe))
                                        (cons __tmp61542 __tmp61536)))
                                     (__tmp61529
                                      (let ((__tmp61530
                                             (let ((__tmp61534
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp61531
                                                    (let ((__tmp61533
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp61532
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp61533
                                                            __tmp61532))))
                                               (declare (not safe))
                                               (cons __tmp61534 __tmp61531))))
                                        (declare (not safe))
                                        (cons __tmp61530 '()))))
                                 (declare (not safe))
                                 (cons __tmp61535 __tmp61529))))
                          (declare (not safe))
                          (cons __tmp61543 __tmp61528))))
                   (declare (not safe))
                   (cons __tmp61527 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61544
                                                          __tmp61526)))
                                                 (__tmp61474
                                                  (let ((__tmp61496
                                                         (let ((__tmp61521
                                                                (let ((__tmp61522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp61523
                                      (let ((__tmp61524
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp61524 '()))))
                                 (declare (not safe))
                                 (cons _L58855_ __tmp61523))))
                          (declare (not safe))
                          (cons _L58856_ __tmp61522)))
                       (__tmp61497
                        (let ((__tmp61513
                               (let ((__tmp61520
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp61514
                                      (let ((__tmp61515
                                             (let ((__tmp61519
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp61516
                                                    (let ((__tmp61517
                                                           (let ((__tmp61518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp61518 '()))))
              (declare (not safe))
              (cons __tmp61517 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61519 __tmp61516))))
                                        (declare (not safe))
                                        (cons _L58859_ __tmp61515))))
                                 (declare (not safe))
                                 (cons __tmp61520 __tmp61514)))
                              (__tmp61498
                               (let ((__tmp61501
                                      (let ((__tmp61512
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp61502
                                             (let ((__tmp61503
                                                    (let ((__tmp61507
                                                           (let ((__tmp61511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp61508
                          (let ((__tmp61510 (gx#datum->syntax '#f 'probe))
                                (__tmp61509
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp61510 __tmp61509))))
                     (declare (not safe))
                     (cons __tmp61511 __tmp61508)))
                  (__tmp61504
                   (let ((__tmp61505
                          (let ((__tmp61506
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp61506 '()))))
                     (declare (not safe))
                     (cons __tmp61505 '()))))
              (declare (not safe))
              (cons __tmp61507 __tmp61504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L58859_ __tmp61503))))
                                        (declare (not safe))
                                        (cons __tmp61512 __tmp61502)))
                                     (__tmp61499
                                      (let ((__tmp61500
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58853_ '()))))
                                        (declare (not safe))
                                        (cons __tmp61500 '()))))
                                 (declare (not safe))
                                 (cons __tmp61501 __tmp61499))))
                          (declare (not safe))
                          (cons __tmp61513 __tmp61498))))
                   (declare (not safe))
                   (cons __tmp61521 __tmp61497)))
                (__tmp61475
                 (let ((__tmp61476
                        (let ((__tmp61495 (gx#datum->syntax '#f 'else))
                              (__tmp61477
                               (let ((__tmp61478
                                      (let ((__tmp61494
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp61479
                                             (let ((__tmp61486
                                                    (let ((__tmp61493
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp61487
                                                           (let ((__tmp61492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp61488
                          (let ((__tmp61491 (gx#datum->syntax '#f 'i))
                                (__tmp61489
                                 (let ((__tmp61490
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp61490 '()))))
                            (declare (not safe))
                            (cons __tmp61491 __tmp61489))))
                     (declare (not safe))
                     (cons __tmp61492 __tmp61488))))
              (declare (not safe))
              (cons __tmp61493 __tmp61487)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp61480
                                                    (let ((__tmp61481
                                                           (let ((__tmp61485
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp61482
                          (let ((__tmp61484 (gx#datum->syntax '#f 'i))
                                (__tmp61483
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp61484 __tmp61483))))
                     (declare (not safe))
                     (cons __tmp61485 __tmp61482))))
              (declare (not safe))
              (cons __tmp61481 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp61486 __tmp61480))))
                                        (declare (not safe))
                                        (cons __tmp61494 __tmp61479))))
                                 (declare (not safe))
                                 (cons __tmp61478 '()))))
                          (declare (not safe))
                          (cons __tmp61495 __tmp61477))))
                   (declare (not safe))
                   (cons __tmp61476 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp61496
                                                          __tmp61475))))
                                             (declare (not safe))
                                             (cons __tmp61525 __tmp61474))))
                                      (declare (not safe))
                                      (cons __tmp61551 __tmp61473))))
                               (declare (not safe))
                               (cons __tmp61562 __tmp61472))))
                        (declare (not safe))
                        (cons __tmp61471 '()))))
                 (declare (not safe))
                 (cons __tmp61563 __tmp61470))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61571
                                                        __tmp61469))))
                                           (declare (not safe))
                                           (cons __tmp61468 '()))))
                                    (declare (not safe))
                                    (cons __tmp61572 __tmp61467))))
                             (declare (not safe))
                             (cons __tmp61581 __tmp61466))))
                      (declare (not safe))
                      (cons __tmp61582 __tmp61465))))
               (declare (not safe))
               (cons __tmp61464 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61583 __tmp61463))))
                                         (declare (not safe))
                                         (cons __tmp61623 __tmp61462)))
                                     _hd5876958847_
                                     _hd5876658837_
                                     _hd5876358827_
                                     _hd5876058817_
                                     _hd5875758807_
                                     _hd5875458797_)
                                    (_g5874258776_ _g5874358780_))))
                            (_g5874258776_ _g5874358780_))))
                    (_g5874258776_ _g5874358780_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5874258776_
                                                     _g5874358780_))))
                                            (_g5874258776_ _g5874358780_))))
                                    (_g5874258776_ _g5874358780_))))
                            (_g5874258776_ _g5874358780_))))
                    (_g5874258776_ _g5874358780_)))))
        (_g5874158887_ _$stx58738_)))))
