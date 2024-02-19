(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#__symbolic-hash|
    (lambda (_$stx57250_)
      (let* ((_g5725457268_
              (lambda (_g5725557264_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5725557264_)))
             (_g5725357310_
              (lambda (_g5725557272_)
                (if (gx#stx-pair? _g5725557272_)
                    (let ((_e5725957275_ (gx#syntax-e _g5725557272_)))
                      (let ((_hd5725857279_
                             (let ()
                               (declare (not safe))
                               (##car _e5725957275_)))
                            (_tl5725757282_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5725957275_))))
                        (if (gx#stx-pair? _tl5725757282_)
                            (let ((_e5726257285_ (gx#syntax-e _tl5725757282_)))
                              (let ((_hd5726157289_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5726257285_)))
                                    (_tl5726057292_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5726257285_))))
                                (if (gx#stx-null? _tl5726057292_)
                                    ((lambda (_L57295_)
                                       (let ((__tmp59453
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp59451
                                              (let ((__tmp59452
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L57295_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp59452))))
                                         (declare (not safe))
                                         (cons __tmp59453 __tmp59451)))
                                     _hd5726157289_)
                                    (_g5725457268_ _g5725557272_))))
                            (_g5725457268_ _g5725557272_))))
                    (_g5725457268_ _g5725557272_)))))
        (_g5725357310_ _$stx57250_))))
  (define |[:0:]#defspecialized-table|
    (lambda (_$stx57314_)
      (let* ((_g5731857364_
              (lambda (_g5731957360_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5731957360_)))
             (_g5731757517_
              (lambda (_g5731957368_)
                (if (gx#stx-pair? _g5731957368_)
                    (let ((_e5733157371_ (gx#syntax-e _g5731957368_)))
                      (let ((_hd5733057375_
                             (let ()
                               (declare (not safe))
                               (##car _e5733157371_)))
                            (_tl5732957378_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5733157371_))))
                        (if (gx#stx-pair? _tl5732957378_)
                            (let ((_e5733457381_ (gx#syntax-e _tl5732957378_)))
                              (let ((_hd5733357385_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5733457381_)))
                                    (_tl5733257388_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5733457381_))))
                                (if (gx#stx-pair? _tl5733257388_)
                                    (let ((_e5733757391_
                                           (gx#syntax-e _tl5733257388_)))
                                      (let ((_hd5733657395_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5733757391_)))
                                            (_tl5733557398_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5733757391_))))
                                        (if (gx#stx-pair? _tl5733557398_)
                                            (let ((_e5734057401_
                                                   (gx#syntax-e
                                                    _tl5733557398_)))
                                              (let ((_hd5733957405_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5734057401_)))
                                                    (_tl5733857408_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5734057401_))))
                                                (if (gx#stx-pair?
                                                     _tl5733857408_)
                                                    (let ((_e5734357411_
                                                           (gx#syntax-e
                                                            _tl5733857408_)))
                                                      (let ((_hd5734257415_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5734357411_)))
                    (_tl5734157418_
                     (let () (declare (not safe)) (##cdr _e5734357411_))))
                (if (gx#stx-pair? _tl5734157418_)
                    (let ((_e5734657421_ (gx#syntax-e _tl5734157418_)))
                      (let ((_hd5734557425_
                             (let ()
                               (declare (not safe))
                               (##car _e5734657421_)))
                            (_tl5734457428_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5734657421_))))
                        (if (gx#stx-pair? _tl5734457428_)
                            (let ((_e5734957431_ (gx#syntax-e _tl5734457428_)))
                              (let ((_hd5734857435_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5734957431_)))
                                    (_tl5734757438_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5734957431_))))
                                (if (gx#stx-pair? _tl5734757438_)
                                    (let ((_e5735257441_
                                           (gx#syntax-e _tl5734757438_)))
                                      (let ((_hd5735157445_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5735257441_)))
                                            (_tl5735057448_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5735257441_))))
                                        (if (gx#stx-pair? _tl5735057448_)
                                            (let ((_e5735557451_
                                                   (gx#syntax-e
                                                    _tl5735057448_)))
                                              (let ((_hd5735457455_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5735557451_)))
                                                    (_tl5735357458_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5735557451_))))
                                                (if (gx#stx-pair?
                                                     _tl5735357458_)
                                                    (let ((_e5735857461_
                                                           (gx#syntax-e
                                                            _tl5735357458_)))
                                                      (let ((_hd5735757465_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5735857461_)))
                    (_tl5735657468_
                     (let () (declare (not safe)) (##cdr _e5735857461_))))
                (if (gx#stx-null? _tl5735657468_)
                    ((lambda (_L57471_
                              _L57473_
                              _L57474_
                              _L57475_
                              _L57476_
                              _L57477_
                              _L57478_
                              _L57479_
                              _L57480_)
                       (let ((__tmp59885 (gx#datum->syntax '#f 'begin))
                             (__tmp59454
                              (let ((__tmp59864
                                     (let ((__tmp59884
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp59865
                                            (let ((__tmp59875
                                                   (let ((__tmp59876
                                                          (let ((__tmp59881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp59883 (gx#datum->syntax '#f 'size-hint))
                               (__tmp59882
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons __tmp59883 __tmp59882)))
                        (__tmp59877
                         (let ((__tmp59878
                                (let ((__tmp59880 (gx#datum->syntax '#f 'seed))
                                      (__tmp59879
                                       (let ()
                                         (declare (not safe))
                                         (cons '0 '()))))
                                  (declare (not safe))
                                  (cons __tmp59880 __tmp59879))))
                           (declare (not safe))
                           (cons __tmp59878 '()))))
                    (declare (not safe))
                    (cons __tmp59881 __tmp59877))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L57480_
                                                           __tmp59876)))
                                                  (__tmp59866
                                                   (let ((__tmp59867
                                                          (let ((__tmp59874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-raw-table))
                        (__tmp59868
                         (let ((__tmp59873 (gx#datum->syntax '#f 'size-hint))
                               (__tmp59869
                                (let ((__tmp59870
                                       (let ((__tmp59871
                                              (let ((__tmp59872
                                                     (gx#datum->syntax
                                                      '#f
                                                      'seed)))
                                                (declare (not safe))
                                                (cons __tmp59872 '()))))
                                         (declare (not safe))
                                         (cons _L57471_ __tmp59871))))
                                  (declare (not safe))
                                  (cons _L57473_ __tmp59870))))
                           (declare (not safe))
                           (cons __tmp59873 __tmp59869))))
                    (declare (not safe))
                    (cons __tmp59874 __tmp59868))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp59867 '()))))
                                              (declare (not safe))
                                              (cons __tmp59875 __tmp59866))))
                                       (declare (not safe))
                                       (cons __tmp59884 __tmp59865)))
                                    (__tmp59455
                                     (let ((__tmp59821
                                            (let ((__tmp59863
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp59822
                                                   (let ((__tmp59856
                                                          (let ((__tmp59857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp59862 (gx#datum->syntax '#f 'tab))
                               (__tmp59858
                                (let ((__tmp59861 (gx#datum->syntax '#f 'key))
                                      (__tmp59859
                                       (let ((__tmp59860
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp59860 '()))))
                                  (declare (not safe))
                                  (cons __tmp59861 __tmp59859))))
                           (declare (not safe))
                           (cons __tmp59862 __tmp59858))))
                    (declare (not safe))
                    (cons _L57479_ __tmp59857)))
                 (__tmp59823
                  (let ((__tmp59824
                         (let ((__tmp59855 (gx#datum->syntax '#f 'let))
                               (__tmp59825
                                (let ((__tmp59839
                                       (let ((__tmp59848
                                              (let ((__tmp59854
                                                     (gx#datum->syntax
                                                      '#f
                                                      'table))
                                                    (__tmp59849
                                                     (let ((__tmp59850
                                                            (let ((__tmp59853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-table))
                          (__tmp59851
                           (let ((__tmp59852 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp59852 '()))))
                      (declare (not safe))
                      (cons __tmp59853 __tmp59851))))
               (declare (not safe))
               (cons __tmp59850 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59854 __tmp59849)))
                                             (__tmp59840
                                              (let ((__tmp59841
                                                     (let ((__tmp59847
                                                            (gx#datum->syntax
                                                             '#f
                                                             'seed))
                                                           (__tmp59842
                                                            (let ((__tmp59843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp59846
                                  (gx#datum->syntax '#f '&raw-table-seed))
                                 (__tmp59844
                                  (let ((__tmp59845
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp59845 '()))))
                             (declare (not safe))
                             (cons __tmp59846 __tmp59844))))
                      (declare (not safe))
                      (cons __tmp59843 '()))))
               (declare (not safe))
               (cons __tmp59847 __tmp59842))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59841 '()))))
                                         (declare (not safe))
                                         (cons __tmp59848 __tmp59840)))
                                      (__tmp59826
                                       (let ((__tmp59827
                                              (let ((__tmp59838
                                                     (gx#datum->syntax
                                                      '#f
                                                      '__table-ref))
                                                    (__tmp59828
                                                     (let ((__tmp59837
                                                            (gx#datum->syntax
                                                             '#f
                                                             'table))
                                                           (__tmp59829
                                                            (let ((__tmp59836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'seed))
                          (__tmp59830
                           (let ((__tmp59831
                                  (let ((__tmp59832
                                         (let ((__tmp59835
                                                (gx#datum->syntax '#f 'key))
                                               (__tmp59833
                                                (let ((__tmp59834
                                                       (gx#datum->syntax
                                                        '#f
                                                        'default)))
                                                  (declare (not safe))
                                                  (cons __tmp59834 '()))))
                                           (declare (not safe))
                                           (cons __tmp59835 __tmp59833))))
                                    (declare (not safe))
                                    (cons _L57471_ __tmp59832))))
                             (declare (not safe))
                             (cons _L57473_ __tmp59831))))
                      (declare (not safe))
                      (cons __tmp59836 __tmp59830))))
               (declare (not safe))
               (cons __tmp59837 __tmp59829))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59838 __tmp59828))))
                                         (declare (not safe))
                                         (cons __tmp59827 '()))))
                                  (declare (not safe))
                                  (cons __tmp59839 __tmp59826))))
                           (declare (not safe))
                           (cons __tmp59855 __tmp59825))))
                    (declare (not safe))
                    (cons __tmp59824 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp59856
                                                           __tmp59823))))
                                              (declare (not safe))
                                              (cons __tmp59863 __tmp59822)))
                                           (__tmp59456
                                            (let ((__tmp59775
                                                   (let ((__tmp59820
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp59776
                                                          (let ((__tmp59813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp59814
                                (let ((__tmp59819 (gx#datum->syntax '#f 'tab))
                                      (__tmp59815
                                       (let ((__tmp59818
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp59816
                                              (let ((__tmp59817
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value)))
                                                (declare (not safe))
                                                (cons __tmp59817 '()))))
                                         (declare (not safe))
                                         (cons __tmp59818 __tmp59816))))
                                  (declare (not safe))
                                  (cons __tmp59819 __tmp59815))))
                           (declare (not safe))
                           (cons _L57478_ __tmp59814)))
                        (__tmp59777
                         (let ((__tmp59786
                                (let ((__tmp59812 (gx#datum->syntax '#f 'when))
                                      (__tmp59787
                                       (let ((__tmp59793
                                              (let ((__tmp59811
                                                     (gx#datum->syntax
                                                      '#f
                                                      'fx<))
                                                    (__tmp59794
                                                     (let ((__tmp59807
                                                            (let ((__tmp59810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-free))
                          (__tmp59808
                           (let ((__tmp59809 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp59809 '()))))
                      (declare (not safe))
                      (cons __tmp59810 __tmp59808)))
                   (__tmp59795
                    (let ((__tmp59796
                           (let ((__tmp59806
                                  (gx#datum->syntax '#f 'fxquotient))
                                 (__tmp59797
                                  (let ((__tmp59799
                                         (let ((__tmp59805
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp59800
                                                (let ((__tmp59801
                                                       (let ((__tmp59804
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp59802
                                                              (let ((__tmp59803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp59803 '()))))
                 (declare (not safe))
                 (cons __tmp59804 __tmp59802))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59801 '()))))
                                           (declare (not safe))
                                           (cons __tmp59805 __tmp59800)))
                                        (__tmp59798
                                         (let ()
                                           (declare (not safe))
                                           (cons '4 '()))))
                                    (declare (not safe))
                                    (cons __tmp59799 __tmp59798))))
                             (declare (not safe))
                             (cons __tmp59806 __tmp59797))))
                      (declare (not safe))
                      (cons __tmp59796 '()))))
               (declare (not safe))
               (cons __tmp59807 __tmp59795))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59811 __tmp59794)))
                                             (__tmp59788
                                              (let ((__tmp59789
                                                     (let ((__tmp59792
                                                            (gx#datum->syntax
                                                             '#f
                                                             '__raw-table-rehash!))
                                                           (__tmp59790
                                                            (let ((__tmp59791
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab)))
                      (declare (not safe))
                      (cons __tmp59791 '()))))
               (declare (not safe))
               (cons __tmp59792 __tmp59790))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59789 '()))))
                                         (declare (not safe))
                                         (cons __tmp59793 __tmp59788))))
                                  (declare (not safe))
                                  (cons __tmp59812 __tmp59787)))
                               (__tmp59778
                                (let ((__tmp59779
                                       (let ((__tmp59780
                                              (let ((__tmp59785
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp59781
                                                     (let ((__tmp59784
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp59782
                                                            (let ((__tmp59783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'value)))
                      (declare (not safe))
                      (cons __tmp59783 '()))))
               (declare (not safe))
               (cons __tmp59784 __tmp59782))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59785 __tmp59781))))
                                         (declare (not safe))
                                         (cons _L57477_ __tmp59780))))
                                  (declare (not safe))
                                  (cons __tmp59779 '()))))
                           (declare (not safe))
                           (cons __tmp59786 __tmp59778))))
                    (declare (not safe))
                    (cons __tmp59813 __tmp59777))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp59820
                                                           __tmp59776)))
                                                  (__tmp59457
                                                   (let ((__tmp59673
                                                          (let ((__tmp59774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'def))
                        (__tmp59674
                         (let ((__tmp59767
                                (let ((__tmp59768
                                       (let ((__tmp59773
                                              (gx#datum->syntax '#f 'tab))
                                             (__tmp59769
                                              (let ((__tmp59772
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp59770
                                                     (let ((__tmp59771
                                                            (gx#datum->syntax
                                                             '#f
                                                             'value)))
                                                       (declare (not safe))
                                                       (cons __tmp59771 '()))))
                                                (declare (not safe))
                                                (cons __tmp59772 __tmp59770))))
                                         (declare (not safe))
                                         (cons __tmp59773 __tmp59769))))
                                  (declare (not safe))
                                  (cons _L57477_ __tmp59768)))
                               (__tmp59675
                                (let ((__tmp59676
                                       (let ((__tmp59766
                                              (gx#datum->syntax '#f 'let))
                                             (__tmp59677
                                              (let ((__tmp59750
                                                     (let ((__tmp59759
                                                            (let ((__tmp59765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'table))
                          (__tmp59760
                           (let ((__tmp59761
                                  (let ((__tmp59764
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-table))
                                        (__tmp59762
                                         (let ((__tmp59763
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp59763 '()))))
                                    (declare (not safe))
                                    (cons __tmp59764 __tmp59762))))
                             (declare (not safe))
                             (cons __tmp59761 '()))))
                      (declare (not safe))
                      (cons __tmp59765 __tmp59760)))
                   (__tmp59751
                    (let ((__tmp59752
                           (let ((__tmp59758 (gx#datum->syntax '#f 'seed))
                                 (__tmp59753
                                  (let ((__tmp59754
                                         (let ((__tmp59757
                                                (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-seed))
                                               (__tmp59755
                                                (let ((__tmp59756
                                                       (gx#datum->syntax
                                                        '#f
                                                        'tab)))
                                                  (declare (not safe))
                                                  (cons __tmp59756 '()))))
                                           (declare (not safe))
                                           (cons __tmp59757 __tmp59755))))
                                    (declare (not safe))
                                    (cons __tmp59754 '()))))
                             (declare (not safe))
                             (cons __tmp59758 __tmp59753))))
                      (declare (not safe))
                      (cons __tmp59752 '()))))
               (declare (not safe))
               (cons __tmp59759 __tmp59751)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp59678
                                                     (let ((__tmp59679
                                                            (let ((__tmp59749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '__table-set!))
                          (__tmp59680
                           (let ((__tmp59748 (gx#datum->syntax '#f 'table))
                                 (__tmp59681
                                  (let ((__tmp59747
                                         (gx#datum->syntax '#f 'seed))
                                        (__tmp59682
                                         (let ((__tmp59683
                                                (let ((__tmp59684
                                                       (let ((__tmp59746
                                                              (gx#datum->syntax
                                                               '#f
                                                               'key))
                                                             (__tmp59685
                                                              (let ((__tmp59745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'value))
                            (__tmp59686
                             (let ((__tmp59708
                                    (let ((__tmp59744
                                           (gx#datum->syntax '#f 'lambda))
                                          (__tmp59709
                                           (let ((__tmp59710
                                                  (let ((__tmp59728
                                                         (let ((__tmp59743
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'set!))
                       (__tmp59729
                        (let ((__tmp59739
                               (let ((__tmp59742
                                      (gx#datum->syntax '#f '&raw-table-free))
                                     (__tmp59740
                                      (let ((__tmp59741
                                             (gx#datum->syntax '#f 'tab)))
                                        (declare (not safe))
                                        (cons __tmp59741 '()))))
                                 (declare (not safe))
                                 (cons __tmp59742 __tmp59740)))
                              (__tmp59730
                               (let ((__tmp59731
                                      (let ((__tmp59738
                                             (gx#datum->syntax '#f 'fx-))
                                            (__tmp59732
                                             (let ((__tmp59734
                                                    (let ((__tmp59737
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp59735
                                                           (let ((__tmp59736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp59736 '()))))
              (declare (not safe))
              (cons __tmp59737 __tmp59735)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp59733
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '1 '()))))
                                               (declare (not safe))
                                               (cons __tmp59734 __tmp59733))))
                                        (declare (not safe))
                                        (cons __tmp59738 __tmp59732))))
                                 (declare (not safe))
                                 (cons __tmp59731 '()))))
                          (declare (not safe))
                          (cons __tmp59739 __tmp59730))))
                   (declare (not safe))
                   (cons __tmp59743 __tmp59729)))
                (__tmp59711
                 (let ((__tmp59712
                        (let ((__tmp59727 (gx#datum->syntax '#f 'set!))
                              (__tmp59713
                               (let ((__tmp59723
                                      (let ((__tmp59726
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp59724
                                             (let ((__tmp59725
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp59725 '()))))
                                        (declare (not safe))
                                        (cons __tmp59726 __tmp59724)))
                                     (__tmp59714
                                      (let ((__tmp59715
                                             (let ((__tmp59722
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp59716
                                                    (let ((__tmp59718
                                                           (let ((__tmp59721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59719
                          (let ((__tmp59720 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59720 '()))))
                     (declare (not safe))
                     (cons __tmp59721 __tmp59719)))
                  (__tmp59717 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp59718 __tmp59717))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59722 __tmp59716))))
                                        (declare (not safe))
                                        (cons __tmp59715 '()))))
                                 (declare (not safe))
                                 (cons __tmp59723 __tmp59714))))
                          (declare (not safe))
                          (cons __tmp59727 __tmp59713))))
                   (declare (not safe))
                   (cons __tmp59712 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59728
                                                          __tmp59711))))
                                             (declare (not safe))
                                             (cons '() __tmp59710))))
                                      (declare (not safe))
                                      (cons __tmp59744 __tmp59709)))
                                   (__tmp59687
                                    (let ((__tmp59688
                                           (let ((__tmp59707
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp59689
                                                  (let ((__tmp59690
                                                         (let ((__tmp59691
                                                                (let ((__tmp59706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'set!))
                              (__tmp59692
                               (let ((__tmp59702
                                      (let ((__tmp59705
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp59703
                                             (let ((__tmp59704
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp59704 '()))))
                                        (declare (not safe))
                                        (cons __tmp59705 __tmp59703)))
                                     (__tmp59693
                                      (let ((__tmp59694
                                             (let ((__tmp59701
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp59695
                                                    (let ((__tmp59697
                                                           (let ((__tmp59700
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59698
                          (let ((__tmp59699 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59699 '()))))
                     (declare (not safe))
                     (cons __tmp59700 __tmp59698)))
                  (__tmp59696 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp59697 __tmp59696))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59701 __tmp59695))))
                                        (declare (not safe))
                                        (cons __tmp59694 '()))))
                                 (declare (not safe))
                                 (cons __tmp59702 __tmp59693))))
                          (declare (not safe))
                          (cons __tmp59706 __tmp59692))))
                   (declare (not safe))
                   (cons __tmp59691 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '() __tmp59690))))
                                             (declare (not safe))
                                             (cons __tmp59707 __tmp59689))))
                                      (declare (not safe))
                                      (cons __tmp59688 '()))))
                               (declare (not safe))
                               (cons __tmp59708 __tmp59687))))
                        (declare (not safe))
                        (cons __tmp59745 __tmp59686))))
                 (declare (not safe))
                 (cons __tmp59746 __tmp59685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L57471_ __tmp59684))))
                                           (declare (not safe))
                                           (cons _L57473_ __tmp59683))))
                                    (declare (not safe))
                                    (cons __tmp59747 __tmp59682))))
                             (declare (not safe))
                             (cons __tmp59748 __tmp59681))))
                      (declare (not safe))
                      (cons __tmp59749 __tmp59680))))
               (declare (not safe))
               (cons __tmp59679 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59750 __tmp59678))))
                                         (declare (not safe))
                                         (cons __tmp59766 __tmp59677))))
                                  (declare (not safe))
                                  (cons __tmp59676 '()))))
                           (declare (not safe))
                           (cons __tmp59767 __tmp59675))))
                    (declare (not safe))
                    (cons __tmp59774 __tmp59674)))
                 (__tmp59458
                  (let ((__tmp59625
                         (let ((__tmp59672 (gx#datum->syntax '#f 'def))
                               (__tmp59626
                                (let ((__tmp59664
                                       (let ((__tmp59665
                                              (let ((__tmp59671
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp59666
                                                     (let ((__tmp59670
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp59667
                                                            (let ((__tmp59668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp59669 (gx#datum->syntax '#f 'default)))
                             (declare (not safe))
                             (cons __tmp59669 '()))))
                      (declare (not safe))
                      (cons _L57476_ __tmp59668))))
               (declare (not safe))
               (cons __tmp59670 __tmp59667))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59671 __tmp59666))))
                                         (declare (not safe))
                                         (cons _L57476_ __tmp59665)))
                                      (__tmp59627
                                       (let ((__tmp59637
                                              (let ((__tmp59663
                                                     (gx#datum->syntax
                                                      '#f
                                                      'when))
                                                    (__tmp59638
                                                     (let ((__tmp59644
                                                            (let ((__tmp59662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'fx<))
                          (__tmp59645
                           (let ((__tmp59658
                                  (let ((__tmp59661
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-free))
                                        (__tmp59659
                                         (let ((__tmp59660
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp59660 '()))))
                                    (declare (not safe))
                                    (cons __tmp59661 __tmp59659)))
                                 (__tmp59646
                                  (let ((__tmp59647
                                         (let ((__tmp59657
                                                (gx#datum->syntax
                                                 '#f
                                                 'fxquotient))
                                               (__tmp59648
                                                (let ((__tmp59650
                                                       (let ((__tmp59656
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-length))
                                                             (__tmp59651
                                                              (let ((__tmp59652
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp59655
                                    (gx#datum->syntax '#f '&raw-table-table))
                                   (__tmp59653
                                    (let ((__tmp59654
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp59654 '()))))
                               (declare (not safe))
                               (cons __tmp59655 __tmp59653))))
                        (declare (not safe))
                        (cons __tmp59652 '()))))
                 (declare (not safe))
                 (cons __tmp59656 __tmp59651)))
              (__tmp59649 (let () (declare (not safe)) (cons '4 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59650
                                                        __tmp59649))))
                                           (declare (not safe))
                                           (cons __tmp59657 __tmp59648))))
                                    (declare (not safe))
                                    (cons __tmp59647 '()))))
                             (declare (not safe))
                             (cons __tmp59658 __tmp59646))))
                      (declare (not safe))
                      (cons __tmp59662 __tmp59645)))
                   (__tmp59639
                    (let ((__tmp59640
                           (let ((__tmp59643
                                  (gx#datum->syntax '#f '__raw-table-rehash!))
                                 (__tmp59641
                                  (let ((__tmp59642
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp59642 '()))))
                             (declare (not safe))
                             (cons __tmp59643 __tmp59641))))
                      (declare (not safe))
                      (cons __tmp59640 '()))))
               (declare (not safe))
               (cons __tmp59644 __tmp59639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59663 __tmp59638)))
                                             (__tmp59628
                                              (let ((__tmp59629
                                                     (let ((__tmp59630
                                                            (let ((__tmp59636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp59631
                           (let ((__tmp59635 (gx#datum->syntax '#f 'key))
                                 (__tmp59632
                                  (let ((__tmp59633
                                         (let ((__tmp59634
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp59634 '()))))
                                    (declare (not safe))
                                    (cons _L57476_ __tmp59633))))
                             (declare (not safe))
                             (cons __tmp59635 __tmp59632))))
                      (declare (not safe))
                      (cons __tmp59636 __tmp59631))))
               (declare (not safe))
               (cons _L57475_ __tmp59630))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59629 '()))))
                                         (declare (not safe))
                                         (cons __tmp59637 __tmp59628))))
                                  (declare (not safe))
                                  (cons __tmp59664 __tmp59627))))
                           (declare (not safe))
                           (cons __tmp59672 __tmp59626)))
                        (__tmp59459
                         (let ((__tmp59521
                                (let ((__tmp59624 (gx#datum->syntax '#f 'def))
                                      (__tmp59522
                                       (let ((__tmp59616
                                              (let ((__tmp59617
                                                     (let ((__tmp59623
                                                            (gx#datum->syntax
                                                             '#f
                                                             'tab))
                                                           (__tmp59618
                                                            (let ((__tmp59622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'key))
                          (__tmp59619
                           (let ((__tmp59620
                                  (let ((__tmp59621
                                         (gx#datum->syntax '#f 'default)))
                                    (declare (not safe))
                                    (cons __tmp59621 '()))))
                             (declare (not safe))
                             (cons _L57476_ __tmp59620))))
                      (declare (not safe))
                      (cons __tmp59622 __tmp59619))))
               (declare (not safe))
               (cons __tmp59623 __tmp59618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L57475_ __tmp59617)))
                                             (__tmp59523
                                              (let ((__tmp59524
                                                     (let ((__tmp59615
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp59525
                                                            (let ((__tmp59599
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp59608
                                  (let ((__tmp59614
                                         (gx#datum->syntax '#f 'table))
                                        (__tmp59609
                                         (let ((__tmp59610
                                                (let ((__tmp59613
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table))
                                                      (__tmp59611
                                                       (let ((__tmp59612
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp59612
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp59613
                                                        __tmp59611))))
                                           (declare (not safe))
                                           (cons __tmp59610 '()))))
                                    (declare (not safe))
                                    (cons __tmp59614 __tmp59609)))
                                 (__tmp59600
                                  (let ((__tmp59601
                                         (let ((__tmp59607
                                                (gx#datum->syntax '#f 'seed))
                                               (__tmp59602
                                                (let ((__tmp59603
                                                       (let ((__tmp59606
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-seed))
                                                             (__tmp59604
                                                              (let ((__tmp59605
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp59605 '()))))
                 (declare (not safe))
                 (cons __tmp59606 __tmp59604))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59603 '()))))
                                           (declare (not safe))
                                           (cons __tmp59607 __tmp59602))))
                                    (declare (not safe))
                                    (cons __tmp59601 '()))))
                             (declare (not safe))
                             (cons __tmp59608 __tmp59600)))
                          (__tmp59526
                           (let ((__tmp59527
                                  (let ((__tmp59598
                                         (gx#datum->syntax
                                          '#f
                                          '__table-update!))
                                        (__tmp59528
                                         (let ((__tmp59597
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp59529
                                                (let ((__tmp59596
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp59530
                                                       (let ((__tmp59531
                                                              (let ((__tmp59532
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp59595 (gx#datum->syntax '#f 'key))
                                   (__tmp59533
                                    (let ((__tmp59534
                                           (let ((__tmp59594
                                                  (gx#datum->syntax
                                                   '#f
                                                   'default))
                                                 (__tmp59535
                                                  (let ((__tmp59557
                                                         (let ((__tmp59593
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda))
                       (__tmp59558
                        (let ((__tmp59559
                               (let ((__tmp59577
                                      (let ((__tmp59592
                                             (gx#datum->syntax '#f 'set!))
                                            (__tmp59578
                                             (let ((__tmp59588
                                                    (let ((__tmp59591
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp59589
                                                           (let ((__tmp59590
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp59590 '()))))
              (declare (not safe))
              (cons __tmp59591 __tmp59589)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp59579
                                                    (let ((__tmp59580
                                                           (let ((__tmp59587
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx-))
                         (__tmp59581
                          (let ((__tmp59583
                                 (let ((__tmp59586
                                        (gx#datum->syntax
                                         '#f
                                         '&raw-table-free))
                                       (__tmp59584
                                        (let ((__tmp59585
                                               (gx#datum->syntax '#f 'tab)))
                                          (declare (not safe))
                                          (cons __tmp59585 '()))))
                                   (declare (not safe))
                                   (cons __tmp59586 __tmp59584)))
                                (__tmp59582
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp59583 __tmp59582))))
                     (declare (not safe))
                     (cons __tmp59587 __tmp59581))))
              (declare (not safe))
              (cons __tmp59580 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59588 __tmp59579))))
                                        (declare (not safe))
                                        (cons __tmp59592 __tmp59578)))
                                     (__tmp59560
                                      (let ((__tmp59561
                                             (let ((__tmp59576
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp59562
                                                    (let ((__tmp59572
                                                           (let ((__tmp59575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59573
                          (let ((__tmp59574 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59574 '()))))
                     (declare (not safe))
                     (cons __tmp59575 __tmp59573)))
                  (__tmp59563
                   (let ((__tmp59564
                          (let ((__tmp59571 (gx#datum->syntax '#f 'fx+))
                                (__tmp59565
                                 (let ((__tmp59567
                                        (let ((__tmp59570
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp59568
                                               (let ((__tmp59569
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp59569 '()))))
                                          (declare (not safe))
                                          (cons __tmp59570 __tmp59568)))
                                       (__tmp59566
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp59567 __tmp59566))))
                            (declare (not safe))
                            (cons __tmp59571 __tmp59565))))
                     (declare (not safe))
                     (cons __tmp59564 '()))))
              (declare (not safe))
              (cons __tmp59572 __tmp59563))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59576 __tmp59562))))
                                        (declare (not safe))
                                        (cons __tmp59561 '()))))
                                 (declare (not safe))
                                 (cons __tmp59577 __tmp59560))))
                          (declare (not safe))
                          (cons '() __tmp59559))))
                   (declare (not safe))
                   (cons __tmp59593 __tmp59558)))
                (__tmp59536
                 (let ((__tmp59537
                        (let ((__tmp59556 (gx#datum->syntax '#f 'lambda))
                              (__tmp59538
                               (let ((__tmp59539
                                      (let ((__tmp59540
                                             (let ((__tmp59555
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp59541
                                                    (let ((__tmp59551
                                                           (let ((__tmp59554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59552
                          (let ((__tmp59553 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59553 '()))))
                     (declare (not safe))
                     (cons __tmp59554 __tmp59552)))
                  (__tmp59542
                   (let ((__tmp59543
                          (let ((__tmp59550 (gx#datum->syntax '#f 'fx+))
                                (__tmp59544
                                 (let ((__tmp59546
                                        (let ((__tmp59549
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp59547
                                               (let ((__tmp59548
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp59548 '()))))
                                          (declare (not safe))
                                          (cons __tmp59549 __tmp59547)))
                                       (__tmp59545
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp59546 __tmp59545))))
                            (declare (not safe))
                            (cons __tmp59550 __tmp59544))))
                     (declare (not safe))
                     (cons __tmp59543 '()))))
              (declare (not safe))
              (cons __tmp59551 __tmp59542))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59555 __tmp59541))))
                                        (declare (not safe))
                                        (cons __tmp59540 '()))))
                                 (declare (not safe))
                                 (cons '() __tmp59539))))
                          (declare (not safe))
                          (cons __tmp59556 __tmp59538))))
                   (declare (not safe))
                   (cons __tmp59537 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59557
                                                          __tmp59536))))
                                             (declare (not safe))
                                             (cons __tmp59594 __tmp59535))))
                                      (declare (not safe))
                                      (cons _L57476_ __tmp59534))))
                               (declare (not safe))
                               (cons __tmp59595 __tmp59533))))
                        (declare (not safe))
                        (cons _L57471_ __tmp59532))))
                 (declare (not safe))
                 (cons _L57473_ __tmp59531))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59596
                                                        __tmp59530))))
                                           (declare (not safe))
                                           (cons __tmp59597 __tmp59529))))
                                    (declare (not safe))
                                    (cons __tmp59598 __tmp59528))))
                             (declare (not safe))
                             (cons __tmp59527 '()))))
                      (declare (not safe))
                      (cons __tmp59599 __tmp59526))))
               (declare (not safe))
               (cons __tmp59615 __tmp59525))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59524 '()))))
                                         (declare (not safe))
                                         (cons __tmp59616 __tmp59523))))
                                  (declare (not safe))
                                  (cons __tmp59624 __tmp59522)))
                               (__tmp59460
                                (let ((__tmp59461
                                       (let ((__tmp59520
                                              (gx#datum->syntax '#f 'def))
                                             (__tmp59462
                                              (let ((__tmp59515
                                                     (let ((__tmp59516
                                                            (let ((__tmp59519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp59517
                           (let ((__tmp59518 (gx#datum->syntax '#f 'key)))
                             (declare (not safe))
                             (cons __tmp59518 '()))))
                      (declare (not safe))
                      (cons __tmp59519 __tmp59517))))
               (declare (not safe))
               (cons _L57474_ __tmp59516)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp59463
                                                     (let ((__tmp59464
                                                            (let ((__tmp59514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp59465
                           (let ((__tmp59498
                                  (let ((__tmp59507
                                         (let ((__tmp59513
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp59508
                                                (let ((__tmp59509
                                                       (let ((__tmp59512
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp59510
                                                              (let ((__tmp59511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp59511 '()))))
                 (declare (not safe))
                 (cons __tmp59512 __tmp59510))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59509 '()))))
                                           (declare (not safe))
                                           (cons __tmp59513 __tmp59508)))
                                        (__tmp59499
                                         (let ((__tmp59500
                                                (let ((__tmp59506
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp59501
                                                       (let ((__tmp59502
                                                              (let ((__tmp59505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-seed))
                            (__tmp59503
                             (let ((__tmp59504 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp59504 '()))))
                        (declare (not safe))
                        (cons __tmp59505 __tmp59503))))
                 (declare (not safe))
                 (cons __tmp59502 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59506
                                                        __tmp59501))))
                                           (declare (not safe))
                                           (cons __tmp59500 '()))))
                                    (declare (not safe))
                                    (cons __tmp59507 __tmp59499)))
                                 (__tmp59466
                                  (let ((__tmp59467
                                         (let ((__tmp59497
                                                (gx#datum->syntax
                                                 '#f
                                                 '__table-del!))
                                               (__tmp59468
                                                (let ((__tmp59496
                                                       (gx#datum->syntax
                                                        '#f
                                                        'table))
                                                      (__tmp59469
                                                       (let ((__tmp59495
                                                              (gx#datum->syntax
                                                               '#f
                                                               'seed))
                                                             (__tmp59470
                                                              (let ((__tmp59471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp59472
                                    (let ((__tmp59494
                                           (gx#datum->syntax '#f 'key))
                                          (__tmp59473
                                           (let ((__tmp59474
                                                  (let ((__tmp59493
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp59475
                                                         (let ((__tmp59476
                                                                (let ((__tmp59477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp59492 (gx#datum->syntax '#f 'set!))
                                     (__tmp59478
                                      (let ((__tmp59488
                                             (let ((__tmp59491
                                                    (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-count))
                                                   (__tmp59489
                                                    (let ((__tmp59490
                                                           (gx#datum->syntax
                                                            '#f
                                                            'tab)))
                                                      (declare (not safe))
                                                      (cons __tmp59490 '()))))
                                               (declare (not safe))
                                               (cons __tmp59491 __tmp59489)))
                                            (__tmp59479
                                             (let ((__tmp59480
                                                    (let ((__tmp59487
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx-))
                                                          (__tmp59481
                                                           (let ((__tmp59483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp59486
                                 (gx#datum->syntax '#f '&raw-table-count))
                                (__tmp59484
                                 (let ((__tmp59485
                                        (gx#datum->syntax '#f 'tab)))
                                   (declare (not safe))
                                   (cons __tmp59485 '()))))
                            (declare (not safe))
                            (cons __tmp59486 __tmp59484)))
                         (__tmp59482
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp59483 __tmp59482))))
              (declare (not safe))
              (cons __tmp59487 __tmp59481))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59480 '()))))
                                        (declare (not safe))
                                        (cons __tmp59488 __tmp59479))))
                                 (declare (not safe))
                                 (cons __tmp59492 __tmp59478))))
                          (declare (not safe))
                          (cons __tmp59477 '()))))
                   (declare (not safe))
                   (cons '() __tmp59476))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59493
                                                          __tmp59475))))
                                             (declare (not safe))
                                             (cons __tmp59474 '()))))
                                      (declare (not safe))
                                      (cons __tmp59494 __tmp59473))))
                               (declare (not safe))
                               (cons _L57471_ __tmp59472))))
                        (declare (not safe))
                        (cons _L57473_ __tmp59471))))
                 (declare (not safe))
                 (cons __tmp59495 __tmp59470))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59496
                                                        __tmp59469))))
                                           (declare (not safe))
                                           (cons __tmp59497 __tmp59468))))
                                    (declare (not safe))
                                    (cons __tmp59467 '()))))
                             (declare (not safe))
                             (cons __tmp59498 __tmp59466))))
                      (declare (not safe))
                      (cons __tmp59514 __tmp59465))))
               (declare (not safe))
               (cons __tmp59464 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59515 __tmp59463))))
                                         (declare (not safe))
                                         (cons __tmp59520 __tmp59462))))
                                  (declare (not safe))
                                  (cons __tmp59461 '()))))
                           (declare (not safe))
                           (cons __tmp59521 __tmp59460))))
                    (declare (not safe))
                    (cons __tmp59625 __tmp59459))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp59673
                                                           __tmp59458))))
                                              (declare (not safe))
                                              (cons __tmp59775 __tmp59457))))
                                       (declare (not safe))
                                       (cons __tmp59821 __tmp59456))))
                                (declare (not safe))
                                (cons __tmp59864 __tmp59455))))
                         (declare (not safe))
                         (cons __tmp59885 __tmp59454)))
                     _hd5735757465_
                     _hd5735457455_
                     _hd5735157445_
                     _hd5734857435_
                     _hd5734557425_
                     _hd5734257415_
                     _hd5733957405_
                     _hd5733657395_
                     _hd5733357385_)
                    (_g5731857364_ _g5731957368_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5731857364_
                                                     _g5731957368_))))
                                            (_g5731857364_ _g5731957368_))))
                                    (_g5731857364_ _g5731957368_))))
                            (_g5731857364_ _g5731957368_))))
                    (_g5731857364_ _g5731957368_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5731857364_
                                                     _g5731957368_))))
                                            (_g5731857364_ _g5731957368_))))
                                    (_g5731857364_ _g5731957368_))))
                            (_g5731857364_ _g5731957368_))))
                    (_g5731857364_ _g5731957368_)))))
        (_g5731757517_ _$stx57314_))))
  (define |[:0:]#probe-step|
    (lambda (_$stx57521_)
      (let* ((_g5752557547_
              (lambda (_g5752657543_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5752657543_)))
             (_g5752457616_
              (lambda (_g5752657551_)
                (if (gx#stx-pair? _g5752657551_)
                    (let ((_e5753257554_ (gx#syntax-e _g5752657551_)))
                      (let ((_hd5753157558_
                             (let ()
                               (declare (not safe))
                               (##car _e5753257554_)))
                            (_tl5753057561_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5753257554_))))
                        (if (gx#stx-pair? _tl5753057561_)
                            (let ((_e5753557564_ (gx#syntax-e _tl5753057561_)))
                              (let ((_hd5753457568_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5753557564_)))
                                    (_tl5753357571_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5753557564_))))
                                (if (gx#stx-pair? _tl5753357571_)
                                    (let ((_e5753857574_
                                           (gx#syntax-e _tl5753357571_)))
                                      (let ((_hd5753757578_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5753857574_)))
                                            (_tl5753657581_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5753857574_))))
                                        (if (gx#stx-pair? _tl5753657581_)
                                            (let ((_e5754157584_
                                                   (gx#syntax-e
                                                    _tl5753657581_)))
                                              (let ((_hd5754057588_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5754157584_)))
                                                    (_tl5753957591_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5754157584_))))
                                                (if (gx#stx-null?
                                                     _tl5753957591_)
                                                    ((lambda (_L57594_
                                                              _L57596_
                                                              _L57597_)
                                                       (let ((__tmp59905
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp59886
                                                              (let ((__tmp59893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp59904
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp59894
                                    (let ((__tmp59895
                                           (let ((__tmp59903
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp59896
                                                  (let ((__tmp59897
                                                         (let ((__tmp59898
                                                                (let ((__tmp59899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp59902 (gx#datum->syntax '#f 'fx*))
                                     (__tmp59900
                                      (let ((__tmp59901
                                             (let ()
                                               (declare (not safe))
                                               (cons _L57596_ '()))))
                                        (declare (not safe))
                                        (cons _L57596_ __tmp59901))))
                                 (declare (not safe))
                                 (cons __tmp59902 __tmp59900))))
                          (declare (not safe))
                          (cons __tmp59899 '()))))
                   (declare (not safe))
                   (cons _L57596_ __tmp59898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L57597_
                                                          __tmp59897))))
                                             (declare (not safe))
                                             (cons __tmp59903 __tmp59896))))
                                      (declare (not safe))
                                      (cons __tmp59895 '()))))
                               (declare (not safe))
                               (cons __tmp59904 __tmp59894)))
                            (__tmp59887
                             (let ((__tmp59888
                                    (let ((__tmp59892
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp59889
                                           (let ((__tmp59891
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp59890
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L57594_ '()))))
                                             (declare (not safe))
                                             (cons __tmp59891 __tmp59890))))
                                      (declare (not safe))
                                      (cons __tmp59892 __tmp59889))))
                               (declare (not safe))
                               (cons __tmp59888 '()))))
                        (declare (not safe))
                        (cons __tmp59893 __tmp59887))))
                 (declare (not safe))
                 (cons __tmp59905 __tmp59886)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5754057588_
                                                     _hd5753757578_
                                                     _hd5753457568_)
                                                    (_g5752557547_
                                                     _g5752657551_))))
                                            (_g5752557547_ _g5752657551_))))
                                    (_g5752557547_ _g5752657551_))))
                            (_g5752557547_ _g5752657551_))))
                    (_g5752557547_ _g5752657551_)))))
        (_g5752457616_ _$stx57521_))))
  (define |[:0:]#__table-ref|
    (lambda (_$stx57620_)
      (let* ((_g5762457658_
              (lambda (_g5762557654_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5762557654_)))
             (_g5762357769_
              (lambda (_g5762557662_)
                (if (gx#stx-pair? _g5762557662_)
                    (let ((_e5763457665_ (gx#syntax-e _g5762557662_)))
                      (let ((_hd5763357669_
                             (let ()
                               (declare (not safe))
                               (##car _e5763457665_)))
                            (_tl5763257672_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5763457665_))))
                        (if (gx#stx-pair? _tl5763257672_)
                            (let ((_e5763757675_ (gx#syntax-e _tl5763257672_)))
                              (let ((_hd5763657679_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5763757675_)))
                                    (_tl5763557682_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5763757675_))))
                                (if (gx#stx-pair? _tl5763557682_)
                                    (let ((_e5764057685_
                                           (gx#syntax-e _tl5763557682_)))
                                      (let ((_hd5763957689_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5764057685_)))
                                            (_tl5763857692_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5764057685_))))
                                        (if (gx#stx-pair? _tl5763857692_)
                                            (let ((_e5764357695_
                                                   (gx#syntax-e
                                                    _tl5763857692_)))
                                              (let ((_hd5764257699_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5764357695_)))
                                                    (_tl5764157702_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5764357695_))))
                                                (if (gx#stx-pair?
                                                     _tl5764157702_)
                                                    (let ((_e5764657705_
                                                           (gx#syntax-e
                                                            _tl5764157702_)))
                                                      (let ((_hd5764557709_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5764657705_)))
                    (_tl5764457712_
                     (let () (declare (not safe)) (##cdr _e5764657705_))))
                (if (gx#stx-pair? _tl5764457712_)
                    (let ((_e5764957715_ (gx#syntax-e _tl5764457712_)))
                      (let ((_hd5764857719_
                             (let ()
                               (declare (not safe))
                               (##car _e5764957715_)))
                            (_tl5764757722_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5764957715_))))
                        (if (gx#stx-pair? _tl5764757722_)
                            (let ((_e5765257725_ (gx#syntax-e _tl5764757722_)))
                              (let ((_hd5765157729_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5765257725_)))
                                    (_tl5765057732_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5765257725_))))
                                (if (gx#stx-null? _tl5765057732_)
                                    ((lambda (_L57735_
                                              _L57737_
                                              _L57738_
                                              _L57739_
                                              _L57740_
                                              _L57741_)
                                       (let ((__tmp60064
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp59906
                                              (let ((__tmp60024
                                                     (let ((__tmp60055
                                                            (let ((__tmp60063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60056
                           (let ((__tmp60057
                                  (let ((__tmp60062
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp60058
                                         (let ((__tmp60060
                                                (let ((__tmp60061
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L57737_ '()))))
                                                  (declare (not safe))
                                                  (cons _L57739_ __tmp60061)))
                                               (__tmp60059
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L57740_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60060 __tmp60059))))
                                    (declare (not safe))
                                    (cons __tmp60062 __tmp60058))))
                             (declare (not safe))
                             (cons __tmp60057 '()))))
                      (declare (not safe))
                      (cons __tmp60063 __tmp60056)))
                   (__tmp60025
                    (let ((__tmp60049
                           (let ((__tmp60054 (gx#datum->syntax '#f 'size))
                                 (__tmp60050
                                  (let ((__tmp60051
                                         (let ((__tmp60053
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60052
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L57741_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60053 __tmp60052))))
                                    (declare (not safe))
                                    (cons __tmp60051 '()))))
                             (declare (not safe))
                             (cons __tmp60054 __tmp60050)))
                          (__tmp60026
                           (let ((__tmp60041
                                  (let ((__tmp60048
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp60042
                                         (let ((__tmp60043
                                                (let ((__tmp60047
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp60044
                                                       (let ((__tmp60046
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp60045
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp60046 __tmp60045))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60047
                                                        __tmp60044))))
                                           (declare (not safe))
                                           (cons __tmp60043 '()))))
                                    (declare (not safe))
                                    (cons __tmp60048 __tmp60042)))
                                 (__tmp60027
                                  (let ((__tmp60028
                                         (let ((__tmp60040
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp60029
                                                (let ((__tmp60030
                                                       (let ((__tmp60039
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp60031
                                                              (let ((__tmp60033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60038
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp60034
                                    (let ((__tmp60037
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60035
                                           (let ((__tmp60036
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp60036 '()))))
                                      (declare (not safe))
                                      (cons __tmp60037 __tmp60035))))
                               (declare (not safe))
                               (cons __tmp60038 __tmp60034)))
                            (__tmp60032
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp60033 __tmp60032))))
                 (declare (not safe))
                 (cons __tmp60039 __tmp60031))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60030 '()))))
                                           (declare (not safe))
                                           (cons __tmp60040 __tmp60029))))
                                    (declare (not safe))
                                    (cons __tmp60028 '()))))
                             (declare (not safe))
                             (cons __tmp60041 __tmp60027))))
                      (declare (not safe))
                      (cons __tmp60049 __tmp60026))))
               (declare (not safe))
               (cons __tmp60055 __tmp60025)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp59907
                                                     (let ((__tmp59908
                                                            (let ((__tmp60023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp59909
                           (let ((__tmp60022 (gx#datum->syntax '#f 'loop))
                                 (__tmp59910
                                  (let ((__tmp60009
                                         (let ((__tmp60018
                                                (let ((__tmp60021
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp60019
                                                       (let ((__tmp60020
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp60020
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60021
                                                        __tmp60019)))
                                               (__tmp60010
                                                (let ((__tmp60015
                                                       (let ((__tmp60017
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp60016
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp60017 __tmp60016)))
              (__tmp60011
               (let ((__tmp60012
                      (let ((__tmp60014 (gx#datum->syntax '#f 'deleted))
                            (__tmp60013
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp60014 __tmp60013))))
                 (declare (not safe))
                 (cons __tmp60012 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60015
                                                        __tmp60011))))
                                           (declare (not safe))
                                           (cons __tmp60018 __tmp60010)))
                                        (__tmp59911
                                         (let ((__tmp59912
                                                (let ((__tmp60008
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp59913
                                                       (let ((__tmp60000
                                                              (let ((__tmp60007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp60001
                             (let ((__tmp60002
                                    (let ((__tmp60006
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp60003
                                           (let ((__tmp60004
                                                  (let ((__tmp60005
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60005 '()))))
                                             (declare (not safe))
                                             (cons _L57741_ __tmp60004))))
                                      (declare (not safe))
                                      (cons __tmp60006 __tmp60003))))
                               (declare (not safe))
                               (cons __tmp60002 '()))))
                        (declare (not safe))
                        (cons __tmp60007 __tmp60001)))
                     (__tmp59914
                      (let ((__tmp59915
                             (let ((__tmp59999 (gx#datum->syntax '#f 'cond))
                                   (__tmp59916
                                    (let ((__tmp59990
                                           (let ((__tmp59992
                                                  (let ((__tmp59998
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp59993
                                                         (let ((__tmp59997
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp59994
                        (let ((__tmp59995
                               (let ((__tmp59996
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp59996 '()))))
                          (declare (not safe))
                          (cons __tmp59995 '()))))
                   (declare (not safe))
                   (cons __tmp59997 __tmp59994))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59998
                                                          __tmp59993)))
                                                 (__tmp59991
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L57735_ '()))))
                                             (declare (not safe))
                                             (cons __tmp59992 __tmp59991)))
                                          (__tmp59917
                                           (let ((__tmp59957
                                                  (let ((__tmp59983
                                                         (let ((__tmp59989
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp59984
                        (let ((__tmp59988 (gx#datum->syntax '#f 'k))
                              (__tmp59985
                               (let ((__tmp59986
                                      (let ((__tmp59987
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp59987 '()))))
                                 (declare (not safe))
                                 (cons __tmp59986 '()))))
                          (declare (not safe))
                          (cons __tmp59988 __tmp59985))))
                   (declare (not safe))
                   (cons __tmp59989 __tmp59984)))
                (__tmp59958
                 (let ((__tmp59959
                        (let ((__tmp59982 (gx#datum->syntax '#f 'loop))
                              (__tmp59960
                               (let ((__tmp59974
                                      (let ((__tmp59981
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp59975
                                             (let ((__tmp59980
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp59976
                                                    (let ((__tmp59979
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp59977
                                                           (let ((__tmp59978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp59978 '()))))
              (declare (not safe))
              (cons __tmp59979 __tmp59977))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59980 __tmp59976))))
                                        (declare (not safe))
                                        (cons __tmp59981 __tmp59975)))
                                     (__tmp59961
                                      (let ((__tmp59969
                                             (let ((__tmp59973
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp59970
                                                    (let ((__tmp59972
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp59971
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp59972
                                                            __tmp59971))))
                                               (declare (not safe))
                                               (cons __tmp59973 __tmp59970)))
                                            (__tmp59962
                                             (let ((__tmp59963
                                                    (let ((__tmp59968
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp59964
                                                           (let ((__tmp59967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp59965
                          (let ((__tmp59966 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp59966 '()))))
                     (declare (not safe))
                     (cons __tmp59967 __tmp59965))))
              (declare (not safe))
              (cons __tmp59968 __tmp59964))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59963 '()))))
                                        (declare (not safe))
                                        (cons __tmp59969 __tmp59962))))
                                 (declare (not safe))
                                 (cons __tmp59974 __tmp59961))))
                          (declare (not safe))
                          (cons __tmp59982 __tmp59960))))
                   (declare (not safe))
                   (cons __tmp59959 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59983
                                                          __tmp59958)))
                                                 (__tmp59918
                                                  (let ((__tmp59942
                                                         (let ((__tmp59953
                                                                (let ((__tmp59954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp59955
                                      (let ((__tmp59956
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp59956 '()))))
                                 (declare (not safe))
                                 (cons _L57737_ __tmp59955))))
                          (declare (not safe))
                          (cons _L57738_ __tmp59954)))
                       (__tmp59943
                        (let ((__tmp59944
                               (let ((__tmp59952
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp59945
                                      (let ((__tmp59946
                                             (let ((__tmp59947
                                                    (let ((__tmp59951
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp59948
                                                           (let ((__tmp59950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp59949
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp59950 __tmp59949))))
              (declare (not safe))
              (cons __tmp59951 __tmp59948))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59947 '()))))
                                        (declare (not safe))
                                        (cons _L57741_ __tmp59946))))
                                 (declare (not safe))
                                 (cons __tmp59952 __tmp59945))))
                          (declare (not safe))
                          (cons __tmp59944 '()))))
                   (declare (not safe))
                   (cons __tmp59953 __tmp59943)))
                (__tmp59919
                 (let ((__tmp59920
                        (let ((__tmp59941 (gx#datum->syntax '#f 'else))
                              (__tmp59921
                               (let ((__tmp59922
                                      (let ((__tmp59940
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp59923
                                             (let ((__tmp59932
                                                    (let ((__tmp59939
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp59933
                                                           (let ((__tmp59938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp59934
                          (let ((__tmp59937 (gx#datum->syntax '#f 'i))
                                (__tmp59935
                                 (let ((__tmp59936
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp59936 '()))))
                            (declare (not safe))
                            (cons __tmp59937 __tmp59935))))
                     (declare (not safe))
                     (cons __tmp59938 __tmp59934))))
              (declare (not safe))
              (cons __tmp59939 __tmp59933)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp59924
                                                    (let ((__tmp59927
                                                           (let ((__tmp59931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp59928
                          (let ((__tmp59930 (gx#datum->syntax '#f 'i))
                                (__tmp59929
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp59930 __tmp59929))))
                     (declare (not safe))
                     (cons __tmp59931 __tmp59928)))
                  (__tmp59925
                   (let ((__tmp59926 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp59926 '()))))
              (declare (not safe))
              (cons __tmp59927 __tmp59925))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59932 __tmp59924))))
                                        (declare (not safe))
                                        (cons __tmp59940 __tmp59923))))
                                 (declare (not safe))
                                 (cons __tmp59922 '()))))
                          (declare (not safe))
                          (cons __tmp59941 __tmp59921))))
                   (declare (not safe))
                   (cons __tmp59920 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59942
                                                          __tmp59919))))
                                             (declare (not safe))
                                             (cons __tmp59957 __tmp59918))))
                                      (declare (not safe))
                                      (cons __tmp59990 __tmp59917))))
                               (declare (not safe))
                               (cons __tmp59999 __tmp59916))))
                        (declare (not safe))
                        (cons __tmp59915 '()))))
                 (declare (not safe))
                 (cons __tmp60000 __tmp59914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60008
                                                        __tmp59913))))
                                           (declare (not safe))
                                           (cons __tmp59912 '()))))
                                    (declare (not safe))
                                    (cons __tmp60009 __tmp59911))))
                             (declare (not safe))
                             (cons __tmp60022 __tmp59910))))
                      (declare (not safe))
                      (cons __tmp60023 __tmp59909))))
               (declare (not safe))
               (cons __tmp59908 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60024 __tmp59907))))
                                         (declare (not safe))
                                         (cons __tmp60064 __tmp59906)))
                                     _hd5765157729_
                                     _hd5764857719_
                                     _hd5764557709_
                                     _hd5764257699_
                                     _hd5763957689_
                                     _hd5763657679_)
                                    (_g5762457658_ _g5762557662_))))
                            (_g5762457658_ _g5762557662_))))
                    (_g5762457658_ _g5762557662_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5762457658_
                                                     _g5762557662_))))
                                            (_g5762457658_ _g5762557662_))))
                                    (_g5762457658_ _g5762557662_))))
                            (_g5762457658_ _g5762557662_))))
                    (_g5762457658_ _g5762557662_)))))
        (_g5762357769_ _$stx57620_))))
  (define |[:0:]#__table-set!|
    (lambda (_$stx57773_)
      (let* ((_g5777757819_
              (lambda (_g5777857815_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5777857815_)))
             (_g5777657958_
              (lambda (_g5777857823_)
                (if (gx#stx-pair? _g5777857823_)
                    (let ((_e5778957826_ (gx#syntax-e _g5777857823_)))
                      (let ((_hd5778857830_
                             (let ()
                               (declare (not safe))
                               (##car _e5778957826_)))
                            (_tl5778757833_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5778957826_))))
                        (if (gx#stx-pair? _tl5778757833_)
                            (let ((_e5779257836_ (gx#syntax-e _tl5778757833_)))
                              (let ((_hd5779157840_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5779257836_)))
                                    (_tl5779057843_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5779257836_))))
                                (if (gx#stx-pair? _tl5779057843_)
                                    (let ((_e5779557846_
                                           (gx#syntax-e _tl5779057843_)))
                                      (let ((_hd5779457850_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5779557846_)))
                                            (_tl5779357853_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5779557846_))))
                                        (if (gx#stx-pair? _tl5779357853_)
                                            (let ((_e5779857856_
                                                   (gx#syntax-e
                                                    _tl5779357853_)))
                                              (let ((_hd5779757860_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5779857856_)))
                                                    (_tl5779657863_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5779857856_))))
                                                (if (gx#stx-pair?
                                                     _tl5779657863_)
                                                    (let ((_e5780157866_
                                                           (gx#syntax-e
                                                            _tl5779657863_)))
                                                      (let ((_hd5780057870_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5780157866_)))
                    (_tl5779957873_
                     (let () (declare (not safe)) (##cdr _e5780157866_))))
                (if (gx#stx-pair? _tl5779957873_)
                    (let ((_e5780457876_ (gx#syntax-e _tl5779957873_)))
                      (let ((_hd5780357880_
                             (let ()
                               (declare (not safe))
                               (##car _e5780457876_)))
                            (_tl5780257883_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5780457876_))))
                        (if (gx#stx-pair? _tl5780257883_)
                            (let ((_e5780757886_ (gx#syntax-e _tl5780257883_)))
                              (let ((_hd5780657890_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5780757886_)))
                                    (_tl5780557893_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5780757886_))))
                                (if (gx#stx-pair? _tl5780557893_)
                                    (let ((_e5781057896_
                                           (gx#syntax-e _tl5780557893_)))
                                      (let ((_hd5780957900_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5781057896_)))
                                            (_tl5780857903_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5781057896_))))
                                        (if (gx#stx-pair? _tl5780857903_)
                                            (let ((_e5781357906_
                                                   (gx#syntax-e
                                                    _tl5780857903_)))
                                              (let ((_hd5781257910_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5781357906_)))
                                                    (_tl5781157913_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5781357906_))))
                                                (if (gx#stx-null?
                                                     _tl5781157913_)
                                                    ((lambda (_L57916_
                                                              _L57918_
                                                              _L57919_
                                                              _L57920_
                                                              _L57921_
                                                              _L57922_
                                                              _L57923_
                                                              _L57924_)
                                                       (let ((__tmp60281
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp60065
                                                              (let ((__tmp60241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60272
                                    (let ((__tmp60280
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60273
                                           (let ((__tmp60274
                                                  (let ((__tmp60279
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp60275
                                                         (let ((__tmp60277
                                                                (let ((__tmp60278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L57920_ '()))))
                          (declare (not safe))
                          (cons _L57922_ __tmp60278)))
                       (__tmp60276
                        (let () (declare (not safe)) (cons _L57923_ '()))))
                   (declare (not safe))
                   (cons __tmp60277 __tmp60276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60279
                                                          __tmp60275))))
                                             (declare (not safe))
                                             (cons __tmp60274 '()))))
                                      (declare (not safe))
                                      (cons __tmp60280 __tmp60273)))
                                   (__tmp60242
                                    (let ((__tmp60266
                                           (let ((__tmp60271
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp60267
                                                  (let ((__tmp60268
                                                         (let ((__tmp60270
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp60269
                        (let () (declare (not safe)) (cons _L57924_ '()))))
                   (declare (not safe))
                   (cons __tmp60270 __tmp60269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60268 '()))))
                                             (declare (not safe))
                                             (cons __tmp60271 __tmp60267)))
                                          (__tmp60243
                                           (let ((__tmp60258
                                                  (let ((__tmp60265
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp60259
                                                         (let ((__tmp60260
                                                                (let ((__tmp60264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp60261
                               (let ((__tmp60263 (gx#datum->syntax '#f 'size))
                                     (__tmp60262
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp60263 __tmp60262))))
                          (declare (not safe))
                          (cons __tmp60264 __tmp60261))))
                   (declare (not safe))
                   (cons __tmp60260 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60265
                                                          __tmp60259)))
                                                 (__tmp60244
                                                  (let ((__tmp60245
                                                         (let ((__tmp60257
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp60246
                        (let ((__tmp60247
                               (let ((__tmp60256
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp60248
                                      (let ((__tmp60250
                                             (let ((__tmp60255
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp60251
                                                    (let ((__tmp60254
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp60252
                                                           (let ((__tmp60253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp60253 '()))))
              (declare (not safe))
              (cons __tmp60254 __tmp60252))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60255 __tmp60251)))
                                            (__tmp60249
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp60250 __tmp60249))))
                                 (declare (not safe))
                                 (cons __tmp60256 __tmp60248))))
                          (declare (not safe))
                          (cons __tmp60247 '()))))
                   (declare (not safe))
                   (cons __tmp60257 __tmp60246))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60245 '()))))
                                             (declare (not safe))
                                             (cons __tmp60258 __tmp60244))))
                                      (declare (not safe))
                                      (cons __tmp60266 __tmp60243))))
                               (declare (not safe))
                               (cons __tmp60272 __tmp60242)))
                            (__tmp60066
                             (let ((__tmp60067
                                    (let ((__tmp60240
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp60068
                                           (let ((__tmp60239
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp60069
                                                  (let ((__tmp60226
                                                         (let ((__tmp60235
                                                                (let ((__tmp60238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp60236
                               (let ((__tmp60237
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp60237 '()))))
                          (declare (not safe))
                          (cons __tmp60238 __tmp60236)))
                       (__tmp60227
                        (let ((__tmp60232
                               (let ((__tmp60234 (gx#datum->syntax '#f 'i))
                                     (__tmp60233
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp60234 __tmp60233)))
                              (__tmp60228
                               (let ((__tmp60229
                                      (let ((__tmp60231
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp60230
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp60231 __tmp60230))))
                                 (declare (not safe))
                                 (cons __tmp60229 '()))))
                          (declare (not safe))
                          (cons __tmp60232 __tmp60228))))
                   (declare (not safe))
                   (cons __tmp60235 __tmp60227)))
                (__tmp60070
                 (let ((__tmp60071
                        (let ((__tmp60225 (gx#datum->syntax '#f 'let))
                              (__tmp60072
                               (let ((__tmp60217
                                      (let ((__tmp60224
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp60218
                                             (let ((__tmp60219
                                                    (let ((__tmp60223
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp60220
                                                           (let ((__tmp60221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60222 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp60222 '()))))
                     (declare (not safe))
                     (cons _L57924_ __tmp60221))))
              (declare (not safe))
              (cons __tmp60223 __tmp60220))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60219 '()))))
                                        (declare (not safe))
                                        (cons __tmp60224 __tmp60218)))
                                     (__tmp60073
                                      (let ((__tmp60074
                                             (let ((__tmp60216
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp60075
                                                    (let ((__tmp60157
                                                           (let ((__tmp60209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60215 (gx#datum->syntax '#f 'eq?))
                                (__tmp60210
                                 (let ((__tmp60214 (gx#datum->syntax '#f 'k))
                                       (__tmp60211
                                        (let ((__tmp60212
                                               (let ((__tmp60213
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp60213 '()))))
                                          (declare (not safe))
                                          (cons __tmp60212 '()))))
                                   (declare (not safe))
                                   (cons __tmp60214 __tmp60211))))
                            (declare (not safe))
                            (cons __tmp60215 __tmp60210)))
                         (__tmp60158
                          (let ((__tmp60159
                                 (let ((__tmp60208 (gx#datum->syntax '#f 'if))
                                       (__tmp60160
                                        (let ((__tmp60207
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp60161
                                               (let ((__tmp60185
                                                      (let ((__tmp60206
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp60186
                                                             (let ((__tmp60200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60205
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp60201
                                   (let ((__tmp60202
                                          (let ((__tmp60204
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp60203
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L57920_ '()))))
                                            (declare (not safe))
                                            (cons __tmp60204 __tmp60203))))
                                     (declare (not safe))
                                     (cons _L57924_ __tmp60202))))
                              (declare (not safe))
                              (cons __tmp60205 __tmp60201)))
                           (__tmp60187
                            (let ((__tmp60190
                                   (let ((__tmp60199
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp60191
                                          (let ((__tmp60192
                                                 (let ((__tmp60194
                                                        (let ((__tmp60198
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp60195
                                                               (let ((__tmp60197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp60196
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp60197 __tmp60196))))
                  (declare (not safe))
                  (cons __tmp60198 __tmp60195)))
               (__tmp60193 (let () (declare (not safe)) (cons _L57919_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp60194
                                                         __tmp60193))))
                                            (declare (not safe))
                                            (cons _L57924_ __tmp60192))))
                                     (declare (not safe))
                                     (cons __tmp60199 __tmp60191)))
                                  (__tmp60188
                                   (let ((__tmp60189
                                          (let ()
                                            (declare (not safe))
                                            (cons _L57916_ '()))))
                                     (declare (not safe))
                                     (cons __tmp60189 '()))))
                              (declare (not safe))
                              (cons __tmp60190 __tmp60188))))
                       (declare (not safe))
                       (cons __tmp60200 __tmp60187))))
                (declare (not safe))
                (cons __tmp60206 __tmp60186)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp60162
                                                      (let ((__tmp60163
                                                             (let ((__tmp60184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp60164
                            (let ((__tmp60178
                                   (let ((__tmp60183
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp60179
                                          (let ((__tmp60180
                                                 (let ((__tmp60182
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp60181
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L57920_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp60182
                                                         __tmp60181))))
                                            (declare (not safe))
                                            (cons _L57924_ __tmp60180))))
                                     (declare (not safe))
                                     (cons __tmp60183 __tmp60179)))
                                  (__tmp60165
                                   (let ((__tmp60168
                                          (let ((__tmp60177
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp60169
                                                 (let ((__tmp60170
                                                        (let ((__tmp60172
                                                               (let ((__tmp60176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp60173
                              (let ((__tmp60175 (gx#datum->syntax '#f 'probe))
                                    (__tmp60174
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp60175 __tmp60174))))
                         (declare (not safe))
                         (cons __tmp60176 __tmp60173)))
                      (__tmp60171
                       (let () (declare (not safe)) (cons _L57919_ '()))))
                  (declare (not safe))
                  (cons __tmp60172 __tmp60171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L57924_
                                                         __tmp60170))))
                                            (declare (not safe))
                                            (cons __tmp60177 __tmp60169)))
                                         (__tmp60166
                                          (let ((__tmp60167
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L57918_ '()))))
                                            (declare (not safe))
                                            (cons __tmp60167 '()))))
                                     (declare (not safe))
                                     (cons __tmp60168 __tmp60166))))
                              (declare (not safe))
                              (cons __tmp60178 __tmp60165))))
                       (declare (not safe))
                       (cons __tmp60184 __tmp60164))))
                (declare (not safe))
                (cons __tmp60163 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60185
                                                       __tmp60162))))
                                          (declare (not safe))
                                          (cons __tmp60207 __tmp60161))))
                                   (declare (not safe))
                                   (cons __tmp60208 __tmp60160))))
                            (declare (not safe))
                            (cons __tmp60159 '()))))
                     (declare (not safe))
                     (cons __tmp60209 __tmp60158)))
                  (__tmp60076
                   (let ((__tmp60124
                          (let ((__tmp60150
                                 (let ((__tmp60156 (gx#datum->syntax '#f 'eq?))
                                       (__tmp60151
                                        (let ((__tmp60155
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp60152
                                               (let ((__tmp60153
                                                      (let ((__tmp60154
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp60154
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp60153 '()))))
                                          (declare (not safe))
                                          (cons __tmp60155 __tmp60152))))
                                   (declare (not safe))
                                   (cons __tmp60156 __tmp60151)))
                                (__tmp60125
                                 (let ((__tmp60126
                                        (let ((__tmp60149
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp60127
                                               (let ((__tmp60141
                                                      (let ((__tmp60148
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp60142
                                                             (let ((__tmp60147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp60143
                            (let ((__tmp60146 (gx#datum->syntax '#f 'i))
                                  (__tmp60144
                                   (let ((__tmp60145
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp60145 '()))))
                              (declare (not safe))
                              (cons __tmp60146 __tmp60144))))
                       (declare (not safe))
                       (cons __tmp60147 __tmp60143))))
                (declare (not safe))
                (cons __tmp60148 __tmp60142)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp60128
                                                      (let ((__tmp60136
                                                             (let ((__tmp60140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp60137
                            (let ((__tmp60139 (gx#datum->syntax '#f 'i))
                                  (__tmp60138
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp60139 __tmp60138))))
                       (declare (not safe))
                       (cons __tmp60140 __tmp60137)))
                    (__tmp60129
                     (let ((__tmp60130
                            (let ((__tmp60135 (gx#datum->syntax '#f 'or))
                                  (__tmp60131
                                   (let ((__tmp60134
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp60132
                                          (let ((__tmp60133
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp60133 '()))))
                                     (declare (not safe))
                                     (cons __tmp60134 __tmp60132))))
                              (declare (not safe))
                              (cons __tmp60135 __tmp60131))))
                       (declare (not safe))
                       (cons __tmp60130 '()))))
                (declare (not safe))
                (cons __tmp60136 __tmp60129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60141
                                                       __tmp60128))))
                                          (declare (not safe))
                                          (cons __tmp60149 __tmp60127))))
                                   (declare (not safe))
                                   (cons __tmp60126 '()))))
                            (declare (not safe))
                            (cons __tmp60150 __tmp60125)))
                         (__tmp60077
                          (let ((__tmp60101
                                 (let ((__tmp60120
                                        (let ((__tmp60121
                                               (let ((__tmp60122
                                                      (let ((__tmp60123
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp60123
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L57920_ __tmp60122))))
                                          (declare (not safe))
                                          (cons _L57921_ __tmp60121)))
                                       (__tmp60102
                                        (let ((__tmp60114
                                               (let ((__tmp60119
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp60115
                                                      (let ((__tmp60116
                                                             (let ((__tmp60118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp60117
                            (let () (declare (not safe)) (cons _L57920_ '()))))
                       (declare (not safe))
                       (cons __tmp60118 __tmp60117))))
                (declare (not safe))
                (cons _L57924_ __tmp60116))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60119 __tmp60115)))
                                              (__tmp60103
                                               (let ((__tmp60104
                                                      (let ((__tmp60113
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp60105
                                                             (let ((__tmp60106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60108
                                   (let ((__tmp60112
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60109
                                          (let ((__tmp60111
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp60110
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60111 __tmp60110))))
                                     (declare (not safe))
                                     (cons __tmp60112 __tmp60109)))
                                  (__tmp60107
                                   (let ()
                                     (declare (not safe))
                                     (cons _L57919_ '()))))
                              (declare (not safe))
                              (cons __tmp60108 __tmp60107))))
                       (declare (not safe))
                       (cons _L57924_ __tmp60106))))
                (declare (not safe))
                (cons __tmp60113 __tmp60105))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60104 '()))))
                                          (declare (not safe))
                                          (cons __tmp60114 __tmp60103))))
                                   (declare (not safe))
                                   (cons __tmp60120 __tmp60102)))
                                (__tmp60078
                                 (let ((__tmp60079
                                        (let ((__tmp60100
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp60080
                                               (let ((__tmp60081
                                                      (let ((__tmp60099
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp60082
                                                             (let ((__tmp60091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60098
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp60092
                                   (let ((__tmp60097
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp60093
                                          (let ((__tmp60096
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60094
                                                 (let ((__tmp60095
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp60095 '()))))
                                            (declare (not safe))
                                            (cons __tmp60096 __tmp60094))))
                                     (declare (not safe))
                                     (cons __tmp60097 __tmp60093))))
                              (declare (not safe))
                              (cons __tmp60098 __tmp60092)))
                           (__tmp60083
                            (let ((__tmp60086
                                   (let ((__tmp60090
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60087
                                          (let ((__tmp60089
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60088
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60089 __tmp60088))))
                                     (declare (not safe))
                                     (cons __tmp60090 __tmp60087)))
                                  (__tmp60084
                                   (let ((__tmp60085
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp60085 '()))))
                              (declare (not safe))
                              (cons __tmp60086 __tmp60084))))
                       (declare (not safe))
                       (cons __tmp60091 __tmp60083))))
                (declare (not safe))
                (cons __tmp60099 __tmp60082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60081 '()))))
                                          (declare (not safe))
                                          (cons __tmp60100 __tmp60080))))
                                   (declare (not safe))
                                   (cons __tmp60079 '()))))
                            (declare (not safe))
                            (cons __tmp60101 __tmp60078))))
                     (declare (not safe))
                     (cons __tmp60124 __tmp60077))))
              (declare (not safe))
              (cons __tmp60157 __tmp60076))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60216 __tmp60075))))
                                        (declare (not safe))
                                        (cons __tmp60074 '()))))
                                 (declare (not safe))
                                 (cons __tmp60217 __tmp60073))))
                          (declare (not safe))
                          (cons __tmp60225 __tmp60072))))
                   (declare (not safe))
                   (cons __tmp60071 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60226
                                                          __tmp60070))))
                                             (declare (not safe))
                                             (cons __tmp60239 __tmp60069))))
                                      (declare (not safe))
                                      (cons __tmp60240 __tmp60068))))
                               (declare (not safe))
                               (cons __tmp60067 '()))))
                        (declare (not safe))
                        (cons __tmp60241 __tmp60066))))
                 (declare (not safe))
                 (cons __tmp60281 __tmp60065)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd5781257910_
                                                     _hd5780957900_
                                                     _hd5780657890_
                                                     _hd5780357880_
                                                     _hd5780057870_
                                                     _hd5779757860_
                                                     _hd5779457850_
                                                     _hd5779157840_)
                                                    (_g5777757819_
                                                     _g5777857823_))))
                                            (_g5777757819_ _g5777857823_))))
                                    (_g5777757819_ _g5777857823_))))
                            (_g5777757819_ _g5777857823_))))
                    (_g5777757819_ _g5777857823_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5777757819_
                                                     _g5777857823_))))
                                            (_g5777757819_ _g5777857823_))))
                                    (_g5777757819_ _g5777857823_))))
                            (_g5777757819_ _g5777857823_))))
                    (_g5777757819_ _g5777857823_)))))
        (_g5777657958_ _$stx57773_))))
  (define |[:0:]#__table-update!|
    (lambda (_$stx57962_)
      (let* ((_g5796658012_
              (lambda (_g5796758008_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5796758008_)))
             (_g5796558165_
              (lambda (_g5796758016_)
                (if (gx#stx-pair? _g5796758016_)
                    (let ((_e5797958019_ (gx#syntax-e _g5796758016_)))
                      (let ((_hd5797858023_
                             (let ()
                               (declare (not safe))
                               (##car _e5797958019_)))
                            (_tl5797758026_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5797958019_))))
                        (if (gx#stx-pair? _tl5797758026_)
                            (let ((_e5798258029_ (gx#syntax-e _tl5797758026_)))
                              (let ((_hd5798158033_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5798258029_)))
                                    (_tl5798058036_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5798258029_))))
                                (if (gx#stx-pair? _tl5798058036_)
                                    (let ((_e5798558039_
                                           (gx#syntax-e _tl5798058036_)))
                                      (let ((_hd5798458043_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5798558039_)))
                                            (_tl5798358046_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5798558039_))))
                                        (if (gx#stx-pair? _tl5798358046_)
                                            (let ((_e5798858049_
                                                   (gx#syntax-e
                                                    _tl5798358046_)))
                                              (let ((_hd5798758053_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5798858049_)))
                                                    (_tl5798658056_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5798858049_))))
                                                (if (gx#stx-pair?
                                                     _tl5798658056_)
                                                    (let ((_e5799158059_
                                                           (gx#syntax-e
                                                            _tl5798658056_)))
                                                      (let ((_hd5799058063_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5799158059_)))
                    (_tl5798958066_
                     (let () (declare (not safe)) (##cdr _e5799158059_))))
                (if (gx#stx-pair? _tl5798958066_)
                    (let ((_e5799458069_ (gx#syntax-e _tl5798958066_)))
                      (let ((_hd5799358073_
                             (let ()
                               (declare (not safe))
                               (##car _e5799458069_)))
                            (_tl5799258076_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5799458069_))))
                        (if (gx#stx-pair? _tl5799258076_)
                            (let ((_e5799758079_ (gx#syntax-e _tl5799258076_)))
                              (let ((_hd5799658083_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5799758079_)))
                                    (_tl5799558086_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5799758079_))))
                                (if (gx#stx-pair? _tl5799558086_)
                                    (let ((_e5800058089_
                                           (gx#syntax-e _tl5799558086_)))
                                      (let ((_hd5799958093_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5800058089_)))
                                            (_tl5799858096_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5800058089_))))
                                        (if (gx#stx-pair? _tl5799858096_)
                                            (let ((_e5800358099_
                                                   (gx#syntax-e
                                                    _tl5799858096_)))
                                              (let ((_hd5800258103_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5800358099_)))
                                                    (_tl5800158106_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5800358099_))))
                                                (if (gx#stx-pair?
                                                     _tl5800158106_)
                                                    (let ((_e5800658109_
                                                           (gx#syntax-e
                                                            _tl5800158106_)))
                                                      (let ((_hd5800558113_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5800658109_)))
                    (_tl5800458116_
                     (let () (declare (not safe)) (##cdr _e5800658109_))))
                (if (gx#stx-null? _tl5800458116_)
                    ((lambda (_L58119_
                              _L58121_
                              _L58122_
                              _L58123_
                              _L58124_
                              _L58125_
                              _L58126_
                              _L58127_
                              _L58128_)
                       (let ((__tmp60513 (gx#datum->syntax '#f 'let*))
                             (__tmp60282
                              (let ((__tmp60473
                                     (let ((__tmp60504
                                            (let ((__tmp60512
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp60505
                                                   (let ((__tmp60506
                                                          (let ((__tmp60511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'fxxor))
                        (__tmp60507
                         (let ((__tmp60509
                                (let ((__tmp60510
                                       (let ()
                                         (declare (not safe))
                                         (cons _L58124_ '()))))
                                  (declare (not safe))
                                  (cons _L58126_ __tmp60510)))
                               (__tmp60508
                                (let ()
                                  (declare (not safe))
                                  (cons _L58127_ '()))))
                           (declare (not safe))
                           (cons __tmp60509 __tmp60508))))
                    (declare (not safe))
                    (cons __tmp60511 __tmp60507))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60506 '()))))
                                              (declare (not safe))
                                              (cons __tmp60512 __tmp60505)))
                                           (__tmp60474
                                            (let ((__tmp60498
                                                   (let ((__tmp60503
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size))
                                                         (__tmp60499
                                                          (let ((__tmp60500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60502
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp60501
                                (let ()
                                  (declare (not safe))
                                  (cons _L58128_ '()))))
                           (declare (not safe))
                           (cons __tmp60502 __tmp60501))))
                    (declare (not safe))
                    (cons __tmp60500 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60503
                                                           __tmp60499)))
                                                  (__tmp60475
                                                   (let ((__tmp60490
                                                          (let ((__tmp60497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'entries))
                        (__tmp60491
                         (let ((__tmp60492
                                (let ((__tmp60496
                                       (gx#datum->syntax '#f 'fxquotient))
                                      (__tmp60493
                                       (let ((__tmp60495
                                              (gx#datum->syntax '#f 'size))
                                             (__tmp60494
                                              (let ()
                                                (declare (not safe))
                                                (cons '2 '()))))
                                         (declare (not safe))
                                         (cons __tmp60495 __tmp60494))))
                                  (declare (not safe))
                                  (cons __tmp60496 __tmp60493))))
                           (declare (not safe))
                           (cons __tmp60492 '()))))
                    (declare (not safe))
                    (cons __tmp60497 __tmp60491)))
                 (__tmp60476
                  (let ((__tmp60477
                         (let ((__tmp60489 (gx#datum->syntax '#f 'start))
                               (__tmp60478
                                (let ((__tmp60479
                                       (let ((__tmp60488
                                              (gx#datum->syntax
                                               '#f
                                               'fxarithmetic-shift-left))
                                             (__tmp60480
                                              (let ((__tmp60482
                                                     (let ((__tmp60487
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fxmodulo))
                                                           (__tmp60483
                                                            (let ((__tmp60486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60484
                           (let ((__tmp60485 (gx#datum->syntax '#f 'entries)))
                             (declare (not safe))
                             (cons __tmp60485 '()))))
                      (declare (not safe))
                      (cons __tmp60486 __tmp60484))))
               (declare (not safe))
               (cons __tmp60487 __tmp60483)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60481
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '1 '()))))
                                                (declare (not safe))
                                                (cons __tmp60482 __tmp60481))))
                                         (declare (not safe))
                                         (cons __tmp60488 __tmp60480))))
                                  (declare (not safe))
                                  (cons __tmp60479 '()))))
                           (declare (not safe))
                           (cons __tmp60489 __tmp60478))))
                    (declare (not safe))
                    (cons __tmp60477 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60490
                                                           __tmp60476))))
                                              (declare (not safe))
                                              (cons __tmp60498 __tmp60475))))
                                       (declare (not safe))
                                       (cons __tmp60504 __tmp60474)))
                                    (__tmp60283
                                     (let ((__tmp60284
                                            (let ((__tmp60472
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp60285
                                                   (let ((__tmp60471
                                                          (gx#datum->syntax
                                                           '#f
                                                           'loop))
                                                         (__tmp60286
                                                          (let ((__tmp60458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60467
                                (let ((__tmp60470
                                       (gx#datum->syntax '#f 'probe))
                                      (__tmp60468
                                       (let ((__tmp60469
                                              (gx#datum->syntax '#f 'start)))
                                         (declare (not safe))
                                         (cons __tmp60469 '()))))
                                  (declare (not safe))
                                  (cons __tmp60470 __tmp60468)))
                               (__tmp60459
                                (let ((__tmp60464
                                       (let ((__tmp60466
                                              (gx#datum->syntax '#f 'i))
                                             (__tmp60465
                                              (let ()
                                                (declare (not safe))
                                                (cons '1 '()))))
                                         (declare (not safe))
                                         (cons __tmp60466 __tmp60465)))
                                      (__tmp60460
                                       (let ((__tmp60461
                                              (let ((__tmp60463
                                                     (gx#datum->syntax
                                                      '#f
                                                      'deleted))
                                                    (__tmp60462
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons __tmp60463 __tmp60462))))
                                         (declare (not safe))
                                         (cons __tmp60461 '()))))
                                  (declare (not safe))
                                  (cons __tmp60464 __tmp60460))))
                           (declare (not safe))
                           (cons __tmp60467 __tmp60459)))
                        (__tmp60287
                         (let ((__tmp60288
                                (let ((__tmp60457 (gx#datum->syntax '#f 'let))
                                      (__tmp60289
                                       (let ((__tmp60449
                                              (let ((__tmp60456
                                                     (gx#datum->syntax '#f 'k))
                                                    (__tmp60450
                                                     (let ((__tmp60451
                                                            (let ((__tmp60455
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-ref))
                          (__tmp60452
                           (let ((__tmp60453
                                  (let ((__tmp60454
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp60454 '()))))
                             (declare (not safe))
                             (cons _L58128_ __tmp60453))))
                      (declare (not safe))
                      (cons __tmp60455 __tmp60452))))
               (declare (not safe))
               (cons __tmp60451 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60456 __tmp60450)))
                                             (__tmp60290
                                              (let ((__tmp60291
                                                     (let ((__tmp60448
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cond))
                                                           (__tmp60292
                                                            (let ((__tmp60385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60441
                                  (let ((__tmp60447
                                         (gx#datum->syntax '#f 'eq?))
                                        (__tmp60442
                                         (let ((__tmp60446
                                                (gx#datum->syntax '#f 'k))
                                               (__tmp60443
                                                (let ((__tmp60444
                                                       (let ((__tmp60445
                                                              (gx#datum->syntax
                                                               '#f
                                                               'macro-unused-obj)))
                                                         (declare (not safe))
                                                         (cons __tmp60445
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60444 '()))))
                                           (declare (not safe))
                                           (cons __tmp60446 __tmp60443))))
                                    (declare (not safe))
                                    (cons __tmp60447 __tmp60442)))
                                 (__tmp60386
                                  (let ((__tmp60387
                                         (let ((__tmp60440
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp60388
                                                (let ((__tmp60439
                                                       (gx#datum->syntax
                                                        '#f
                                                        'deleted))
                                                      (__tmp60389
                                                       (let ((__tmp60415
                                                              (let ((__tmp60438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin))
                            (__tmp60416
                             (let ((__tmp60432
                                    (let ((__tmp60437
                                           (gx#datum->syntax '#f 'vector-set!))
                                          (__tmp60433
                                           (let ((__tmp60434
                                                  (let ((__tmp60436
                                                         (gx#datum->syntax
                                                          '#f
                                                          'deleted))
                                                        (__tmp60435
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60436
                                                          __tmp60435))))
                                             (declare (not safe))
                                             (cons _L58128_ __tmp60434))))
                                      (declare (not safe))
                                      (cons __tmp60437 __tmp60433)))
                                   (__tmp60417
                                    (let ((__tmp60420
                                           (let ((__tmp60431
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp60421
                                                  (let ((__tmp60422
                                                         (let ((__tmp60426
                                                                (let ((__tmp60430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fx+))
                              (__tmp60427
                               (let ((__tmp60429
                                      (gx#datum->syntax '#f 'deleted))
                                     (__tmp60428
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp60429 __tmp60428))))
                          (declare (not safe))
                          (cons __tmp60430 __tmp60427)))
                       (__tmp60423
                        (let ((__tmp60424
                               (let ((__tmp60425
                                      (let ()
                                        (declare (not safe))
                                        (cons _L58122_ '()))))
                                 (declare (not safe))
                                 (cons _L58123_ __tmp60425))))
                          (declare (not safe))
                          (cons __tmp60424 '()))))
                   (declare (not safe))
                   (cons __tmp60426 __tmp60423))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58128_
                                                          __tmp60422))))
                                             (declare (not safe))
                                             (cons __tmp60431 __tmp60421)))
                                          (__tmp60418
                                           (let ((__tmp60419
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L58119_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60419 '()))))
                                      (declare (not safe))
                                      (cons __tmp60420 __tmp60418))))
                               (declare (not safe))
                               (cons __tmp60432 __tmp60417))))
                        (declare (not safe))
                        (cons __tmp60438 __tmp60416)))
                     (__tmp60390
                      (let ((__tmp60391
                             (let ((__tmp60414 (gx#datum->syntax '#f 'begin))
                                   (__tmp60392
                                    (let ((__tmp60408
                                           (let ((__tmp60413
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp60409
                                                  (let ((__tmp60410
                                                         (let ((__tmp60412
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe))
                       (__tmp60411
                        (let () (declare (not safe)) (cons _L58124_ '()))))
                   (declare (not safe))
                   (cons __tmp60412 __tmp60411))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58128_
                                                          __tmp60410))))
                                             (declare (not safe))
                                             (cons __tmp60413 __tmp60409)))
                                          (__tmp60393
                                           (let ((__tmp60396
                                                  (let ((__tmp60407
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-set!))
                                                        (__tmp60397
                                                         (let ((__tmp60398
                                                                (let ((__tmp60402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60406 (gx#datum->syntax '#f 'fx+))
                                     (__tmp60403
                                      (let ((__tmp60405
                                             (gx#datum->syntax '#f 'probe))
                                            (__tmp60404
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp60405 __tmp60404))))
                                 (declare (not safe))
                                 (cons __tmp60406 __tmp60403)))
                              (__tmp60399
                               (let ((__tmp60400
                                      (let ((__tmp60401
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58122_ '()))))
                                        (declare (not safe))
                                        (cons _L58123_ __tmp60401))))
                                 (declare (not safe))
                                 (cons __tmp60400 '()))))
                          (declare (not safe))
                          (cons __tmp60402 __tmp60399))))
                   (declare (not safe))
                   (cons _L58128_ __tmp60398))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60407
                                                          __tmp60397)))
                                                 (__tmp60394
                                                  (let ((__tmp60395
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60395 '()))))
                                             (declare (not safe))
                                             (cons __tmp60396 __tmp60394))))
                                      (declare (not safe))
                                      (cons __tmp60408 __tmp60393))))
                               (declare (not safe))
                               (cons __tmp60414 __tmp60392))))
                        (declare (not safe))
                        (cons __tmp60391 '()))))
                 (declare (not safe))
                 (cons __tmp60415 __tmp60390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60439
                                                        __tmp60389))))
                                           (declare (not safe))
                                           (cons __tmp60440 __tmp60388))))
                                    (declare (not safe))
                                    (cons __tmp60387 '()))))
                             (declare (not safe))
                             (cons __tmp60441 __tmp60386)))
                          (__tmp60293
                           (let ((__tmp60352
                                  (let ((__tmp60378
                                         (let ((__tmp60384
                                                (gx#datum->syntax '#f 'eq?))
                                               (__tmp60379
                                                (let ((__tmp60383
                                                       (gx#datum->syntax
                                                        '#f
                                                        'k))
                                                      (__tmp60380
                                                       (let ((__tmp60381
                                                              (let ((__tmp60382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'macro-deleted-obj)))
                        (declare (not safe))
                        (cons __tmp60382 '()))))
                 (declare (not safe))
                 (cons __tmp60381 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60383
                                                        __tmp60380))))
                                           (declare (not safe))
                                           (cons __tmp60384 __tmp60379)))
                                        (__tmp60353
                                         (let ((__tmp60354
                                                (let ((__tmp60377
                                                       (gx#datum->syntax
                                                        '#f
                                                        'loop))
                                                      (__tmp60355
                                                       (let ((__tmp60369
                                                              (let ((__tmp60376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe-step))
                            (__tmp60370
                             (let ((__tmp60375 (gx#datum->syntax '#f 'start))
                                   (__tmp60371
                                    (let ((__tmp60374
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp60372
                                           (let ((__tmp60373
                                                  (gx#datum->syntax
                                                   '#f
                                                   'size)))
                                             (declare (not safe))
                                             (cons __tmp60373 '()))))
                                      (declare (not safe))
                                      (cons __tmp60374 __tmp60372))))
                               (declare (not safe))
                               (cons __tmp60375 __tmp60371))))
                        (declare (not safe))
                        (cons __tmp60376 __tmp60370)))
                     (__tmp60356
                      (let ((__tmp60364
                             (let ((__tmp60368 (gx#datum->syntax '#f 'fx+))
                                   (__tmp60365
                                    (let ((__tmp60367
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp60366
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp60367 __tmp60366))))
                               (declare (not safe))
                               (cons __tmp60368 __tmp60365)))
                            (__tmp60357
                             (let ((__tmp60358
                                    (let ((__tmp60363
                                           (gx#datum->syntax '#f 'or))
                                          (__tmp60359
                                           (let ((__tmp60362
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted))
                                                 (__tmp60360
                                                  (let ((__tmp60361
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60361 '()))))
                                             (declare (not safe))
                                             (cons __tmp60362 __tmp60360))))
                                      (declare (not safe))
                                      (cons __tmp60363 __tmp60359))))
                               (declare (not safe))
                               (cons __tmp60358 '()))))
                        (declare (not safe))
                        (cons __tmp60364 __tmp60357))))
                 (declare (not safe))
                 (cons __tmp60369 __tmp60356))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60377
                                                        __tmp60355))))
                                           (declare (not safe))
                                           (cons __tmp60354 '()))))
                                    (declare (not safe))
                                    (cons __tmp60378 __tmp60353)))
                                 (__tmp60294
                                  (let ((__tmp60318
                                         (let ((__tmp60348
                                                (let ((__tmp60349
                                                       (let ((__tmp60350
                                                              (let ((__tmp60351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k)))
                        (declare (not safe))
                        (cons __tmp60351 '()))))
                 (declare (not safe))
                 (cons _L58124_ __tmp60350))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L58125_ __tmp60349)))
                                               (__tmp60319
                                                (let ((__tmp60342
                                                       (let ((__tmp60347
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-set!))
                                                             (__tmp60343
                                                              (let ((__tmp60344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60346 (gx#datum->syntax '#f 'probe))
                                   (__tmp60345
                                    (let ()
                                      (declare (not safe))
                                      (cons _L58124_ '()))))
                               (declare (not safe))
                               (cons __tmp60346 __tmp60345))))
                        (declare (not safe))
                        (cons _L58128_ __tmp60344))))
                 (declare (not safe))
                 (cons __tmp60347 __tmp60343)))
              (__tmp60320
               (let ((__tmp60321
                      (let ((__tmp60341 (gx#datum->syntax '#f 'vector-set!))
                            (__tmp60322
                             (let ((__tmp60323
                                    (let ((__tmp60336
                                           (let ((__tmp60340
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60337
                                                  (let ((__tmp60339
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe))
                                                        (__tmp60338
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp60339
                                                          __tmp60338))))
                                             (declare (not safe))
                                             (cons __tmp60340 __tmp60337)))
                                          (__tmp60324
                                           (let ((__tmp60325
                                                  (let ((__tmp60326
                                                         (let ((__tmp60327
                                                                (let ((__tmp60335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'vector-ref))
                              (__tmp60328
                               (let ((__tmp60329
                                      (let ((__tmp60330
                                             (let ((__tmp60334
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60331
                                                    (let ((__tmp60333
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp60332
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60333
                                                            __tmp60332))))
                                               (declare (not safe))
                                               (cons __tmp60334 __tmp60331))))
                                        (declare (not safe))
                                        (cons __tmp60330 '()))))
                                 (declare (not safe))
                                 (cons _L58128_ __tmp60329))))
                          (declare (not safe))
                          (cons __tmp60335 __tmp60328))))
                   (declare (not safe))
                   (cons __tmp60327 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58123_
                                                          __tmp60326))))
                                             (declare (not safe))
                                             (cons __tmp60325 '()))))
                                      (declare (not safe))
                                      (cons __tmp60336 __tmp60324))))
                               (declare (not safe))
                               (cons _L58128_ __tmp60323))))
                        (declare (not safe))
                        (cons __tmp60341 __tmp60322))))
                 (declare (not safe))
                 (cons __tmp60321 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60342
                                                        __tmp60320))))
                                           (declare (not safe))
                                           (cons __tmp60348 __tmp60319)))
                                        (__tmp60295
                                         (let ((__tmp60296
                                                (let ((__tmp60317
                                                       (gx#datum->syntax
                                                        '#f
                                                        'else))
                                                      (__tmp60297
                                                       (let ((__tmp60298
                                                              (let ((__tmp60316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'loop))
                            (__tmp60299
                             (let ((__tmp60308
                                    (let ((__tmp60315
                                           (gx#datum->syntax '#f 'probe-step))
                                          (__tmp60309
                                           (let ((__tmp60314
                                                  (gx#datum->syntax
                                                   '#f
                                                   'start))
                                                 (__tmp60310
                                                  (let ((__tmp60313
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp60311
                                                         (let ((__tmp60312
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'size)))
                   (declare (not safe))
                   (cons __tmp60312 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60313
                                                          __tmp60311))))
                                             (declare (not safe))
                                             (cons __tmp60314 __tmp60310))))
                                      (declare (not safe))
                                      (cons __tmp60315 __tmp60309)))
                                   (__tmp60300
                                    (let ((__tmp60303
                                           (let ((__tmp60307
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60304
                                                  (let ((__tmp60306
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp60305
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp60306
                                                          __tmp60305))))
                                             (declare (not safe))
                                             (cons __tmp60307 __tmp60304)))
                                          (__tmp60301
                                           (let ((__tmp60302
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted)))
                                             (declare (not safe))
                                             (cons __tmp60302 '()))))
                                      (declare (not safe))
                                      (cons __tmp60303 __tmp60301))))
                               (declare (not safe))
                               (cons __tmp60308 __tmp60300))))
                        (declare (not safe))
                        (cons __tmp60316 __tmp60299))))
                 (declare (not safe))
                 (cons __tmp60298 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60317
                                                        __tmp60297))))
                                           (declare (not safe))
                                           (cons __tmp60296 '()))))
                                    (declare (not safe))
                                    (cons __tmp60318 __tmp60295))))
                             (declare (not safe))
                             (cons __tmp60352 __tmp60294))))
                      (declare (not safe))
                      (cons __tmp60385 __tmp60293))))
               (declare (not safe))
               (cons __tmp60448 __tmp60292))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60291 '()))))
                                         (declare (not safe))
                                         (cons __tmp60449 __tmp60290))))
                                  (declare (not safe))
                                  (cons __tmp60457 __tmp60289))))
                           (declare (not safe))
                           (cons __tmp60288 '()))))
                    (declare (not safe))
                    (cons __tmp60458 __tmp60287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60471
                                                           __tmp60286))))
                                              (declare (not safe))
                                              (cons __tmp60472 __tmp60285))))
                                       (declare (not safe))
                                       (cons __tmp60284 '()))))
                                (declare (not safe))
                                (cons __tmp60473 __tmp60283))))
                         (declare (not safe))
                         (cons __tmp60513 __tmp60282)))
                     _hd5800558113_
                     _hd5800258103_
                     _hd5799958093_
                     _hd5799658083_
                     _hd5799358073_
                     _hd5799058063_
                     _hd5798758053_
                     _hd5798458043_
                     _hd5798158033_)
                    (_g5796658012_ _g5796758016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5796658012_
                                                     _g5796758016_))))
                                            (_g5796658012_ _g5796758016_))))
                                    (_g5796658012_ _g5796758016_))))
                            (_g5796658012_ _g5796758016_))))
                    (_g5796658012_ _g5796758016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5796658012_
                                                     _g5796758016_))))
                                            (_g5796658012_ _g5796758016_))))
                                    (_g5796658012_ _g5796758016_))))
                            (_g5796658012_ _g5796758016_))))
                    (_g5796658012_ _g5796758016_)))))
        (_g5796558165_ _$stx57962_))))
  (define |[:0:]#__table-del!|
    (lambda (_$stx58169_)
      (let* ((_g5817358207_
              (lambda (_g5817458203_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5817458203_)))
             (_g5817258318_
              (lambda (_g5817458211_)
                (if (gx#stx-pair? _g5817458211_)
                    (let ((_e5818358214_ (gx#syntax-e _g5817458211_)))
                      (let ((_hd5818258218_
                             (let ()
                               (declare (not safe))
                               (##car _e5818358214_)))
                            (_tl5818158221_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5818358214_))))
                        (if (gx#stx-pair? _tl5818158221_)
                            (let ((_e5818658224_ (gx#syntax-e _tl5818158221_)))
                              (let ((_hd5818558228_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5818658224_)))
                                    (_tl5818458231_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5818658224_))))
                                (if (gx#stx-pair? _tl5818458231_)
                                    (let ((_e5818958234_
                                           (gx#syntax-e _tl5818458231_)))
                                      (let ((_hd5818858238_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5818958234_)))
                                            (_tl5818758241_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5818958234_))))
                                        (if (gx#stx-pair? _tl5818758241_)
                                            (let ((_e5819258244_
                                                   (gx#syntax-e
                                                    _tl5818758241_)))
                                              (let ((_hd5819158248_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5819258244_)))
                                                    (_tl5819058251_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5819258244_))))
                                                (if (gx#stx-pair?
                                                     _tl5819058251_)
                                                    (let ((_e5819558254_
                                                           (gx#syntax-e
                                                            _tl5819058251_)))
                                                      (let ((_hd5819458258_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5819558254_)))
                    (_tl5819358261_
                     (let () (declare (not safe)) (##cdr _e5819558254_))))
                (if (gx#stx-pair? _tl5819358261_)
                    (let ((_e5819858264_ (gx#syntax-e _tl5819358261_)))
                      (let ((_hd5819758268_
                             (let ()
                               (declare (not safe))
                               (##car _e5819858264_)))
                            (_tl5819658271_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5819858264_))))
                        (if (gx#stx-pair? _tl5819658271_)
                            (let ((_e5820158274_ (gx#syntax-e _tl5819658271_)))
                              (let ((_hd5820058278_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5820158274_)))
                                    (_tl5819958281_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5820158274_))))
                                (if (gx#stx-null? _tl5819958281_)
                                    ((lambda (_L58284_
                                              _L58286_
                                              _L58287_
                                              _L58288_
                                              _L58289_
                                              _L58290_)
                                       (let ((__tmp60675
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp60514
                                              (let ((__tmp60635
                                                     (let ((__tmp60666
                                                            (let ((__tmp60674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60667
                           (let ((__tmp60668
                                  (let ((__tmp60673
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp60669
                                         (let ((__tmp60671
                                                (let ((__tmp60672
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L58286_ '()))))
                                                  (declare (not safe))
                                                  (cons _L58288_ __tmp60672)))
                                               (__tmp60670
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58289_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60671 __tmp60670))))
                                    (declare (not safe))
                                    (cons __tmp60673 __tmp60669))))
                             (declare (not safe))
                             (cons __tmp60668 '()))))
                      (declare (not safe))
                      (cons __tmp60674 __tmp60667)))
                   (__tmp60636
                    (let ((__tmp60660
                           (let ((__tmp60665 (gx#datum->syntax '#f 'size))
                                 (__tmp60661
                                  (let ((__tmp60662
                                         (let ((__tmp60664
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60663
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58290_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60664 __tmp60663))))
                                    (declare (not safe))
                                    (cons __tmp60662 '()))))
                             (declare (not safe))
                             (cons __tmp60665 __tmp60661)))
                          (__tmp60637
                           (let ((__tmp60652
                                  (let ((__tmp60659
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp60653
                                         (let ((__tmp60654
                                                (let ((__tmp60658
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp60655
                                                       (let ((__tmp60657
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp60656
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp60657 __tmp60656))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60658
                                                        __tmp60655))))
                                           (declare (not safe))
                                           (cons __tmp60654 '()))))
                                    (declare (not safe))
                                    (cons __tmp60659 __tmp60653)))
                                 (__tmp60638
                                  (let ((__tmp60639
                                         (let ((__tmp60651
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp60640
                                                (let ((__tmp60641
                                                       (let ((__tmp60650
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp60642
                                                              (let ((__tmp60644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60649
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp60645
                                    (let ((__tmp60648
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60646
                                           (let ((__tmp60647
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp60647 '()))))
                                      (declare (not safe))
                                      (cons __tmp60648 __tmp60646))))
                               (declare (not safe))
                               (cons __tmp60649 __tmp60645)))
                            (__tmp60643
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp60644 __tmp60643))))
                 (declare (not safe))
                 (cons __tmp60650 __tmp60642))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60641 '()))))
                                           (declare (not safe))
                                           (cons __tmp60651 __tmp60640))))
                                    (declare (not safe))
                                    (cons __tmp60639 '()))))
                             (declare (not safe))
                             (cons __tmp60652 __tmp60638))))
                      (declare (not safe))
                      (cons __tmp60660 __tmp60637))))
               (declare (not safe))
               (cons __tmp60666 __tmp60636)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60515
                                                     (let ((__tmp60516
                                                            (let ((__tmp60634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60517
                           (let ((__tmp60633 (gx#datum->syntax '#f 'loop))
                                 (__tmp60518
                                  (let ((__tmp60624
                                         (let ((__tmp60629
                                                (let ((__tmp60632
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp60630
                                                       (let ((__tmp60631
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp60631
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60632
                                                        __tmp60630)))
                                               (__tmp60625
                                                (let ((__tmp60626
                                                       (let ((__tmp60628
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp60627
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp60628 __tmp60627))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60626 '()))))
                                           (declare (not safe))
                                           (cons __tmp60629 __tmp60625)))
                                        (__tmp60519
                                         (let ((__tmp60520
                                                (let ((__tmp60623
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp60521
                                                       (let ((__tmp60615
                                                              (let ((__tmp60622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp60616
                             (let ((__tmp60617
                                    (let ((__tmp60621
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp60618
                                           (let ((__tmp60619
                                                  (let ((__tmp60620
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60620 '()))))
                                             (declare (not safe))
                                             (cons _L58290_ __tmp60619))))
                                      (declare (not safe))
                                      (cons __tmp60621 __tmp60618))))
                               (declare (not safe))
                               (cons __tmp60617 '()))))
                        (declare (not safe))
                        (cons __tmp60622 __tmp60616)))
                     (__tmp60522
                      (let ((__tmp60523
                             (let ((__tmp60614 (gx#datum->syntax '#f 'cond))
                                   (__tmp60524
                                    (let ((__tmp60603
                                           (let ((__tmp60607
                                                  (let ((__tmp60613
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp60608
                                                         (let ((__tmp60612
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp60609
                        (let ((__tmp60610
                               (let ((__tmp60611
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp60611 '()))))
                          (declare (not safe))
                          (cons __tmp60610 '()))))
                   (declare (not safe))
                   (cons __tmp60612 __tmp60609))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60613
                                                          __tmp60608)))
                                                 (__tmp60604
                                                  (let ((__tmp60605
                                                         (let ((__tmp60606
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp60606 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60605 '()))))
                                             (declare (not safe))
                                             (cons __tmp60607 __tmp60604)))
                                          (__tmp60525
                                           (let ((__tmp60577
                                                  (let ((__tmp60596
                                                         (let ((__tmp60602
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp60597
                        (let ((__tmp60601 (gx#datum->syntax '#f 'k))
                              (__tmp60598
                               (let ((__tmp60599
                                      (let ((__tmp60600
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp60600 '()))))
                                 (declare (not safe))
                                 (cons __tmp60599 '()))))
                          (declare (not safe))
                          (cons __tmp60601 __tmp60598))))
                   (declare (not safe))
                   (cons __tmp60602 __tmp60597)))
                (__tmp60578
                 (let ((__tmp60579
                        (let ((__tmp60595 (gx#datum->syntax '#f 'loop))
                              (__tmp60580
                               (let ((__tmp60587
                                      (let ((__tmp60594
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp60588
                                             (let ((__tmp60593
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp60589
                                                    (let ((__tmp60592
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60590
                                                           (let ((__tmp60591
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp60591 '()))))
              (declare (not safe))
              (cons __tmp60592 __tmp60590))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60593 __tmp60589))))
                                        (declare (not safe))
                                        (cons __tmp60594 __tmp60588)))
                                     (__tmp60581
                                      (let ((__tmp60582
                                             (let ((__tmp60586
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60583
                                                    (let ((__tmp60585
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60584
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60585
                                                            __tmp60584))))
                                               (declare (not safe))
                                               (cons __tmp60586 __tmp60583))))
                                        (declare (not safe))
                                        (cons __tmp60582 '()))))
                                 (declare (not safe))
                                 (cons __tmp60587 __tmp60581))))
                          (declare (not safe))
                          (cons __tmp60595 __tmp60580))))
                   (declare (not safe))
                   (cons __tmp60579 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60596
                                                          __tmp60578)))
                                                 (__tmp60526
                                                  (let ((__tmp60548
                                                         (let ((__tmp60573
                                                                (let ((__tmp60574
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60575
                                      (let ((__tmp60576
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp60576 '()))))
                                 (declare (not safe))
                                 (cons _L58286_ __tmp60575))))
                          (declare (not safe))
                          (cons _L58287_ __tmp60574)))
                       (__tmp60549
                        (let ((__tmp60565
                               (let ((__tmp60572
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp60566
                                      (let ((__tmp60567
                                             (let ((__tmp60571
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp60568
                                                    (let ((__tmp60569
                                                           (let ((__tmp60570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp60570 '()))))
              (declare (not safe))
              (cons __tmp60569 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60571 __tmp60568))))
                                        (declare (not safe))
                                        (cons _L58290_ __tmp60567))))
                                 (declare (not safe))
                                 (cons __tmp60572 __tmp60566)))
                              (__tmp60550
                               (let ((__tmp60553
                                      (let ((__tmp60564
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp60554
                                             (let ((__tmp60555
                                                    (let ((__tmp60559
                                                           (let ((__tmp60563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60560
                          (let ((__tmp60562 (gx#datum->syntax '#f 'probe))
                                (__tmp60561
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60562 __tmp60561))))
                     (declare (not safe))
                     (cons __tmp60563 __tmp60560)))
                  (__tmp60556
                   (let ((__tmp60557
                          (let ((__tmp60558
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp60558 '()))))
                     (declare (not safe))
                     (cons __tmp60557 '()))))
              (declare (not safe))
              (cons __tmp60559 __tmp60556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L58290_ __tmp60555))))
                                        (declare (not safe))
                                        (cons __tmp60564 __tmp60554)))
                                     (__tmp60551
                                      (let ((__tmp60552
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58284_ '()))))
                                        (declare (not safe))
                                        (cons __tmp60552 '()))))
                                 (declare (not safe))
                                 (cons __tmp60553 __tmp60551))))
                          (declare (not safe))
                          (cons __tmp60565 __tmp60550))))
                   (declare (not safe))
                   (cons __tmp60573 __tmp60549)))
                (__tmp60527
                 (let ((__tmp60528
                        (let ((__tmp60547 (gx#datum->syntax '#f 'else))
                              (__tmp60529
                               (let ((__tmp60530
                                      (let ((__tmp60546
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp60531
                                             (let ((__tmp60538
                                                    (let ((__tmp60545
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp60539
                                                           (let ((__tmp60544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp60540
                          (let ((__tmp60543 (gx#datum->syntax '#f 'i))
                                (__tmp60541
                                 (let ((__tmp60542
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp60542 '()))))
                            (declare (not safe))
                            (cons __tmp60543 __tmp60541))))
                     (declare (not safe))
                     (cons __tmp60544 __tmp60540))))
              (declare (not safe))
              (cons __tmp60545 __tmp60539)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60532
                                                    (let ((__tmp60533
                                                           (let ((__tmp60537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60534
                          (let ((__tmp60536 (gx#datum->syntax '#f 'i))
                                (__tmp60535
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60536 __tmp60535))))
                     (declare (not safe))
                     (cons __tmp60537 __tmp60534))))
              (declare (not safe))
              (cons __tmp60533 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60538 __tmp60532))))
                                        (declare (not safe))
                                        (cons __tmp60546 __tmp60531))))
                                 (declare (not safe))
                                 (cons __tmp60530 '()))))
                          (declare (not safe))
                          (cons __tmp60547 __tmp60529))))
                   (declare (not safe))
                   (cons __tmp60528 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60548
                                                          __tmp60527))))
                                             (declare (not safe))
                                             (cons __tmp60577 __tmp60526))))
                                      (declare (not safe))
                                      (cons __tmp60603 __tmp60525))))
                               (declare (not safe))
                               (cons __tmp60614 __tmp60524))))
                        (declare (not safe))
                        (cons __tmp60523 '()))))
                 (declare (not safe))
                 (cons __tmp60615 __tmp60522))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60623
                                                        __tmp60521))))
                                           (declare (not safe))
                                           (cons __tmp60520 '()))))
                                    (declare (not safe))
                                    (cons __tmp60624 __tmp60519))))
                             (declare (not safe))
                             (cons __tmp60633 __tmp60518))))
                      (declare (not safe))
                      (cons __tmp60634 __tmp60517))))
               (declare (not safe))
               (cons __tmp60516 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60635 __tmp60515))))
                                         (declare (not safe))
                                         (cons __tmp60675 __tmp60514)))
                                     _hd5820058278_
                                     _hd5819758268_
                                     _hd5819458258_
                                     _hd5819158248_
                                     _hd5818858238_
                                     _hd5818558228_)
                                    (_g5817358207_ _g5817458211_))))
                            (_g5817358207_ _g5817458211_))))
                    (_g5817358207_ _g5817458211_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5817358207_
                                                     _g5817458211_))))
                                            (_g5817358207_ _g5817458211_))))
                                    (_g5817358207_ _g5817458211_))))
                            (_g5817358207_ _g5817458211_))))
                    (_g5817358207_ _g5817458211_)))))
        (_g5817258318_ _$stx58169_)))))
