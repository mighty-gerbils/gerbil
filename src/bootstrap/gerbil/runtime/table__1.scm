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
                                       (let ((__tmp59465
                                              (gx#datum->syntax
                                               '#f
                                               'macro-slot))
                                             (__tmp59463
                                              (let ((__tmp59464
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L57295_ '()))))
                                                (declare (not safe))
                                                (cons '1 __tmp59464))))
                                         (declare (not safe))
                                         (cons __tmp59465 __tmp59463)))
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
                       (let ((__tmp59897 (gx#datum->syntax '#f 'begin))
                             (__tmp59466
                              (let ((__tmp59876
                                     (let ((__tmp59896
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp59877
                                            (let ((__tmp59887
                                                   (let ((__tmp59888
                                                          (let ((__tmp59893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp59895 (gx#datum->syntax '#f 'size-hint))
                               (__tmp59894
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons __tmp59895 __tmp59894)))
                        (__tmp59889
                         (let ((__tmp59890
                                (let ((__tmp59892 (gx#datum->syntax '#f 'seed))
                                      (__tmp59891
                                       (let ()
                                         (declare (not safe))
                                         (cons '0 '()))))
                                  (declare (not safe))
                                  (cons __tmp59892 __tmp59891))))
                           (declare (not safe))
                           (cons __tmp59890 '()))))
                    (declare (not safe))
                    (cons __tmp59893 __tmp59889))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L57480_
                                                           __tmp59888)))
                                                  (__tmp59878
                                                   (let ((__tmp59879
                                                          (let ((__tmp59886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-raw-table))
                        (__tmp59880
                         (let ((__tmp59885 (gx#datum->syntax '#f 'size-hint))
                               (__tmp59881
                                (let ((__tmp59882
                                       (let ((__tmp59883
                                              (let ((__tmp59884
                                                     (gx#datum->syntax
                                                      '#f
                                                      'seed)))
                                                (declare (not safe))
                                                (cons __tmp59884 '()))))
                                         (declare (not safe))
                                         (cons _L57471_ __tmp59883))))
                                  (declare (not safe))
                                  (cons _L57473_ __tmp59882))))
                           (declare (not safe))
                           (cons __tmp59885 __tmp59881))))
                    (declare (not safe))
                    (cons __tmp59886 __tmp59880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp59879 '()))))
                                              (declare (not safe))
                                              (cons __tmp59887 __tmp59878))))
                                       (declare (not safe))
                                       (cons __tmp59896 __tmp59877)))
                                    (__tmp59467
                                     (let ((__tmp59833
                                            (let ((__tmp59875
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp59834
                                                   (let ((__tmp59868
                                                          (let ((__tmp59869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp59874 (gx#datum->syntax '#f 'tab))
                               (__tmp59870
                                (let ((__tmp59873 (gx#datum->syntax '#f 'key))
                                      (__tmp59871
                                       (let ((__tmp59872
                                              (gx#datum->syntax '#f 'default)))
                                         (declare (not safe))
                                         (cons __tmp59872 '()))))
                                  (declare (not safe))
                                  (cons __tmp59873 __tmp59871))))
                           (declare (not safe))
                           (cons __tmp59874 __tmp59870))))
                    (declare (not safe))
                    (cons _L57479_ __tmp59869)))
                 (__tmp59835
                  (let ((__tmp59836
                         (let ((__tmp59867 (gx#datum->syntax '#f 'let))
                               (__tmp59837
                                (let ((__tmp59851
                                       (let ((__tmp59860
                                              (let ((__tmp59866
                                                     (gx#datum->syntax
                                                      '#f
                                                      'table))
                                                    (__tmp59861
                                                     (let ((__tmp59862
                                                            (let ((__tmp59865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-table))
                          (__tmp59863
                           (let ((__tmp59864 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp59864 '()))))
                      (declare (not safe))
                      (cons __tmp59865 __tmp59863))))
               (declare (not safe))
               (cons __tmp59862 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59866 __tmp59861)))
                                             (__tmp59852
                                              (let ((__tmp59853
                                                     (let ((__tmp59859
                                                            (gx#datum->syntax
                                                             '#f
                                                             'seed))
                                                           (__tmp59854
                                                            (let ((__tmp59855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp59858
                                  (gx#datum->syntax '#f '&raw-table-seed))
                                 (__tmp59856
                                  (let ((__tmp59857
                                         (gx#datum->syntax '#f 'tab)))
                                    (declare (not safe))
                                    (cons __tmp59857 '()))))
                             (declare (not safe))
                             (cons __tmp59858 __tmp59856))))
                      (declare (not safe))
                      (cons __tmp59855 '()))))
               (declare (not safe))
               (cons __tmp59859 __tmp59854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59853 '()))))
                                         (declare (not safe))
                                         (cons __tmp59860 __tmp59852)))
                                      (__tmp59838
                                       (let ((__tmp59839
                                              (let ((__tmp59850
                                                     (gx#datum->syntax
                                                      '#f
                                                      '__table-ref))
                                                    (__tmp59840
                                                     (let ((__tmp59849
                                                            (gx#datum->syntax
                                                             '#f
                                                             'table))
                                                           (__tmp59841
                                                            (let ((__tmp59848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'seed))
                          (__tmp59842
                           (let ((__tmp59843
                                  (let ((__tmp59844
                                         (let ((__tmp59847
                                                (gx#datum->syntax '#f 'key))
                                               (__tmp59845
                                                (let ((__tmp59846
                                                       (gx#datum->syntax
                                                        '#f
                                                        'default)))
                                                  (declare (not safe))
                                                  (cons __tmp59846 '()))))
                                           (declare (not safe))
                                           (cons __tmp59847 __tmp59845))))
                                    (declare (not safe))
                                    (cons _L57471_ __tmp59844))))
                             (declare (not safe))
                             (cons _L57473_ __tmp59843))))
                      (declare (not safe))
                      (cons __tmp59848 __tmp59842))))
               (declare (not safe))
               (cons __tmp59849 __tmp59841))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59850 __tmp59840))))
                                         (declare (not safe))
                                         (cons __tmp59839 '()))))
                                  (declare (not safe))
                                  (cons __tmp59851 __tmp59838))))
                           (declare (not safe))
                           (cons __tmp59867 __tmp59837))))
                    (declare (not safe))
                    (cons __tmp59836 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp59868
                                                           __tmp59835))))
                                              (declare (not safe))
                                              (cons __tmp59875 __tmp59834)))
                                           (__tmp59468
                                            (let ((__tmp59787
                                                   (let ((__tmp59832
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp59788
                                                          (let ((__tmp59825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp59826
                                (let ((__tmp59831 (gx#datum->syntax '#f 'tab))
                                      (__tmp59827
                                       (let ((__tmp59830
                                              (gx#datum->syntax '#f 'key))
                                             (__tmp59828
                                              (let ((__tmp59829
                                                     (gx#datum->syntax
                                                      '#f
                                                      'value)))
                                                (declare (not safe))
                                                (cons __tmp59829 '()))))
                                         (declare (not safe))
                                         (cons __tmp59830 __tmp59828))))
                                  (declare (not safe))
                                  (cons __tmp59831 __tmp59827))))
                           (declare (not safe))
                           (cons _L57478_ __tmp59826)))
                        (__tmp59789
                         (let ((__tmp59798
                                (let ((__tmp59824 (gx#datum->syntax '#f 'when))
                                      (__tmp59799
                                       (let ((__tmp59805
                                              (let ((__tmp59823
                                                     (gx#datum->syntax
                                                      '#f
                                                      'fx<))
                                                    (__tmp59806
                                                     (let ((__tmp59819
                                                            (let ((__tmp59822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '&raw-table-free))
                          (__tmp59820
                           (let ((__tmp59821 (gx#datum->syntax '#f 'tab)))
                             (declare (not safe))
                             (cons __tmp59821 '()))))
                      (declare (not safe))
                      (cons __tmp59822 __tmp59820)))
                   (__tmp59807
                    (let ((__tmp59808
                           (let ((__tmp59818
                                  (gx#datum->syntax '#f 'fxquotient))
                                 (__tmp59809
                                  (let ((__tmp59811
                                         (let ((__tmp59817
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp59812
                                                (let ((__tmp59813
                                                       (let ((__tmp59816
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp59814
                                                              (let ((__tmp59815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp59815 '()))))
                 (declare (not safe))
                 (cons __tmp59816 __tmp59814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59813 '()))))
                                           (declare (not safe))
                                           (cons __tmp59817 __tmp59812)))
                                        (__tmp59810
                                         (let ()
                                           (declare (not safe))
                                           (cons '4 '()))))
                                    (declare (not safe))
                                    (cons __tmp59811 __tmp59810))))
                             (declare (not safe))
                             (cons __tmp59818 __tmp59809))))
                      (declare (not safe))
                      (cons __tmp59808 '()))))
               (declare (not safe))
               (cons __tmp59819 __tmp59807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59823 __tmp59806)))
                                             (__tmp59800
                                              (let ((__tmp59801
                                                     (let ((__tmp59804
                                                            (gx#datum->syntax
                                                             '#f
                                                             '__raw-table-rehash!))
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
                                         (cons __tmp59805 __tmp59800))))
                                  (declare (not safe))
                                  (cons __tmp59824 __tmp59799)))
                               (__tmp59790
                                (let ((__tmp59791
                                       (let ((__tmp59792
                                              (let ((__tmp59797
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp59793
                                                     (let ((__tmp59796
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp59794
                                                            (let ((__tmp59795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'value)))
                      (declare (not safe))
                      (cons __tmp59795 '()))))
               (declare (not safe))
               (cons __tmp59796 __tmp59794))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59797 __tmp59793))))
                                         (declare (not safe))
                                         (cons _L57477_ __tmp59792))))
                                  (declare (not safe))
                                  (cons __tmp59791 '()))))
                           (declare (not safe))
                           (cons __tmp59798 __tmp59790))))
                    (declare (not safe))
                    (cons __tmp59825 __tmp59789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp59832
                                                           __tmp59788)))
                                                  (__tmp59469
                                                   (let ((__tmp59685
                                                          (let ((__tmp59786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'def))
                        (__tmp59686
                         (let ((__tmp59779
                                (let ((__tmp59780
                                       (let ((__tmp59785
                                              (gx#datum->syntax '#f 'tab))
                                             (__tmp59781
                                              (let ((__tmp59784
                                                     (gx#datum->syntax
                                                      '#f
                                                      'key))
                                                    (__tmp59782
                                                     (let ((__tmp59783
                                                            (gx#datum->syntax
                                                             '#f
                                                             'value)))
                                                       (declare (not safe))
                                                       (cons __tmp59783 '()))))
                                                (declare (not safe))
                                                (cons __tmp59784 __tmp59782))))
                                         (declare (not safe))
                                         (cons __tmp59785 __tmp59781))))
                                  (declare (not safe))
                                  (cons _L57477_ __tmp59780)))
                               (__tmp59687
                                (let ((__tmp59688
                                       (let ((__tmp59778
                                              (gx#datum->syntax '#f 'let))
                                             (__tmp59689
                                              (let ((__tmp59762
                                                     (let ((__tmp59771
                                                            (let ((__tmp59777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'table))
                          (__tmp59772
                           (let ((__tmp59773
                                  (let ((__tmp59776
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-table))
                                        (__tmp59774
                                         (let ((__tmp59775
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp59775 '()))))
                                    (declare (not safe))
                                    (cons __tmp59776 __tmp59774))))
                             (declare (not safe))
                             (cons __tmp59773 '()))))
                      (declare (not safe))
                      (cons __tmp59777 __tmp59772)))
                   (__tmp59763
                    (let ((__tmp59764
                           (let ((__tmp59770 (gx#datum->syntax '#f 'seed))
                                 (__tmp59765
                                  (let ((__tmp59766
                                         (let ((__tmp59769
                                                (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-seed))
                                               (__tmp59767
                                                (let ((__tmp59768
                                                       (gx#datum->syntax
                                                        '#f
                                                        'tab)))
                                                  (declare (not safe))
                                                  (cons __tmp59768 '()))))
                                           (declare (not safe))
                                           (cons __tmp59769 __tmp59767))))
                                    (declare (not safe))
                                    (cons __tmp59766 '()))))
                             (declare (not safe))
                             (cons __tmp59770 __tmp59765))))
                      (declare (not safe))
                      (cons __tmp59764 '()))))
               (declare (not safe))
               (cons __tmp59771 __tmp59763)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp59690
                                                     (let ((__tmp59691
                                                            (let ((__tmp59761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '__table-set!))
                          (__tmp59692
                           (let ((__tmp59760 (gx#datum->syntax '#f 'table))
                                 (__tmp59693
                                  (let ((__tmp59759
                                         (gx#datum->syntax '#f 'seed))
                                        (__tmp59694
                                         (let ((__tmp59695
                                                (let ((__tmp59696
                                                       (let ((__tmp59758
                                                              (gx#datum->syntax
                                                               '#f
                                                               'key))
                                                             (__tmp59697
                                                              (let ((__tmp59757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'value))
                            (__tmp59698
                             (let ((__tmp59720
                                    (let ((__tmp59756
                                           (gx#datum->syntax '#f 'lambda))
                                          (__tmp59721
                                           (let ((__tmp59722
                                                  (let ((__tmp59740
                                                         (let ((__tmp59755
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'set!))
                       (__tmp59741
                        (let ((__tmp59751
                               (let ((__tmp59754
                                      (gx#datum->syntax '#f '&raw-table-free))
                                     (__tmp59752
                                      (let ((__tmp59753
                                             (gx#datum->syntax '#f 'tab)))
                                        (declare (not safe))
                                        (cons __tmp59753 '()))))
                                 (declare (not safe))
                                 (cons __tmp59754 __tmp59752)))
                              (__tmp59742
                               (let ((__tmp59743
                                      (let ((__tmp59750
                                             (gx#datum->syntax '#f 'fx-))
                                            (__tmp59744
                                             (let ((__tmp59746
                                                    (let ((__tmp59749
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp59747
                                                           (let ((__tmp59748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp59748 '()))))
              (declare (not safe))
              (cons __tmp59749 __tmp59747)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp59745
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '1 '()))))
                                               (declare (not safe))
                                               (cons __tmp59746 __tmp59745))))
                                        (declare (not safe))
                                        (cons __tmp59750 __tmp59744))))
                                 (declare (not safe))
                                 (cons __tmp59743 '()))))
                          (declare (not safe))
                          (cons __tmp59751 __tmp59742))))
                   (declare (not safe))
                   (cons __tmp59755 __tmp59741)))
                (__tmp59723
                 (let ((__tmp59724
                        (let ((__tmp59739 (gx#datum->syntax '#f 'set!))
                              (__tmp59725
                               (let ((__tmp59735
                                      (let ((__tmp59738
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp59736
                                             (let ((__tmp59737
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp59737 '()))))
                                        (declare (not safe))
                                        (cons __tmp59738 __tmp59736)))
                                     (__tmp59726
                                      (let ((__tmp59727
                                             (let ((__tmp59734
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp59728
                                                    (let ((__tmp59730
                                                           (let ((__tmp59733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59731
                          (let ((__tmp59732 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59732 '()))))
                     (declare (not safe))
                     (cons __tmp59733 __tmp59731)))
                  (__tmp59729 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp59730 __tmp59729))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59734 __tmp59728))))
                                        (declare (not safe))
                                        (cons __tmp59727 '()))))
                                 (declare (not safe))
                                 (cons __tmp59735 __tmp59726))))
                          (declare (not safe))
                          (cons __tmp59739 __tmp59725))))
                   (declare (not safe))
                   (cons __tmp59724 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59740
                                                          __tmp59723))))
                                             (declare (not safe))
                                             (cons '() __tmp59722))))
                                      (declare (not safe))
                                      (cons __tmp59756 __tmp59721)))
                                   (__tmp59699
                                    (let ((__tmp59700
                                           (let ((__tmp59719
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp59701
                                                  (let ((__tmp59702
                                                         (let ((__tmp59703
                                                                (let ((__tmp59718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'set!))
                              (__tmp59704
                               (let ((__tmp59714
                                      (let ((__tmp59717
                                             (gx#datum->syntax
                                              '#f
                                              '&raw-table-count))
                                            (__tmp59715
                                             (let ((__tmp59716
                                                    (gx#datum->syntax
                                                     '#f
                                                     'tab)))
                                               (declare (not safe))
                                               (cons __tmp59716 '()))))
                                        (declare (not safe))
                                        (cons __tmp59717 __tmp59715)))
                                     (__tmp59705
                                      (let ((__tmp59706
                                             (let ((__tmp59713
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp59707
                                                    (let ((__tmp59709
                                                           (let ((__tmp59712
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59710
                          (let ((__tmp59711 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59711 '()))))
                     (declare (not safe))
                     (cons __tmp59712 __tmp59710)))
                  (__tmp59708 (let () (declare (not safe)) (cons '1 '()))))
              (declare (not safe))
              (cons __tmp59709 __tmp59708))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59713 __tmp59707))))
                                        (declare (not safe))
                                        (cons __tmp59706 '()))))
                                 (declare (not safe))
                                 (cons __tmp59714 __tmp59705))))
                          (declare (not safe))
                          (cons __tmp59718 __tmp59704))))
                   (declare (not safe))
                   (cons __tmp59703 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '() __tmp59702))))
                                             (declare (not safe))
                                             (cons __tmp59719 __tmp59701))))
                                      (declare (not safe))
                                      (cons __tmp59700 '()))))
                               (declare (not safe))
                               (cons __tmp59720 __tmp59699))))
                        (declare (not safe))
                        (cons __tmp59757 __tmp59698))))
                 (declare (not safe))
                 (cons __tmp59758 __tmp59697))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L57471_ __tmp59696))))
                                           (declare (not safe))
                                           (cons _L57473_ __tmp59695))))
                                    (declare (not safe))
                                    (cons __tmp59759 __tmp59694))))
                             (declare (not safe))
                             (cons __tmp59760 __tmp59693))))
                      (declare (not safe))
                      (cons __tmp59761 __tmp59692))))
               (declare (not safe))
               (cons __tmp59691 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59762 __tmp59690))))
                                         (declare (not safe))
                                         (cons __tmp59778 __tmp59689))))
                                  (declare (not safe))
                                  (cons __tmp59688 '()))))
                           (declare (not safe))
                           (cons __tmp59779 __tmp59687))))
                    (declare (not safe))
                    (cons __tmp59786 __tmp59686)))
                 (__tmp59470
                  (let ((__tmp59637
                         (let ((__tmp59684 (gx#datum->syntax '#f 'def))
                               (__tmp59638
                                (let ((__tmp59676
                                       (let ((__tmp59677
                                              (let ((__tmp59683
                                                     (gx#datum->syntax
                                                      '#f
                                                      'tab))
                                                    (__tmp59678
                                                     (let ((__tmp59682
                                                            (gx#datum->syntax
                                                             '#f
                                                             'key))
                                                           (__tmp59679
                                                            (let ((__tmp59680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp59681 (gx#datum->syntax '#f 'default)))
                             (declare (not safe))
                             (cons __tmp59681 '()))))
                      (declare (not safe))
                      (cons _L57476_ __tmp59680))))
               (declare (not safe))
               (cons __tmp59682 __tmp59679))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59683 __tmp59678))))
                                         (declare (not safe))
                                         (cons _L57476_ __tmp59677)))
                                      (__tmp59639
                                       (let ((__tmp59649
                                              (let ((__tmp59675
                                                     (gx#datum->syntax
                                                      '#f
                                                      'when))
                                                    (__tmp59650
                                                     (let ((__tmp59656
                                                            (let ((__tmp59674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'fx<))
                          (__tmp59657
                           (let ((__tmp59670
                                  (let ((__tmp59673
                                         (gx#datum->syntax
                                          '#f
                                          '&raw-table-free))
                                        (__tmp59671
                                         (let ((__tmp59672
                                                (gx#datum->syntax '#f 'tab)))
                                           (declare (not safe))
                                           (cons __tmp59672 '()))))
                                    (declare (not safe))
                                    (cons __tmp59673 __tmp59671)))
                                 (__tmp59658
                                  (let ((__tmp59659
                                         (let ((__tmp59669
                                                (gx#datum->syntax
                                                 '#f
                                                 'fxquotient))
                                               (__tmp59660
                                                (let ((__tmp59662
                                                       (let ((__tmp59668
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-length))
                                                             (__tmp59663
                                                              (let ((__tmp59664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp59667
                                    (gx#datum->syntax '#f '&raw-table-table))
                                   (__tmp59665
                                    (let ((__tmp59666
                                           (gx#datum->syntax '#f 'tab)))
                                      (declare (not safe))
                                      (cons __tmp59666 '()))))
                               (declare (not safe))
                               (cons __tmp59667 __tmp59665))))
                        (declare (not safe))
                        (cons __tmp59664 '()))))
                 (declare (not safe))
                 (cons __tmp59668 __tmp59663)))
              (__tmp59661 (let () (declare (not safe)) (cons '4 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59662
                                                        __tmp59661))))
                                           (declare (not safe))
                                           (cons __tmp59669 __tmp59660))))
                                    (declare (not safe))
                                    (cons __tmp59659 '()))))
                             (declare (not safe))
                             (cons __tmp59670 __tmp59658))))
                      (declare (not safe))
                      (cons __tmp59674 __tmp59657)))
                   (__tmp59651
                    (let ((__tmp59652
                           (let ((__tmp59655
                                  (gx#datum->syntax '#f '__raw-table-rehash!))
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
               (cons __tmp59656 __tmp59651))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59675 __tmp59650)))
                                             (__tmp59640
                                              (let ((__tmp59641
                                                     (let ((__tmp59642
                                                            (let ((__tmp59648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp59643
                           (let ((__tmp59647 (gx#datum->syntax '#f 'key))
                                 (__tmp59644
                                  (let ((__tmp59645
                                         (let ((__tmp59646
                                                (gx#datum->syntax
                                                 '#f
                                                 'default)))
                                           (declare (not safe))
                                           (cons __tmp59646 '()))))
                                    (declare (not safe))
                                    (cons _L57476_ __tmp59645))))
                             (declare (not safe))
                             (cons __tmp59647 __tmp59644))))
                      (declare (not safe))
                      (cons __tmp59648 __tmp59643))))
               (declare (not safe))
               (cons _L57475_ __tmp59642))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59641 '()))))
                                         (declare (not safe))
                                         (cons __tmp59649 __tmp59640))))
                                  (declare (not safe))
                                  (cons __tmp59676 __tmp59639))))
                           (declare (not safe))
                           (cons __tmp59684 __tmp59638)))
                        (__tmp59471
                         (let ((__tmp59533
                                (let ((__tmp59636 (gx#datum->syntax '#f 'def))
                                      (__tmp59534
                                       (let ((__tmp59628
                                              (let ((__tmp59629
                                                     (let ((__tmp59635
                                                            (gx#datum->syntax
                                                             '#f
                                                             'tab))
                                                           (__tmp59630
                                                            (let ((__tmp59634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'key))
                          (__tmp59631
                           (let ((__tmp59632
                                  (let ((__tmp59633
                                         (gx#datum->syntax '#f 'default)))
                                    (declare (not safe))
                                    (cons __tmp59633 '()))))
                             (declare (not safe))
                             (cons _L57476_ __tmp59632))))
                      (declare (not safe))
                      (cons __tmp59634 __tmp59631))))
               (declare (not safe))
               (cons __tmp59635 __tmp59630))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _L57475_ __tmp59629)))
                                             (__tmp59535
                                              (let ((__tmp59536
                                                     (let ((__tmp59627
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp59537
                                                            (let ((__tmp59611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp59620
                                  (let ((__tmp59626
                                         (gx#datum->syntax '#f 'table))
                                        (__tmp59621
                                         (let ((__tmp59622
                                                (let ((__tmp59625
                                                       (gx#datum->syntax
                                                        '#f
                                                        '&raw-table-table))
                                                      (__tmp59623
                                                       (let ((__tmp59624
                                                              (gx#datum->syntax
                                                               '#f
                                                               'tab)))
                                                         (declare (not safe))
                                                         (cons __tmp59624
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp59625
                                                        __tmp59623))))
                                           (declare (not safe))
                                           (cons __tmp59622 '()))))
                                    (declare (not safe))
                                    (cons __tmp59626 __tmp59621)))
                                 (__tmp59612
                                  (let ((__tmp59613
                                         (let ((__tmp59619
                                                (gx#datum->syntax '#f 'seed))
                                               (__tmp59614
                                                (let ((__tmp59615
                                                       (let ((__tmp59618
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-seed))
                                                             (__tmp59616
                                                              (let ((__tmp59617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp59617 '()))))
                 (declare (not safe))
                 (cons __tmp59618 __tmp59616))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59615 '()))))
                                           (declare (not safe))
                                           (cons __tmp59619 __tmp59614))))
                                    (declare (not safe))
                                    (cons __tmp59613 '()))))
                             (declare (not safe))
                             (cons __tmp59620 __tmp59612)))
                          (__tmp59538
                           (let ((__tmp59539
                                  (let ((__tmp59610
                                         (gx#datum->syntax
                                          '#f
                                          '__table-update!))
                                        (__tmp59540
                                         (let ((__tmp59609
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp59541
                                                (let ((__tmp59608
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp59542
                                                       (let ((__tmp59543
                                                              (let ((__tmp59544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp59607 (gx#datum->syntax '#f 'key))
                                   (__tmp59545
                                    (let ((__tmp59546
                                           (let ((__tmp59606
                                                  (gx#datum->syntax
                                                   '#f
                                                   'default))
                                                 (__tmp59547
                                                  (let ((__tmp59569
                                                         (let ((__tmp59605
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda))
                       (__tmp59570
                        (let ((__tmp59571
                               (let ((__tmp59589
                                      (let ((__tmp59604
                                             (gx#datum->syntax '#f 'set!))
                                            (__tmp59590
                                             (let ((__tmp59600
                                                    (let ((__tmp59603
                                                           (gx#datum->syntax
                                                            '#f
                                                            '&raw-table-free))
                                                          (__tmp59601
                                                           (let ((__tmp59602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'tab)))
                     (declare (not safe))
                     (cons __tmp59602 '()))))
              (declare (not safe))
              (cons __tmp59603 __tmp59601)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp59591
                                                    (let ((__tmp59592
                                                           (let ((__tmp59599
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx-))
                         (__tmp59593
                          (let ((__tmp59595
                                 (let ((__tmp59598
                                        (gx#datum->syntax
                                         '#f
                                         '&raw-table-free))
                                       (__tmp59596
                                        (let ((__tmp59597
                                               (gx#datum->syntax '#f 'tab)))
                                          (declare (not safe))
                                          (cons __tmp59597 '()))))
                                   (declare (not safe))
                                   (cons __tmp59598 __tmp59596)))
                                (__tmp59594
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp59595 __tmp59594))))
                     (declare (not safe))
                     (cons __tmp59599 __tmp59593))))
              (declare (not safe))
              (cons __tmp59592 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59600 __tmp59591))))
                                        (declare (not safe))
                                        (cons __tmp59604 __tmp59590)))
                                     (__tmp59572
                                      (let ((__tmp59573
                                             (let ((__tmp59588
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp59574
                                                    (let ((__tmp59584
                                                           (let ((__tmp59587
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59585
                          (let ((__tmp59586 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59586 '()))))
                     (declare (not safe))
                     (cons __tmp59587 __tmp59585)))
                  (__tmp59575
                   (let ((__tmp59576
                          (let ((__tmp59583 (gx#datum->syntax '#f 'fx+))
                                (__tmp59577
                                 (let ((__tmp59579
                                        (let ((__tmp59582
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp59580
                                               (let ((__tmp59581
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp59581 '()))))
                                          (declare (not safe))
                                          (cons __tmp59582 __tmp59580)))
                                       (__tmp59578
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp59579 __tmp59578))))
                            (declare (not safe))
                            (cons __tmp59583 __tmp59577))))
                     (declare (not safe))
                     (cons __tmp59576 '()))))
              (declare (not safe))
              (cons __tmp59584 __tmp59575))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59588 __tmp59574))))
                                        (declare (not safe))
                                        (cons __tmp59573 '()))))
                                 (declare (not safe))
                                 (cons __tmp59589 __tmp59572))))
                          (declare (not safe))
                          (cons '() __tmp59571))))
                   (declare (not safe))
                   (cons __tmp59605 __tmp59570)))
                (__tmp59548
                 (let ((__tmp59549
                        (let ((__tmp59568 (gx#datum->syntax '#f 'lambda))
                              (__tmp59550
                               (let ((__tmp59551
                                      (let ((__tmp59552
                                             (let ((__tmp59567
                                                    (gx#datum->syntax
                                                     '#f
                                                     'set!))
                                                   (__tmp59553
                                                    (let ((__tmp59563
                                                           (let ((__tmp59566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '&raw-table-count))
                         (__tmp59564
                          (let ((__tmp59565 (gx#datum->syntax '#f 'tab)))
                            (declare (not safe))
                            (cons __tmp59565 '()))))
                     (declare (not safe))
                     (cons __tmp59566 __tmp59564)))
                  (__tmp59554
                   (let ((__tmp59555
                          (let ((__tmp59562 (gx#datum->syntax '#f 'fx+))
                                (__tmp59556
                                 (let ((__tmp59558
                                        (let ((__tmp59561
                                               (gx#datum->syntax
                                                '#f
                                                '&raw-table-count))
                                              (__tmp59559
                                               (let ((__tmp59560
                                                      (gx#datum->syntax
                                                       '#f
                                                       'tab)))
                                                 (declare (not safe))
                                                 (cons __tmp59560 '()))))
                                          (declare (not safe))
                                          (cons __tmp59561 __tmp59559)))
                                       (__tmp59557
                                        (let ()
                                          (declare (not safe))
                                          (cons '1 '()))))
                                   (declare (not safe))
                                   (cons __tmp59558 __tmp59557))))
                            (declare (not safe))
                            (cons __tmp59562 __tmp59556))))
                     (declare (not safe))
                     (cons __tmp59555 '()))))
              (declare (not safe))
              (cons __tmp59563 __tmp59554))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59567 __tmp59553))))
                                        (declare (not safe))
                                        (cons __tmp59552 '()))))
                                 (declare (not safe))
                                 (cons '() __tmp59551))))
                          (declare (not safe))
                          (cons __tmp59568 __tmp59550))))
                   (declare (not safe))
                   (cons __tmp59549 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59569
                                                          __tmp59548))))
                                             (declare (not safe))
                                             (cons __tmp59606 __tmp59547))))
                                      (declare (not safe))
                                      (cons _L57476_ __tmp59546))))
                               (declare (not safe))
                               (cons __tmp59607 __tmp59545))))
                        (declare (not safe))
                        (cons _L57471_ __tmp59544))))
                 (declare (not safe))
                 (cons _L57473_ __tmp59543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59608
                                                        __tmp59542))))
                                           (declare (not safe))
                                           (cons __tmp59609 __tmp59541))))
                                    (declare (not safe))
                                    (cons __tmp59610 __tmp59540))))
                             (declare (not safe))
                             (cons __tmp59539 '()))))
                      (declare (not safe))
                      (cons __tmp59611 __tmp59538))))
               (declare (not safe))
               (cons __tmp59627 __tmp59537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59536 '()))))
                                         (declare (not safe))
                                         (cons __tmp59628 __tmp59535))))
                                  (declare (not safe))
                                  (cons __tmp59636 __tmp59534)))
                               (__tmp59472
                                (let ((__tmp59473
                                       (let ((__tmp59532
                                              (gx#datum->syntax '#f 'def))
                                             (__tmp59474
                                              (let ((__tmp59527
                                                     (let ((__tmp59528
                                                            (let ((__tmp59531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'tab))
                          (__tmp59529
                           (let ((__tmp59530 (gx#datum->syntax '#f 'key)))
                             (declare (not safe))
                             (cons __tmp59530 '()))))
                      (declare (not safe))
                      (cons __tmp59531 __tmp59529))))
               (declare (not safe))
               (cons _L57474_ __tmp59528)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp59475
                                                     (let ((__tmp59476
                                                            (let ((__tmp59526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp59477
                           (let ((__tmp59510
                                  (let ((__tmp59519
                                         (let ((__tmp59525
                                                (gx#datum->syntax '#f 'table))
                                               (__tmp59520
                                                (let ((__tmp59521
                                                       (let ((__tmp59524
                                                              (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-table))
                                                             (__tmp59522
                                                              (let ((__tmp59523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'tab)))
                        (declare (not safe))
                        (cons __tmp59523 '()))))
                 (declare (not safe))
                 (cons __tmp59524 __tmp59522))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59521 '()))))
                                           (declare (not safe))
                                           (cons __tmp59525 __tmp59520)))
                                        (__tmp59511
                                         (let ((__tmp59512
                                                (let ((__tmp59518
                                                       (gx#datum->syntax
                                                        '#f
                                                        'seed))
                                                      (__tmp59513
                                                       (let ((__tmp59514
                                                              (let ((__tmp59517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '&raw-table-seed))
                            (__tmp59515
                             (let ((__tmp59516 (gx#datum->syntax '#f 'tab)))
                               (declare (not safe))
                               (cons __tmp59516 '()))))
                        (declare (not safe))
                        (cons __tmp59517 __tmp59515))))
                 (declare (not safe))
                 (cons __tmp59514 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59518
                                                        __tmp59513))))
                                           (declare (not safe))
                                           (cons __tmp59512 '()))))
                                    (declare (not safe))
                                    (cons __tmp59519 __tmp59511)))
                                 (__tmp59478
                                  (let ((__tmp59479
                                         (let ((__tmp59509
                                                (gx#datum->syntax
                                                 '#f
                                                 '__table-del!))
                                               (__tmp59480
                                                (let ((__tmp59508
                                                       (gx#datum->syntax
                                                        '#f
                                                        'table))
                                                      (__tmp59481
                                                       (let ((__tmp59507
                                                              (gx#datum->syntax
                                                               '#f
                                                               'seed))
                                                             (__tmp59482
                                                              (let ((__tmp59483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp59484
                                    (let ((__tmp59506
                                           (gx#datum->syntax '#f 'key))
                                          (__tmp59485
                                           (let ((__tmp59486
                                                  (let ((__tmp59505
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp59487
                                                         (let ((__tmp59488
                                                                (let ((__tmp59489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp59504 (gx#datum->syntax '#f 'set!))
                                     (__tmp59490
                                      (let ((__tmp59500
                                             (let ((__tmp59503
                                                    (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-count))
                                                   (__tmp59501
                                                    (let ((__tmp59502
                                                           (gx#datum->syntax
                                                            '#f
                                                            'tab)))
                                                      (declare (not safe))
                                                      (cons __tmp59502 '()))))
                                               (declare (not safe))
                                               (cons __tmp59503 __tmp59501)))
                                            (__tmp59491
                                             (let ((__tmp59492
                                                    (let ((__tmp59499
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx-))
                                                          (__tmp59493
                                                           (let ((__tmp59495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp59498
                                 (gx#datum->syntax '#f '&raw-table-count))
                                (__tmp59496
                                 (let ((__tmp59497
                                        (gx#datum->syntax '#f 'tab)))
                                   (declare (not safe))
                                   (cons __tmp59497 '()))))
                            (declare (not safe))
                            (cons __tmp59498 __tmp59496)))
                         (__tmp59494
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp59495 __tmp59494))))
              (declare (not safe))
              (cons __tmp59499 __tmp59493))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59492 '()))))
                                        (declare (not safe))
                                        (cons __tmp59500 __tmp59491))))
                                 (declare (not safe))
                                 (cons __tmp59504 __tmp59490))))
                          (declare (not safe))
                          (cons __tmp59489 '()))))
                   (declare (not safe))
                   (cons '() __tmp59488))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59505
                                                          __tmp59487))))
                                             (declare (not safe))
                                             (cons __tmp59486 '()))))
                                      (declare (not safe))
                                      (cons __tmp59506 __tmp59485))))
                               (declare (not safe))
                               (cons _L57471_ __tmp59484))))
                        (declare (not safe))
                        (cons _L57473_ __tmp59483))))
                 (declare (not safe))
                 (cons __tmp59507 __tmp59482))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp59508
                                                        __tmp59481))))
                                           (declare (not safe))
                                           (cons __tmp59509 __tmp59480))))
                                    (declare (not safe))
                                    (cons __tmp59479 '()))))
                             (declare (not safe))
                             (cons __tmp59510 __tmp59478))))
                      (declare (not safe))
                      (cons __tmp59526 __tmp59477))))
               (declare (not safe))
               (cons __tmp59476 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp59527 __tmp59475))))
                                         (declare (not safe))
                                         (cons __tmp59532 __tmp59474))))
                                  (declare (not safe))
                                  (cons __tmp59473 '()))))
                           (declare (not safe))
                           (cons __tmp59533 __tmp59472))))
                    (declare (not safe))
                    (cons __tmp59637 __tmp59471))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp59685
                                                           __tmp59470))))
                                              (declare (not safe))
                                              (cons __tmp59787 __tmp59469))))
                                       (declare (not safe))
                                       (cons __tmp59833 __tmp59468))))
                                (declare (not safe))
                                (cons __tmp59876 __tmp59467))))
                         (declare (not safe))
                         (cons __tmp59897 __tmp59466)))
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
                                                       (let ((__tmp59917
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp59898
                                                              (let ((__tmp59905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp59916
                                    (gx#datum->syntax '#f 'next-probe))
                                   (__tmp59906
                                    (let ((__tmp59907
                                           (let ((__tmp59915
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp59908
                                                  (let ((__tmp59909
                                                         (let ((__tmp59910
                                                                (let ((__tmp59911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp59914 (gx#datum->syntax '#f 'fx*))
                                     (__tmp59912
                                      (let ((__tmp59913
                                             (let ()
                                               (declare (not safe))
                                               (cons _L57596_ '()))))
                                        (declare (not safe))
                                        (cons _L57596_ __tmp59913))))
                                 (declare (not safe))
                                 (cons __tmp59914 __tmp59912))))
                          (declare (not safe))
                          (cons __tmp59911 '()))))
                   (declare (not safe))
                   (cons _L57596_ __tmp59910))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L57597_
                                                          __tmp59909))))
                                             (declare (not safe))
                                             (cons __tmp59915 __tmp59908))))
                                      (declare (not safe))
                                      (cons __tmp59907 '()))))
                               (declare (not safe))
                               (cons __tmp59916 __tmp59906)))
                            (__tmp59899
                             (let ((__tmp59900
                                    (let ((__tmp59904
                                           (gx#datum->syntax '#f 'fxmodulo))
                                          (__tmp59901
                                           (let ((__tmp59903
                                                  (gx#datum->syntax
                                                   '#f
                                                   'next-probe))
                                                 (__tmp59902
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L57594_ '()))))
                                             (declare (not safe))
                                             (cons __tmp59903 __tmp59902))))
                                      (declare (not safe))
                                      (cons __tmp59904 __tmp59901))))
                               (declare (not safe))
                               (cons __tmp59900 '()))))
                        (declare (not safe))
                        (cons __tmp59905 __tmp59899))))
                 (declare (not safe))
                 (cons __tmp59917 __tmp59898)))
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
                                       (let ((__tmp60076
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp59918
                                              (let ((__tmp60036
                                                     (let ((__tmp60067
                                                            (let ((__tmp60075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60068
                           (let ((__tmp60069
                                  (let ((__tmp60074
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp60070
                                         (let ((__tmp60072
                                                (let ((__tmp60073
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L57737_ '()))))
                                                  (declare (not safe))
                                                  (cons _L57739_ __tmp60073)))
                                               (__tmp60071
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L57740_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60072 __tmp60071))))
                                    (declare (not safe))
                                    (cons __tmp60074 __tmp60070))))
                             (declare (not safe))
                             (cons __tmp60069 '()))))
                      (declare (not safe))
                      (cons __tmp60075 __tmp60068)))
                   (__tmp60037
                    (let ((__tmp60061
                           (let ((__tmp60066 (gx#datum->syntax '#f 'size))
                                 (__tmp60062
                                  (let ((__tmp60063
                                         (let ((__tmp60065
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60064
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L57741_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60065 __tmp60064))))
                                    (declare (not safe))
                                    (cons __tmp60063 '()))))
                             (declare (not safe))
                             (cons __tmp60066 __tmp60062)))
                          (__tmp60038
                           (let ((__tmp60053
                                  (let ((__tmp60060
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp60054
                                         (let ((__tmp60055
                                                (let ((__tmp60059
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp60056
                                                       (let ((__tmp60058
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp60057
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp60058 __tmp60057))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60059
                                                        __tmp60056))))
                                           (declare (not safe))
                                           (cons __tmp60055 '()))))
                                    (declare (not safe))
                                    (cons __tmp60060 __tmp60054)))
                                 (__tmp60039
                                  (let ((__tmp60040
                                         (let ((__tmp60052
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp60041
                                                (let ((__tmp60042
                                                       (let ((__tmp60051
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp60043
                                                              (let ((__tmp60045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60050
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp60046
                                    (let ((__tmp60049
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60047
                                           (let ((__tmp60048
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp60048 '()))))
                                      (declare (not safe))
                                      (cons __tmp60049 __tmp60047))))
                               (declare (not safe))
                               (cons __tmp60050 __tmp60046)))
                            (__tmp60044
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp60045 __tmp60044))))
                 (declare (not safe))
                 (cons __tmp60051 __tmp60043))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60042 '()))))
                                           (declare (not safe))
                                           (cons __tmp60052 __tmp60041))))
                                    (declare (not safe))
                                    (cons __tmp60040 '()))))
                             (declare (not safe))
                             (cons __tmp60053 __tmp60039))))
                      (declare (not safe))
                      (cons __tmp60061 __tmp60038))))
               (declare (not safe))
               (cons __tmp60067 __tmp60037)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp59919
                                                     (let ((__tmp59920
                                                            (let ((__tmp60035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp59921
                           (let ((__tmp60034 (gx#datum->syntax '#f 'loop))
                                 (__tmp59922
                                  (let ((__tmp60021
                                         (let ((__tmp60030
                                                (let ((__tmp60033
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp60031
                                                       (let ((__tmp60032
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp60032
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60033
                                                        __tmp60031)))
                                               (__tmp60022
                                                (let ((__tmp60027
                                                       (let ((__tmp60029
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp60028
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp60029 __tmp60028)))
              (__tmp60023
               (let ((__tmp60024
                      (let ((__tmp60026 (gx#datum->syntax '#f 'deleted))
                            (__tmp60025
                             (let () (declare (not safe)) (cons '#f '()))))
                        (declare (not safe))
                        (cons __tmp60026 __tmp60025))))
                 (declare (not safe))
                 (cons __tmp60024 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60027
                                                        __tmp60023))))
                                           (declare (not safe))
                                           (cons __tmp60030 __tmp60022)))
                                        (__tmp59923
                                         (let ((__tmp59924
                                                (let ((__tmp60020
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp59925
                                                       (let ((__tmp60012
                                                              (let ((__tmp60019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp60013
                             (let ((__tmp60014
                                    (let ((__tmp60018
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp60015
                                           (let ((__tmp60016
                                                  (let ((__tmp60017
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60017 '()))))
                                             (declare (not safe))
                                             (cons _L57741_ __tmp60016))))
                                      (declare (not safe))
                                      (cons __tmp60018 __tmp60015))))
                               (declare (not safe))
                               (cons __tmp60014 '()))))
                        (declare (not safe))
                        (cons __tmp60019 __tmp60013)))
                     (__tmp59926
                      (let ((__tmp59927
                             (let ((__tmp60011 (gx#datum->syntax '#f 'cond))
                                   (__tmp59928
                                    (let ((__tmp60002
                                           (let ((__tmp60004
                                                  (let ((__tmp60010
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp60005
                                                         (let ((__tmp60009
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp60006
                        (let ((__tmp60007
                               (let ((__tmp60008
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp60008 '()))))
                          (declare (not safe))
                          (cons __tmp60007 '()))))
                   (declare (not safe))
                   (cons __tmp60009 __tmp60006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60010
                                                          __tmp60005)))
                                                 (__tmp60003
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L57735_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60004 __tmp60003)))
                                          (__tmp59929
                                           (let ((__tmp59969
                                                  (let ((__tmp59995
                                                         (let ((__tmp60001
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp59996
                        (let ((__tmp60000 (gx#datum->syntax '#f 'k))
                              (__tmp59997
                               (let ((__tmp59998
                                      (let ((__tmp59999
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp59999 '()))))
                                 (declare (not safe))
                                 (cons __tmp59998 '()))))
                          (declare (not safe))
                          (cons __tmp60000 __tmp59997))))
                   (declare (not safe))
                   (cons __tmp60001 __tmp59996)))
                (__tmp59970
                 (let ((__tmp59971
                        (let ((__tmp59994 (gx#datum->syntax '#f 'loop))
                              (__tmp59972
                               (let ((__tmp59986
                                      (let ((__tmp59993
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp59987
                                             (let ((__tmp59992
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp59988
                                                    (let ((__tmp59991
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp59989
                                                           (let ((__tmp59990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp59990 '()))))
              (declare (not safe))
              (cons __tmp59991 __tmp59989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59992 __tmp59988))))
                                        (declare (not safe))
                                        (cons __tmp59993 __tmp59987)))
                                     (__tmp59973
                                      (let ((__tmp59981
                                             (let ((__tmp59985
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp59982
                                                    (let ((__tmp59984
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp59983
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp59984
                                                            __tmp59983))))
                                               (declare (not safe))
                                               (cons __tmp59985 __tmp59982)))
                                            (__tmp59974
                                             (let ((__tmp59975
                                                    (let ((__tmp59980
                                                           (gx#datum->syntax
                                                            '#f
                                                            'or))
                                                          (__tmp59976
                                                           (let ((__tmp59979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'deleted))
                         (__tmp59977
                          (let ((__tmp59978 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp59978 '()))))
                     (declare (not safe))
                     (cons __tmp59979 __tmp59977))))
              (declare (not safe))
              (cons __tmp59980 __tmp59976))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59975 '()))))
                                        (declare (not safe))
                                        (cons __tmp59981 __tmp59974))))
                                 (declare (not safe))
                                 (cons __tmp59986 __tmp59973))))
                          (declare (not safe))
                          (cons __tmp59994 __tmp59972))))
                   (declare (not safe))
                   (cons __tmp59971 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59995
                                                          __tmp59970)))
                                                 (__tmp59930
                                                  (let ((__tmp59954
                                                         (let ((__tmp59965
                                                                (let ((__tmp59966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp59967
                                      (let ((__tmp59968
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp59968 '()))))
                                 (declare (not safe))
                                 (cons _L57737_ __tmp59967))))
                          (declare (not safe))
                          (cons _L57738_ __tmp59966)))
                       (__tmp59955
                        (let ((__tmp59956
                               (let ((__tmp59964
                                      (gx#datum->syntax '#f 'vector-ref))
                                     (__tmp59957
                                      (let ((__tmp59958
                                             (let ((__tmp59959
                                                    (let ((__tmp59963
                                                           (gx#datum->syntax
                                                            '#f
                                                            'fx+))
                                                          (__tmp59960
                                                           (let ((__tmp59962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'probe))
                         (__tmp59961
                          (let () (declare (not safe)) (cons '1 '()))))
                     (declare (not safe))
                     (cons __tmp59962 __tmp59961))))
              (declare (not safe))
              (cons __tmp59963 __tmp59960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59959 '()))))
                                        (declare (not safe))
                                        (cons _L57741_ __tmp59958))))
                                 (declare (not safe))
                                 (cons __tmp59964 __tmp59957))))
                          (declare (not safe))
                          (cons __tmp59956 '()))))
                   (declare (not safe))
                   (cons __tmp59965 __tmp59955)))
                (__tmp59931
                 (let ((__tmp59932
                        (let ((__tmp59953 (gx#datum->syntax '#f 'else))
                              (__tmp59933
                               (let ((__tmp59934
                                      (let ((__tmp59952
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp59935
                                             (let ((__tmp59944
                                                    (let ((__tmp59951
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp59945
                                                           (let ((__tmp59950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp59946
                          (let ((__tmp59949 (gx#datum->syntax '#f 'i))
                                (__tmp59947
                                 (let ((__tmp59948
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp59948 '()))))
                            (declare (not safe))
                            (cons __tmp59949 __tmp59947))))
                     (declare (not safe))
                     (cons __tmp59950 __tmp59946))))
              (declare (not safe))
              (cons __tmp59951 __tmp59945)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp59936
                                                    (let ((__tmp59939
                                                           (let ((__tmp59943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp59940
                          (let ((__tmp59942 (gx#datum->syntax '#f 'i))
                                (__tmp59941
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp59942 __tmp59941))))
                     (declare (not safe))
                     (cons __tmp59943 __tmp59940)))
                  (__tmp59937
                   (let ((__tmp59938 (gx#datum->syntax '#f 'deleted)))
                     (declare (not safe))
                     (cons __tmp59938 '()))))
              (declare (not safe))
              (cons __tmp59939 __tmp59937))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp59944 __tmp59936))))
                                        (declare (not safe))
                                        (cons __tmp59952 __tmp59935))))
                                 (declare (not safe))
                                 (cons __tmp59934 '()))))
                          (declare (not safe))
                          (cons __tmp59953 __tmp59933))))
                   (declare (not safe))
                   (cons __tmp59932 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp59954
                                                          __tmp59931))))
                                             (declare (not safe))
                                             (cons __tmp59969 __tmp59930))))
                                      (declare (not safe))
                                      (cons __tmp60002 __tmp59929))))
                               (declare (not safe))
                               (cons __tmp60011 __tmp59928))))
                        (declare (not safe))
                        (cons __tmp59927 '()))))
                 (declare (not safe))
                 (cons __tmp60012 __tmp59926))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60020
                                                        __tmp59925))))
                                           (declare (not safe))
                                           (cons __tmp59924 '()))))
                                    (declare (not safe))
                                    (cons __tmp60021 __tmp59923))))
                             (declare (not safe))
                             (cons __tmp60034 __tmp59922))))
                      (declare (not safe))
                      (cons __tmp60035 __tmp59921))))
               (declare (not safe))
               (cons __tmp59920 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60036 __tmp59919))))
                                         (declare (not safe))
                                         (cons __tmp60076 __tmp59918)))
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
                                                       (let ((__tmp60293
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp60077
                                                              (let ((__tmp60253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60284
                                    (let ((__tmp60292
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60285
                                           (let ((__tmp60286
                                                  (let ((__tmp60291
                                                         (gx#datum->syntax
                                                          '#f
                                                          'fxxor))
                                                        (__tmp60287
                                                         (let ((__tmp60289
                                                                (let ((__tmp60290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L57920_ '()))))
                          (declare (not safe))
                          (cons _L57922_ __tmp60290)))
                       (__tmp60288
                        (let () (declare (not safe)) (cons _L57923_ '()))))
                   (declare (not safe))
                   (cons __tmp60289 __tmp60288))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60291
                                                          __tmp60287))))
                                             (declare (not safe))
                                             (cons __tmp60286 '()))))
                                      (declare (not safe))
                                      (cons __tmp60292 __tmp60285)))
                                   (__tmp60254
                                    (let ((__tmp60278
                                           (let ((__tmp60283
                                                  (gx#datum->syntax '#f 'size))
                                                 (__tmp60279
                                                  (let ((__tmp60280
                                                         (let ((__tmp60282
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-length))
                       (__tmp60281
                        (let () (declare (not safe)) (cons _L57924_ '()))))
                   (declare (not safe))
                   (cons __tmp60282 __tmp60281))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60280 '()))))
                                             (declare (not safe))
                                             (cons __tmp60283 __tmp60279)))
                                          (__tmp60255
                                           (let ((__tmp60270
                                                  (let ((__tmp60277
                                                         (gx#datum->syntax
                                                          '#f
                                                          'entries))
                                                        (__tmp60271
                                                         (let ((__tmp60272
                                                                (let ((__tmp60276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fxquotient))
                              (__tmp60273
                               (let ((__tmp60275 (gx#datum->syntax '#f 'size))
                                     (__tmp60274
                                      (let ()
                                        (declare (not safe))
                                        (cons '2 '()))))
                                 (declare (not safe))
                                 (cons __tmp60275 __tmp60274))))
                          (declare (not safe))
                          (cons __tmp60276 __tmp60273))))
                   (declare (not safe))
                   (cons __tmp60272 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60277
                                                          __tmp60271)))
                                                 (__tmp60256
                                                  (let ((__tmp60257
                                                         (let ((__tmp60269
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'start))
                       (__tmp60258
                        (let ((__tmp60259
                               (let ((__tmp60268
                                      (gx#datum->syntax
                                       '#f
                                       'fxarithmetic-shift-left))
                                     (__tmp60260
                                      (let ((__tmp60262
                                             (let ((__tmp60267
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fxmodulo))
                                                   (__tmp60263
                                                    (let ((__tmp60266
                                                           (gx#datum->syntax
                                                            '#f
                                                            'h))
                                                          (__tmp60264
                                                           (let ((__tmp60265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'entries)))
                     (declare (not safe))
                     (cons __tmp60265 '()))))
              (declare (not safe))
              (cons __tmp60266 __tmp60264))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60267 __tmp60263)))
                                            (__tmp60261
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp60262 __tmp60261))))
                                 (declare (not safe))
                                 (cons __tmp60268 __tmp60260))))
                          (declare (not safe))
                          (cons __tmp60259 '()))))
                   (declare (not safe))
                   (cons __tmp60269 __tmp60258))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60257 '()))))
                                             (declare (not safe))
                                             (cons __tmp60270 __tmp60256))))
                                      (declare (not safe))
                                      (cons __tmp60278 __tmp60255))))
                               (declare (not safe))
                               (cons __tmp60284 __tmp60254)))
                            (__tmp60078
                             (let ((__tmp60079
                                    (let ((__tmp60252
                                           (gx#datum->syntax '#f 'let))
                                          (__tmp60080
                                           (let ((__tmp60251
                                                  (gx#datum->syntax '#f 'loop))
                                                 (__tmp60081
                                                  (let ((__tmp60238
                                                         (let ((__tmp60247
                                                                (let ((__tmp60250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'probe))
                              (__tmp60248
                               (let ((__tmp60249
                                      (gx#datum->syntax '#f 'start)))
                                 (declare (not safe))
                                 (cons __tmp60249 '()))))
                          (declare (not safe))
                          (cons __tmp60250 __tmp60248)))
                       (__tmp60239
                        (let ((__tmp60244
                               (let ((__tmp60246 (gx#datum->syntax '#f 'i))
                                     (__tmp60245
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp60246 __tmp60245)))
                              (__tmp60240
                               (let ((__tmp60241
                                      (let ((__tmp60243
                                             (gx#datum->syntax '#f 'deleted))
                                            (__tmp60242
                                             (let ()
                                               (declare (not safe))
                                               (cons '#f '()))))
                                        (declare (not safe))
                                        (cons __tmp60243 __tmp60242))))
                                 (declare (not safe))
                                 (cons __tmp60241 '()))))
                          (declare (not safe))
                          (cons __tmp60244 __tmp60240))))
                   (declare (not safe))
                   (cons __tmp60247 __tmp60239)))
                (__tmp60082
                 (let ((__tmp60083
                        (let ((__tmp60237 (gx#datum->syntax '#f 'let))
                              (__tmp60084
                               (let ((__tmp60229
                                      (let ((__tmp60236
                                             (gx#datum->syntax '#f 'k))
                                            (__tmp60230
                                             (let ((__tmp60231
                                                    (let ((__tmp60235
                                                           (gx#datum->syntax
                                                            '#f
                                                            'vector-ref))
                                                          (__tmp60232
                                                           (let ((__tmp60233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60234 (gx#datum->syntax '#f 'probe)))
                            (declare (not safe))
                            (cons __tmp60234 '()))))
                     (declare (not safe))
                     (cons _L57924_ __tmp60233))))
              (declare (not safe))
              (cons __tmp60235 __tmp60232))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60231 '()))))
                                        (declare (not safe))
                                        (cons __tmp60236 __tmp60230)))
                                     (__tmp60085
                                      (let ((__tmp60086
                                             (let ((__tmp60228
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cond))
                                                   (__tmp60087
                                                    (let ((__tmp60169
                                                           (let ((__tmp60221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp60227 (gx#datum->syntax '#f 'eq?))
                                (__tmp60222
                                 (let ((__tmp60226 (gx#datum->syntax '#f 'k))
                                       (__tmp60223
                                        (let ((__tmp60224
                                               (let ((__tmp60225
                                                      (gx#datum->syntax
                                                       '#f
                                                       'macro-unused-obj)))
                                                 (declare (not safe))
                                                 (cons __tmp60225 '()))))
                                          (declare (not safe))
                                          (cons __tmp60224 '()))))
                                   (declare (not safe))
                                   (cons __tmp60226 __tmp60223))))
                            (declare (not safe))
                            (cons __tmp60227 __tmp60222)))
                         (__tmp60170
                          (let ((__tmp60171
                                 (let ((__tmp60220 (gx#datum->syntax '#f 'if))
                                       (__tmp60172
                                        (let ((__tmp60219
                                               (gx#datum->syntax '#f 'deleted))
                                              (__tmp60173
                                               (let ((__tmp60197
                                                      (let ((__tmp60218
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp60198
                                                             (let ((__tmp60212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60217
                                   (gx#datum->syntax '#f 'vector-set!))
                                  (__tmp60213
                                   (let ((__tmp60214
                                          (let ((__tmp60216
                                                 (gx#datum->syntax
                                                  '#f
                                                  'deleted))
                                                (__tmp60215
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L57920_ '()))))
                                            (declare (not safe))
                                            (cons __tmp60216 __tmp60215))))
                                     (declare (not safe))
                                     (cons _L57924_ __tmp60214))))
                              (declare (not safe))
                              (cons __tmp60217 __tmp60213)))
                           (__tmp60199
                            (let ((__tmp60202
                                   (let ((__tmp60211
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp60203
                                          (let ((__tmp60204
                                                 (let ((__tmp60206
                                                        (let ((__tmp60210
                                                               (gx#datum->syntax
                                                                '#f
                                                                'fx+))
                                                              (__tmp60207
                                                               (let ((__tmp60209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'deleted))
                             (__tmp60208
                              (let () (declare (not safe)) (cons '1 '()))))
                         (declare (not safe))
                         (cons __tmp60209 __tmp60208))))
                  (declare (not safe))
                  (cons __tmp60210 __tmp60207)))
               (__tmp60205 (let () (declare (not safe)) (cons _L57919_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp60206
                                                         __tmp60205))))
                                            (declare (not safe))
                                            (cons _L57924_ __tmp60204))))
                                     (declare (not safe))
                                     (cons __tmp60211 __tmp60203)))
                                  (__tmp60200
                                   (let ((__tmp60201
                                          (let ()
                                            (declare (not safe))
                                            (cons _L57916_ '()))))
                                     (declare (not safe))
                                     (cons __tmp60201 '()))))
                              (declare (not safe))
                              (cons __tmp60202 __tmp60200))))
                       (declare (not safe))
                       (cons __tmp60212 __tmp60199))))
                (declare (not safe))
                (cons __tmp60218 __tmp60198)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp60174
                                                      (let ((__tmp60175
                                                             (let ((__tmp60196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin))
                           (__tmp60176
                            (let ((__tmp60190
                                   (let ((__tmp60195
                                          (gx#datum->syntax '#f 'vector-set!))
                                         (__tmp60191
                                          (let ((__tmp60192
                                                 (let ((__tmp60194
                                                        (gx#datum->syntax
                                                         '#f
                                                         'probe))
                                                       (__tmp60193
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L57920_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp60194
                                                         __tmp60193))))
                                            (declare (not safe))
                                            (cons _L57924_ __tmp60192))))
                                     (declare (not safe))
                                     (cons __tmp60195 __tmp60191)))
                                  (__tmp60177
                                   (let ((__tmp60180
                                          (let ((__tmp60189
                                                 (gx#datum->syntax
                                                  '#f
                                                  'vector-set!))
                                                (__tmp60181
                                                 (let ((__tmp60182
                                                        (let ((__tmp60184
                                                               (let ((__tmp60188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fx+))
                             (__tmp60185
                              (let ((__tmp60187 (gx#datum->syntax '#f 'probe))
                                    (__tmp60186
                                     (let ()
                                       (declare (not safe))
                                       (cons '1 '()))))
                                (declare (not safe))
                                (cons __tmp60187 __tmp60186))))
                         (declare (not safe))
                         (cons __tmp60188 __tmp60185)))
                      (__tmp60183
                       (let () (declare (not safe)) (cons _L57919_ '()))))
                  (declare (not safe))
                  (cons __tmp60184 __tmp60183))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L57924_
                                                         __tmp60182))))
                                            (declare (not safe))
                                            (cons __tmp60189 __tmp60181)))
                                         (__tmp60178
                                          (let ((__tmp60179
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L57918_ '()))))
                                            (declare (not safe))
                                            (cons __tmp60179 '()))))
                                     (declare (not safe))
                                     (cons __tmp60180 __tmp60178))))
                              (declare (not safe))
                              (cons __tmp60190 __tmp60177))))
                       (declare (not safe))
                       (cons __tmp60196 __tmp60176))))
                (declare (not safe))
                (cons __tmp60175 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60197
                                                       __tmp60174))))
                                          (declare (not safe))
                                          (cons __tmp60219 __tmp60173))))
                                   (declare (not safe))
                                   (cons __tmp60220 __tmp60172))))
                            (declare (not safe))
                            (cons __tmp60171 '()))))
                     (declare (not safe))
                     (cons __tmp60221 __tmp60170)))
                  (__tmp60088
                   (let ((__tmp60136
                          (let ((__tmp60162
                                 (let ((__tmp60168 (gx#datum->syntax '#f 'eq?))
                                       (__tmp60163
                                        (let ((__tmp60167
                                               (gx#datum->syntax '#f 'k))
                                              (__tmp60164
                                               (let ((__tmp60165
                                                      (let ((__tmp60166
                                                             (gx#datum->syntax
                                                              '#f
                                                              'macro-deleted-obj)))
                                                        (declare (not safe))
                                                        (cons __tmp60166
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp60165 '()))))
                                          (declare (not safe))
                                          (cons __tmp60167 __tmp60164))))
                                   (declare (not safe))
                                   (cons __tmp60168 __tmp60163)))
                                (__tmp60137
                                 (let ((__tmp60138
                                        (let ((__tmp60161
                                               (gx#datum->syntax '#f 'loop))
                                              (__tmp60139
                                               (let ((__tmp60153
                                                      (let ((__tmp60160
                                                             (gx#datum->syntax
                                                              '#f
                                                              'probe-step))
                                                            (__tmp60154
                                                             (let ((__tmp60159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'start))
                           (__tmp60155
                            (let ((__tmp60158 (gx#datum->syntax '#f 'i))
                                  (__tmp60156
                                   (let ((__tmp60157
                                          (gx#datum->syntax '#f 'size)))
                                     (declare (not safe))
                                     (cons __tmp60157 '()))))
                              (declare (not safe))
                              (cons __tmp60158 __tmp60156))))
                       (declare (not safe))
                       (cons __tmp60159 __tmp60155))))
                (declare (not safe))
                (cons __tmp60160 __tmp60154)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp60140
                                                      (let ((__tmp60148
                                                             (let ((__tmp60152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'fx+))
                           (__tmp60149
                            (let ((__tmp60151 (gx#datum->syntax '#f 'i))
                                  (__tmp60150
                                   (let ()
                                     (declare (not safe))
                                     (cons '1 '()))))
                              (declare (not safe))
                              (cons __tmp60151 __tmp60150))))
                       (declare (not safe))
                       (cons __tmp60152 __tmp60149)))
                    (__tmp60141
                     (let ((__tmp60142
                            (let ((__tmp60147 (gx#datum->syntax '#f 'or))
                                  (__tmp60143
                                   (let ((__tmp60146
                                          (gx#datum->syntax '#f 'deleted))
                                         (__tmp60144
                                          (let ((__tmp60145
                                                 (gx#datum->syntax
                                                  '#f
                                                  'probe)))
                                            (declare (not safe))
                                            (cons __tmp60145 '()))))
                                     (declare (not safe))
                                     (cons __tmp60146 __tmp60144))))
                              (declare (not safe))
                              (cons __tmp60147 __tmp60143))))
                       (declare (not safe))
                       (cons __tmp60142 '()))))
                (declare (not safe))
                (cons __tmp60148 __tmp60141))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60153
                                                       __tmp60140))))
                                          (declare (not safe))
                                          (cons __tmp60161 __tmp60139))))
                                   (declare (not safe))
                                   (cons __tmp60138 '()))))
                            (declare (not safe))
                            (cons __tmp60162 __tmp60137)))
                         (__tmp60089
                          (let ((__tmp60113
                                 (let ((__tmp60132
                                        (let ((__tmp60133
                                               (let ((__tmp60134
                                                      (let ((__tmp60135
                                                             (gx#datum->syntax
                                                              '#f
                                                              'k)))
                                                        (declare (not safe))
                                                        (cons __tmp60135
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L57920_ __tmp60134))))
                                          (declare (not safe))
                                          (cons _L57921_ __tmp60133)))
                                       (__tmp60114
                                        (let ((__tmp60126
                                               (let ((__tmp60131
                                                      (gx#datum->syntax
                                                       '#f
                                                       'vector-set!))
                                                     (__tmp60127
                                                      (let ((__tmp60128
                                                             (let ((__tmp60130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'probe))
                           (__tmp60129
                            (let () (declare (not safe)) (cons _L57920_ '()))))
                       (declare (not safe))
                       (cons __tmp60130 __tmp60129))))
                (declare (not safe))
                (cons _L57924_ __tmp60128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60131 __tmp60127)))
                                              (__tmp60115
                                               (let ((__tmp60116
                                                      (let ((__tmp60125
                                                             (gx#datum->syntax
                                                              '#f
                                                              'vector-set!))
                                                            (__tmp60117
                                                             (let ((__tmp60118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60120
                                   (let ((__tmp60124
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60121
                                          (let ((__tmp60123
                                                 (gx#datum->syntax '#f 'probe))
                                                (__tmp60122
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60123 __tmp60122))))
                                     (declare (not safe))
                                     (cons __tmp60124 __tmp60121)))
                                  (__tmp60119
                                   (let ()
                                     (declare (not safe))
                                     (cons _L57919_ '()))))
                              (declare (not safe))
                              (cons __tmp60120 __tmp60119))))
                       (declare (not safe))
                       (cons _L57924_ __tmp60118))))
                (declare (not safe))
                (cons __tmp60125 __tmp60117))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60116 '()))))
                                          (declare (not safe))
                                          (cons __tmp60126 __tmp60115))))
                                   (declare (not safe))
                                   (cons __tmp60132 __tmp60114)))
                                (__tmp60090
                                 (let ((__tmp60091
                                        (let ((__tmp60112
                                               (gx#datum->syntax '#f 'else))
                                              (__tmp60092
                                               (let ((__tmp60093
                                                      (let ((__tmp60111
                                                             (gx#datum->syntax
                                                              '#f
                                                              'loop))
                                                            (__tmp60094
                                                             (let ((__tmp60103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp60110
                                   (gx#datum->syntax '#f 'probe-step))
                                  (__tmp60104
                                   (let ((__tmp60109
                                          (gx#datum->syntax '#f 'start))
                                         (__tmp60105
                                          (let ((__tmp60108
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60106
                                                 (let ((__tmp60107
                                                        (gx#datum->syntax
                                                         '#f
                                                         'size)))
                                                   (declare (not safe))
                                                   (cons __tmp60107 '()))))
                                            (declare (not safe))
                                            (cons __tmp60108 __tmp60106))))
                                     (declare (not safe))
                                     (cons __tmp60109 __tmp60105))))
                              (declare (not safe))
                              (cons __tmp60110 __tmp60104)))
                           (__tmp60095
                            (let ((__tmp60098
                                   (let ((__tmp60102
                                          (gx#datum->syntax '#f 'fx+))
                                         (__tmp60099
                                          (let ((__tmp60101
                                                 (gx#datum->syntax '#f 'i))
                                                (__tmp60100
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '1 '()))))
                                            (declare (not safe))
                                            (cons __tmp60101 __tmp60100))))
                                     (declare (not safe))
                                     (cons __tmp60102 __tmp60099)))
                                  (__tmp60096
                                   (let ((__tmp60097
                                          (gx#datum->syntax '#f 'deleted)))
                                     (declare (not safe))
                                     (cons __tmp60097 '()))))
                              (declare (not safe))
                              (cons __tmp60098 __tmp60096))))
                       (declare (not safe))
                       (cons __tmp60103 __tmp60095))))
                (declare (not safe))
                (cons __tmp60111 __tmp60094))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp60093 '()))))
                                          (declare (not safe))
                                          (cons __tmp60112 __tmp60092))))
                                   (declare (not safe))
                                   (cons __tmp60091 '()))))
                            (declare (not safe))
                            (cons __tmp60113 __tmp60090))))
                     (declare (not safe))
                     (cons __tmp60136 __tmp60089))))
              (declare (not safe))
              (cons __tmp60169 __tmp60088))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60228 __tmp60087))))
                                        (declare (not safe))
                                        (cons __tmp60086 '()))))
                                 (declare (not safe))
                                 (cons __tmp60229 __tmp60085))))
                          (declare (not safe))
                          (cons __tmp60237 __tmp60084))))
                   (declare (not safe))
                   (cons __tmp60083 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60238
                                                          __tmp60082))))
                                             (declare (not safe))
                                             (cons __tmp60251 __tmp60081))))
                                      (declare (not safe))
                                      (cons __tmp60252 __tmp60080))))
                               (declare (not safe))
                               (cons __tmp60079 '()))))
                        (declare (not safe))
                        (cons __tmp60253 __tmp60078))))
                 (declare (not safe))
                 (cons __tmp60293 __tmp60077)))
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
                       (let ((__tmp60525 (gx#datum->syntax '#f 'let*))
                             (__tmp60294
                              (let ((__tmp60485
                                     (let ((__tmp60516
                                            (let ((__tmp60524
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp60517
                                                   (let ((__tmp60518
                                                          (let ((__tmp60523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'fxxor))
                        (__tmp60519
                         (let ((__tmp60521
                                (let ((__tmp60522
                                       (let ()
                                         (declare (not safe))
                                         (cons _L58124_ '()))))
                                  (declare (not safe))
                                  (cons _L58126_ __tmp60522)))
                               (__tmp60520
                                (let ()
                                  (declare (not safe))
                                  (cons _L58127_ '()))))
                           (declare (not safe))
                           (cons __tmp60521 __tmp60520))))
                    (declare (not safe))
                    (cons __tmp60523 __tmp60519))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60518 '()))))
                                              (declare (not safe))
                                              (cons __tmp60524 __tmp60517)))
                                           (__tmp60486
                                            (let ((__tmp60510
                                                   (let ((__tmp60515
                                                          (gx#datum->syntax
                                                           '#f
                                                           'size))
                                                         (__tmp60511
                                                          (let ((__tmp60512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60514
                                (gx#datum->syntax '#f 'vector-length))
                               (__tmp60513
                                (let ()
                                  (declare (not safe))
                                  (cons _L58128_ '()))))
                           (declare (not safe))
                           (cons __tmp60514 __tmp60513))))
                    (declare (not safe))
                    (cons __tmp60512 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60515
                                                           __tmp60511)))
                                                  (__tmp60487
                                                   (let ((__tmp60502
                                                          (let ((__tmp60509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'entries))
                        (__tmp60503
                         (let ((__tmp60504
                                (let ((__tmp60508
                                       (gx#datum->syntax '#f 'fxquotient))
                                      (__tmp60505
                                       (let ((__tmp60507
                                              (gx#datum->syntax '#f 'size))
                                             (__tmp60506
                                              (let ()
                                                (declare (not safe))
                                                (cons '2 '()))))
                                         (declare (not safe))
                                         (cons __tmp60507 __tmp60506))))
                                  (declare (not safe))
                                  (cons __tmp60508 __tmp60505))))
                           (declare (not safe))
                           (cons __tmp60504 '()))))
                    (declare (not safe))
                    (cons __tmp60509 __tmp60503)))
                 (__tmp60488
                  (let ((__tmp60489
                         (let ((__tmp60501 (gx#datum->syntax '#f 'start))
                               (__tmp60490
                                (let ((__tmp60491
                                       (let ((__tmp60500
                                              (gx#datum->syntax
                                               '#f
                                               'fxarithmetic-shift-left))
                                             (__tmp60492
                                              (let ((__tmp60494
                                                     (let ((__tmp60499
                                                            (gx#datum->syntax
                                                             '#f
                                                             'fxmodulo))
                                                           (__tmp60495
                                                            (let ((__tmp60498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60496
                           (let ((__tmp60497 (gx#datum->syntax '#f 'entries)))
                             (declare (not safe))
                             (cons __tmp60497 '()))))
                      (declare (not safe))
                      (cons __tmp60498 __tmp60496))))
               (declare (not safe))
               (cons __tmp60499 __tmp60495)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60493
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '1 '()))))
                                                (declare (not safe))
                                                (cons __tmp60494 __tmp60493))))
                                         (declare (not safe))
                                         (cons __tmp60500 __tmp60492))))
                                  (declare (not safe))
                                  (cons __tmp60491 '()))))
                           (declare (not safe))
                           (cons __tmp60501 __tmp60490))))
                    (declare (not safe))
                    (cons __tmp60489 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60502
                                                           __tmp60488))))
                                              (declare (not safe))
                                              (cons __tmp60510 __tmp60487))))
                                       (declare (not safe))
                                       (cons __tmp60516 __tmp60486)))
                                    (__tmp60295
                                     (let ((__tmp60296
                                            (let ((__tmp60484
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp60297
                                                   (let ((__tmp60483
                                                          (gx#datum->syntax
                                                           '#f
                                                           'loop))
                                                         (__tmp60298
                                                          (let ((__tmp60470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp60479
                                (let ((__tmp60482
                                       (gx#datum->syntax '#f 'probe))
                                      (__tmp60480
                                       (let ((__tmp60481
                                              (gx#datum->syntax '#f 'start)))
                                         (declare (not safe))
                                         (cons __tmp60481 '()))))
                                  (declare (not safe))
                                  (cons __tmp60482 __tmp60480)))
                               (__tmp60471
                                (let ((__tmp60476
                                       (let ((__tmp60478
                                              (gx#datum->syntax '#f 'i))
                                             (__tmp60477
                                              (let ()
                                                (declare (not safe))
                                                (cons '1 '()))))
                                         (declare (not safe))
                                         (cons __tmp60478 __tmp60477)))
                                      (__tmp60472
                                       (let ((__tmp60473
                                              (let ((__tmp60475
                                                     (gx#datum->syntax
                                                      '#f
                                                      'deleted))
                                                    (__tmp60474
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons __tmp60475 __tmp60474))))
                                         (declare (not safe))
                                         (cons __tmp60473 '()))))
                                  (declare (not safe))
                                  (cons __tmp60476 __tmp60472))))
                           (declare (not safe))
                           (cons __tmp60479 __tmp60471)))
                        (__tmp60299
                         (let ((__tmp60300
                                (let ((__tmp60469 (gx#datum->syntax '#f 'let))
                                      (__tmp60301
                                       (let ((__tmp60461
                                              (let ((__tmp60468
                                                     (gx#datum->syntax '#f 'k))
                                                    (__tmp60462
                                                     (let ((__tmp60463
                                                            (let ((__tmp60467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'vector-ref))
                          (__tmp60464
                           (let ((__tmp60465
                                  (let ((__tmp60466
                                         (gx#datum->syntax '#f 'probe)))
                                    (declare (not safe))
                                    (cons __tmp60466 '()))))
                             (declare (not safe))
                             (cons _L58128_ __tmp60465))))
                      (declare (not safe))
                      (cons __tmp60467 __tmp60464))))
               (declare (not safe))
               (cons __tmp60463 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60468 __tmp60462)))
                                             (__tmp60302
                                              (let ((__tmp60303
                                                     (let ((__tmp60460
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cond))
                                                           (__tmp60304
                                                            (let ((__tmp60397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp60453
                                  (let ((__tmp60459
                                         (gx#datum->syntax '#f 'eq?))
                                        (__tmp60454
                                         (let ((__tmp60458
                                                (gx#datum->syntax '#f 'k))
                                               (__tmp60455
                                                (let ((__tmp60456
                                                       (let ((__tmp60457
                                                              (gx#datum->syntax
                                                               '#f
                                                               'macro-unused-obj)))
                                                         (declare (not safe))
                                                         (cons __tmp60457
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60456 '()))))
                                           (declare (not safe))
                                           (cons __tmp60458 __tmp60455))))
                                    (declare (not safe))
                                    (cons __tmp60459 __tmp60454)))
                                 (__tmp60398
                                  (let ((__tmp60399
                                         (let ((__tmp60452
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp60400
                                                (let ((__tmp60451
                                                       (gx#datum->syntax
                                                        '#f
                                                        'deleted))
                                                      (__tmp60401
                                                       (let ((__tmp60427
                                                              (let ((__tmp60450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin))
                            (__tmp60428
                             (let ((__tmp60444
                                    (let ((__tmp60449
                                           (gx#datum->syntax '#f 'vector-set!))
                                          (__tmp60445
                                           (let ((__tmp60446
                                                  (let ((__tmp60448
                                                         (gx#datum->syntax
                                                          '#f
                                                          'deleted))
                                                        (__tmp60447
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60448
                                                          __tmp60447))))
                                             (declare (not safe))
                                             (cons _L58128_ __tmp60446))))
                                      (declare (not safe))
                                      (cons __tmp60449 __tmp60445)))
                                   (__tmp60429
                                    (let ((__tmp60432
                                           (let ((__tmp60443
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp60433
                                                  (let ((__tmp60434
                                                         (let ((__tmp60438
                                                                (let ((__tmp60442
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'fx+))
                              (__tmp60439
                               (let ((__tmp60441
                                      (gx#datum->syntax '#f 'deleted))
                                     (__tmp60440
                                      (let ()
                                        (declare (not safe))
                                        (cons '1 '()))))
                                 (declare (not safe))
                                 (cons __tmp60441 __tmp60440))))
                          (declare (not safe))
                          (cons __tmp60442 __tmp60439)))
                       (__tmp60435
                        (let ((__tmp60436
                               (let ((__tmp60437
                                      (let ()
                                        (declare (not safe))
                                        (cons _L58122_ '()))))
                                 (declare (not safe))
                                 (cons _L58123_ __tmp60437))))
                          (declare (not safe))
                          (cons __tmp60436 '()))))
                   (declare (not safe))
                   (cons __tmp60438 __tmp60435))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58128_
                                                          __tmp60434))))
                                             (declare (not safe))
                                             (cons __tmp60443 __tmp60433)))
                                          (__tmp60430
                                           (let ((__tmp60431
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L58119_ '()))))
                                             (declare (not safe))
                                             (cons __tmp60431 '()))))
                                      (declare (not safe))
                                      (cons __tmp60432 __tmp60430))))
                               (declare (not safe))
                               (cons __tmp60444 __tmp60429))))
                        (declare (not safe))
                        (cons __tmp60450 __tmp60428)))
                     (__tmp60402
                      (let ((__tmp60403
                             (let ((__tmp60426 (gx#datum->syntax '#f 'begin))
                                   (__tmp60404
                                    (let ((__tmp60420
                                           (let ((__tmp60425
                                                  (gx#datum->syntax
                                                   '#f
                                                   'vector-set!))
                                                 (__tmp60421
                                                  (let ((__tmp60422
                                                         (let ((__tmp60424
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe))
                       (__tmp60423
                        (let () (declare (not safe)) (cons _L58124_ '()))))
                   (declare (not safe))
                   (cons __tmp60424 __tmp60423))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58128_
                                                          __tmp60422))))
                                             (declare (not safe))
                                             (cons __tmp60425 __tmp60421)))
                                          (__tmp60405
                                           (let ((__tmp60408
                                                  (let ((__tmp60419
                                                         (gx#datum->syntax
                                                          '#f
                                                          'vector-set!))
                                                        (__tmp60409
                                                         (let ((__tmp60410
                                                                (let ((__tmp60414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60418 (gx#datum->syntax '#f 'fx+))
                                     (__tmp60415
                                      (let ((__tmp60417
                                             (gx#datum->syntax '#f 'probe))
                                            (__tmp60416
                                             (let ()
                                               (declare (not safe))
                                               (cons '1 '()))))
                                        (declare (not safe))
                                        (cons __tmp60417 __tmp60416))))
                                 (declare (not safe))
                                 (cons __tmp60418 __tmp60415)))
                              (__tmp60411
                               (let ((__tmp60412
                                      (let ((__tmp60413
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58122_ '()))))
                                        (declare (not safe))
                                        (cons _L58123_ __tmp60413))))
                                 (declare (not safe))
                                 (cons __tmp60412 '()))))
                          (declare (not safe))
                          (cons __tmp60414 __tmp60411))))
                   (declare (not safe))
                   (cons _L58128_ __tmp60410))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60419
                                                          __tmp60409)))
                                                 (__tmp60406
                                                  (let ((__tmp60407
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L58121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60407 '()))))
                                             (declare (not safe))
                                             (cons __tmp60408 __tmp60406))))
                                      (declare (not safe))
                                      (cons __tmp60420 __tmp60405))))
                               (declare (not safe))
                               (cons __tmp60426 __tmp60404))))
                        (declare (not safe))
                        (cons __tmp60403 '()))))
                 (declare (not safe))
                 (cons __tmp60427 __tmp60402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60451
                                                        __tmp60401))))
                                           (declare (not safe))
                                           (cons __tmp60452 __tmp60400))))
                                    (declare (not safe))
                                    (cons __tmp60399 '()))))
                             (declare (not safe))
                             (cons __tmp60453 __tmp60398)))
                          (__tmp60305
                           (let ((__tmp60364
                                  (let ((__tmp60390
                                         (let ((__tmp60396
                                                (gx#datum->syntax '#f 'eq?))
                                               (__tmp60391
                                                (let ((__tmp60395
                                                       (gx#datum->syntax
                                                        '#f
                                                        'k))
                                                      (__tmp60392
                                                       (let ((__tmp60393
                                                              (let ((__tmp60394
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'macro-deleted-obj)))
                        (declare (not safe))
                        (cons __tmp60394 '()))))
                 (declare (not safe))
                 (cons __tmp60393 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60395
                                                        __tmp60392))))
                                           (declare (not safe))
                                           (cons __tmp60396 __tmp60391)))
                                        (__tmp60365
                                         (let ((__tmp60366
                                                (let ((__tmp60389
                                                       (gx#datum->syntax
                                                        '#f
                                                        'loop))
                                                      (__tmp60367
                                                       (let ((__tmp60381
                                                              (let ((__tmp60388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'probe-step))
                            (__tmp60382
                             (let ((__tmp60387 (gx#datum->syntax '#f 'start))
                                   (__tmp60383
                                    (let ((__tmp60386
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp60384
                                           (let ((__tmp60385
                                                  (gx#datum->syntax
                                                   '#f
                                                   'size)))
                                             (declare (not safe))
                                             (cons __tmp60385 '()))))
                                      (declare (not safe))
                                      (cons __tmp60386 __tmp60384))))
                               (declare (not safe))
                               (cons __tmp60387 __tmp60383))))
                        (declare (not safe))
                        (cons __tmp60388 __tmp60382)))
                     (__tmp60368
                      (let ((__tmp60376
                             (let ((__tmp60380 (gx#datum->syntax '#f 'fx+))
                                   (__tmp60377
                                    (let ((__tmp60379
                                           (gx#datum->syntax '#f 'i))
                                          (__tmp60378
                                           (let ()
                                             (declare (not safe))
                                             (cons '1 '()))))
                                      (declare (not safe))
                                      (cons __tmp60379 __tmp60378))))
                               (declare (not safe))
                               (cons __tmp60380 __tmp60377)))
                            (__tmp60369
                             (let ((__tmp60370
                                    (let ((__tmp60375
                                           (gx#datum->syntax '#f 'or))
                                          (__tmp60371
                                           (let ((__tmp60374
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted))
                                                 (__tmp60372
                                                  (let ((__tmp60373
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60373 '()))))
                                             (declare (not safe))
                                             (cons __tmp60374 __tmp60372))))
                                      (declare (not safe))
                                      (cons __tmp60375 __tmp60371))))
                               (declare (not safe))
                               (cons __tmp60370 '()))))
                        (declare (not safe))
                        (cons __tmp60376 __tmp60369))))
                 (declare (not safe))
                 (cons __tmp60381 __tmp60368))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60389
                                                        __tmp60367))))
                                           (declare (not safe))
                                           (cons __tmp60366 '()))))
                                    (declare (not safe))
                                    (cons __tmp60390 __tmp60365)))
                                 (__tmp60306
                                  (let ((__tmp60330
                                         (let ((__tmp60360
                                                (let ((__tmp60361
                                                       (let ((__tmp60362
                                                              (let ((__tmp60363
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k)))
                        (declare (not safe))
                        (cons __tmp60363 '()))))
                 (declare (not safe))
                 (cons _L58124_ __tmp60362))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L58125_ __tmp60361)))
                                               (__tmp60331
                                                (let ((__tmp60354
                                                       (let ((__tmp60359
                                                              (gx#datum->syntax
                                                               '#f
                                                               'vector-set!))
                                                             (__tmp60355
                                                              (let ((__tmp60356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60358 (gx#datum->syntax '#f 'probe))
                                   (__tmp60357
                                    (let ()
                                      (declare (not safe))
                                      (cons _L58124_ '()))))
                               (declare (not safe))
                               (cons __tmp60358 __tmp60357))))
                        (declare (not safe))
                        (cons _L58128_ __tmp60356))))
                 (declare (not safe))
                 (cons __tmp60359 __tmp60355)))
              (__tmp60332
               (let ((__tmp60333
                      (let ((__tmp60353 (gx#datum->syntax '#f 'vector-set!))
                            (__tmp60334
                             (let ((__tmp60335
                                    (let ((__tmp60348
                                           (let ((__tmp60352
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60349
                                                  (let ((__tmp60351
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe))
                                                        (__tmp60350
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp60351
                                                          __tmp60350))))
                                             (declare (not safe))
                                             (cons __tmp60352 __tmp60349)))
                                          (__tmp60336
                                           (let ((__tmp60337
                                                  (let ((__tmp60338
                                                         (let ((__tmp60339
                                                                (let ((__tmp60347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'vector-ref))
                              (__tmp60340
                               (let ((__tmp60341
                                      (let ((__tmp60342
                                             (let ((__tmp60346
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60343
                                                    (let ((__tmp60345
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe))
                                                          (__tmp60344
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60345
                                                            __tmp60344))))
                                               (declare (not safe))
                                               (cons __tmp60346 __tmp60343))))
                                        (declare (not safe))
                                        (cons __tmp60342 '()))))
                                 (declare (not safe))
                                 (cons _L58128_ __tmp60341))))
                          (declare (not safe))
                          (cons __tmp60347 __tmp60340))))
                   (declare (not safe))
                   (cons __tmp60339 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L58123_
                                                          __tmp60338))))
                                             (declare (not safe))
                                             (cons __tmp60337 '()))))
                                      (declare (not safe))
                                      (cons __tmp60348 __tmp60336))))
                               (declare (not safe))
                               (cons _L58128_ __tmp60335))))
                        (declare (not safe))
                        (cons __tmp60353 __tmp60334))))
                 (declare (not safe))
                 (cons __tmp60333 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60354
                                                        __tmp60332))))
                                           (declare (not safe))
                                           (cons __tmp60360 __tmp60331)))
                                        (__tmp60307
                                         (let ((__tmp60308
                                                (let ((__tmp60329
                                                       (gx#datum->syntax
                                                        '#f
                                                        'else))
                                                      (__tmp60309
                                                       (let ((__tmp60310
                                                              (let ((__tmp60328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'loop))
                            (__tmp60311
                             (let ((__tmp60320
                                    (let ((__tmp60327
                                           (gx#datum->syntax '#f 'probe-step))
                                          (__tmp60321
                                           (let ((__tmp60326
                                                  (gx#datum->syntax
                                                   '#f
                                                   'start))
                                                 (__tmp60322
                                                  (let ((__tmp60325
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp60323
                                                         (let ((__tmp60324
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'size)))
                   (declare (not safe))
                   (cons __tmp60324 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60325
                                                          __tmp60323))))
                                             (declare (not safe))
                                             (cons __tmp60326 __tmp60322))))
                                      (declare (not safe))
                                      (cons __tmp60327 __tmp60321)))
                                   (__tmp60312
                                    (let ((__tmp60315
                                           (let ((__tmp60319
                                                  (gx#datum->syntax '#f 'fx+))
                                                 (__tmp60316
                                                  (let ((__tmp60318
                                                         (gx#datum->syntax
                                                          '#f
                                                          'i))
                                                        (__tmp60317
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons '1 '()))))
                                                    (declare (not safe))
                                                    (cons __tmp60318
                                                          __tmp60317))))
                                             (declare (not safe))
                                             (cons __tmp60319 __tmp60316)))
                                          (__tmp60313
                                           (let ((__tmp60314
                                                  (gx#datum->syntax
                                                   '#f
                                                   'deleted)))
                                             (declare (not safe))
                                             (cons __tmp60314 '()))))
                                      (declare (not safe))
                                      (cons __tmp60315 __tmp60313))))
                               (declare (not safe))
                               (cons __tmp60320 __tmp60312))))
                        (declare (not safe))
                        (cons __tmp60328 __tmp60311))))
                 (declare (not safe))
                 (cons __tmp60310 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60329
                                                        __tmp60309))))
                                           (declare (not safe))
                                           (cons __tmp60308 '()))))
                                    (declare (not safe))
                                    (cons __tmp60330 __tmp60307))))
                             (declare (not safe))
                             (cons __tmp60364 __tmp60306))))
                      (declare (not safe))
                      (cons __tmp60397 __tmp60305))))
               (declare (not safe))
               (cons __tmp60460 __tmp60304))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60303 '()))))
                                         (declare (not safe))
                                         (cons __tmp60461 __tmp60302))))
                                  (declare (not safe))
                                  (cons __tmp60469 __tmp60301))))
                           (declare (not safe))
                           (cons __tmp60300 '()))))
                    (declare (not safe))
                    (cons __tmp60470 __tmp60299))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp60483
                                                           __tmp60298))))
                                              (declare (not safe))
                                              (cons __tmp60484 __tmp60297))))
                                       (declare (not safe))
                                       (cons __tmp60296 '()))))
                                (declare (not safe))
                                (cons __tmp60485 __tmp60295))))
                         (declare (not safe))
                         (cons __tmp60525 __tmp60294)))
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
                                       (let ((__tmp60687
                                              (gx#datum->syntax '#f 'let*))
                                             (__tmp60526
                                              (let ((__tmp60647
                                                     (let ((__tmp60678
                                                            (let ((__tmp60686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp60679
                           (let ((__tmp60680
                                  (let ((__tmp60685
                                         (gx#datum->syntax '#f 'fxxor))
                                        (__tmp60681
                                         (let ((__tmp60683
                                                (let ((__tmp60684
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L58286_ '()))))
                                                  (declare (not safe))
                                                  (cons _L58288_ __tmp60684)))
                                               (__tmp60682
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58289_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60683 __tmp60682))))
                                    (declare (not safe))
                                    (cons __tmp60685 __tmp60681))))
                             (declare (not safe))
                             (cons __tmp60680 '()))))
                      (declare (not safe))
                      (cons __tmp60686 __tmp60679)))
                   (__tmp60648
                    (let ((__tmp60672
                           (let ((__tmp60677 (gx#datum->syntax '#f 'size))
                                 (__tmp60673
                                  (let ((__tmp60674
                                         (let ((__tmp60676
                                                (gx#datum->syntax
                                                 '#f
                                                 'vector-length))
                                               (__tmp60675
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L58290_ '()))))
                                           (declare (not safe))
                                           (cons __tmp60676 __tmp60675))))
                                    (declare (not safe))
                                    (cons __tmp60674 '()))))
                             (declare (not safe))
                             (cons __tmp60677 __tmp60673)))
                          (__tmp60649
                           (let ((__tmp60664
                                  (let ((__tmp60671
                                         (gx#datum->syntax '#f 'entries))
                                        (__tmp60665
                                         (let ((__tmp60666
                                                (let ((__tmp60670
                                                       (gx#datum->syntax
                                                        '#f
                                                        'fxquotient))
                                                      (__tmp60667
                                                       (let ((__tmp60669
                                                              (gx#datum->syntax
                                                               '#f
                                                               'size))
                                                             (__tmp60668
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '2 '()))))
                 (declare (not safe))
                 (cons __tmp60669 __tmp60668))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60670
                                                        __tmp60667))))
                                           (declare (not safe))
                                           (cons __tmp60666 '()))))
                                    (declare (not safe))
                                    (cons __tmp60671 __tmp60665)))
                                 (__tmp60650
                                  (let ((__tmp60651
                                         (let ((__tmp60663
                                                (gx#datum->syntax '#f 'start))
                                               (__tmp60652
                                                (let ((__tmp60653
                                                       (let ((__tmp60662
                                                              (gx#datum->syntax
                                                               '#f
                                                               'fxarithmetic-shift-left))
                                                             (__tmp60654
                                                              (let ((__tmp60656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp60661
                                    (gx#datum->syntax '#f 'fxmodulo))
                                   (__tmp60657
                                    (let ((__tmp60660
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp60658
                                           (let ((__tmp60659
                                                  (gx#datum->syntax
                                                   '#f
                                                   'entries)))
                                             (declare (not safe))
                                             (cons __tmp60659 '()))))
                                      (declare (not safe))
                                      (cons __tmp60660 __tmp60658))))
                               (declare (not safe))
                               (cons __tmp60661 __tmp60657)))
                            (__tmp60655
                             (let () (declare (not safe)) (cons '1 '()))))
                        (declare (not safe))
                        (cons __tmp60656 __tmp60655))))
                 (declare (not safe))
                 (cons __tmp60662 __tmp60654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60653 '()))))
                                           (declare (not safe))
                                           (cons __tmp60663 __tmp60652))))
                                    (declare (not safe))
                                    (cons __tmp60651 '()))))
                             (declare (not safe))
                             (cons __tmp60664 __tmp60650))))
                      (declare (not safe))
                      (cons __tmp60672 __tmp60649))))
               (declare (not safe))
               (cons __tmp60678 __tmp60648)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp60527
                                                     (let ((__tmp60528
                                                            (let ((__tmp60646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'let))
                          (__tmp60529
                           (let ((__tmp60645 (gx#datum->syntax '#f 'loop))
                                 (__tmp60530
                                  (let ((__tmp60636
                                         (let ((__tmp60641
                                                (let ((__tmp60644
                                                       (gx#datum->syntax
                                                        '#f
                                                        'probe))
                                                      (__tmp60642
                                                       (let ((__tmp60643
                                                              (gx#datum->syntax
                                                               '#f
                                                               'start)))
                                                         (declare (not safe))
                                                         (cons __tmp60643
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp60644
                                                        __tmp60642)))
                                               (__tmp60637
                                                (let ((__tmp60638
                                                       (let ((__tmp60640
                                                              (gx#datum->syntax
                                                               '#f
                                                               'i))
                                                             (__tmp60639
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '1 '()))))
                 (declare (not safe))
                 (cons __tmp60640 __tmp60639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60638 '()))))
                                           (declare (not safe))
                                           (cons __tmp60641 __tmp60637)))
                                        (__tmp60531
                                         (let ((__tmp60532
                                                (let ((__tmp60635
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp60533
                                                       (let ((__tmp60627
                                                              (let ((__tmp60634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'k))
                            (__tmp60628
                             (let ((__tmp60629
                                    (let ((__tmp60633
                                           (gx#datum->syntax '#f 'vector-ref))
                                          (__tmp60630
                                           (let ((__tmp60631
                                                  (let ((__tmp60632
                                                         (gx#datum->syntax
                                                          '#f
                                                          'probe)))
                                                    (declare (not safe))
                                                    (cons __tmp60632 '()))))
                                             (declare (not safe))
                                             (cons _L58290_ __tmp60631))))
                                      (declare (not safe))
                                      (cons __tmp60633 __tmp60630))))
                               (declare (not safe))
                               (cons __tmp60629 '()))))
                        (declare (not safe))
                        (cons __tmp60634 __tmp60628)))
                     (__tmp60534
                      (let ((__tmp60535
                             (let ((__tmp60626 (gx#datum->syntax '#f 'cond))
                                   (__tmp60536
                                    (let ((__tmp60615
                                           (let ((__tmp60619
                                                  (let ((__tmp60625
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))
                                                        (__tmp60620
                                                         (let ((__tmp60624
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k))
                       (__tmp60621
                        (let ((__tmp60622
                               (let ((__tmp60623
                                      (gx#datum->syntax
                                       '#f
                                       'macro-unused-obj)))
                                 (declare (not safe))
                                 (cons __tmp60623 '()))))
                          (declare (not safe))
                          (cons __tmp60622 '()))))
                   (declare (not safe))
                   (cons __tmp60624 __tmp60621))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60625
                                                          __tmp60620)))
                                                 (__tmp60616
                                                  (let ((__tmp60617
                                                         (let ((__tmp60618
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'void)))
                   (declare (not safe))
                   (cons __tmp60618 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60617 '()))))
                                             (declare (not safe))
                                             (cons __tmp60619 __tmp60616)))
                                          (__tmp60537
                                           (let ((__tmp60589
                                                  (let ((__tmp60608
                                                         (let ((__tmp60614
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?))
                       (__tmp60609
                        (let ((__tmp60613 (gx#datum->syntax '#f 'k))
                              (__tmp60610
                               (let ((__tmp60611
                                      (let ((__tmp60612
                                             (gx#datum->syntax
                                              '#f
                                              'macro-deleted-obj)))
                                        (declare (not safe))
                                        (cons __tmp60612 '()))))
                                 (declare (not safe))
                                 (cons __tmp60611 '()))))
                          (declare (not safe))
                          (cons __tmp60613 __tmp60610))))
                   (declare (not safe))
                   (cons __tmp60614 __tmp60609)))
                (__tmp60590
                 (let ((__tmp60591
                        (let ((__tmp60607 (gx#datum->syntax '#f 'loop))
                              (__tmp60592
                               (let ((__tmp60599
                                      (let ((__tmp60606
                                             (gx#datum->syntax
                                              '#f
                                              'probe-step))
                                            (__tmp60600
                                             (let ((__tmp60605
                                                    (gx#datum->syntax
                                                     '#f
                                                     'start))
                                                   (__tmp60601
                                                    (let ((__tmp60604
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60602
                                                           (let ((__tmp60603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'size)))
                     (declare (not safe))
                     (cons __tmp60603 '()))))
              (declare (not safe))
              (cons __tmp60604 __tmp60602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60605 __tmp60601))))
                                        (declare (not safe))
                                        (cons __tmp60606 __tmp60600)))
                                     (__tmp60593
                                      (let ((__tmp60594
                                             (let ((__tmp60598
                                                    (gx#datum->syntax
                                                     '#f
                                                     'fx+))
                                                   (__tmp60595
                                                    (let ((__tmp60597
                                                           (gx#datum->syntax
                                                            '#f
                                                            'i))
                                                          (__tmp60596
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '1 '()))))
                                                      (declare (not safe))
                                                      (cons __tmp60597
                                                            __tmp60596))))
                                               (declare (not safe))
                                               (cons __tmp60598 __tmp60595))))
                                        (declare (not safe))
                                        (cons __tmp60594 '()))))
                                 (declare (not safe))
                                 (cons __tmp60599 __tmp60593))))
                          (declare (not safe))
                          (cons __tmp60607 __tmp60592))))
                   (declare (not safe))
                   (cons __tmp60591 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60608
                                                          __tmp60590)))
                                                 (__tmp60538
                                                  (let ((__tmp60560
                                                         (let ((__tmp60585
                                                                (let ((__tmp60586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp60587
                                      (let ((__tmp60588
                                             (gx#datum->syntax '#f 'k)))
                                        (declare (not safe))
                                        (cons __tmp60588 '()))))
                                 (declare (not safe))
                                 (cons _L58286_ __tmp60587))))
                          (declare (not safe))
                          (cons _L58287_ __tmp60586)))
                       (__tmp60561
                        (let ((__tmp60577
                               (let ((__tmp60584
                                      (gx#datum->syntax '#f 'vector-set!))
                                     (__tmp60578
                                      (let ((__tmp60579
                                             (let ((__tmp60583
                                                    (gx#datum->syntax
                                                     '#f
                                                     'probe))
                                                   (__tmp60580
                                                    (let ((__tmp60581
                                                           (let ((__tmp60582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'macro-deleted-obj)))
                     (declare (not safe))
                     (cons __tmp60582 '()))))
              (declare (not safe))
              (cons __tmp60581 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60583 __tmp60580))))
                                        (declare (not safe))
                                        (cons _L58290_ __tmp60579))))
                                 (declare (not safe))
                                 (cons __tmp60584 __tmp60578)))
                              (__tmp60562
                               (let ((__tmp60565
                                      (let ((__tmp60576
                                             (gx#datum->syntax
                                              '#f
                                              'vector-set!))
                                            (__tmp60566
                                             (let ((__tmp60567
                                                    (let ((__tmp60571
                                                           (let ((__tmp60575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60572
                          (let ((__tmp60574 (gx#datum->syntax '#f 'probe))
                                (__tmp60573
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60574 __tmp60573))))
                     (declare (not safe))
                     (cons __tmp60575 __tmp60572)))
                  (__tmp60568
                   (let ((__tmp60569
                          (let ((__tmp60570
                                 (gx#datum->syntax '#f 'macro-absent-obj)))
                            (declare (not safe))
                            (cons __tmp60570 '()))))
                     (declare (not safe))
                     (cons __tmp60569 '()))))
              (declare (not safe))
              (cons __tmp60571 __tmp60568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L58290_ __tmp60567))))
                                        (declare (not safe))
                                        (cons __tmp60576 __tmp60566)))
                                     (__tmp60563
                                      (let ((__tmp60564
                                             (let ()
                                               (declare (not safe))
                                               (cons _L58284_ '()))))
                                        (declare (not safe))
                                        (cons __tmp60564 '()))))
                                 (declare (not safe))
                                 (cons __tmp60565 __tmp60563))))
                          (declare (not safe))
                          (cons __tmp60577 __tmp60562))))
                   (declare (not safe))
                   (cons __tmp60585 __tmp60561)))
                (__tmp60539
                 (let ((__tmp60540
                        (let ((__tmp60559 (gx#datum->syntax '#f 'else))
                              (__tmp60541
                               (let ((__tmp60542
                                      (let ((__tmp60558
                                             (gx#datum->syntax '#f 'loop))
                                            (__tmp60543
                                             (let ((__tmp60550
                                                    (let ((__tmp60557
                                                           (gx#datum->syntax
                                                            '#f
                                                            'probe-step))
                                                          (__tmp60551
                                                           (let ((__tmp60556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'start))
                         (__tmp60552
                          (let ((__tmp60555 (gx#datum->syntax '#f 'i))
                                (__tmp60553
                                 (let ((__tmp60554
                                        (gx#datum->syntax '#f 'size)))
                                   (declare (not safe))
                                   (cons __tmp60554 '()))))
                            (declare (not safe))
                            (cons __tmp60555 __tmp60553))))
                     (declare (not safe))
                     (cons __tmp60556 __tmp60552))))
              (declare (not safe))
              (cons __tmp60557 __tmp60551)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp60544
                                                    (let ((__tmp60545
                                                           (let ((__tmp60549
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'fx+))
                         (__tmp60546
                          (let ((__tmp60548 (gx#datum->syntax '#f 'i))
                                (__tmp60547
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons __tmp60548 __tmp60547))))
                     (declare (not safe))
                     (cons __tmp60549 __tmp60546))))
              (declare (not safe))
              (cons __tmp60545 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp60550 __tmp60544))))
                                        (declare (not safe))
                                        (cons __tmp60558 __tmp60543))))
                                 (declare (not safe))
                                 (cons __tmp60542 '()))))
                          (declare (not safe))
                          (cons __tmp60559 __tmp60541))))
                   (declare (not safe))
                   (cons __tmp60540 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp60560
                                                          __tmp60539))))
                                             (declare (not safe))
                                             (cons __tmp60589 __tmp60538))))
                                      (declare (not safe))
                                      (cons __tmp60615 __tmp60537))))
                               (declare (not safe))
                               (cons __tmp60626 __tmp60536))))
                        (declare (not safe))
                        (cons __tmp60535 '()))))
                 (declare (not safe))
                 (cons __tmp60627 __tmp60534))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp60635
                                                        __tmp60533))))
                                           (declare (not safe))
                                           (cons __tmp60532 '()))))
                                    (declare (not safe))
                                    (cons __tmp60636 __tmp60531))))
                             (declare (not safe))
                             (cons __tmp60645 __tmp60530))))
                      (declare (not safe))
                      (cons __tmp60646 __tmp60529))))
               (declare (not safe))
               (cons __tmp60528 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp60647 __tmp60527))))
                                         (declare (not safe))
                                         (cons __tmp60687 __tmp60526)))
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
