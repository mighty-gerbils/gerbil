(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_$stx58890_)
      (let* ((___stx6142761428_ _$stx58890_)
             (_g5889558924_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6142761428_))))
        (let ((___kont6143061431_
               (lambda (_L59017_ _L59019_)
                 (let ((__tmp61765 (gx#datum->syntax '#f '##fx=))
                       (__tmp61759
                        (let ((__tmp61761
                               (let ((__tmp61764
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp61762
                                      (let ((__tmp61763
                                             (let ()
                                               (declare (not safe))
                                               (cons _L59017_ '()))))
                                        (declare (not safe))
                                        (cons _L59019_ __tmp61763))))
                                 (declare (not safe))
                                 (cons __tmp61764 __tmp61762)))
                              (__tmp61760
                               (let ()
                                 (declare (not safe))
                                 (cons _L59017_ '()))))
                          (declare (not safe))
                          (cons __tmp61761 __tmp61760))))
                   (declare (not safe))
                   (cons __tmp61765 __tmp61759))))
              (___kont6143261433_
               (lambda (_L58961_ _L58963_)
                 (let ((__tmp61778 (gx#datum->syntax '#f 'let))
                       (__tmp61766
                        (let ((__tmp61776
                               (let ((__tmp61777
                                      (let ()
                                        (declare (not safe))
                                        (cons _L58961_ '()))))
                                 (declare (not safe))
                                 (cons _L58961_ __tmp61777)))
                              (__tmp61767
                               (let ((__tmp61768
                                      (let ((__tmp61775
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp61769
                                             (let ((__tmp61771
                                                    (let ((__tmp61774
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp61772
                                                           (let ((__tmp61773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L58961_ '()))))
                     (declare (not safe))
                     (cons _L58963_ __tmp61773))))
              (declare (not safe))
              (cons __tmp61774 __tmp61772)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp61770
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L58961_ '()))))
                                               (declare (not safe))
                                               (cons __tmp61771 __tmp61770))))
                                        (declare (not safe))
                                        (cons __tmp61775 __tmp61769))))
                                 (declare (not safe))
                                 (cons __tmp61768 '()))))
                          (declare (not safe))
                          (cons __tmp61776 __tmp61767))))
                   (declare (not safe))
                   (cons __tmp61778 __tmp61766)))))
          (let ((___match6145461455_
                 (lambda (_e5889958987_
                          _hd5890058991_
                          _tl5890158994_
                          _e5890258997_
                          _hd5890359001_
                          _tl5890459004_
                          _e5890559007_
                          _hd5890659011_
                          _tl5890759014_)
                   (let ((_L59017_ _hd5890659011_) (_L59019_ _hd5890359001_))
                     (if (or (gx#identifier? _L59017_)
                             (gx#stx-fixnum? _L59017_))
                         (___kont6143061431_ _L59017_ _L59019_)
                         (___kont6143261433_
                          _hd5890659011_
                          _hd5890359001_))))))
            (if (gx#stx-pair? ___stx6142761428_)
                (let ((_e5889958987_ (gx#syntax-e ___stx6142761428_)))
                  (let ((_tl5890158994_
                         (let () (declare (not safe)) (##cdr _e5889958987_)))
                        (_hd5890058991_
                         (let () (declare (not safe)) (##car _e5889958987_))))
                    (if (gx#stx-pair? _tl5890158994_)
                        (let ((_e5890258997_ (gx#syntax-e _tl5890158994_)))
                          (let ((_tl5890459004_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5890258997_)))
                                (_hd5890359001_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5890258997_))))
                            (if (gx#stx-pair? _tl5890459004_)
                                (let ((_e5890559007_
                                       (gx#syntax-e _tl5890459004_)))
                                  (let ((_tl5890759014_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5890559007_)))
                                        (_hd5890659011_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5890559007_))))
                                    (if (gx#stx-null? _tl5890759014_)
                                        (___match6145461455_
                                         _e5889958987_
                                         _hd5890058991_
                                         _tl5890158994_
                                         _e5890258997_
                                         _hd5890359001_
                                         _tl5890459004_
                                         _e5890559007_
                                         _hd5890659011_
                                         _tl5890759014_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5889558924_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5889558924_)))))
                        (let () (declare (not safe)) (_g5889558924_)))))
                (let () (declare (not safe)) (_g5889558924_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_$stx59042_)
      (let* ((___stx6147761478_ _$stx59042_)
             (_g5904759076_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx6147761478_))))
        (let ((___kont6148061481_
               (lambda (_L59168_ _L59170_)
                 (let ((__tmp61785 (gx#datum->syntax '#f '##fx=))
                       (__tmp61779
                        (let ((__tmp61781
                               (let ((__tmp61784
                                      (gx#datum->syntax '#f '##fxand))
                                     (__tmp61782
                                      (let ((__tmp61783
                                             (let ()
                                               (declare (not safe))
                                               (cons _L59168_ '()))))
                                        (declare (not safe))
                                        (cons _L59170_ __tmp61783))))
                                 (declare (not safe))
                                 (cons __tmp61784 __tmp61782)))
                              (__tmp61780
                               (let () (declare (not safe)) (cons '0 '()))))
                          (declare (not safe))
                          (cons __tmp61781 __tmp61780))))
                   (declare (not safe))
                   (cons __tmp61785 __tmp61779))))
              (___kont6148261483_
               (lambda (_L59113_ _L59115_)
                 (let ((__tmp61798 (gx#datum->syntax '#f 'let))
                       (__tmp61786
                        (let ((__tmp61796
                               (let ((__tmp61797
                                      (let ()
                                        (declare (not safe))
                                        (cons _L59113_ '()))))
                                 (declare (not safe))
                                 (cons _L59113_ __tmp61797)))
                              (__tmp61787
                               (let ((__tmp61788
                                      (let ((__tmp61795
                                             (gx#datum->syntax '#f '##fx=))
                                            (__tmp61789
                                             (let ((__tmp61791
                                                    (let ((__tmp61794
                                                           (gx#datum->syntax
                                                            '#f
                                                            '##fxand))
                                                          (__tmp61792
                                                           (let ((__tmp61793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L59113_ '()))))
                     (declare (not safe))
                     (cons _L59115_ __tmp61793))))
              (declare (not safe))
              (cons __tmp61794 __tmp61792)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp61790
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '()))))
                                               (declare (not safe))
                                               (cons __tmp61791 __tmp61790))))
                                        (declare (not safe))
                                        (cons __tmp61795 __tmp61789))))
                                 (declare (not safe))
                                 (cons __tmp61788 '()))))
                          (declare (not safe))
                          (cons __tmp61796 __tmp61787))))
                   (declare (not safe))
                   (cons __tmp61798 __tmp61786)))))
          (let ((___match6150461505_
                 (lambda (_e5905159138_
                          _hd5905259142_
                          _tl5905359145_
                          _e5905459148_
                          _hd5905559152_
                          _tl5905659155_
                          _e5905759158_
                          _hd5905859162_
                          _tl5905959165_)
                   (let ((_L59168_ _hd5905859162_) (_L59170_ _hd5905559152_))
                     (if (or (gx#identifier? _L59168_)
                             (gx#stx-fixnum? _L59168_))
                         (___kont6148061481_ _L59168_ _L59170_)
                         (___kont6148261483_
                          _hd5905859162_
                          _hd5905559152_))))))
            (if (gx#stx-pair? ___stx6147761478_)
                (let ((_e5905159138_ (gx#syntax-e ___stx6147761478_)))
                  (let ((_tl5905359145_
                         (let () (declare (not safe)) (##cdr _e5905159138_)))
                        (_hd5905259142_
                         (let () (declare (not safe)) (##car _e5905159138_))))
                    (if (gx#stx-pair? _tl5905359145_)
                        (let ((_e5905459148_ (gx#syntax-e _tl5905359145_)))
                          (let ((_tl5905659155_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5905459148_)))
                                (_hd5905559152_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5905459148_))))
                            (if (gx#stx-pair? _tl5905659155_)
                                (let ((_e5905759158_
                                       (gx#syntax-e _tl5905659155_)))
                                  (let ((_tl5905959165_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5905759158_)))
                                        (_hd5905859162_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5905759158_))))
                                    (if (gx#stx-null? _tl5905959165_)
                                        (___match6150461505_
                                         _e5905159138_
                                         _hd5905259142_
                                         _tl5905359145_
                                         _e5905459148_
                                         _hd5905559152_
                                         _tl5905659155_
                                         _e5905759158_
                                         _hd5905859162_
                                         _tl5905959165_)
                                        (let ()
                                          (declare (not safe))
                                          (_g5904759076_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g5904759076_)))))
                        (let () (declare (not safe)) (_g5904759076_)))))
                (let () (declare (not safe)) (_g5904759076_))))))))
  (define |[:0:]#defrefset|
    (lambda (_stx59193_)
      (let* ((_g5919659217_
              (lambda (_g5919759213_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5919759213_)))
             (_g5919559445_
              (lambda (_g5919759221_)
                (if (gx#stx-pair? _g5919759221_)
                    (let ((_e5920059224_ (gx#syntax-e _g5919759221_)))
                      (let ((_hd5920159228_
                             (let ()
                               (declare (not safe))
                               (##car _e5920059224_)))
                            (_tl5920259231_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5920059224_))))
                        (if (gx#stx-pair? _tl5920259231_)
                            (let ((_e5920359234_ (gx#syntax-e _tl5920259231_)))
                              (let ((_hd5920459238_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5920359234_)))
                                    (_tl5920559241_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5920359234_))))
                                (if (gx#stx-pair? _hd5920459238_)
                                    (let ((_e5920659244_
                                           (gx#syntax-e _hd5920459238_)))
                                      (let ((_hd5920759248_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5920659244_)))
                                            (_tl5920859251_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5920659244_))))
                                        (if (gx#stx-pair? _tl5920859251_)
                                            (let ((_e5920959254_
                                                   (gx#syntax-e
                                                    _tl5920859251_)))
                                              (let ((_hd5921059258_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5920959254_)))
                                                    (_tl5921159261_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5920959254_))))
                                                (if (gx#stx-null?
                                                     _tl5921159261_)
                                                    (if (gx#stx-null?
                                                         _tl5920559241_)
                                                        ((lambda (_L59264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L59266_)
                   (let* ((_g5928459292_
                           (lambda (_g5928559288_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g5928559288_)))
                          (_g5928359441_
                           (lambda (_g5928559296_)
                             ((lambda (_L59299_)
                                (let ()
                                  (let* ((_g5931159319_
                                          (lambda (_g5931259315_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g5931259315_)))
                                         (_g5931059437_
                                          (lambda (_g5931259323_)
                                            ((lambda (_L59326_)
                                               (let ()
                                                 (let* ((_g5933959347_
                                                         (lambda (_g5934059343_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g5934059343_)))
                                                        (_g5933859433_
                                                         (lambda (_g5934059351_)
                                                           ((lambda (_L59354_)
                                                              (let ()
                                                                (let* ((_g5936759375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g5936859371_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g5936859371_)))
                               (_g5936659429_
                                (lambda (_g5936859379_)
                                  ((lambda (_L59382_)
                                     (let ()
                                       (let* ((_g5939559403_
                                               (lambda (_g5939659399_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g5939659399_)))
                                              (_g5939459425_
                                               (lambda (_g5939659407_)
                                                 ((lambda (_L59410_)
                                                    (let ()
                                                      (let ()
                                                        (let ((__tmp61931
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp61799
                                                               (let ((__tmp61901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp61930 (gx#datum->syntax '#f 'def))
                                    (__tmp61902
                                     (let ((__tmp61903
                                            (let ((__tmp61904
                                                   (let ((__tmp61929
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation))
                                                         (__tmp61905
                                                          (let ((__tmp61924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61928
                                (gx#datum->syntax '#f '@mop.accessor))
                               (__tmp61925
                                (let ((__tmp61926
                                       (let ((__tmp61927
                                              (let ()
                                                (declare (not safe))
                                                (cons '#t '()))))
                                         (declare (not safe))
                                         (cons _L59266_ __tmp61927))))
                                  (declare (not safe))
                                  (cons _L59299_ __tmp61926))))
                           (declare (not safe))
                           (cons __tmp61928 __tmp61925)))
                        (__tmp61906
                         (let ((__tmp61907
                                (let ((__tmp61923
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp61908
                                       (let ((__tmp61921
                                              (let ((__tmp61922
                                                     (gx#datum->syntax
                                                      '#f
                                                      'klass)))
                                                (declare (not safe))
                                                (cons __tmp61922 '())))
                                             (__tmp61909
                                              (let ((__tmp61910
                                                     (let ((__tmp61920
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##structure-ref))
                                                           (__tmp61911
                                                            (let ((__tmp61919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp61912
                           (let ((__tmp61913
                                  (let ((__tmp61918
                                         (gx#datum->syntax '#f 'class::t))
                                        (__tmp61914
                                         (let ((__tmp61915
                                                (let ((__tmp61917
                                                       (gx#datum->syntax
                                                        '#f
                                                        'quote))
                                                      (__tmp61916
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L59266_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp61917
                                                        __tmp61916))))
                                           (declare (not safe))
                                           (cons __tmp61915 '()))))
                                    (declare (not safe))
                                    (cons __tmp61918 __tmp61914))))
                             (declare (not safe))
                             (cons _L59264_ __tmp61913))))
                      (declare (not safe))
                      (cons __tmp61919 __tmp61912))))
               (declare (not safe))
               (cons __tmp61920 __tmp61911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61910 '()))))
                                         (declare (not safe))
                                         (cons __tmp61921 __tmp61909))))
                                  (declare (not safe))
                                  (cons __tmp61923 __tmp61908))))
                           (declare (not safe))
                           (cons __tmp61907 '()))))
                    (declare (not safe))
                    (cons __tmp61924 __tmp61906))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61929
                                                           __tmp61905))))
                                              (declare (not safe))
                                              (cons __tmp61904 '()))))
                                       (declare (not safe))
                                       (cons _L59326_ __tmp61903))))
                                (declare (not safe))
                                (cons __tmp61930 __tmp61902)))
                             (__tmp61800
                              (let ((__tmp61871
                                     (let ((__tmp61900
                                            (gx#datum->syntax '#f 'def))
                                           (__tmp61872
                                            (let ((__tmp61873
                                                   (let ((__tmp61874
                                                          (let ((__tmp61899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'begin-annotation))
                        (__tmp61875
                         (let ((__tmp61894
                                (let ((__tmp61898
                                       (gx#datum->syntax '#f '@mop.accessor))
                                      (__tmp61895
                                       (let ((__tmp61896
                                              (let ((__tmp61897
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '#f '()))))
                                                (declare (not safe))
                                                (cons _L59266_ __tmp61897))))
                                         (declare (not safe))
                                         (cons _L59299_ __tmp61896))))
                                  (declare (not safe))
                                  (cons __tmp61898 __tmp61895)))
                               (__tmp61876
                                (let ((__tmp61877
                                       (let ((__tmp61893
                                              (gx#datum->syntax '#f 'lambda))
                                             (__tmp61878
                                              (let ((__tmp61891
                                                     (let ((__tmp61892
                                                            (gx#datum->syntax
                                                             '#f
                                                             'klass)))
                                                       (declare (not safe))
                                                       (cons __tmp61892 '())))
                                                    (__tmp61879
                                                     (let ((__tmp61880
                                                            (let ((__tmp61890
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##unchecked-structure-ref))
                          (__tmp61881
                           (let ((__tmp61889 (gx#datum->syntax '#f 'klass))
                                 (__tmp61882
                                  (let ((__tmp61883
                                         (let ((__tmp61888
                                                (gx#datum->syntax
                                                 '#f
                                                 'class::t))
                                               (__tmp61884
                                                (let ((__tmp61885
                                                       (let ((__tmp61887
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp61886
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L59266_ '()))))
                 (declare (not safe))
                 (cons __tmp61887 __tmp61886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61885 '()))))
                                           (declare (not safe))
                                           (cons __tmp61888 __tmp61884))))
                                    (declare (not safe))
                                    (cons _L59264_ __tmp61883))))
                             (declare (not safe))
                             (cons __tmp61889 __tmp61882))))
                      (declare (not safe))
                      (cons __tmp61890 __tmp61881))))
               (declare (not safe))
               (cons __tmp61880 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61891 __tmp61879))))
                                         (declare (not safe))
                                         (cons __tmp61893 __tmp61878))))
                                  (declare (not safe))
                                  (cons __tmp61877 '()))))
                           (declare (not safe))
                           (cons __tmp61894 __tmp61876))))
                    (declare (not safe))
                    (cons __tmp61899 __tmp61875))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61874 '()))))
                                              (declare (not safe))
                                              (cons _L59354_ __tmp61873))))
                                       (declare (not safe))
                                       (cons __tmp61900 __tmp61872)))
                                    (__tmp61801
                                     (let ((__tmp61837
                                            (let ((__tmp61870
                                                   (gx#datum->syntax '#f 'def))
                                                  (__tmp61838
                                                   (let ((__tmp61839
                                                          (let ((__tmp61840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61869
                                (gx#datum->syntax '#f 'begin-annotation))
                               (__tmp61841
                                (let ((__tmp61864
                                       (let ((__tmp61868
                                              (gx#datum->syntax
                                               '#f
                                               '@mop.mutator))
                                             (__tmp61865
                                              (let ((__tmp61866
                                                     (let ((__tmp61867
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons '#t '()))))
                                                       (declare (not safe))
                                                       (cons _L59266_
                                                             __tmp61867))))
                                                (declare (not safe))
                                                (cons _L59299_ __tmp61866))))
                                         (declare (not safe))
                                         (cons __tmp61868 __tmp61865)))
                                      (__tmp61842
                                       (let ((__tmp61843
                                              (let ((__tmp61863
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp61844
                                                     (let ((__tmp61859
                                                            (let ((__tmp61862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'klass))
                          (__tmp61860
                           (let ((__tmp61861 (gx#datum->syntax '#f 'val)))
                             (declare (not safe))
                             (cons __tmp61861 '()))))
                      (declare (not safe))
                      (cons __tmp61862 __tmp61860)))
                   (__tmp61845
                    (let ((__tmp61846
                           (let ((__tmp61858
                                  (gx#datum->syntax '#f '##structure-set!))
                                 (__tmp61847
                                  (let ((__tmp61857
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp61848
                                         (let ((__tmp61856
                                                (gx#datum->syntax '#f 'val))
                                               (__tmp61849
                                                (let ((__tmp61850
                                                       (let ((__tmp61855
                                                              (gx#datum->syntax
                                                               '#f
                                                               'class::t))
                                                             (__tmp61851
                                                              (let ((__tmp61852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp61854 (gx#datum->syntax '#f 'quote))
                                   (__tmp61853
                                    (let ()
                                      (declare (not safe))
                                      (cons _L59266_ '()))))
                               (declare (not safe))
                               (cons __tmp61854 __tmp61853))))
                        (declare (not safe))
                        (cons __tmp61852 '()))))
                 (declare (not safe))
                 (cons __tmp61855 __tmp61851))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L59264_ __tmp61850))))
                                           (declare (not safe))
                                           (cons __tmp61856 __tmp61849))))
                                    (declare (not safe))
                                    (cons __tmp61857 __tmp61848))))
                             (declare (not safe))
                             (cons __tmp61858 __tmp61847))))
                      (declare (not safe))
                      (cons __tmp61846 '()))))
               (declare (not safe))
               (cons __tmp61859 __tmp61845))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61863 __tmp61844))))
                                         (declare (not safe))
                                         (cons __tmp61843 '()))))
                                  (declare (not safe))
                                  (cons __tmp61864 __tmp61842))))
                           (declare (not safe))
                           (cons __tmp61869 __tmp61841))))
                    (declare (not safe))
                    (cons __tmp61840 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L59382_
                                                           __tmp61839))))
                                              (declare (not safe))
                                              (cons __tmp61870 __tmp61838)))
                                           (__tmp61802
                                            (let ((__tmp61803
                                                   (let ((__tmp61836
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp61804
                                                          (let ((__tmp61805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp61806
                                (let ((__tmp61835
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp61807
                                       (let ((__tmp61830
                                              (let ((__tmp61834
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.mutator))
                                                    (__tmp61831
                                                     (let ((__tmp61832
                                                            (let ((__tmp61833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons '#f '()))))
                      (declare (not safe))
                      (cons _L59266_ __tmp61833))))
               (declare (not safe))
               (cons _L59299_ __tmp61832))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61834 __tmp61831)))
                                             (__tmp61808
                                              (let ((__tmp61809
                                                     (let ((__tmp61829
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp61810
                                                            (let ((__tmp61825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp61828 (gx#datum->syntax '#f 'klass))
                                 (__tmp61826
                                  (let ((__tmp61827
                                         (gx#datum->syntax '#f 'val)))
                                    (declare (not safe))
                                    (cons __tmp61827 '()))))
                             (declare (not safe))
                             (cons __tmp61828 __tmp61826)))
                          (__tmp61811
                           (let ((__tmp61812
                                  (let ((__tmp61824
                                         (gx#datum->syntax
                                          '#f
                                          '##unchecked-structure-set!))
                                        (__tmp61813
                                         (let ((__tmp61823
                                                (gx#datum->syntax '#f 'klass))
                                               (__tmp61814
                                                (let ((__tmp61822
                                                       (gx#datum->syntax
                                                        '#f
                                                        'val))
                                                      (__tmp61815
                                                       (let ((__tmp61816
                                                              (let ((__tmp61821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'class::t))
                            (__tmp61817
                             (let ((__tmp61818
                                    (let ((__tmp61820
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp61819
                                           (let ()
                                             (declare (not safe))
                                             (cons _L59266_ '()))))
                                      (declare (not safe))
                                      (cons __tmp61820 __tmp61819))))
                               (declare (not safe))
                               (cons __tmp61818 '()))))
                        (declare (not safe))
                        (cons __tmp61821 __tmp61817))))
                 (declare (not safe))
                 (cons _L59264_ __tmp61816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp61822
                                                        __tmp61815))))
                                           (declare (not safe))
                                           (cons __tmp61823 __tmp61814))))
                                    (declare (not safe))
                                    (cons __tmp61824 __tmp61813))))
                             (declare (not safe))
                             (cons __tmp61812 '()))))
                      (declare (not safe))
                      (cons __tmp61825 __tmp61811))))
               (declare (not safe))
               (cons __tmp61829 __tmp61810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61809 '()))))
                                         (declare (not safe))
                                         (cons __tmp61830 __tmp61808))))
                                  (declare (not safe))
                                  (cons __tmp61835 __tmp61807))))
                           (declare (not safe))
                           (cons __tmp61806 '()))))
                    (declare (not safe))
                    (cons _L59410_ __tmp61805))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61836
                                                           __tmp61804))))
                                              (declare (not safe))
                                              (cons __tmp61803 '()))))
                                       (declare (not safe))
                                       (cons __tmp61837 __tmp61802))))
                                (declare (not safe))
                                (cons __tmp61871 __tmp61801))))
                         (declare (not safe))
                         (cons __tmp61901 __tmp61800))))
                  (declare (not safe))
                  (cons __tmp61931 __tmp61799)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g5939659407_))))
                                         (_g5939459425_
                                          (gx#stx-identifier
                                           _L59266_
                                           '"&"
                                           _L59382_)))))
                                   _g5936859379_))))
                          (_g5936659429_
                           (gx#stx-identifier _L59266_ _L59326_ '"-set!")))))
                    _g5934059351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g5933859433_
                                                    (gx#stx-identifier
                                                     _L59266_
                                                     '"&"
                                                     _L59326_)))))
                                             _g5931259323_))))
                                    (_g5931059437_
                                     (gx#stx-identifier
                                      _L59266_
                                      '"class-type-"
                                      _L59266_)))))
                              _g5928559296_))))
                     (_g5928359441_ (gx#core-quote-syntax 'class::t))))
                 _hd5921059258_
                 _hd5920759248_)
                (_g5919659217_ _g5919759221_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5919659217_
                                                     _g5919759221_))))
                                            (_g5919659217_ _g5919759221_))))
                                    (_g5919659217_ _g5919759221_))))
                            (_g5919659217_ _g5919759221_))))
                    (_g5919659217_ _g5919759221_)))))
        (_g5919559445_ _stx59193_))))
  (define |[:0:]#defrefset*|
    (lambda (_$stx59449_)
      (let* ((_g5945359482_
              (lambda (_g5945459478_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5945459478_)))
             (_g5945259582_
              (lambda (_g5945459486_)
                (if (gx#stx-pair? _g5945459486_)
                    (let ((_e5945759489_ (gx#syntax-e _g5945459486_)))
                      (let ((_hd5945859493_
                             (let ()
                               (declare (not safe))
                               (##car _e5945759489_)))
                            (_tl5945959496_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5945759489_))))
                        (if (gx#stx-pair/null? _tl5945959496_)
                            (let ((_g61932_
                                   (gx#syntax-split-splice _tl5945959496_ '0)))
                              (begin
                                (let ((_g61933_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g61932_)
                                             (##vector-length _g61932_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g61933_ 2)))
                                      (error "Context expects 2 values"
                                             _g61933_)))
                                (let ((_target5946059499_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61932_ 0)))
                                      (_tl5946259502_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61932_ 1))))
                                  (if (gx#stx-null? _tl5946259502_)
                                      (letrec ((_loop5946359505_
                                                (lambda (_hd5946159509_
                                                         _field5946759512_
                                                         _slot5946859514_)
                                                  (if (gx#stx-pair?
                                                       _hd5946159509_)
                                                      (let ((_e5946459517_
                                                             (gx#syntax-e
                                                              _hd5946159509_)))
                                                        (let ((_lp-hd5946559521_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e5946459517_)))
                      (_lp-tl5946659524_
                       (let () (declare (not safe)) (##cdr _e5946459517_))))
                  (if (gx#stx-pair? _lp-hd5946559521_)
                      (let ((_e5947159527_ (gx#syntax-e _lp-hd5946559521_)))
                        (let ((_hd5947259531_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5947159527_)))
                              (_tl5947359534_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5947159527_))))
                          (if (gx#stx-pair? _tl5947359534_)
                              (let ((_e5947459537_
                                     (gx#syntax-e _tl5947359534_)))
                                (let ((_hd5947559541_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5947459537_)))
                                      (_tl5947659544_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5947459537_))))
                                  (if (gx#stx-null? _tl5947659544_)
                                      (_loop5946359505_
                                       _lp-tl5946659524_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd5947559541_
                                               _field5946759512_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd5947259531_
                                               _slot5946859514_)))
                                      (_g5945359482_ _g5945459486_))))
                              (_g5945359482_ _g5945459486_))))
                      (_g5945359482_ _g5945459486_))))
              (let ((_field5946959547_ (reverse _field5946759512_))
                    (_slot5947059550_ (reverse _slot5946859514_)))
                ((lambda (_L59553_ _L59555_)
                   (let ((__tmp61941 (gx#datum->syntax '#f 'begin))
                         (__tmp61934
                          (begin
                            (gx#syntax-check-splice-targets _L59553_ _L59555_)
                            (let ((__tmp61935
                                   (lambda (_g5957059574_
                                            _g5957159577_
                                            _g5957259579_)
                                     (let ((__tmp61936
                                            (let ((__tmp61940
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defrefset))
                                                  (__tmp61937
                                                   (let ((__tmp61938
                                                          (let ((__tmp61939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g5957059574_ '()))))
                    (declare (not safe))
                    (cons _g5957159577_ __tmp61939))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61938 '()))))
                                              (declare (not safe))
                                              (cons __tmp61940 __tmp61937))))
                                       (declare (not safe))
                                       (cons __tmp61936 _g5957259579_)))))
                              (declare (not safe))
                              (foldr2 __tmp61935 '() _L59553_ _L59555_)))))
                     (declare (not safe))
                     (cons __tmp61941 __tmp61934)))
                 _field5946959547_
                 _slot5947059550_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5946359505_
                                         _target5946059499_
                                         '()
                                         '()))
                                      (_g5945359482_ _g5945459486_)))))
                            (_g5945359482_ _g5945459486_))))
                    (_g5945359482_ _g5945459486_)))))
        (_g5945259582_ _$stx59449_))))
  (define |[:0:]#__slot-e|
    (lambda (_$stx59587_)
      (let* ((_g5959159617_
              (lambda (_g5959259613_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5959259613_)))
             (_g5959059700_
              (lambda (_g5959259621_)
                (if (gx#stx-pair? _g5959259621_)
                    (let ((_e5959759624_ (gx#syntax-e _g5959259621_)))
                      (let ((_hd5959859628_
                             (let ()
                               (declare (not safe))
                               (##car _e5959759624_)))
                            (_tl5959959631_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5959759624_))))
                        (if (gx#stx-pair? _tl5959959631_)
                            (let ((_e5960059634_ (gx#syntax-e _tl5959959631_)))
                              (let ((_hd5960159638_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5960059634_)))
                                    (_tl5960259641_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5960059634_))))
                                (if (gx#stx-pair? _tl5960259641_)
                                    (let ((_e5960359644_
                                           (gx#syntax-e _tl5960259641_)))
                                      (let ((_hd5960459648_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5960359644_)))
                                            (_tl5960559651_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5960359644_))))
                                        (if (gx#stx-pair? _tl5960559651_)
                                            (let ((_e5960659654_
                                                   (gx#syntax-e
                                                    _tl5960559651_)))
                                              (let ((_hd5960759658_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5960659654_)))
                                                    (_tl5960859661_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5960659654_))))
                                                (if (gx#stx-pair?
                                                     _tl5960859661_)
                                                    (let ((_e5960959664_
                                                           (gx#syntax-e
                                                            _tl5960859661_)))
                                                      (let ((_hd5961059668_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e5960959664_)))
                    (_tl5961159671_
                     (let () (declare (not safe)) (##cdr _e5960959664_))))
                (if (gx#stx-null? _tl5961159671_)
                    ((lambda (_L59674_ _L59676_ _L59677_ _L59678_)
                       (let ((__tmp61988 (gx#datum->syntax '#f 'if))
                             (__tmp61942
                              (let ((__tmp61985
                                     (let ((__tmp61987
                                            (gx#datum->syntax '#f 'object?))
                                           (__tmp61986
                                            (let ()
                                              (declare (not safe))
                                              (cons _L59678_ '()))))
                                       (declare (not safe))
                                       (cons __tmp61987 __tmp61986)))
                                    (__tmp61943
                                     (let ((__tmp61948
                                            (let ((__tmp61984
                                                   (gx#datum->syntax '#f 'let))
                                                  (__tmp61949
                                                   (let ((__tmp61978
                                                          (let ((__tmp61983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'klass))
                        (__tmp61979
                         (let ((__tmp61980
                                (let ((__tmp61982
                                       (gx#datum->syntax '#f 'object-type))
                                      (__tmp61981
                                       (let ()
                                         (declare (not safe))
                                         (cons _L59678_ '()))))
                                  (declare (not safe))
                                  (cons __tmp61982 __tmp61981))))
                           (declare (not safe))
                           (cons __tmp61980 '()))))
                    (declare (not safe))
                    (cons __tmp61983 __tmp61979)))
                 (__tmp61950
                  (let ((__tmp61951
                         (let ((__tmp61977 (gx#datum->syntax '#f 'cond))
                               (__tmp61952
                                (let ((__tmp61960
                                       (let ((__tmp61964
                                              (let ((__tmp61976
                                                     (gx#datum->syntax
                                                      '#f
                                                      'and))
                                                    (__tmp61965
                                                     (let ((__tmp61972
                                                            (let ((__tmp61975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'class-type?))
                          (__tmp61973
                           (let ((__tmp61974 (gx#datum->syntax '#f 'klass)))
                             (declare (not safe))
                             (cons __tmp61974 '()))))
                      (declare (not safe))
                      (cons __tmp61975 __tmp61973)))
                   (__tmp61966
                    (let ((__tmp61967
                           (let ((__tmp61971
                                  (gx#datum->syntax '#f 'class-slot-offset))
                                 (__tmp61968
                                  (let ((__tmp61970
                                         (gx#datum->syntax '#f 'klass))
                                        (__tmp61969
                                         (let ()
                                           (declare (not safe))
                                           (cons _L59677_ '()))))
                                    (declare (not safe))
                                    (cons __tmp61970 __tmp61969))))
                             (declare (not safe))
                             (cons __tmp61971 __tmp61968))))
                      (declare (not safe))
                      (cons __tmp61967 '()))))
               (declare (not safe))
               (cons __tmp61972 __tmp61966))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61976 __tmp61965)))
                                             (__tmp61961
                                              (let ((__tmp61963
                                                     (gx#datum->syntax
                                                      '#f
                                                      '=>))
                                                    (__tmp61962
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L59676_ '()))))
                                                (declare (not safe))
                                                (cons __tmp61963 __tmp61962))))
                                         (declare (not safe))
                                         (cons __tmp61964 __tmp61961)))
                                      (__tmp61953
                                       (let ((__tmp61954
                                              (let ((__tmp61959
                                                     (gx#datum->syntax
                                                      '#f
                                                      'else))
                                                    (__tmp61955
                                                     (let ((__tmp61956
                                                            (let ((__tmp61957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp61958
                                  (let ()
                                    (declare (not safe))
                                    (cons _L59677_ '()))))
                             (declare (not safe))
                             (cons _L59678_ __tmp61958))))
                      (declare (not safe))
                      (cons _L59674_ __tmp61957))))
               (declare (not safe))
               (cons __tmp61956 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp61959 __tmp61955))))
                                         (declare (not safe))
                                         (cons __tmp61954 '()))))
                                  (declare (not safe))
                                  (cons __tmp61960 __tmp61953))))
                           (declare (not safe))
                           (cons __tmp61977 __tmp61952))))
                    (declare (not safe))
                    (cons __tmp61951 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp61978
                                                           __tmp61950))))
                                              (declare (not safe))
                                              (cons __tmp61984 __tmp61949)))
                                           (__tmp61944
                                            (let ((__tmp61945
                                                   (let ((__tmp61946
                                                          (let ((__tmp61947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L59677_ '()))))
                    (declare (not safe))
                    (cons _L59678_ __tmp61947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L59674_
                                                           __tmp61946))))
                                              (declare (not safe))
                                              (cons __tmp61945 '()))))
                                       (declare (not safe))
                                       (cons __tmp61948 __tmp61944))))
                                (declare (not safe))
                                (cons __tmp61985 __tmp61943))))
                         (declare (not safe))
                         (cons __tmp61988 __tmp61942)))
                     _hd5961059668_
                     _hd5960759658_
                     _hd5960459648_
                     _hd5960159638_)
                    (_g5959159617_ _g5959259621_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5959159617_
                                                     _g5959259621_))))
                                            (_g5959159617_ _g5959259621_))))
                                    (_g5959159617_ _g5959259621_))))
                            (_g5959159617_ _g5959259621_))))
                    (_g5959159617_ _g5959259621_)))))
        (_g5959059700_ _$stx59587_)))))
