(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx83877_)
      (let* ((___stx9047790478_ _$stx83877_)
             (_g8388283911_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx9047790478_))))
        (let ((___kont9048090481_
               (lambda (_L84004_ _L84006_)
                 (let ((__tmp90737 (gx#datum->syntax '#f '##fx=))
                       (__tmp90731
                        (let ((__tmp90733
                               (let ((__tmp90736
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp90734
                                      (let ((__tmp90735
                                             (let ()
                                               (declare (not safe))
                                               (cons _L84004_ '()))))
                                        (declare (not safe))
                                        (cons _L84006_ __tmp90735))))
                                 (declare (not safe))
                                 (cons __tmp90736 __tmp90734)))
                              (__tmp90732
                               (let ()
                                 (declare (not safe))
                                 (cons _L84004_ '()))))
                          (declare (not safe))
                          (cons __tmp90733 __tmp90732))))
                   (declare (not safe))
                   (cons __tmp90737 __tmp90731))))
              (___kont9048290483_
               (lambda (_L83948_ _L83950_)
                 (let ((__tmp90750 (gx#datum->syntax '#f 'let))
                       (__tmp90738
                        (let ((__tmp90748
                               (let ((__tmp90749
                                      (let ()
                                        (declare (not safe))
                                        (cons _L83948_ '()))))
                                 (declare (not safe))
                                 (cons _L83948_ __tmp90749)))
                              (__tmp90739
                               (let ((__tmp90740
                                      (let ((__tmp90747
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp90741
                                             (let ((__tmp90743
                                                    (let ((__tmp90746
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp90744
                                                           (let ((__tmp90745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L83948_ '()))))
                     (declare (not safe))
                     (cons _L83950_ __tmp90745))))
              (declare (not safe))
              (cons __tmp90746 __tmp90744)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp90742
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L83948_ '()))))
                                               (declare (not safe))
                                               (cons __tmp90743 __tmp90742))))
                                        (declare (not safe))
                                        (cons __tmp90747 __tmp90741))))
                                 (declare (not safe))
                                 (cons __tmp90740 '()))))
                          (declare (not safe))
                          (cons __tmp90748 __tmp90739))))
                   (declare (not safe))
                   (cons __tmp90750 __tmp90738)))))
          (let ((___match9050490505_
                 (lambda (_e8388883974_
                          _hd8388783978_
                          _tl8388683981_
                          _e8389183984_
                          _hd8389083988_
                          _tl8388983991_
                          _e8389483994_
                          _hd8389383998_
                          _tl8389284001_)
                   (let ((_L84004_ _hd8389383998_) (_L84006_ _hd8389083988_))
                     (if (or (gx#identifier? _L84004_)
                             (gx#stx-fixnum? _L84004_))
                         (___kont9048090481_ _L84004_ _L84006_)
                         (___kont9048290483_
                          _hd8389383998_
                          _hd8389083988_))))))
            (if (gx#stx-pair? ___stx9047790478_)
                (let ((_e8388883974_ (gx#syntax-e ___stx9047790478_)))
                  (let ((_tl8388683981_
                         (let () (declare (not safe)) (##cdr _e8388883974_)))
                        (_hd8388783978_
                         (let () (declare (not safe)) (##car _e8388883974_))))
                    (if (gx#stx-pair? _tl8388683981_)
                        (let ((_e8389183984_ (gx#syntax-e _tl8388683981_)))
                          (let ((_tl8388983991_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8389183984_)))
                                (_hd8389083988_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8389183984_))))
                            (if (gx#stx-pair? _tl8388983991_)
                                (let ((_e8389483994_
                                       (gx#syntax-e _tl8388983991_)))
                                  (let ((_tl8389284001_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8389483994_)))
                                        (_hd8389383998_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8389483994_))))
                                    (if (gx#stx-null? _tl8389284001_)
                                        (___match9050490505_
                                         _e8388883974_
                                         _hd8388783978_
                                         _tl8388683981_
                                         _e8389183984_
                                         _hd8389083988_
                                         _tl8388983991_
                                         _e8389483994_
                                         _hd8389383998_
                                         _tl8389284001_)
                                        (let ()
                                          (declare (not safe))
                                          (_g8388283911_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g8388283911_)))))
                        (let () (declare (not safe)) (_g8388283911_)))))
                (let () (declare (not safe)) (_g8388283911_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx84029_)
      (let* ((___stx9052790528_ _$stx84029_)
             (_g8403484063_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx9052790528_))))
        (let ((___kont9053090531_
               (lambda (_L84155_ _L84157_)
                 (let ((__tmp90757 (gx#datum->syntax '#f '##fx=))
                       (__tmp90751
                        (let ((__tmp90753
                               (let ((__tmp90756
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp90754
                                      (let ((__tmp90755
                                             (let ()
                                               (declare (not safe))
                                               (cons _L84155_ '()))))
                                        (declare (not safe))
                                        (cons _L84157_ __tmp90755))))
                                 (declare (not safe))
                                 (cons __tmp90756 __tmp90754)))
                              (__tmp90752
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp90753 __tmp90752))))
                   (declare (not safe))
                   (cons __tmp90757 __tmp90751))))
              (___kont9053290533_
               (lambda (_L84100_ _L84102_)
                 (let ((__tmp90770 (gx#datum->syntax '#f 'let))
                       (__tmp90758
                        (let ((__tmp90768
                               (let ((__tmp90769
                                      (let ()
                                        (declare (not safe))
                                        (cons _L84100_ '()))))
                                 (declare (not safe))
                                 (cons _L84100_ __tmp90769)))
                              (__tmp90759
                               (let ((__tmp90760
                                      (let ((__tmp90767
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp90761
                                             (let ((__tmp90763
                                                    (let ((__tmp90766
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp90764
                                                           (let ((__tmp90765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L84100_ '()))))
                     (declare (not safe))
                     (cons _L84102_ __tmp90765))))
              (declare (not safe))
              (cons __tmp90766 __tmp90764)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp90762
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp90763 __tmp90762))))
                                        (declare (not safe))
                                        (cons __tmp90767 __tmp90761))))
                                 (declare (not safe))
                                 (cons __tmp90760 '()))))
                          (declare (not safe))
                          (cons __tmp90768 __tmp90759))))
                   (declare (not safe))
                   (cons __tmp90770 __tmp90758)))))
          (let ((___match9055490555_
                 (lambda (_e8404084125_
                          _hd8403984129_
                          _tl8403884132_
                          _e8404384135_
                          _hd8404284139_
                          _tl8404184142_
                          _e8404684145_
                          _hd8404584149_
                          _tl8404484152_)
                   (let ((_L84155_ _hd8404584149_) (_L84157_ _hd8404284139_))
                     (if (or (gx#identifier? _L84155_)
                             (gx#stx-fixnum? _L84155_))
                         (___kont9053090531_ _L84155_ _L84157_)
                         (___kont9053290533_
                          _hd8404584149_
                          _hd8404284139_))))))
            (if (gx#stx-pair? ___stx9052790528_)
                (let ((_e8404084125_ (gx#syntax-e ___stx9052790528_)))
                  (let ((_tl8403884132_
                         (let () (declare (not safe)) (##cdr _e8404084125_)))
                        (_hd8403984129_
                         (let () (declare (not safe)) (##car _e8404084125_))))
                    (if (gx#stx-pair? _tl8403884132_)
                        (let ((_e8404384135_ (gx#syntax-e _tl8403884132_)))
                          (let ((_tl8404184142_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e8404384135_)))
                                (_hd8404284139_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e8404384135_))))
                            (if (gx#stx-pair? _tl8404184142_)
                                (let ((_e8404684145_
                                       (gx#syntax-e _tl8404184142_)))
                                  (let ((_tl8404484152_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e8404684145_)))
                                        (_hd8404584149_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e8404684145_))))
                                    (if (gx#stx-null? _tl8404484152_)
                                        (___match9055490555_
                                         _e8404084125_
                                         _hd8403984129_
                                         _tl8403884132_
                                         _e8404384135_
                                         _hd8404284139_
                                         _tl8404184142_
                                         _e8404684145_
                                         _hd8404584149_
                                         _tl8404484152_)
                                        (let ()
                                          (declare (not safe))
                                          (_g8403484063_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g8403484063_)))))
                        (let () (declare (not safe)) (_g8403484063_)))))
                (let () (declare (not safe)) (_g8403484063_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx84180_)
      (let* ((_g8418384204_
              (lambda (_g8418484200_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8418484200_)))
             (_g8418284432_
              (lambda (_g8418484208_)
                (if (gx#stx-pair? _g8418484208_)
                    (let ((_e8418984211_ (gx#syntax-e _g8418484208_)))
                      (let ((_hd8418884215_
                             (let ()
                               (declare (not safe))
                               (##car _e8418984211_)))
                            (_tl8418784218_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8418984211_))))
                        (if (gx#stx-pair? _tl8418784218_)
                            (let ((_e8419284221_ (gx#syntax-e _tl8418784218_)))
                              (let ((_hd8419184225_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8419284221_)))
                                    (_tl8419084228_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8419284221_))))
                                (if (gx#stx-pair? _hd8419184225_)
                                    (let ((_e8419584231_
                                           (gx#syntax-e _hd8419184225_)))
                                      (let ((_hd8419484235_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8419584231_)))
                                            (_tl8419384238_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8419584231_))))
                                        (if (gx#stx-pair? _tl8419384238_)
                                            (let ((_e8419884241_
                                                   (gx#syntax-e
                                                    _tl8419384238_)))
                                              (let ((_hd8419784245_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e8419884241_)))
                                                    (_tl8419684248_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e8419884241_))))
                                                (if (gx#stx-null?
                                                     _tl8419684248_)
                                                    (if (gx#stx-null?
                                                         _tl8419084228_)
                                                        ((lambda (_L84251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L84253_)
                   (let* ((_g8427184279_
                           (lambda (_g8427284275_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g8427284275_)))
                          (_g8427084428_
                           (lambda (_g8427284283_)
                             ((lambda (_L84286_)
                                (let ()
                                  (let* ((_g8429884306_
                                          (lambda (_g8429984302_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g8429984302_)))
                                         (_g8429784424_
                                          (lambda (_g8429984310_)
                                            ((lambda (_L84313_)
                                               (let ()
                                                 (let* ((_g8432684334_
                                                         (lambda (_g8432784330_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g8432784330_)))
                                                        (_g8432584420_
                                                         (lambda (_g8432784338_)
                                                           ((lambda (_L84341_)
                                                              (let ()
                                                                (let* ((_g8435484362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g8435584358_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g8435584358_)))
                               (_g8435384416_
                                (lambda (_g8435584366_)
                                  ((lambda (_L84369_)
                                     (let ()
                                       (let* ((_g8438284390_
                                               (lambda (_g8438384386_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g8438384386_)))
                                              (_g8438184412_
                                               (lambda (_g8438384394_)
                                                 ((lambda (_L84397_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp90903
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp90771
                                                               (let ((__tmp90873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp90902 (gx#datum->syntax '#f 'def))
                                    (__tmp90874
                                     (let ((__tmp90875
                                            (let ((__tmp90876
                                                   (let ((__tmp90901
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp90877
                                                          (let ((__tmp90896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp90900
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp90897
                                (let ((__tmp90898
                                       (let ((__tmp90899
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L84253_ __tmp90899))))
                                  (declare (not safe))
                                  (cons _L84286_ __tmp90898))))
                           (declare (not safe))
                           (cons __tmp90900 __tmp90897)))
                        (__tmp90878
                         (let ((__tmp90879
                                (let ((__tmp90895
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp90880
                                       (let ((__tmp90893
                                              (let ((__tmp90894
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp90894 '())))
                                             (__tmp90881
                                              (let ((__tmp90882
                                                     (let ((__tmp90892
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp90883
                                                            (let ((__tmp90891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp90884
                           (let ((__tmp90885
                                  (let ((__tmp90890
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp90886
                                         (let ((__tmp90887
                                                (let ((__tmp90889
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp90888
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L84253_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp90889
                                                        __tmp90888))))
                                           (declare (not safe))
                                           (cons __tmp90887 '()))))
                                    (declare (not safe))
                                    (cons __tmp90890 __tmp90886))))
                             (declare (not safe))
                             (cons _L84251_ __tmp90885))))
                      (declare (not safe))
                      (cons __tmp90891 __tmp90884))))
               (declare (not safe))
               (cons __tmp90892 __tmp90883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp90882 '()))))
                                         (declare (not safe))
                                         (cons __tmp90893 __tmp90881))))
                                  (declare (not safe))
                                  (cons __tmp90895 __tmp90880))))
                           (declare (not safe))
                           (cons __tmp90879 '()))))
                    (declare (not safe))
                    (cons __tmp90896 __tmp90878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp90901
                                                           __tmp90877))))
                                              (declare (not safe))
                                              (cons __tmp90876 '()))))
                                       (declare (not safe))
                                       (cons _L84313_ __tmp90875))))
                                (declare (not safe))
                                (cons __tmp90902 __tmp90874)))
                             (__tmp90772
                              (let ((__tmp90843
                                     (let ((__tmp90872
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp90844
                                            (let ((__tmp90845
                                                   (let ((__tmp90846
                                                          (let ((__tmp90871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp90847
                         (let ((__tmp90866
                                (let ((__tmp90870
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp90867
                                       (let ((__tmp90868
                                              (let ((__tmp90869
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L84253_ __tmp90869))))
                                         (declare (not safe))
                                         (cons _L84286_ __tmp90868))))
                                  (declare (not safe))
                                  (cons __tmp90870 __tmp90867)))
                               (__tmp90848
                                (let ((__tmp90849
                                       (let ((__tmp90865
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp90850
                                              (let ((__tmp90863
                                                     (let ((__tmp90864
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp90864 '())))
                                                    (__tmp90851
                                                     (let ((__tmp90852
                                                            (let ((__tmp90862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp90853
                           (let ((__tmp90861 (gx#datum->syntax '#f 'klass))
                                 (__tmp90854
                                  (let ((__tmp90855
                                         (let ((__tmp90860
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp90856
                                                (let ((__tmp90857
                                                       (let ((__tmp90859
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp90858
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L84253_ '()))))
                 (declare (not safe))
                 (cons __tmp90859 __tmp90858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp90857 '()))))
                                           (declare (not safe))
                                           (cons __tmp90860 __tmp90856))))
                                    (declare (not safe))
                                    (cons _L84251_ __tmp90855))))
                             (declare (not safe))
                             (cons __tmp90861 __tmp90854))))
                      (declare (not safe))
                      (cons __tmp90862 __tmp90853))))
               (declare (not safe))
               (cons __tmp90852 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp90863 __tmp90851))))
                                         (declare (not safe))
                                         (cons __tmp90865 __tmp90850))))
                                  (declare (not safe))
                                  (cons __tmp90849 '()))))
                           (declare (not safe))
                           (cons __tmp90866 __tmp90848))))
                    (declare (not safe))
                    (cons __tmp90871 __tmp90847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp90846 '()))))
                                              (declare (not safe))
                                              (cons _L84341_ __tmp90845))))
                                       (declare (not safe))
                                       (cons __tmp90872 __tmp90844)))
                                    (__tmp90773
                                     (let ((__tmp90809
                                            (let ((__tmp90842
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp90810
                                                   (let ((__tmp90811
                                                          (let ((__tmp90812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp90841
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp90813
                                (let ((__tmp90836
                                       (let ((__tmp90840
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp90837
                                              (let ((__tmp90838
                                                     (let ((__tmp90839
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L84253_
                                                             __tmp90839))))
                                                (declare (not safe))
                                                (cons _L84286_ __tmp90838))))
                                         (declare (not safe))
                                         (cons __tmp90840 __tmp90837)))
                                      (__tmp90814
                                       (let ((__tmp90815
                                              (let ((__tmp90835
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp90816
                                                     (let ((__tmp90831
                                                            (let ((__tmp90834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp90832
                           (let ((__tmp90833 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp90833 '()))))
                      (declare (not safe))
                      (cons __tmp90834 __tmp90832)))
                   (__tmp90817
                    (let ((__tmp90818
                           (let ((__tmp90830
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp90819
                                  (let ((__tmp90829
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp90820
                                         (let ((__tmp90828
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp90821
                                                (let ((__tmp90822
                                                       (let ((__tmp90827
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp90823
                                                              (let ((__tmp90824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp90826 (gx#datum->syntax '#f 'quote))
                                   (__tmp90825
                                    (let ()
                                      (declare (not safe))
                                      (cons _L84253_ '()))))
                               (declare (not safe))
                               (cons __tmp90826 __tmp90825))))
                        (declare (not safe))
                        (cons __tmp90824 '()))))
                 (declare (not safe))
                 (cons __tmp90827 __tmp90823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L84251_ __tmp90822))))
                                           (declare (not safe))
                                           (cons __tmp90828 __tmp90821))))
                                    (declare (not safe))
                                    (cons __tmp90829 __tmp90820))))
                             (declare (not safe))
                             (cons __tmp90830 __tmp90819))))
                      (declare (not safe))
                      (cons __tmp90818 '()))))
               (declare (not safe))
               (cons __tmp90831 __tmp90817))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp90835 __tmp90816))))
                                         (declare (not safe))
                                         (cons __tmp90815 '()))))
                                  (declare (not safe))
                                  (cons __tmp90836 __tmp90814))))
                           (declare (not safe))
                           (cons __tmp90841 __tmp90813))))
                    (declare (not safe))
                    (cons __tmp90812 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L84369_
                                                           __tmp90811))))
                                              (declare (not safe))
                                              (cons __tmp90842 __tmp90810)))
                                           (__tmp90774
                                            (let ((__tmp90775
                                                   (let ((__tmp90808
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp90776
                                                          (let ((__tmp90777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp90778
                                (let ((__tmp90807
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp90779
                                       (let ((__tmp90802
                                              (let ((__tmp90806
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp90803
                                                     (let ((__tmp90804
                                                            (let ((__tmp90805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L84253_ __tmp90805))))
               (declare (not safe))
               (cons _L84286_ __tmp90804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp90806 __tmp90803)))
                                             (__tmp90780
                                              (let ((__tmp90781
                                                     (let ((__tmp90801
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp90782
                                                            (let ((__tmp90797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp90800 (gx#datum->syntax '#f 'klass))
                                 (__tmp90798
                                  (let ((__tmp90799
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp90799 '()))))
                             (declare (not safe))
                             (cons __tmp90800 __tmp90798)))
                          (__tmp90783
                           (let ((__tmp90784
                                  (let ((__tmp90796
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp90785
                                         (let ((__tmp90795
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp90786
                                                (let ((__tmp90794
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp90787
                                                       (let ((__tmp90788
                                                              (let ((__tmp90793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp90789
                             (let ((__tmp90790
                                    (let ((__tmp90792
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp90791
                                           (let ()
                                             (declare (not safe))
                                             (cons _L84253_ '()))))
                                      (declare (not safe))
                                      (cons __tmp90792 __tmp90791))))
                               (declare (not safe))
                               (cons __tmp90790 '()))))
                        (declare (not safe))
                        (cons __tmp90793 __tmp90789))))
                 (declare (not safe))
                 (cons _L84251_ __tmp90788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp90794
                                                        __tmp90787))))
                                           (declare (not safe))
                                           (cons __tmp90795 __tmp90786))))
                                    (declare (not safe))
                                    (cons __tmp90796 __tmp90785))))
                             (declare (not safe))
                             (cons __tmp90784 '()))))
                      (declare (not safe))
                      (cons __tmp90797 __tmp90783))))
               (declare (not safe))
               (cons __tmp90801 __tmp90782))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp90781 '()))))
                                         (declare (not safe))
                                         (cons __tmp90802 __tmp90780))))
                                  (declare (not safe))
                                  (cons __tmp90807 __tmp90779))))
                           (declare (not safe))
                           (cons __tmp90778 '()))))
                    (declare (not safe))
                    (cons _L84397_ __tmp90777))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp90808
                                                           __tmp90776))))
                                              (declare (not safe))
                                              (cons __tmp90775 '()))))
                                       (declare (not safe))
                                       (cons __tmp90809 __tmp90774))))
                                (declare (not safe))
                                (cons __tmp90843 __tmp90773))))
                         (declare (not safe))
                         (cons __tmp90873 __tmp90772))))
                  (declare (not safe))
                  (cons __tmp90903 __tmp90771)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g8438384394_))))
                                         (_g8438184412_
                                          (gx#stx-identifier
                                           _L84253_
                                           '"&"
                                           _L84369_)))))
                                   _g8435584366_))))
                          (_g8435384416_
                           (gx#stx-identifier _L84253_ _L84313_ '"-set!")))))
                    _g8432784338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g8432584420_
                                                    (gx#stx-identifier
                                                     _L84253_
                                                     '"&"
                                                     _L84313_)))))
                                             _g8429984310_))))
                                    (_g8429784424_
                                     (gx#stx-identifier
                                      _L84253_
                                      '"class-type-"
                                      _L84253_)))))
                              _g8427284283_))))
                     (_g8427084428_ (gx#core-quote-syntax 'class::t))))
                 _hd8419784245_
                 _hd8419484235_)
                (_g8418384204_ _g8418484208_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8418384204_
                                                     _g8418484208_))))
                                            (_g8418384204_ _g8418484208_))))
                                    (_g8418384204_ _g8418484208_))))
                            (_g8418384204_ _g8418484208_))))
                    (_g8418384204_ _g8418484208_)))))
        (_g8418284432_ _stx84180_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx84436_)
      (let* ((_g8444084469_
              (lambda (_g8444184465_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8444184465_)))
             (_g8443984569_
              (lambda (_g8444184473_)
                (if (gx#stx-pair? _g8444184473_)
                    (let ((_e8444684476_ (gx#syntax-e _g8444184473_)))
                      (let ((_hd8444584480_
                             (let ()
                               (declare (not safe))
                               (##car _e8444684476_)))
                            (_tl8444484483_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8444684476_))))
                        (if (gx#stx-pair/null? _tl8444484483_)
                            (let ((_g90904_
                                   (gx#syntax-split-splice _tl8444484483_ '0)))
                              (begin
                                (let ((_g90905_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g90904_)
                                             (##vector-length _g90904_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g90905_ 2)))
                                      (error "Context expects 2 values"
                                             _g90905_)))
                                (let ((_target8444784486_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g90904_ 0)))
                                      (_tl8444984489_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g90904_ 1))))
                                  (if (gx#stx-null? _tl8444984489_)
                                      (letrec ((_loop8445084492_
                                                (lambda (_hd8444884496_
                                                         _field8445484499_
                                                         _slot8445584501_)
                                                  (if (gx#stx-pair?
                                                       _hd8444884496_)
                                                      (let ((_e8445184504_
                                                             (gx#syntax-e
                                                              _hd8444884496_)))
                                                        (let ((_lp-hd8445284508_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e8445184504_)))
                      (_lp-tl8445384511_
                       (let () (declare (not safe)) (##cdr _e8445184504_))))
                  (if (gx#stx-pair? _lp-hd8445284508_)
                      (let ((_e8446084514_ (gx#syntax-e _lp-hd8445284508_)))
                        (let ((_hd8445984518_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8446084514_)))
                              (_tl8445884521_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8446084514_))))
                          (if (gx#stx-pair? _tl8445884521_)
                              (let ((_e8446384524_
                                     (gx#syntax-e _tl8445884521_)))
                                (let ((_hd8446284528_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e8446384524_)))
                                      (_tl8446184531_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e8446384524_))))
                                  (if (gx#stx-null? _tl8446184531_)
                                      (_loop8445084492_
                                       _lp-tl8445384511_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd8446284528_
                                               _field8445484499_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd8445984518_
                                               _slot8445584501_)))
                                      (_g8444084469_ _g8444184473_))))
                              (_g8444084469_ _g8444184473_))))
                      (_g8444084469_ _g8444184473_))))
              (let ((_field8445684534_ (reverse _field8445484499_))
                    (_slot8445784537_ (reverse _slot8445584501_)))
                ((lambda (_L84540_ _L84542_)
                   (let ((__tmp90913 (gx#datum->syntax '#f 'begin))
                         (__tmp90906
                          (begin
                            (gx#syntax-check-splice-targets _L84540_ _L84542_)
                            (let ((__tmp90907
                                   (lambda (_g8455784561_
                                            _g8455884564_
                                            _g8455984566_)
                                     (let ((__tmp90908
                                            (let ((__tmp90912
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp90909
                                                   (let ((__tmp90910
                                                          (let ((__tmp90911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g8455784561_ '()))))
                    (declare (not safe))
                    (cons _g8455884564_ __tmp90911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp90910 '()))))
                                              (declare (not safe))
                                              (cons __tmp90912 __tmp90909))))
                                       (declare (not safe))
                                       (cons __tmp90908 _g8455984566_)))))
                              (declare (not safe))
                              (foldr2 __tmp90907 '() _L84540_ _L84542_)))))
                     (declare (not safe))
                     (cons __tmp90913 __tmp90906)))
                 _field8445684534_
                 _slot8445784537_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop8445084492_
                                         _target8444784486_
                                         '()
                                         '()))
                                      (_g8444084469_ _g8444184473_)))))
                            (_g8444084469_ _g8444184473_))))
                    (_g8444084469_ _g8444184473_)))))
        (_g8443984569_ _$stx84436_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx84574_)
      (let* ((_g8457884604_
              (lambda (_g8457984600_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g8457984600_)))
             (_g8457784687_
              (lambda (_g8457984608_)
                (if (gx#stx-pair? _g8457984608_)
                    (let ((_e8458684611_ (gx#syntax-e _g8457984608_)))
                      (let ((_hd8458584615_
                             (let ()
                               (declare (not safe))
                               (##car _e8458684611_)))
                            (_tl8458484618_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8458684611_))))
                        (if (gx#stx-pair? _tl8458484618_)
                            (let ((_e8458984621_ (gx#syntax-e _tl8458484618_)))
                              (let ((_hd8458884625_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e8458984621_)))
                                    (_tl8458784628_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e8458984621_))))
                                (if (gx#stx-pair? _tl8458784628_)
                                    (let ((_e8459284631_
                                           (gx#syntax-e _tl8458784628_)))
                                      (let ((_hd8459184635_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e8459284631_)))
                                            (_tl8459084638_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e8459284631_))))
                                        (if (gx#stx-pair? _tl8459084638_)
                                            (let ((_e8459584641_
                                                   (gx#syntax-e
                                                    _tl8459084638_)))
                                              (let ((_hd8459484645_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e8459584641_)))
                                                    (_tl8459384648_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e8459584641_))))
                                                (if (gx#stx-pair?
                                                     _tl8459384648_)
                                                    (let ((_e8459884651_
                                                           (gx#syntax-e
                                                            _tl8459384648_)))
                                                      (let ((_hd8459784655_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e8459884651_)))
                    (_tl8459684658_
                     (let () (declare (not safe)) (##cdr _e8459884651_))))
                (if (gx#stx-null? _tl8459684658_)
                    ((lambda (_L84661_ _L84663_ _L84664_ _L84665_)
                       (let ((__tmp90960 (gx#datum->syntax '#f 'if))
                             (__tmp90914
                              (let ((__tmp90957
                                     (let ((__tmp90959
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp90958
                                            (let ()
                                              (declare (not safe))
                                              (cons _L84665_ '()))))
                                       (declare (not safe))
                                       (cons __tmp90959 __tmp90958)))
                                    (__tmp90915
                                     (let ((__tmp90920
                                            (let ((__tmp90956
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp90921
                                                   (let ((__tmp90950
                                                          (let ((__tmp90955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp90951
                         (let ((__tmp90952
                                (let ((__tmp90954
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp90953
                                       (let ()
                                         (declare (not safe))
                                         (cons _L84665_ '()))))
                                  (declare (not safe))
                                  (cons __tmp90954 __tmp90953))))
                           (declare (not safe))
                           (cons __tmp90952 '()))))
                    (declare (not safe))
                    (cons __tmp90955 __tmp90951)))
                 (__tmp90922
                  (let ((__tmp90923
                         (let ((__tmp90949 (gx#datum->syntax '#f 'cond))
                               (__tmp90924
                                (let ((__tmp90932
                                       (let ((__tmp90936
                                              (let ((__tmp90948
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp90937
                                                     (let ((__tmp90944
                                                            (let ((__tmp90947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp90945
                           (let ((__tmp90946 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp90946 '()))))
                      (declare (not safe))
                      (cons __tmp90947 __tmp90945)))
                   (__tmp90938
                    (let ((__tmp90939
                           (let ((__tmp90943
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp90940
                                  (let ((__tmp90942
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp90941
                                         (let ()
                                           (declare (not safe))
                                           (cons _L84664_ '()))))
                                    (declare (not safe))
                                    (cons __tmp90942 __tmp90941))))
                             (declare (not safe))
                             (cons __tmp90943 __tmp90940))))
                      (declare (not safe))
                      (cons __tmp90939 '()))))
               (declare (not safe))
               (cons __tmp90944 __tmp90938))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp90948 __tmp90937)))
                                             (__tmp90933
                                              (let ((__tmp90935
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp90934
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L84663_ '()))))
                                                (declare (not safe))
                                                (cons __tmp90935 __tmp90934))))
                                         (declare (not safe))
                                         (cons __tmp90936 __tmp90933)))
                                      (__tmp90925
                                       (let ((__tmp90926
                                              (let ((__tmp90931
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp90927
                                                     (let ((__tmp90928
                                                            (let ((__tmp90929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp90930
                                  (let ()
                                    (declare (not safe))
                                    (cons _L84664_ '()))))
                             (declare (not safe))
                             (cons _L84665_ __tmp90930))))
                      (declare (not safe))
                      (cons _L84661_ __tmp90929))))
               (declare (not safe))
               (cons __tmp90928 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp90931 __tmp90927))))
                                         (declare (not safe))
                                         (cons __tmp90926 '()))))
                                  (declare (not safe))
                                  (cons __tmp90932 __tmp90925))))
                           (declare (not safe))
                           (cons __tmp90949 __tmp90924))))
                    (declare (not safe))
                    (cons __tmp90923 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp90950
                                                           __tmp90922))))
                                              (declare (not safe))
                                              (cons __tmp90956 __tmp90921)))
                                           (__tmp90916
                                            (let ((__tmp90917
                                                   (let ((__tmp90918
                                                          (let ((__tmp90919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L84664_ '()))))
                    (declare (not safe))
                    (cons _L84665_ __tmp90919))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L84661_
                                                           __tmp90918))))
                                              (declare (not safe))
                                              (cons __tmp90917 '()))))
                                       (declare (not safe))
                                       (cons __tmp90920 __tmp90916))))
                                (declare (not safe))
                                (cons __tmp90957 __tmp90915))))
                         (declare (not safe))
                         (cons __tmp90960 __tmp90914)))
                     _hd8459784655_
                     _hd8459484645_
                     _hd8459184635_
                     _hd8458884625_)
                    (_g8457884604_ _g8457984608_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8457884604_
                                                     _g8457984608_))))
                                            (_g8457884604_ _g8457984608_))))
                                    (_g8457884604_ _g8457984608_))))
                            (_g8457884604_ _g8457984608_))))
                    (_g8457884604_ _g8457984608_)))))
        (_g8457784687_ _$stx84574_)))))
